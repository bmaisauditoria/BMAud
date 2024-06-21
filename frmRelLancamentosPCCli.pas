unit frmRelLancamentosPCCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils,
  Spin;

type
  TfrmRelLancamentoPCCli = class(TForm)
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
    rdgPago: TRadioGroup;
    rdgNivel: TRadioGroup;
    chkFilial: TCheckBox;
    cmbCliente: TDBLookupComboBox;
    chkCliente: TCheckBox;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteStatusCli: TBooleanField;
    rdgOrdem: TRadioGroup;
    ProgressBar1: TProgressBar;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure chkClienteClick(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLancamentoPCCli: TfrmRelLancamentoPCCli;
  iFaturado:currency;
  iFilial,xCliente:integer;
  xDataIni,xDataFim:TDate;
  xFilial,xPago:integer;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelLancamentoPCCli.FormClose(Sender: TObject;
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

procedure TfrmRelLancamentoPCCli.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    dbCliente.Open;
    cmbCliente.keyvalue:=dbClienteCliFor.value;
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

procedure TfrmRelLancamentoPCCli.cmdImpClick(Sender: TObject);
var iLinhaP,iLinhaF,iLinhaC:string;
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

    if chkCliente.Checked then
        iLinhaC:=''
    else
        iLinhaC:='and ClienteDeb=:iCliente ';

    case rdgPago.ItemIndex of
    0:iLinhaP:='and Status='+QuotedStr('A')+' ';
    1:iLinhaP:='and Status='+QuotedStr('P')+' ';
    2:iLinhaP:='';
    end;

    iMonta:=false;
    if (iFilial=xFilial) and
       (Int(DtpIni.Date)=xDataIni) and
       (Int(DtpFim.Date)=xDataFim) and
       (rdgPago.ItemIndex=xPago) and
       (xCliente=cmbCliente.KeyValue) then
    else
    begin
        xFilial:=iFilial;
        if chkCliente.Checked then
            xCliente:=cmbCliente.KeyValue
        else
            xCliente:=0;
        xDataIni:=Int(DtpIni.Date);
        xDataFim:=Int(DtpFim.Date);
        xPago:=rdgPago.ItemIndex;
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
                                    '      Contabilizado=1 '+
                                    iLinhaP+iLinhaF+iLinhaC;
            if not chkFilial.Checked then
                relLancamento.ParamByName('iFilial').value:=cmbFilial.KeyValue;
            if not chkCliente.Checked then
                relLancamento.ParamByName('iCliente').value:=cmbCliente.KeyValue;
            relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
            relLancamento.ParamByName('iDataFim').asdate:=DtpFim.Date;
            relLancamento.Open;

            relLancamento1.Close;
            relLancamento1.SQL.Text:='Delete from relLancamentos';
            relLancamento1.Execute;
            relLancamento1.SQL.Text:='Select * from relLancamentos';
            relLancamento1.Tag:=2;
            relLancamento1.Open;

            progressBar1.Position:=0;
            progressBar1.Min:=0;
            progressBar1.Max:=relLancamento.RecordCount;
            relLancamento.First;
            while not relLancamento.eof do
            begin
                dbPlanoC.Locate('Cod1;Cod2;Cod3',VarArrayof([relLancamentoCod1.value,
                                                             relLancamentoCod2.value,
                                                             relLancamentoCod3.value]),[]);
                if dbPlanoCIndicativo.value='S' then
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
                end;
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

case rdgNivel.ItemIndex of
0:begin

    with dmRelatorio do
    begin
        case rdgOrdem.ItemIndex of
        0:relLancamento1.IndexFieldNames:='ClienteDeb;Cod1;Cod2;Cod3;DataVencto;Filial;Cliente;Doc';
        1:relLancamento1.IndexFieldNames:='Cod1;Cod2;Cod3;ClienteDeb;DataVencto;Filial;Cliente;Doc';
        end;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));

    case rdgPago.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo','Lançamentos Previstos');
    1:frmMenu.RvFin.SetParam('Titulo','Lançamentos Pagos');
    2:frmMenu.RvFin.SetParam('Titulo','Lançamentos Previstos e Pagos');
    end;

    case rdgOrdem.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relLancamentosPCCli1',true);
    1:frmMenu.rvFin.SelectReport('relLancamentosPCCli2',true);
    end;

    frmMenu.rvFin.Execute;
