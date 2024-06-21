unit relComparativosMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, Grids, DBGrids;

type
  TrelComparativoMes = class(TForm)
    qrpRelatorio: TQuickRep;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    qrImagem: TQRImage;
    QRDBImage1: TQRDBImage;
    DetailBand1: TQRBand;
    cmp: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    cmd: TQRExpr;
    Mes2: TQRLabel;
    bndTotGeral: TQRBand;
    qrlabel: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    lblAnalise: TQRLabel;
    qryRelatorio: TQuery;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioMes: TIntegerField;
    qryRelatorioAno: TIntegerField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosaM: TCurrencyField;
    qryRelatorioValorGlosaE: TCurrencyField;
    dbHospital: TTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbRelatorio: TTable;
    dbRelatorioRegiao: TIntegerField;
    dbRelatorioNome: TStringField;
    dbRelatorioPaciente1: TIntegerField;
    dbRelatorioValor1: TCurrencyField;
    dbRelatorioGlosa1: TCurrencyField;
    dbRelatorioPaciente2: TIntegerField;
    dbRelatorioValor2: TCurrencyField;
    dbRelatorioGlosa2: TCurrencyField;
    dbRelatorioPaciente3: TIntegerField;
    dbRelatorioValor3: TCurrencyField;
    dbRelatorioGlosa3: TCurrencyField;
    dbRelatorioPaciente4: TIntegerField;
    dbRelatorioValor4: TCurrencyField;
    dbRelatorioGlosa4: TCurrencyField;
    dbRelatorioPaciente5: TIntegerField;
    dbRelatorioValor5: TCurrencyField;
    dbRelatorioGlosa5: TCurrencyField;
    dbRelatorioPaciente6: TIntegerField;
    dbRelatorioValor6: TCurrencyField;
    dbRelatorioGlosa6: TCurrencyField;
    dsRelatorio: TDataSource;
    dbCliente: TTable;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    glosa: TQRExpr;
    mp: TQRExpr;
    Mes1: TQRLabel;
    QRLabel3: TQRLabel;
    dbRelatorioDiaria1: TFloatField;
    dbRelatorioDiaria2: TFloatField;
    dbRelatorioDiaria3: TFloatField;
    dbRelatorioDiaria4: TFloatField;
    dbRelatorioDiaria5: TFloatField;
    dbRelatorioDiaria6: TFloatField;
    dbRelatorioCustoPaciente1: TFloatField;
    dbRelatorioCustoPaciente2: TFloatField;
    dbRelatorioCustoDiaria1: TFloatField;
    dbRelatorioCustoDiaria2: TFloatField;
    dbRelatorioPermanencia1: TFloatField;
    dbRelatorioPermanencia2: TFloatField;
    dbRelatorioPGlosa1: TFloatField;
    dbRelatorioPGlosa2: TFloatField;
    bndLegenda: TQRChildBand;
    QRLabel4: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    qryRelatorioPaciente: TIntegerField;
    qryRelatorioComplemento: TFloatField;
    qryRelatorioDiarias: TFloatField;
    qryRelatorioDiariasGlosadas: TFloatField;
    dbRelatorioHospital: TIntegerField;
    bndRegiao: TQRGroup;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    QRDBText1: TQRDBText;
    bndTotRegiao: TQRBand;
    QRLabel7: TQRLabel;
    tcmp1: TQRExpr;
    tcmd1: TQRExpr;
    tmp1: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    tglosa1: TQRExpr;
    tcmp: TQRExpr;
    tcmd: TQRExpr;
    tglosa: TQRExpr;
    tmp: TQRExpr;
    procedure dbRelatorioCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure dbRelatorioFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tcmpPrint(sender: TObject; var Value: String);
    procedure tcmdPrint(sender: TObject; var Value: String);
    procedure tglosaPrint(sender: TObject; var Value: String);
    procedure tmpPrint(sender: TObject; var Value: String);
    procedure bndRegiaoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure bndTotGeralBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure tcmp1Print(sender: TObject; var Value: String);
    procedure tcmd1Print(sender: TObject; var Value: String);
    procedure tglosa1Print(sender: TObject; var Value: String);
    procedure tmp1Print(sender: TObject; var Value: String);
    procedure bndTotRegiaoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relComparativoMes: TrelComparativoMes;

implementation

uses frmRelComparativosMes;

{$R *.dfm}

