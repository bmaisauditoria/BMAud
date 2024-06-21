unit frmRelFolhaTotaisCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils;

type
  TfrmRelFolhaTotalCli = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    Label2: TLabel;
    cmdImp: TBitBtn;
    dtpIni: TDateTimePicker;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    chkFilial: TCheckBox;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteStatusCli: TBooleanField;
    ProgressBar1: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFolhaTotalCli: TfrmRelFolhaTotalCli;
  iFaturado:currency;
  iFilial,xCliente:integer;
  xDataIni,xDataFim:TDate;
  xFilial,xPago:integer;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelFolhaTotalCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dbFilial.Close;
    dbCliente.Close;
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xCliente:=999999;
    xFilial:=10;
    xPago:=10;
end;

procedure TfrmRelFolhaTotalCli.FormShow(Sender: TObject);
begin
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
end;

procedure TfrmRelFolhaTotalCli.cmdImpClick(Sender: TObject);
var iLinhaF:string;
var i:integer;
var iIR,iImpostos,iBruto,iLiquido,iPago:variant;
var bk:Tbookmark;
var iMonta:boolean;
begin
    iFaturado:=0;
    progressBar1.Position:=0;

    if chkFilial.Checked then
    begin
        iLinhaF:='';
        iFilial:=0;
    end
    else
    begin
        iLinhaF:='and Filial=:iFilial ';
        iFilial:=cmbFilial.KeyValue;
    end;

    iMonta:=false;
    if (iFilial=xFilial) and
       (Int(DtpIni.Date)=xDataIni) and
       (Int(DtpFim.Date)=xDataFim) then
    else
    begin
        xFilial:=iFilial;
        xDataIni:=Int(DtpIni.Date);
        xDataFim:=Int(DtpFim.Date);
        iMonta:=true
    end;

    with dmRelatorio do
    begin
        if iMonta then
        begin
            relLancamento.Tag:=1;
            relLancamento.close;
            relLancamento.sql.clear;
            relLancamento.sql.text:='select * from Lancamentos  '+
                                    'where DataVencto>=:iDataIni and '+
                                    '      DataVencto<=:iDataFim and '+
                                    '      Contabilizado=1 and '+
                                    '      Cod1=2 and (Cod2>=50 and Cod2<=70)'+iLinhaF;
            if not chkFilial.Checked then
                relLancamento.ParamByName('iFilial').value:=cmbFilial.KeyValue;
            relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
            relLancamento.ParamByName('iDataFim').asdate:=DtpFim.Date;
            relLancamento.Open;

            relLancamento1.Close;
            relLancamento1.SQL.Text:='Delete from relLancamentos';
            relLancamento1.Execute;
            relLancamento1.SQL.Text:='Select * from relLancamentos';
            relLancamento1.Open;

            progressBar1.Position:=0;
            progressBar1.Min:=0;
            progressBar1.Max:=relLancamento.RecordCount;
            relLancamento.First;
            while not relLancamento.eof do
            begin
                relLancamento1.Insert;
                for i:=0 to 26 do
                    if (relLancamento1.fields[i].fieldname<>'Sequencial') and
                       (relLancamento1.fields[i].fieldname<>'ValorReal') then
                        relLancamento1.fields[i].value:=relLancamento.fieldbyname(relLancamento1.fields[i].fieldname).value;

                    if relLancamento1Status.value='P' then
                        relLancamento1ValorReal.value:=relLancamento1ValorPago.value
                    else
                        relLancamento1ValorReal.value:=relLancamento1Valor.value;
                    if relLancamento1Cod1.value>1 then
                        relLancamento1ValorReal.value:=relLancamento1ValorReal.value*-1;

                    relLancamento1.post;
                    relLancamento.Next;
                    progressBar1.Position:=progressBar1.Position+1;
                end;
                relLancamento1.IndexFieldNames:='Cod1;Cod2;Cod3;DataVencto;Filial;Cliente;Doc';
                relLancamento1.Locate('Cod1;Cod2;Cod3',VarArrayof([1,1,1]),[]);
                while (relLancamento1Cod1.value=1) and
                      (relLancamento1Cod2.value=1) and
                      (relLancamento1Cod3.value=1) and
                      (not relLancamento1.eof) do
                begin
                    if dbNF.Locate('Filial;NF',VarArrayof([relLancamento1Filial.value,relLancamento1NF.value]),[]) then
                    begin
                        bk:=relLancamento1.getbookmark;
                        iImpostos:=dbNFValorImpostos.value;
                        iIR:=dbNFValorIRenda.value;
                        iBruto:=dbNFNFBruto.value;
                        iLiquido:=dbNFNFLiquida.value;
                        iPago:=relLancamento1ValorReal.value;
                        relLancamento1.Edit;
                        if iLiquido>0 then
                            relLancamento1ValorReal.value:=iBruto*(iPago/iLiquido);
                        relLancamento1.Post;

                    if iIR>0 then
                        if relLancamento.Locate('Filial;Lancamento',VarArrayof([relLancamento1Filial.value,
                                                                                relLancamento1Lancamento.value]),[]) then
                        begin
                            relLancamento1.Insert;
                            for i:=0 to 26 do
                                if (relLancamento1.fields[i].fieldname<>'Sequencial') and
                                   (relLancamento1.fields[i].fieldname<>'ValorReal') then
                                    relLancamento1.fields[i].value:=relLancamento.fieldbyname(relLancamento1.fields[i].fieldname).value;
                            relLancamento1Cod1.value:=2;
                            relLancamento1Cod2.value:=80;
                            relLancamento1Cod3.value:=8;
                            if iLiquido>0 then
                                relLancamento1ValorReal.Value:=iIR*(iPago/iLiquido)*-1;
                            relLancamento1.Post;
                        end;
                    if iImpostos>0 then
                        if relLancamento.Locate('Filial;Lancamento',VarArrayof([relLancamento1Filial.value,
                                                                             relLancamento1Lancamento.value]),[]) then
                        begin
                            relLancamento1.Insert;
                            for i:=0 to 26 do
                                if (relLancamento1.fields[i].fieldname<>'Sequencial') and
                                   (relLancamento1.fields[i].fieldname<>'ValorReal') then
                                    relLancamento1.fields[i].value:=relLancamento.fieldbyname(relLancamento1.fields[i].fieldname).value;
                            relLancamento1Cod1.value:=2;
                            relLancamento1Cod2.value:=80;
                            relLancamento1Cod3.value:=9;
                            if iLiquido>0 then
                                relLancamento1ValorReal.Value:=iImpostos*(iPago/iLiquido)*-1;
                            relLancamento1.Post;
                        end;
                    relLancamento1.GotoBookmark(bk);
                end;
                relLancamento1.Next;
            end;

            relNF1.close;
            relNF1.sql.clear;
            relNF1.sql.text:='select clientedeb, sum(nfbruto) as nfbruto from NF  '+
                             'where DataEmissao>=:iDataIni and '+
                             '      DataEmissao<=:iDataFim and '+
                             '      Status=1 '+
                             iLInhaF+
                             'group by clientedeb '+
                             'order by clientedeb ';
            if not chkFilial.Checked then
                relNF1.ParamByName('iFilial').value:=cmbFilial.KeyValue;
            relNF1.ParamByName('iDataIni').asdate:=DtpIni.Date;
            relNF1.ParamByName('iDataFim').asdate:=DtpFim.Date;
            relNF1.Open;

            iTotalNF:=0;
            relNF1.First;
            while not relNF1.eof do
            begin
                iTotalNF:=iTotalNF+relNF1NFbruto.value;
                relNF1.Next;
            end;
            relNF1.First;

        end;
    end;

    with dmRelatorio do
    begin
        relLancamentoTot.close;
        relLancamentoTot.sql.clear;
        relLancamentoTot.sql.text:='select ClienteDeb, '+
                                    '       sum(valor) as Valor, '+
                                    '       sum(valorPago) as ValorPago, '+
                                    '       sum(valorReal) as ValorReal '+
                                    'from RelLancamentos  '+
                                    'where DataVencto>=:iDataIni and '+
                                    '      DataVencto<=:iDataFim and '+
                                    '      Cod1=1 '+
                                    iLinhaF+
                                    'group by ClienteDeb '+
                                    'order by ClienteDeb ';
        if not chkFilial.Checked then
            relLancamentoTot.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamentoTot.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamentoTot.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamentoTot.Open;

        relLancamento2Cli.close;
        relLancamento2Cli.sql.clear;
        relLancamento2Cli.sql.text:='select ClienteDeb,Cod1,Cod2, '+
                                 '       sum(valor) as Valor, '+
                                 '       sum(valorPago) as ValorPago, '+
                                 '       sum(valorReal) as ValorReal '+
                                 'from RelLancamentos  '+
                                 'where DataVencto>=:iDataIni and '+
                                 '      DataVencto<=:iDataFim '+
                                 iLinhaF+
                                 'group by ClienteDeb,Cod1,Cod2 '+
                                 'order by ClienteDeb,Cod1,Cod2';
        if not chkFilial.Checked then
            relLancamento2Cli.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento2Cli.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento2Cli.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento2Cli.Open;
        relLancamento2Cli.Locate('Cod1;Cod2',VarArrayof([1,1]),[]);

        while (relLancamento2CliCod1.value=1) and
              (relLancamento2CliCod2.value=1) and
              (not relLancamento2Cli.eof) do
        begin
            iFaturado:=iFaturado+relLancamento2CliValorReal.value;
            relLancamento2Cli.Next;
        end;
        relLancamento2Cli.Refresh;

        relLanCli.Close;
        relLanCli.SQL.Text:='Delete from relLancamentoCli';
        relLanCli.Execute;
        relLanCli.SQL.Text:='Select * from relLancamentoCli';
        relLanCli.Open;
        relLanCli.IndexFieldNames:='ClienteDeb;Cod1;Cod2;Cod3';
        relLancamento2Cli.First;
        while not relLancamento2Cli.Eof do
        begin
            if relLancamento2CliClienteDeb.value>0 then
            begin
                relLanCli.Insert;
                for i:=0 to relLanCli.fieldcount-1 do
                    if (relLanCli.fields[i].fieldname<>'ValorRateado') and
                       (relLanCli.fields[i].fieldname<>'ValorTotal') and
                       (relLanCli.fields[i].fieldname<>'PlanoNome') and
                       (relLanCli.fields[i].fieldname<>'Faturamento') and
                       (relLanCli.fields[i].fieldname<>'PFaturamento') and
                       (relLanCli.fields[i].fieldname<>'PFaturamentoCli') and
                       (relLanCli.fields[i].fieldname<>'Cod3') then
                            relLanCli.fields[i].value:=relLancamento2Cli.fieldbyname(relLanCli.fields[i].fieldname).value;
                    relLanCliFaturamento.value:=relLancamento2CliFaturamento.value;
                relLanCliPFaturamento.value:=relLancamento2CliPFaturamento.value;
                relLanCli.Post;
            end;
            relLancamento2Cli.Next;
        end;
        relLancamento2Cli.First;
        while (not relLancamento2Cli.Eof) and
              (relLancamento2CliClienteDeb.value=0) do
        begin
            if relLancamento2CliCod1.value>1 then
            begin
                relNF1.First;
                while not relNF1.eof do
                begin
                    if relLanCli.Locate('ClienteDeb;Cod1;Cod2',VarArrayof([relNF1ClienteDeb.value,
                                                                           relLancamento2CliCod1.value,
                                                                           relLancamento2CliCod2.value,0]),[]) then
                        relLanCli.Edit
                    else
                    begin
                        relLanCli.Insert;
                        relLanCliClienteDeb.value:=relNF1ClienteDeb.value;
                        relLanCliCod1.value:=relLancamento2CliCod1.value;
                        relLanCliCod2.value:=relLancamento2CliCod2.value;
                        relLanCliFilial.value:=iFilial;
                    end;
                    relLanCliPFaturamentoCli.value:=relNF1NFBruto.value/iTotalNF*100;
                    relLanCliValorRateado.value:=relLancamento2CliValorReal.value*relNF1NFBruto.value/iTotalNF;
                    relLanCli.Post;
                    relNF1.Next;
                end;
            end;
            relLancamento2Cli.Next;
        end;

        relLanCli.IndexFieldNames:='Cod1;Cod2;Cod3;ClienteDeb';

        qryLanCli.close;
        qryLanCli.sql.clear;
        qryLanCli.sql.text:='Select * from RelLancamentoCli order by Cod1,Cod2,Cod3,ClienteDeb ';
        qryLanCli.Open;
        qryLanCli.First;
        while not qryLanCli.eof do
        begin
            if relLanCli.Locate('Cod1;Cod2;Cod3;ClienteDeb',VarArrayof([9,90,9,qryLanCliClienteDeb.value]),[]) then
                relLanCli.Edit
            else
                relLanCli.Insert;
            relLanCliCod1.value:=9;
            relLanCliCod2.value:=90;
            relLanCliCod3.value:=9;
            relLanCliClienteDeb.value:=qryLanCliClienteDeb.value;
            relLanCliFilial.value:=qryLanCliFilial.value;
            relLanCliValorReal.value:=relLanCliValorReal.value+qryLanCliValorReal.value;
            relLanCliValorRateado.value:=relLanCliValorRateado.value+qryLanCliValorRateado.value;
            relLanCli.Post;

            qryLanCli.Next;
        end;

        relLanCli.IndexFieldNames:='Cod1;Cod2;Cod3;ClienteDeb';
        frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
        frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
        frmMenu.RvFin.SetParam('Titulo','Lançamentos Previstos e Pagos');

        frmMenu.rvFin.SelectReport('relLanFolha',true);

        frmMenu.rvFin.Execute;
        progressBar1.Position:=0;
    end;
end;


procedure TfrmRelFolhaTotalCli.FormCreate(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xFilial:=10;
    xPago:=10;
end;

procedure TfrmRelFolhaTotalCli.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;
end;

procedure TfrmRelFolhaTotalCli.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteStatusCli.value=true;
end;

end.
