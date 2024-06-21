unit relEstatisticasLegendaEmpresaold;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  TrelEstatisticaLegendaEmpresa = class(TForm)
    qrpRelatorio: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QtdA: TQRDBText;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    lblInicio: TQRLabel;
    QRLabel9: TQRLabel;
    lblFinal: TQRLabel;
    qrImagem: TQRImage;
    dsRelatorio: TDataSource;
    qryRelatorio: TQuery;
    qryRelatorioLegenda: TStringField;
    qryRelatorioCliente: TIntegerField;
    qryRelatorioEmpresa: TIntegerField;
    qryRelatorioQtd: TIntegerField;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    dbCliente: TTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteEndereco: TStringField;
    dbClienteBairro: TStringField;
    dbClienteCidade: TStringField;
    dbClienteUF: TStringField;
    dbClienteCep: TStringField;
    dbClienteFone1: TStringField;
    dbClienteFone2: TStringField;
    dbClienteFax: TStringField;
    dbClienteCGC: TStringField;
    dbClienteContato: TStringField;
    dbClienteEmail: TStringField;
    dbClienteHomePage: TStringField;
    dbClienteLogotipo: TGraphicField;
    dbClienteDataInicio: TDateField;
    dbClienteDataFim: TDateField;
    dbClienteUsuario: TStringField;
    dbClienteDataInclusao: TDateField;
    dbClienteDataExclusao: TDateField;
    dbEmpresa: TTable;
    dbEmpresaEmpresa: TIntegerField;
    dbEmpresaNome: TStringField;
    PorA: TQRExpr;
    qryTotal: TQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    dsTotal: TDataSource;
    QRGroup2: TQRGroup;
    QRDBText4: TQRDBText;
    dbLegenda: TTable;
    dbLegendaLegenda: TStringField;
    dbLegendaNome: TStringField;
    QRDBText2: TQRDBText;
    bndTotalEmpresa: TQRBand;
    QRLabel4: TQRLabel;
    bndTotalCliente: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText5: TQRDBText;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEstatisticaLegendaEmpresa: TrelEstatisticaLegendaEmpresa;

implementation

{$R *.DFM}

procedure TrelEstatisticaLegendaEmpresa.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
    qryTotal.Locate('Cliente;Empresa',VarArrayof([qryRelatorioCliente.Value,
                                                  qryRelatorioEmpresa.Value]),[]);
end;

end.