end;
1:begin
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
                                   iLinhaP+iLinhaF+
                                   'group by ClienteDeb '+
                                   'order by ClienteDeb ';
        if not chkFilial.Checked then
            relLancamentoTot.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamentoTot.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamentoTot.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamentoTot.Open;

        relLancamento3Cli.close;
        relLancamento3Cli.sql.clear;
        relLancamento3Cli.sql.text:='select ClienteDeb,Cod1,Cod2,Cod3, '+
                                    '       sum(valor) as Valor, '+
                                    '       sum(valorPago) as ValorPago, '+
                                    '       sum(valorReal) as ValorReal '+
                                    'from RelLancamentos  '+
                                    'where DataVencto>=:iDataIni and '+
                                    '      DataVencto<=:iDataFim '+
                                    iLinhaP+iLinhaF+
                                    'group by ClienteDeb,Cod1,Cod2,Cod3 '+
                                    'order by ClienteDeb,Cod1,Cod2,Cod3';
        if not chkFilial.Checked then
            relLancamento3Cli.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento3Cli.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento3Cli.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento3Cli.Open;

        relLanCli.Close;
        relLanCli.SQL.Text:='Delete from relLancamentoCli';
        relLanCli.Execute;
        relLanCli.SQL.Text:='Select * from relLancamentoCli';
        relLanCli.Open;
        relLanCli.IndexFieldNames:='ClienteDeb;Cod1;Cod2;Cod3';
        relLancamento3Cli.First;
        while not relLancamento3Cli.Eof do
        begin
            if relLancamento3CliClienteDeb.value>0 then
            begin
                relLanCli.Insert;
                for i:=0 to relLanCli.fieldcount-1 do
                    if (relLanCli.fields[i].fieldname<>'ValorRateado') and
                       (relLanCli.fields[i].fieldname<>'ValorTotal') and
                       (relLanCli.fields[i].fieldname<>'Faturamento') and
                       (relLanCli.fields[i].fieldname<>'PFaturamento') and
                       (relLanCli.fields[i].fieldname<>'PFaturamentoCli') then
                            relLanCli.fields[i].value:=relLancamento3Cli.fieldbyname(relLanCli.fields[i].fieldname).value;
                   relLanCliFaturamento.value:=relLancamento3CliFaturamento.value;
                   relLanCliPFaturamento.value:=relLancamento3CliPFaturamento.value;
                relLanCli.Post;
            end;
            relLancamento3Cli.Next;
        end;
        relLancamento3Cli.First;
        while (not relLancamento3Cli.Eof) and
              (relLancamento3CliClienteDeb.value=0) do
        begin
            if relLancamento3CliCod1.value>1 then
            begin
                relNF1.First;
                while not relNF1.eof do
                begin
                    if relLanCli.Locate('ClienteDeb;Cod1;Cod2;Cod3',VarArrayof([relNF1ClienteDeb.value,
                                                                                relLancamento3CliCod1.value,
                                                                                relLancamento3CliCod2.value,
                                                                                relLancamento3CliCod3.value]),[]) then
                        relLanCli.Edit
                    else
                    begin
                        relLanCli.Insert;
                        relLanCliClienteDeb.value:=relNF1ClienteDeb.value;
                        relLanCliCod1.value:=relLancamento3CliCod1.value;
                        relLanCliCod2.value:=relLancamento3CliCod2.value;
                        relLanCliCod3.value:=relLancamento3CliCod3.value;
                        relLanCliFilial.value:=iFilial;
                    end;
                    relLanCliPFaturamentoCli.value:=relNF1NFBruto.value/iTotalNF*100;
                    relLanCliValorRateado.value:=relLancamento3CliValorReal.value*relNF1NFBruto.value/iTotalNF;
                    relLanCli.Post;
                    relNF1.Next;
                end;
            end;
            relLancamento3Cli.Next;
        end;
    end;

    case rdgOrdem.ItemIndex of
    0:dmRelatorio.relLanCli.IndexFieldNames:='ClienteDeb;Cod1;Cod2;Cod3';
    1:dmRelatorio.relLanCli.IndexFieldNames:='Cod1;Cod2;Cod3;ClienteDeb';
    end;

    case rdgOrdem.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relLan3Cli1',true);
    1:frmMenu.rvFin.SelectReport('relLan3Cli2',true);
    end;
    frmMenu.rvFin.Execute;
end;
2:begin
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
                                    iLinhaP+iLinhaF+
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
                                 iLinhaP+iLinhaF+
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
        relLanCli.SQL.text:='Select * from relLancamentoCli';
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
                    if relLanCli.Locate('ClienteDeb;Cod1;Cod2;Cod3',VarArrayof([relNF1ClienteDeb.value,
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
    end;

    case rdgOrdem.ItemIndex of
    0:dmRelatorio.relLanCli.IndexFieldNames:='ClienteDeb;Cod1;Cod2;Cod3';
    1:dmRelatorio.relLanCli.IndexFieldNames:='Cod1;Cod2;Cod3;ClienteDeb';
    end;
    case rdgOrdem.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relLan2Cli1',true);
    1:frmMenu.rvFin.SelectReport('relLan2Cli2',true);
    end;
    frmMenu.rvFin.Execute;
    progressBar1.Position:=0;
end;
end;
end;

procedure TfrmRelLancamentoPCCli.FormCreate(Sender: TObject);
begin
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xFilial:=10;
    xPago:=10;
end;

procedure TfrmRelLancamentoPCCli.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;
end;

procedure TfrmRelLancamentoPCCli.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteStatusCli.value=true;
end;

procedure TfrmRelLancamentoPCCli.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
        cmbCliente.Visible:=false
    else
        cmbCliente.Visible:=true;
end;

procedure TfrmRelLancamentoPCCli.cmbMesChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);
end;

end.
