unit frmRelLancamentosPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils,
  Spin;

type
  TfrmRelLancamentoPC = class(TForm)
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
    ProgressBar1: TProgressBar;
    rdgPlano: TRadioGroup;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLancamentoPC: TfrmRelLancamentoPC;
  iFaturado:currency;
  iFilial:integer;
  xDataIni,xDataFim:TDate;
  xFilial,xPago,xPlano:integer;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelLancamentoPC.FormClose(Sender: TObject;
  var Action: TCloseAction);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dbFilial.Close;
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xFilial:=10;
    xPago:=10;
end;

procedure TfrmRelLancamentoPC.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

procedure TfrmRelLancamentoPC.cmdImpClick(Sender: TObject);
var iLinhaP,iLinhaF:string;
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
       (rdgPlano.ItemIndex=xPlano) then
    else
    begin
        xFilial:=iFilial;
        xDataIni:=Int(DtpIni.Date);
        xDataFim:=Int(DtpFim.Date);
        xPago:=rdgPago.ItemIndex;
        xPlano:=rdgPlano.ItemIndex;
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
                                iLinhaP+iLinhaF;
        if not chkFilial.Checked then
            relLancamento.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento.Open;

        relLancamento1.Close;
        relLancamento1.SQL.Text:='Delete from relLancamentos';
        relLancamento1.Execute;
        relLancamento1.SQL.Text:='Select * from relLancamentos';
        relLancamento1.Tag:=1;
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
                for i:=0 to 26 do   //até usuario
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
        end;
        if rdgPlano.ItemIndex=0 then
        begin
            dbPlanoC.First;
            while not dbPlanoC.eof do
            begin
                if not relLancamento1.Locate('Cod1;Cod2;Cod3',VarArrayof([dbPlanoCCod1.value,
                                                                          dbPlanoCCod2.value,
                                                                          dbPlanoCcod3.value]),[]) then
                begin
                    relLancamento1.Insert;
                    relLancamento1Cod1.value:=dbPlanoCCod1.value;
                    relLancamento1Cod2.value:=dbPlanoCCod2.value;
                    relLancamento1Cod3.value:=dbPlanoCCod3.value;
                    relLancamento1Filial.value:=iFilial;
                    relLancamento1DataVencto.value:=dtpIni.Date;
                    relLancamento1.Post;
                end;
                dbPlanoC.Next
            end;
        end;
    end;

case rdgNivel.ItemIndex of
0:begin
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Titulo','Relatório Gerencial - Detalhes');

    case rdgPago.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos');
    1:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Pagos');
    2:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos e Pagos');
    end;

    frmMenu.rvFin.SelectReport('relLancamentosPC',true);
    frmMenu.rvFin.Execute;
end;
1:begin
    with dmRelatorio do
    begin
        relLancamento3.close;
        relLancamento3.sql.clear;
        relLancamento3.sql.text:='select Cod1,Cod2,Cod3, '+
                                 '       sum(valorPago) as ValorPago, '+
                                 '       sum(valor) as valor,'+
                                 '       sum(valorreal) as ValorReal '+
                                 'from RelLancamentos  '+
                                 'where DataVencto>=:iDataIni and '+
                                 '      DataVencto<=:iDataFim '+
                                 iLinhaP+iLinhaF+
                                 'group by Cod1,Cod2,Cod3 '+
                                 'order by Cod1,Cod2,Cod3 ';
        if not chkFilial.Checked then
            relLancamento3.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento3.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento3.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento3.Open;

        relLancamento3.Locate('Cod1;Cod2',VarArrayof([1,1]),[]);
        while (relLancamento3Cod1.value=1) and
              (relLancamento3Cod2.value=1) and
              (not relLancamento3.eof) do
        begin
            iFaturado:=iFaturado+relLancamento3ValorReal.value;
            relLancamento3.Next;
        end;
        relLancamento3.Refresh;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Titulo','Relatório Gerencial - Nível 3');
    case rdgPago.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos');
    1:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Pagos');
    2:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos e Pagos');
    end;
    frmMenu.rvFin.SelectReport('relLancamentos3',true);
    frmMenu.rvFin.Execute;
end;
2:begin
    with dmRelatorio do
    begin
        relLancamento2.close;
        relLancamento2.sql.clear;
        relLancamento2.sql.text:='select Cod1,Cod2, '+
                                 '       sum(valorPago) as ValorPago, '+
                                 '       sum(valor) as Valor, '+
                                 '       sum(valorreal) as ValorReal '+
                                 'from RelLancamentos  '+
                                 'where DataVencto>=:iDataIni and '+
                                 '      DataVencto<=:iDataFim '+
                                 iLinhaP+iLinhaF+
                                 'group by Cod1,Cod2 '+
                                 'order by Cod1,Cod2 ';
        if not chkFilial.Checked then
            relLancamento2.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento2.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento2.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento2.Open;
        relLancamento2.Locate('Cod1;Cod2',VarArrayof([1,1]),[]);

        while (relLancamento2Cod1.value=1) and
              (relLancamento2Cod2.value=1) and
              (not relLancamento3.eof) do
        begin
            iFaturado:=iFaturado+relLancamento2ValorReal.value;
            relLancamento2.Next;
        end;
        relLancamento2.Refresh;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Titulo','Relatório Gerencial - Nível 2');
    case rdgPago.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos');
    1:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Pagos');
    2:frmMenu.RvFin.SetParam('Titulo1','Lançamentos Previstos e Pagos');
    end;
    frmMenu.rvFin.SelectReport('relLancamentos2',true);
    frmMenu.rvFin.Execute;
end;
end;
end;

procedure TfrmRelLancamentoPC.FormCreate(Sender: TObject);
begin
    xDataIni:=EncodeDate(2000,1,1);
    xDataFim:=EncodeDate(2000,1,1);
    xFilial:=10;
    xPago:=10;
    xPlano:=10;
end;

procedure TfrmRelLancamentoPC.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;    
end;

procedure TfrmRelLancamentoPC.cmbMesChange(Sender: TObject);
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
