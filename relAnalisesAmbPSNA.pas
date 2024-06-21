unit relAnalisesAmbPSNA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls;

type
  TrelAnaliseAmbPSNA = class(TForm)
    qrpRelatorio: TQuickRep;
    qryRelatorio: TQuery;
    dsRelatorio: TDataSource;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    lblInicio: TQRLabel;
    qrImagem: TQRImage;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    dbCliente: TTable;
    QRDBText1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr10: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    lblPS: TQRLabel;
    qryRelatorioCliente: TIntegerField;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioNome: TStringField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosado: TCurrencyField;
    QRLabel1: TQRLabel;
    qryRelatorioValorPago: TCurrencyField;
    qryRelatorioPorcGlosa: TFloatField;
    qryRelatorioCustoConsulta: TCurrencyField;
    qryRelatorioConsultas: TFloatField;
    bndRegiao: TQRGroup;
    QRDBText14: TQRDBText;
    qryRelatorioRegiao: TIntegerField;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    bndTotRegiao: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    qryRelatorioValorNaoAcordado: TCurrencyField;
    procedure qryRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relAnaliseAmbPSNA: TrelAnaliseAmbPSNA;

implementation

{$R *.dfm}

procedure TrelAnaliseAmbPSNA.qryRelatorioCalcFields(DataSet: TDataSet);
begin
    qryRelatorioValorPago.Value:=qryRelatorioValor.Value-
                                 qryRelatorioValorGlosado.Value;
    if qryRelatorioValor.Value<>0 then
       qryRelatorioPorcGlosa.Value:=qryRelatorioValorGlosado.Value/
                                    qryRelatorioValor.Value*100
    else
       qryRelatorioPorcGlosa.Value:=0;

    if qryRelatorioConsultas.Value<>0 then
        qryRelatorioCustoConsulta.Value:=qryRelatorioValorPago.Value/
                                         qryRelatorioConsultas.Value
    else
        qryRelatorioCustoConsulta.Value:=0;

end;

end.
