unit frmRelFluxoCaixas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils,
  Spin;

type
  TfrmRelFluxoCaixa = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    Label2: TLabel;
    dtpIni: TDateTimePicker;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    rdgNivel: TRadioGroup;
    chkFilial: TCheckBox;
    ProgressBar1: TProgressBar;
    dbBanco: TMSTable;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dbBancoEndereco: TMemoField;
    dbBancoGerente: TStringField;
    dbBancoFone: TStringField;
    dbBancoFax: TStringField;
    dbBancoSite: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoUltimoCheque: TIntegerField;
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoStatus: TStringField;
    dbBancoUsuario: TStringField;
    dbMovBanco: TMSTable;
    dbMovBancoMovBanco: TAutoIncField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoFundo: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoCruzado: TBooleanField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    dbBancoAgencia: TStringField;
    dbBancoDataFechamento: TDateTimeField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    cmdRelFluxo: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure dbBancoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbMovBancoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmbMesChange(Sender: TObject);
    procedure cmbAnoChange(Sender: TObject);
    procedure cmdRelFluxoClick(Sender: TObject);
  private
    { Private declarations }
  public
  function saldoem(Dat:Tdate):Currency;
    { Public declarations }

  end;

var
  frmRelFluxoCaixa: TfrmRelFluxoCaixa;
  iFaturado:currency;
  iFilial:integer;
  xDataIni,xDataFim:TDate;
  xFilial,xPago,xPlano:integer;
  saldoini,saldofim:currency;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

function TfrmRelFluxoCaixa.saldoem(Dat:Tdate):Currency;
var p:Currency;
    sd,md:currency;
    dtf:tdate;
    a,m,d:word;
    q3,a3,m3,a2,m2,d2,a1,m1,d1:word;
    dx:tdate;
    bco:integer;
begin
    dbBanco.first;
    p:=0;
    while not dbBanco.eof do
    begin
        sd:=dbBancosaldoAtual.ascurrency;
        p:=p+sd;
        dtf:=encodedate(3300,12,31);
        dbBanco.next;
    end;
    dbBanco.First;
    while not dbBanco.eof do
    begin
        bco:=dbBancoBancoId.value;
        dbMovBanco.last;
        while not dbMovBanco.bof do
        begin
            if (dbMovBancoDataEntrada.value>=dat) and (dbMovBancoDataEntrada.value<=dtf) and
               (dbMovBancoBancoId.value=bco)  then
            begin
                decodedate(dbMovBancoDataEntrada.value,a,m,d);
                dx:=encodedate(a,m,d);
                if dx>=dat then
                begin
                    sd:=dbMovBancovalor.ascurrency;
                    if pos(dbMovBancoTipo.asstring,'RCS')<>0 then
                        p:=p-sd
                    else
                        if pos(dbMovBancoTipo.asstring,'ADXTP')<>0 then
                            p:=p+sd;
                end;
            end;
            dbMovBanco.prior;
        end;
        dbBanco.Next;
    end;
    result:=p;
end;

procedure TfrmRelFluxoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dbFilial.Close;
    dbBanco.Close;
    dbMovBanco.Close;
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xFilial:=10;
    xPago:=10;
end;

procedure TfrmRelFluxoCaixa.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    dbFilial.Open;
    dbBanco.Open;
    dbMovBanco.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

procedure TfrmRelFluxoCaixa.FormCreate(Sender: TObject);
begin
    xDataIni:=EncodeDate(1900,1,1);
    xDataFim:=EncodeDate(1900,1,1);
    xFilial:=10;
    xPago:=10;
    xPlano:=10;
end;

procedure TfrmRelFluxoCaixa.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;
end;

procedure TfrmRelFluxoCaixa.dbBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if chkFilial.Checked=true then
        accept:=((dataset['Status']='A'))
    else
        accept:=((dataset['Status']='A') and
       (dbFilialfilial.value=dbBancofilial.value));

end;

procedure TfrmRelFluxoCaixa.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(ansiuppercase(dbMovBancoStatus.asstring)<>'C') and
            (dbMovBancoBancoId.value=dbBancoBancoId.value);
end;

procedure TfrmRelFluxoCaixa.cmbMesChange(Sender: TObject);
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

procedure TfrmRelFluxoCaixa.cmbAnoChange(Sender: TObject);
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

procedure TfrmRelFluxoCaixa.cmdRelFluxoClick(Sender: TObject);
var iLinhaP,iLinhaF:string;
var i:integer;
var iIR,iImpostos,iBruto,iLiquido,iPago:variant;
var bk:Tbookmark;
var iMonta:boolean;
var val:currency;
var Ini,Fim:TDate;
begin
    saldoini:=saldoem(dtpIni.date);
    saldofim:=saldoem(dtpFim.date);

    Ini:=dtpIni.date;
    Fim:=dtpFim.date;

    iFaturado:=0;
    progressBar1.Position:=0;

    if chkFilial.Checked then
    begin
        iLinhaF:='';
        iFilial:=0;
    end
    else
    begin
        iLinhaF:='and Lancamentos.Filial=:iFilial ';
        iFilial:=cmbFilial.KeyValue;
    end;

    iMonta:=false;
    if (iFilial=xFilial) and
       (Int(DtpIni.Date)=xDataIni) and
       (Int(DtpFim.Date)=xDataFim)  then
    else
    begin
        xFilial:=iFilial;
        xDataIni:=Int(DtpIni.Date);
        xDataFim:=Int(DtpFim.Date);
        iMonta:=true
    end;

