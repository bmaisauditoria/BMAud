unit relEvolucaoCustosH;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, Grids, DBGrids;

type
  TrelEvolucaoCustoH = class(TForm)
    qrpRelatorio: TQuickRep;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    qrImagem: TQRImage;
    QRDBImage1: TQRDBImage;
    dsRelatorio: TDataSource;
    dbRelatorio: TTable;
    ColumnHeaderBand1: TQRBand;
    Mes1: TQRLabel;
    Mes2: TQRLabel;
    Mes3: TQRLabel;
    Mes4: TQRLabel;
    Mes5: TQRLabel;
    Mes6: TQRLabel;
    qryRelatorio: TQuery;
    qryRelatorioMes: TIntegerField;
    qryRelatorioAno: TIntegerField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosaM: TCurrencyField;
    qryRelatorioValorGlosaE: TCurrencyField;
    qryRelatorioHospital: TIntegerField;
    dbHospital: TTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    SummaryBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    dbCliente: TTable;
    QRDBText20: TQRDBText;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    lblAnalise: TQRLabel;
    qryRelatorioDiarias: TFloatField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRExpr64: TQRExpr;
    QRExpr65: TQRExpr;
    QRExpr66: TQRExpr;
    QRExpr67: TQRExpr;
    QRExpr68: TQRExpr;
    QRExpr69: TQRExpr;
    QRExpr70: TQRExpr;
    QRExpr71: TQRExpr;
    QRExpr72: TQRExpr;
    QRExpr73: TQRExpr;
    QRExpr74: TQRExpr;
    QRExpr75: TQRExpr;
    QRExpr76: TQRExpr;
    QRExpr77: TQRExpr;
    QRExpr78: TQRExpr;
    QRExpr79: TQRExpr;
    QRExpr80: TQRExpr;
    QRExpr81: TQRExpr;
    QRExpr82: TQRExpr;
    QRExpr83: TQRExpr;
    QRExpr84: TQRExpr;
    qryRelatorioPaciente: TFloatField;
    qryRelatorioNaoContabilizado: TIntegerField;
    qryRelatorioDiariasGlosadas: TFloatField;
    QRGroup1: TQRGroup;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBText6: TQRDBText;
    QRExpr4: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr5: TQRExpr;
    QRDBText9: TQRDBText;
    QRExpr6: TQRExpr;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRExpr7: TQRExpr;
    QRDBText12: TQRDBText;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRDBText13: TQRDBText;
    QRExpr10: TQRExpr;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRExpr11: TQRExpr;
    QRDBText18: TQRDBText;
    QRExpr12: TQRExpr;
    cmpHospital: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRDBText19: TQRDBText;
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
    QRBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRExpr85: TQRExpr;
    QRExpr86: TQRExpr;
    QRExpr87: TQRExpr;
    QRExpr88: TQRExpr;
    QRExpr89: TQRExpr;
    QRExpr90: TQRExpr;
    QRExpr91: TQRExpr;
    QRExpr92: TQRExpr;
    QRExpr93: TQRExpr;
    QRExpr94: TQRExpr;
    QRExpr95: TQRExpr;
    QRExpr96: TQRExpr;
    QRExpr97: TQRExpr;
    QRExpr98: TQRExpr;
    QRExpr99: TQRExpr;
    QRExpr100: TQRExpr;
    QRExpr101: TQRExpr;
    QRExpr102: TQRExpr;
    QRExpr103: TQRExpr;
    QRExpr104: TQRExpr;
    QRExpr105: TQRExpr;
    QRExpr106: TQRExpr;
    QRExpr107: TQRExpr;
    QRExpr108: TQRExpr;
    QRExpr109: TQRExpr;
    QRExpr110: TQRExpr;
    QRExpr111: TQRExpr;
    QRExpr112: TQRExpr;
    QRExpr113: TQRExpr;
    QRExpr114: TQRExpr;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRExpr115: TQRExpr;
    QRExpr116: TQRExpr;
    QRExpr117: TQRExpr;
    QRExpr118: TQRExpr;
    QRExpr119: TQRExpr;
    QRExpr120: TQRExpr;
    QRExpr121: TQRExpr;
    QRExpr122: TQRExpr;
    QRExpr123: TQRExpr;
    QRExpr124: TQRExpr;
    QRExpr125: TQRExpr;
    QRExpr126: TQRExpr;
    QRExpr127: TQRExpr;
    QRExpr128: TQRExpr;
    QRExpr129: TQRExpr;
    QRExpr130: TQRExpr;
    QRExpr131: TQRExpr;
    QRExpr132: TQRExpr;
    QRExpr133: TQRExpr;
    QRExpr134: TQRExpr;
    QRExpr135: TQRExpr;
    QRExpr136: TQRExpr;
    QRExpr137: TQRExpr;
    QRExpr138: TQRExpr;
    QRLabel30: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEvolucaoCustoH: TrelEvolucaoCustoH;

implementation

{$R *.dfm}

procedure TrelEvolucaoCustoH.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if dbRelatorioNC.Value<>0 then
    begin
        DetailBand1.Font.Color:=clRed;
        cmpHospital.Font.Color:=clRed;
    end
    else
    begin
        DetailBand1.Font.Color:=clBlack;
        cmpHospital.Font.Color:=ClBlack;
    end;    

    if (dbRelatorioPaciente1.Value+
       dbRelatorioPaciente2.Value+
       dbRelatorioPaciente3.Value+
       dbRelatorioPaciente4.Value+
       dbRelatorioPaciente5.Value+
       dbRelatorioPaciente6.Value=0) then
       PrintBand:=false
    else
       PrintBand:=true;   
end;

end.
