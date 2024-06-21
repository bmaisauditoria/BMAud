unit relRemessaErros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TrelRemessaErro1 = class(TForm)
    qrpRelatorio: TQuickRep;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    lblInicio: TQRLabel;
    qrImagem: TQRImage;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qryRelatorio: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relRemessaErro1: TrelRemessaErro1;

implementation

{$R *.dfm}

end.