{      relFluxo.sql.text:='INSERT INTO relFluxo '+
                           '(      Filial, Lancamento, TipoPag, Cliente, ClienteDeb, DataEmissao, DataVencto, Prazo, Cod1, Cod2, Cod3, Historico, Doc, Valor, Tributo, BancoId, Cheque, DataPagto, '+
                           '       ValorPago, ValorBruto, Pago, Selecionado, Status, Previsao, MovBanco, NF) '+
                           'SELECT Filial, Lancamento, TipoPag, Cliente, ClienteDeb, DataEmissao, DataVencto, Prazo, Cod1, Cod2, Cod3, Historico, Doc, Valor, Tributo, BancoId, Cheque, DataPagto,'+
                           '       ValorPago, ValorBruto, Pago, Selecionado, Status, Previsao, MovBanco, NF '+
                           'FROM         Lancamentos '+}

with dmRelatorio do
begin

    case rdgNivel.ItemIndex of
    0:begin
        qryFluxoD.close;
        qryFluxoD.sql.clear;

        qryFluxoD.sql.text:='select * from Lancamentos  '+
                            'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID '+
                            'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and '+
                            '                           Lancamentos.Cod2=PlanoContas.Cod2 and '+
                            '                           Lancamentos.Cod3=PlanoContas.Cod3)  '+
                            'where Lancamentos.BancoId=CCorrente.BancoId and '+
                            '      CCorrente.Status='+QuotedStr('A')+' and '+
                            '      (DataPagto>=:iDataIni and '+
                            '       DataPagto<=:iDataFim ) '+iLinhaF+
                            ' order by Lancamentos.Cod1,Indicativo desc,Lancamentos.Cod2,Lancamentos.Cod3 ';
        if not chkFilial.Checked then
            qryFluxoD.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryFluxoD.ParamByName('iDataIni').asdate:=Ini;
        qryFluxoD.ParamByName('iDataFim').asdate:=Fim;
        qryFluxoD.Open;
        qryFluxoD.First;


        frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
        frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));

        frmMenu.RvFin.SetParam('Titulo','');

        frmMenu.rvFin.SelectReport('relFluxoD',true);
        frmMenu.rvFin.Execute;
    end;
    1:begin
        qryFluxoD3.close;
        qryFluxoD3.sql.clear;
        qryFluxoD3.sql.text:='select Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamentos.Cod2,Lancamentos.Cod3, '+
                             '       sum(Lancamentos.valorPago) as ValorPago, '+
                             '       sum(Lancamentos.valor) as Valor '+
                             'from Lancamentos '+
                             'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID '+
                             'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and '+
                             '                           Lancamentos.Cod2=PlanoContas.Cod2 and '+
                             '                           Lancamentos.Cod3=PlanoContas.Cod3)  '+
                             'where Lancamentos.BancoId=CCorrente.BancoId and '+
                             '      CCorrente.Status='+QuotedStr('A')+' and '+
                             '      (DataPagto>=:iDataIni and '+
                             '       DataPagto<=:iDataFim ) '+iLinhaF+
                             'group by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamentos.Cod2,Lancamentos.Cod3 '+
                             'order by Lancamentos.Filial,Lancamentos.Cod1,Indicativo desc,Lancamentos.Cod2,Lancamentos.Cod3 ';
        if not chkFilial.Checked then
            qryFluxoD3.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryFluxoD3.ParamByName('iDataIni').asdate:=Ini;
        qryFluxoD3.ParamByName('iDataFim').asdate:=Fim;
        qryFluxoD3.Open;
        qryFluxoD3.First;

        frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
        frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
        frmMenu.rvFin.SelectReport('relFluxoD3',true);
        frmMenu.rvFin.Execute;
    end;
    2:begin
        qryFluxoD2.close;
        qryFluxoD2.sql.clear;
        qryFluxoD2.sql.text:='select Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamentos.Cod2, '+
                             '       sum(Lancamentos.valorPago) as ValorPago, '+
                             '       sum(Lancamentos.valor) as Valor '+
                             'from Lancamentos '+
                             'INNER JOIN CCorrente ON Lancamentos.BancoId = CCorrente.BancoID '+
                             'INNER JOIN PlanoContas on (Lancamentos.Cod1=PlanoContas.Cod1 and '+
                             '                           Lancamentos.Cod2=PlanoContas.Cod2 and   '+
                             '                           Lancamentos.Cod3=PlanoContas.Cod3 )  '+
                             'where Lancamentos.BancoId=CCorrente.BancoId and '+
                             '      CCorrente.Status='+QuotedStr('A')+' and '+
                             '      (DataPagto>=:iDataIni and '+
                             '       DataPagto<=:iDataFim ) '+iLinhaF+
                             'group by Lancamentos.Filial,Lancamentos.Cod1,Indicativo,Lancamentos.Cod2 '+
                             'order by Lancamentos.Filial,Lancamentos.Cod1,Indicativo desc,Lancamentos.Cod2 ';

        if not chkFilial.Checked then
            qryFluxoD2.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryFluxoD2.ParamByName('iDataIni').asdate:=Ini;
        qryFluxoD2.ParamByName('iDataFim').asdate:=Fim;
        qryFluxoD2.Open;
        qryFluxoD2.First;

        frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
        frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
        frmMenu.rvFin.SelectReport('relFluxoD2',true);
        frmMenu.rvFin.Execute;
    end;
    end;

end;
end;

end.
