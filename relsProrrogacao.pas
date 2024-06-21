unit relsProrrogacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, Qrctrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls;

type
  TrelProrrogacao = class(TForm)
    qrpRelatorio: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    bndCabecalho: TQRBand;
    relProrrogacao: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel8: TQRLabel;
    qrImagem: TQRImage;
    dsRelatorio: TDataSource;
    qryRelatorio: TMSQuery;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    dbPaciente: TMSTable;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbPacienteEndereco: TStringField;
    dbPacienteBairro: TStringField;
    dbPacienteCidade: TStringField;
    dbPacienteUF: TStringField;
    dbPacienteCep: TStringField;
    dbPacienteFone1: TStringField;
    dbPacienteFone2: TStringField;
    dbPacienteFax: TStringField;
    dbPacienteDocumento: TStringField;
    dbPacienteContato: TStringField;
    dbPacienteAnoNascimento: TIntegerField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateField;
    dbPacienteDataExclusao: TDateField;
    dbPacienteIdade: TIntegerField;
    dbPacienteCodigoPaciente: TStringField;
    dbCliente: TMSTable;
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
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    qryRelatorioAtendimentoH: TIntegerField;
    qryRelatorioDataAuditoria: TDateField;
    qryRelatorioProrrogarAte: TDateField;
    qryRelatorioProrrogacao: TBooleanField;
    qryRelatorioSenhaProrrogacao: TStringField;
    qryRelatorioCliente: TIntegerField;
    qryRelatorioPaciente: TIntegerField;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioDataInternacao: TDateField;
    qryRelatorioDataAlta: TDateField;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    lblInicio: TQRLabel;
    lblFinal: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    qryRelatorioDataIni: TDateField;
    qryRelatorioQtdDiasProrrogacao: TFloatField;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    qryRelatorioAcomodacao: TStringField;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    qryRelatorioJustProrroga: TIntegerField;
    procedure qryRelatorioCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relProrrogacao: TrelProrrogacao;

implementation

{$R *.DFM}

procedure TrelProrrogacao.qryRelatorioCalcFields(DataSet: TDataSet);
begin
    if qryRelatorioProrrogarate.isnull then
        qryRelatorioDataIni.Clear
    else    
    qryRelatorioDataIni.Value:=qryRelatorioProrrogarate.Value-
                               qryRelatorioQtdDiasProrrogacao.Value;
end;

end.
