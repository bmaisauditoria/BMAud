unit frmRelPFinanceira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmRePFinanceiro = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    cmbAno: TSpinEdit;
    qrySaldo: TMSQuery;
    qrySaldoBancoID: TSmallintField;
    qrySaldoAno: TSmallintField;
    qrySaldoMes: TSmallintField;
    qrySaldoSaldoConciliado: TCurrencyField;
    qrySaldoDebitosPendentes: TCurrencyField;
    qrySaldoSaldoAplicacao: TCurrencyField;
    qrySaldoNomeBanco: TStringField;
    qrySaldoTotalCaixa: TCurrencyField;
    qrySaldoFilial1: TIntegerField;
    qrySaldoSaldoBancario: TCurrencyField;
    cmbMes: TComboBox;
    Label1: TLabel;
    rvSaldo: TRvDataSetConnection;
    qrySaldoDebitosPrestadores: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qrySaldoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRePFinanceiro: TfrmRePFinanceiro;

implementation

uses dmRelatorios, frmPrincipal, frmMovsBanco;

{$R *.DFM}

procedure TfrmRePFinanceiro.FormCreate(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        m:=12;
        a:=a-1;
    end;
    cmbAno.Value:=a;
    cmbMes.ItemIndex:=m-1;
end;

procedure TfrmRePFinanceiro.SpeedButton1Click(Sender: TObject);
begin
    qrySaldo.Close;
    qrySaldo.SQL.Clear;
    qrySaldo.SQL.Text:='Select * from SaldoPF '+
                       'where Ano=:xAno and '+
                       '      Mes<=:xMes '+
                       'order by Ano,Mes,BancoId';
    qrySaldo.ParamByName('xano').AsInteger:=StrToInt(cmbAno.Text);
    qrySaldo.ParamByName('xmes').AsInteger:=cmbMes.ItemIndex+1;
    qrySaldo.Open;

    if qrySaldo.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.rvFin.SelectReport('relPosicaoFinanceiraMes',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRePFinanceiro.qrySaldoCalcFields(DataSet: TDataSet);
begin
    qrySaldoFilial1.Value:=0;
    qrySaldoTotalCaixa.Value:=qrySaldoSaldoConciliado.value-
                              qrySaldoDebitosPendentes.value-
                              qrySaldoDebitosPrestadores.value+
                              qrySaldoSaldoAplicacao.value;
    qrySaldoSaldoBancario.Value:=qrySaldoSaldoConciliado.value+
                                 qrySaldoSaldoAplicacao.value;
end;

end.




