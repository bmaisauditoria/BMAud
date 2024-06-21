unit relRepresentativadeContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, Grids, DBGrids;

type
  TrelRepresentativadeConta = class(TForm)
    qrpRelatorio: TQuickRep;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    qrImagem: TQRImage;
    QRDBImage1: TQRDBImage;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    Mes2: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    tcmp: TQRExpr;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    tcmd: TQRExpr;
    lblAnalise: TQRLabel;
    qryRelatorioT: TQuery;
    dbHospital: TTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbRelatorio: TTable;
    dsRelatorio: TDataSource;
    dbCliente: TTable;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    glosa: TQRExpr;
    mp: TQRExpr;
    tglosa: TQRExpr;
    tmp: TQRExpr;
    Mes1: TQRLabel;
    QRLabel3: TQRLabel;
    QRChildBand1: TQRChildBand;
    QRLabel4: TQRLabel;
    lblTitulo1: TQRLabel;
    QRLabel8: TQRLabel;
    qryRelatorio: TQuery;
    qryRelatorioTHospital: TIntegerField;
    qryRelatorioTMes: TIntegerField;
    qryRelatorioTAno: TIntegerField;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioMes: TIntegerField;
    qryRelatorioAno: TIntegerField;
    qryRelatorioTPaciente: TIntegerField;
    qryRelatorioPaciente: TIntegerField;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    bndRegiao: TQRGroup;
    dbRelatorioRegiao: TIntegerField;
    dbRelatorioNC: TSmallintField;
    dbRelatorioHospital: TIntegerField;
    dbRelatorioNome: TStringField;
    dbRelatorioPaciente1: TIntegerField;
    dbRelatorioValor1: TCurrencyField;
    dbRelatorioGlosa1: TCurrencyField;
    dbRelatorioDiaria1: TFloatField;
    dbRelatorioPaciente2: TIntegerField;
    dbRelatorioValor2: TCurrencyField;
    dbRelatorioGlosa2: TCurrencyField;
    dbRelatorioDiaria2: TFloatField;
    dbRelatorioPaciente3: TIntegerField;
    dbRelatorioValor3: TCurrencyField;
    dbRelatorioGlosa3: TCurrencyField;
    dbRelatorioDiaria3: TFloatField;
    dbRelatorioPaciente4: TIntegerField;
    dbRelatorioValor4: TCurrencyField;
    dbRelatorioGlosa4: TCurrencyField;
    dbRelatorioDiaria4: TFloatField;
    dbRelatorioPaciente5: TIntegerField;
    dbRelatorioValor5: TCurrencyField;
    dbRelatorioGlosa5: TCurrencyField;
    dbRelatorioDiaria5: TFloatField;
    dbRelatorioPaciente6: TIntegerField;
    dbRelatorioValor6: TCurrencyField;
    dbRelatorioGlosa6: TCurrencyField;
    dbRelatorioDiaria6: TFloatField;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    qryRelatorioTValorTot: TCurrencyField;
    qryRelatorioTValorGlosadoM: TCurrencyField;
    qryRelatorioTValorGlosadoE: TCurrencyField;
    qryRelatorioTValor: TCurrencyField;
    qryRelatorioValorTot: TCurrencyField;
    qryRelatorioValorGlosadoM: TCurrencyField;
    qryRelatorioValorGlosadoE: TCurrencyField;
    qryRelatorioValor: TCurrencyField;
    qryTotal: TQuery;
    qryTotalvalor2: TCurrencyField;
    qryTotalregiao: TIntegerField;
    qryTotalvalor1: TCurrencyField;
    qryGeral: TQuery;
    qryGeralvalor1: TCurrencyField;
    qryGeralvalor2: TCurrencyField;
    procedure dbRelatorioFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbRelatorioAfterInsert(DataSet: TDataSet);
    procedure qryRelatorioTCalcFields(DataSet: TDataSet);
    procedure bndRegiaoAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure bndCabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relRepresentativadeConta: TrelRepresentativadeConta;

implementation

uses frmRelRepresentatividadeContas;

{$R *.dfm}

procedure TrelRepresentativadeConta.dbRelatorioFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
   accept:=dbRelatorioPaciente3.Value>0
end;

procedure TrelRepresentativadeConta.dbRelatorioAfterInsert(
  DataSet: TDataSet);
begin
    dbRelatorioPaciente1.Value:=0;
    dbRelatorioValor3.Value:=0;
end;

procedure TrelRepresentativadeConta.qryRelatorioTCalcFields(
  DataSet: TDataSet);
begin
    qryRelatorioTValor.value:=qryRelatorioTValorTot.value-
                              qryRelatorioTValorGlosadoM.value-
                              qryRelatorioTValorGlosadoE.value;
end;

procedure TrelRepresentativadeConta.bndRegiaoAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
    qryTotal.Locate('Regiao',dbRelatorioRegiao.value,[]);
end;

procedure TrelRepresentativadeConta.bndCabecalhoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    if frmRelRepresentatividadeConta.chkRegiao.Checked then
        bndRegiao.ForceNewPage:=true
    else
        bndRegiao.ForceNewPage:=false
end;

procedure TrelRepresentativadeConta.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    PrintBand:=not frmRelRepresentatividadeConta.chkRegiao.Checked;
end;

end.
