unit frmRelLancamentosSocio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils;

type
  TfrmRelLancamentoSocio = class(TForm)
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
    chkFilial: TCheckBox;
    rdgNivel: TRadioGroup;
    rdgRelatorio: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLancamentoSocio: TfrmRelLancamentoSocio;
  iFaturado:currency;
  iFilial:integer;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelLancamentoSocio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
end;

procedure TfrmRelLancamentoSocio.FormShow(Sender: TObject);
begin
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
end;

procedure TfrmRelLancamentoSocio.cmdImpClick(Sender: TObject);
var iLinhaP,iLinhaF,iLinhaR:string;
var IniAnt,FimAnt:Tdate;
var d,m,a:word;
begin
    DecodeDate(dtpIni.date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        a:=a-1;
        m:=12;
    end;
    IniAnt:=EncodeDate(a,m,1);

    DecodeDate(dtpFim.date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        a:=a-1;
        m:=12;
    end;
    FimAnt:=EncodeDate(a,m,1);
    FimAnt:=EndofTheMonth(FimAnt);

    iFaturado:=0;

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

    case rdgRelatorio.ItemIndex of
    0:iLinhaR:=' or (DataVencto>=:iDataIniA and '+
               '     DataVencto<=:iDataFimA and '+
               '     Lancamentos.Cod1=1 '+iLinhaP+iLinhaF+') ';
    1:iLinhaR:=' '
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    case rdgPago.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo','Lançamentos Previstos');
    1:frmMenu.RvFin.SetParam('Titulo','Lançamentos Pagos');
    2:frmMenu.RvFin.SetParam('Titulo','Lançamentos Previstos e Pagos');
    end;


case rdgnivel.ItemIndex of
0:begin
    with dmRelatorio do
    begin
        qrySocio.close;
        qrySocio.sql.clear;
        qrySocio.sql.text:='select Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3, '+
                           '       sum(valorPago) as ValorPago, '+
                           '       sum(valor) as Valor '+
                           'from Lancamentos, PlanoContas  '+
                           'where  Lancamentos.Cod1=PlanoContas.Cod1 and '+
                           '       Lancamentos.Cod2=PlanoContas.Cod2 and '+
                           '       Lancamentos.Cod3=PlanoContas.Cod3 and '+
                           '      (DataVencto>=:iDataIni and '+
                           '       DataVencto<=:iDataFim and '+
                           '       Lancamentos.Cod1=2 and (Lancamentos.Cod2=94 or Lancamentos.Cod2=95) '+iLinhaP+iLinhaF+') '+iLinhaR+
                           'group by Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3 '+
                           'order by Lancamentos.Cod1,Lancamentos.Cod2,Lancamentos.Cod3 ';


        if not chkFilial.Checked then
            qrySocio.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        if rdgRelatorio.ItemIndex=0 then
        begin
            qrySocio.ParamByName('iDataIniA').asdate:=Iniant;
            qrySocio.ParamByName('iDataFimA').asdate:=FimAnt;
        end;
        qrySocio.ParamByName('iDataIni').asdate:=DtpIni.Date;
        qrySocio.ParamByName('iDataFim').asdate:=DtpFim.Date;
        qrySocio.Open;

        if qrySocio.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;

        qrySocio.Locate('Cod1;Cod2',VarArrayof([1,1]),[]);
        while (qrySocioCod1.value=1) and
              (qrySocioCod2.value=1) and
              (not qrySocio.eof) do
        begin
            iFaturado:=iFaturado+qrySocioValorReal.value;
            qrySocio.Next;
        end;
        qrySocio.Refresh;
        qrySocio.First;
    end;

    frmMenu.rvFin.SelectReport('relLanSocio',true);
    frmMenu.rvFin.Execute;
    end;
1:begin
    with dmRelatorio do
    begin
        relLancamento.close;
        relLancamento.sql.clear;
        relLancamento.sql.text:='select * from Lancamentos '+
                                'where (DataVencto>=:iDataIni and '+
                                '       DataVencto<=:iDataFim and '+
                                '       Cod1=2 and (Cod2=94 or Cod2=95) '+iLinhaP+iLinhaF+') '+iLinhaR+
                                'order by Cod1,Lancamentos.Cod2,Cod3,DataVencto ';
       if not chkFilial.Checked then
            relLancamento.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        if rdgRelatorio.ItemIndex=0 then
        begin
            relLancamento.ParamByName('iDataIniA').asdate:=Iniant;
            relLancamento.ParamByName('iDataFimA').asdate:=FimAnt;
        end;
        relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento.Open;
        if relLancamento.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;
    end;
    frmMenu.rvFin.SelectReport('relLanSocioDetalhe',true);
    frmMenu.rvFin.Execute;
end;
end;

end;

procedure TfrmRelLancamentoSocio.FormCreate(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
end;

procedure TfrmRelLancamentoSocio.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;
end;

end.
