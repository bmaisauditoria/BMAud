unit relEvolucaoCustosR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, Grids, DBGrids;

type
  TrelEvolucaoCustoR = class(TForm)
    qrpRelatorio: TQuickRep;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    qrImagem: TQRImage;
    QRDBImage1: TQRDBImage;
    dsRelatorio: TDataSource;
    dbRelatorio: TTable;
    DetailBand1: TQRBand;
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
    ColumnHeaderBand1: TQRBand;
    Mes1: TQRLabel;
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
    dbRelatorioRegiao: TIntegerField;
    Mes2: TQRLabel;
    Mes3: TQRLabel;
    Mes4: TQRLabel;
    Mes5: TQRLabel;
    Mes6: TQRLabel;
    dbRelatorioGlosa6: TCurrencyField;
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
    dbRegiao: TTable;
    QRShape1: TQRShape;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
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
    QRDBText19: TQRDBText;
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
    QRLabel12: TQRLabel;
    qryRelatorioPaciente: TIntegerField;
    qryRelatorioComplemento: TFloatField;
    QRLabel13: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEvolucaoCustoR: TrelEvolucaoCustoR;

implementation

{$R *.dfm}

procedure TrelEvolucaoCustoR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
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