procedure TrelComparativoMes.dbRelatorioCalcFields(DataSet: TDataSet);
begin
    if dbRelatorioPaciente1.Value=0  then
       dbRelatorioCustoPaciente1.Value:=0
    else
        dbRelatorioCustoPaciente1.Value:=(dbRelatorioValor1.Value-dbRelatorioGlosa1.Value)/dbRelatorioPaciente1.Value;

    if dbRelatorioPaciente2.Value=0  then
       dbRelatorioCustoPaciente2.Value:=0
    else
        dbRelatorioCustoPaciente2.Value:=(dbRelatorioValor2.Value-dbRelatorioGlosa2.Value)/dbRelatorioPaciente2.Value;

    if dbRelatorioDiaria1.Value=0  then
       dbRelatorioCustoDiaria1.Value:=0
    else
        dbRelatorioCustoDiaria1.Value:=(dbRelatorioValor1.Value-dbRelatorioGlosa1.Value)/dbRelatorioDiaria1.Value;

    if dbRelatorioDiaria2.Value=0  then
       dbRelatorioCustoDiaria2.Value:=0
    else
        dbRelatorioCustoDiaria2.Value:=(dbRelatorioValor2.Value-dbRelatorioGlosa2.Value)/dbRelatorioDiaria2.Value;

    if dbRelatorioPaciente1.Value=0  then
       dbRelatorioPermanencia1.Value:=0
    else
        dbRelatorioPermanencia1.Value:=dbRelatorioDiaria1.value/dbRelatorioPaciente1.Value;

    if dbRelatorioPaciente2.Value=0  then
       dbRelatorioPermanencia2.Value:=0
    else
        dbRelatorioPermanencia2.Value:=dbRelatorioDiaria2.value/dbRelatorioPaciente2.Value;

    if dbRelatorioValor1.Value=0 then
        dbRelatorioPGlosa1.Value:=0
    else
        dbRelatorioPGlosa1.Value:=dbRelatorioGlosa1.Value/dbRelatorioValor1.Value*100;
    if dbRelatorioValor2.Value=0 then
        dbRelatorioPGlosa2.Value:=0
    else
        dbRelatorioPGlosa2.Value:=dbRelatorioGlosa2.Value/dbRelatorioValor2.Value*100;

end;

procedure TrelComparativoMes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var tot: variant;
begin
    if dbRelatorioCustoPaciente2.Value=0 then
        tot:=0
    else tot:=(dbRelatorioCustoPaciente1.Value/dbRelatorioCustoPaciente2.Value-1)*100;
    if tot>=0  then
       cmp.Color:=$00FF8C8C
    else
       cmp.Color:=$008080FF;

    if dbRelatorioCustoDiaria2.Value=0 then
        tot:=0
    else
        tot:=(dbRelatorioCustoDiaria1.Value/dbRelatorioCustoDiaria2.Value -1)*100;
    if tot>=0 then
       cmd.Color:=$00FF8C8C
    else
       cmd.Color:=$008080FF;

    if dbRelatorioPGlosa2.Value=0 then
        tot:=0
    else
        tot:=(dbRelatorioPGlosa1.Value/dbRelatorioPGlosa2.Value-1)*100;
    if tot>=0 then
       glosa.Color:=$00FF8C8C
    else
       glosa.Color:=$008080FF;

    if dbRelatorioPermanencia2.Value=0 then
        tot:=0
    else
        tot:=(dbRelatorioPermanencia1.Value/dbRelatorioPermanencia2.Value-1)*100;
    if tot>=0 then
       mp.Color:=$00FF8C8C
    else
       mp.Color:=$008080FF;

end;

procedure TrelComparativoMes.dbRelatorioFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbRelatorioDiaria2.Value)>0
end;

procedure TrelComparativoMes.tcmpPrint(sender: TObject; var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tcmp.Color:=$00FF8C8C
    else
        tcmp.Color:=$008080FF;
end;

procedure TrelComparativoMes.tcmdPrint(sender: TObject; var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tcmd.Color:=$00FF8C8C
    else
        tcmd.Color:=$008080FF;
end;

procedure TrelComparativoMes.tglosaPrint(sender: TObject;
  var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tglosa.Color:=$00FF8C8C
    else
        tglosa.Color:=$008080FF;

end;

procedure TrelComparativoMes.tmpPrint(sender: TObject; var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tmp.Color:=$00FF8C8C
    else
        tmp.Color:=$008080FF;
end;

procedure TrelComparativoMes.bndRegiaoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=frmRelComparativoMes.chkREgiao.Checked;
end;

procedure TrelComparativoMes.bndTotGeralBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=not frmRelComparativoMes.chkREgiao.Checked;
    if PrintBand then
        bndLegenda.ParentBand:=bndTotGeral;
end;

procedure TrelComparativoMes.tcmp1Print(sender: TObject;
  var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tcmp1.Color:=$00FF8C8C
    else
        tcmp1.Color:=$008080FF;
end;

procedure TrelComparativoMes.tcmd1Print(sender: TObject;
  var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tcmd1.Color:=$00FF8C8C
    else
        tcmd1.Color:=$008080FF;
end;

procedure TrelComparativoMes.tglosa1Print(sender: TObject;
  var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tglosa1.Color:=$00FF8C8C
    else
        tglosa1.Color:=$008080FF;
end;

procedure TrelComparativoMes.tmp1Print(sender: TObject; var Value: String);
var valor:string;
begin
    valor:=copy(value,1,length(value)-1);
    if StrToFloat(valor)>0 then
        tmp1.Color:=$00FF8C8C
    else
        tmp1.Color:=$008080FF;
end;

procedure TrelComparativoMes.bndTotRegiaoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    PrintBand:=frmRelComparativoMes.chkREgiao.Checked;
    if PrintBand then
        bndLegenda.ParentBand:=bndTotRegiao;
end;

end.
