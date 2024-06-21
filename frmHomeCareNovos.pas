unit frmHomeCareNovos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, CommCtrl,
  Grids, DBGrids, CheckLst, ImgList, ToolWin, dbcgrids, Variants;

type
  TfrmHomeCareNovo = class(TForm)
    dbProcesso: TMSTable;
    dbItem: TMSTable;
    dsProcesso: TDataSource;
    dsItem: TDataSource;
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
    dbPacienteIdade: TIntegerField;
    dsPaciente: TDataSource;
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
    dbClienteUsuario: TStringField;
    dsCliente: TDataSource;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorUsuario: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dsAuditor: TDataSource;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbConclusao: TMSTable;
    dsConclusao: TDataSource;
    dsDiagnostico: TDataSource;
    dbItemConclusao: TMSTable;
    dsItemConclusao: TDataSource;
    dbProcessoPacienteNome: TStringField;
    dbProcessoHospitalNome: TStringField;
    dbProcessoClienteNome: TStringField;
    dbEmpresa: TMSTable;
    dbEmpresaEmpresa: TIntegerField;
    dbEmpresaNome: TStringField;
    dbEmpresaFone1: TStringField;
    dbEmpresaFone2: TStringField;
    dbEmpresaFax: TStringField;
    dbEmpresaCGC: TStringField;
    dbEmpresaContato: TStringField;
    dbEmpresaEmail: TStringField;
    dbEmpresaHomePage: TStringField;
    dbEmpresaUsuario: TStringField;
    dsEmpresa: TDataSource;
    dbProcessoEmpresaNome: TStringField;
    ImageList1: TImageList;
    Label78: TLabel;
    dbPacienteRegiao: TIntegerField;
    dbItemAuditorNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    dbUltimaVisita: TMSTable;
    dbPacienteCodigoPaciente: TStringField;
    pagHospital: TPageControl;
    tabProntuario: TTabSheet;
    tabAuditoria: TTabSheet;
    pnlItem: TPanel;
    dbItemDiagnostico: TMSTable;
    dbItemDiagnosticoDiagnosticoTexto: TStringField;
    dbItemDiagnosticoPrincipalTexto: TStringField;
    dbItemDiagnosticoCodCid: TStringField;
    dsItemDiagnostico: TDataSource;
    dbItemDiagnosticoBusca: TMSTable;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    dbItemBusca: TMSTable;
    dbItemBuscaItem: TIntegerField;
    dbItemBuscaAuditor: TIntegerField;
    dbItemBuscaUsuario: TStringField;
    dbItemBuscaAuditorNome: TStringField;
    dsItemBusca: TDataSource;
    dbAlta: TMSTable;
    dbAltaClienteNome: TStringField;
    dbAltaHospitalNome: TStringField;
    dbAltaPacienteNome: TStringField;
    dbAltaProcessaTexto: TStringField;
    dsAlta: TDataSource;
    tabAlta: TTabSheet;
    grdAlta: TDBGrid;
    Panel9: TPanel;
    Label86: TLabel;
    Label87: TLabel;
    lblDataAlta: TLabel;
    cmpQtd: TEdit;
    UpDown4: TUpDown;
    cmdRelCompleto1: TBitBtn;
    barProcesso: TProgressBar;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn10: TBitBtn;
    cmdAtivar: TBitBtn;
    lblTotal: TLabel;
    dbPacienteUnidade: TStringField;
    Table1: TMSTable;
    DataSource1: TDataSource;
    Table1AtendimentoHC: TIntegerField;
    Table1Item: TIntegerField;
    Table1Auditor: TIntegerField;
    Table1DataAuditoria: TDateField;
    Table1DataUltimaVisita: TDateField;
    Table1DataUltimaInternacao: TDateField;
    Table1Diagnostico: TIntegerField;
    Table1Nivel: TStringField;
    Table1MudancaNivel: TBooleanField;
    Table1Desmame: TBooleanField;
    Table1SemDesmame: TBooleanField;
    Table1PacientePresente: TBooleanField;
    Table1TipoAuditoria: TStringField;
    Table1MotivoAusencia: TStringField;
    Table1DataAusencia: TDateField;
    Table1HospitalInternacao: TIntegerField;
    Table1QuadroClinico: TStringField;
    Table1Informante: TStringField;
    Table1FormaInformacao: TStringField;
    Table1Locomocao: TStringField;
    Table1Consciencia: TStringField;
    Table1Sondas: TStringField;
    Table1Escaras1: TStringField;
    Table1Aspecto1: TStringField;
    Table1Local1: TStringField;
    Table1Escaras2: TStringField;
    Table1Aspecto2: TStringField;
    Table1Local2: TStringField;
    Table1Escaras3: TStringField;
    Table1Aspecto3: TStringField;
    Table1Local3: TStringField;
    Table1EscaraQtd: TIntegerField;
    Table1EscarasD: TStringField;
    Table1LocalD: TStringField;
    Table1AspectoD: TStringField;
    Table1Infeccao: TMemoField;
    Table1Esfincteres: TBooleanField;
    Table1EsfincteresTexto: TStringField;
    Table1Fraldas: TBooleanField;
    Table1Aspiracao: TBooleanField;
    Table1AspiracaoQtd: TIntegerField;
    Table1QuadroClinicoTexto: TMemoField;
    Table1VMObs: TStringField;
    Table1VMAnteriorQtd: TIntegerField;
    Table1VMAnteriorFreq: TStringField;
    Table1VMAtualQtd: TIntegerField;
    Table1VMAtualFreq: TStringField;
    Table1VMSolicitadaQtd: TIntegerField;
    Table1VMSolicitadaFreq: TStringField;
    Table1VMSugeridaQtd: TIntegerField;
    Table1VMSugeridaFreq: TStringField;
    Table1VEObs: TStringField;
    Table1VEAnteriorQtd: TIntegerField;
    Table1VEAnteriorFreq: TStringField;
    Table1VEAtualQtd: TIntegerField;
    Table1VEAtualFreq: TStringField;
    Table1VESolicitadaQtd: TIntegerField;
    Table1VESolicitadaFreq: TStringField;
    Table1VESugeridaQtd: TIntegerField;
    Table1VESugeridaFreq: TStringField;
    Table1EnfObs: TStringField;
    Table1EnfAnteriorQtd: TIntegerField;
    Table1EnfAnteriorFreq: TStringField;
    Table1EnfAtualQtd: TIntegerField;
    Table1EnfAtuaFreq: TStringField;
    Table1EnfSolicitadaQtd: TIntegerField;
    Table1EnfSolicitadaFrea: TStringField;
    Table1EnfSugeridaQtd: TIntegerField;
    Table1EnfSugeridaFreq: TStringField;
    Table1FisioMObs: TStringField;
    Table1FisioMAnteriorQtd: TIntegerField;
    Table1FisioMAnteriorFreq: TStringField;
    Table1FisioMAtualQtd: TIntegerField;
    Table1FisioMAtualFreq: TStringField;
    Table1FisioMSolicitadaQtd: TIntegerField;
    Table1FisioMSolicitadaFreq: TStringField;
    Table1FisioMSugeridaQtd: TIntegerField;
    Table1FisioMSugeridaFreq: TStringField;
    Table1FisioRObs: TStringField;
    Table1FisioRAnteriorQtd: TIntegerField;
    Table1FisioRAnteriorFreq: TStringField;
    Table1FisioRAtualQtd: TIntegerField;
    Table1FisioRAtualFreq: TStringField;
    Table1FisioRSolicitadaQtd: TIntegerField;
    Table1FisioRSolicitadaFreq: TStringField;
    Table1FisioRSugeridaQtd: TIntegerField;
    Table1FisioRSugeridaFreq: TStringField;
    Table1FonoObs: TStringField;
    Table1FonoAnteriorQtd: TIntegerField;
    Table1FonoAnteriorFreq: TStringField;
    Table1FonoAtualQtd: TIntegerField;
    Table1FonoAtualFreq: TStringField;
    Table1FonoSolicitadaQtd: TIntegerField;
    Table1FonoSolicitadaFreq: TStringField;
    Table1FonoSugeridaQtd: TIntegerField;
    Table1FonoSugeridaFreq: TStringField;
    Table1AlimentacaoObs: TStringField;
    Table1AlimentacaoAnteriorTipo: TStringField;
    Table1AlimentacaoAnteriorQtd: TIntegerField;
    Table1AlimentacaoAnteriorFreq: TStringField;
    Table1AlimentacaoAtualTipo: TStringField;
    Table1AlimentacaoAtualQtd: TIntegerField;
    Table1AlimentacaoAtualFreq: TStringField;
    Table1AlimentacaoSolicitadaTipo: TStringField;
    Table1AlimentacaoSolicitadaQtd: TIntegerField;
    Table1AlimentacaoSolicitadaFreq: TStringField;
    Table1AlimentacaoSugeridaTipo: TStringField;
    Table1AlimentacaoSugeridaQtd: TIntegerField;
    Table1AlimentacaoSugeridaFreq: TStringField;
    Table1AlimentacaoTipoObs: TStringField;
    Table1CurativoObs: TStringField;
    Table1CurativoAnteriorTamanho: TStringField;
    Table1CurativoAnteriorQtd: TIntegerField;
    Table1CurativoAnteriorFreq: TStringField;
    Table1CurativoAtualTamanho: TStringField;
    Table1CurativoAtualQtd: TIntegerField;
    Table1CurativoAtualFreq: TStringField;
    Table1CurativoSolicitadoTamanho: TStringField;
    Table1CurativoSolicitadoQtd: TIntegerField;
    Table1CurativoSolicitadoFreq: TStringField;
    Table1CurativoSugeridoTamanho: TStringField;
    Table1CurativoSugeridoQtd: TIntegerField;
    Table1CurativoSugeridoFreq: TStringField;
    Table1CurativoTamanhoObs: TStringField;
    Table1O2Obs: TStringField;
    Table1O2AnteriorQtd: TIntegerField;
    Table1O2AnteriorFreq: TStringField;
    Table1O2AtualQtd: TIntegerField;
    Table1O2AtualFreq: TStringField;
    Table1O2SolicitadoQtd: TIntegerField;
    Table1O2SolicitadoFreq: TStringField;
    Table1O2SugeridoQtd: TIntegerField;
    Table1O2SugeridoFreq: TStringField;
    Table1LeitoHospitalar: TBooleanField;
    Table1LeitoHospitalarProprio: TBooleanField;
    Table1CadeiraRodas: TBooleanField;
    Table1CadeiraRodasProprio: TBooleanField;
    Table1Andador: TBooleanField;
    Table1AndadorProprio: TBooleanField;
    Table1Aspirador: TBooleanField;
    Table1AspiradorProprio: TBooleanField;
    Table1ColchaoAgua: TBooleanField;
    Table1ColchaoAguaProprio: TBooleanField;
    Table1ColchaoOvos: TBooleanField;
    Table1ColchaoOvosProprio: TBooleanField;
    Table1Inalador: TBooleanField;
    Table1InaladorProprio: TBooleanField;
    Table1SuporteSoro: TBooleanField;
    Table1SuporteSoroProprio: TBooleanField;
    Table1ConcentradorO2: TBooleanField;
    Table1ConcentradorO2Proprio: TBooleanField;
    Table1Oximetro: TBooleanField;
    Table1OximetroProprio: TBooleanField;
    Table1Nebulizacao: TBooleanField;
    Table1NebulizacaoProprio: TBooleanField;
    Table1CilindroO2: TBooleanField;
    Table1CilindroO2Proprio: TBooleanField;
    Table1Equipamento1: TBooleanField;
    Table1Equipamento1Nome: TStringField;
    Table1Equipamento1Proprio: TBooleanField;
    Table1Equipamento2: TBooleanField;
    Table1Equipamento2Nome: TStringField;
    Table1Equipamento2Proprio: TBooleanField;
    Table1Medicamentos: TMemoField;
    Table1Cuidador: TBooleanField;
    Table1CuidadorNome: TStringField;
    Table1RecebeInstrucoes: TBooleanField;
    Table1AssumeCuidados: TBooleanField;
    Table1ComentarioCuidador: TMemoField;
    Table1UsoEmergencia: TBooleanField;
    Table1UsoEmergenciaQtd: TStringField;
    Table1AtendimentoNota: TIntegerField;
    Table1ServicosNota: TIntegerField;
    Table1Queixas: TBooleanField;
    Table1QueixasTexto: TMemoField;
    Table1Observacao: TMemoField;
    Table1NivelFinal: TIntegerField;
    Table1CuidadoAdequado: TBooleanField;
    Table1RestricaoCuidados: TBooleanField;
    Table1Erro: TStringField;
    Table1Motivo: TStringField;
    Table1Usuario: TStringField;
    Table1DataInclusao: TDateField;
    dbProcessoBusca: TMSTable;
    CoolBar2: TCoolBar;
    lblLocCodigo: TEdit;
    cmpData: TDateTimePicker;
    lblLocCliente: TDBLookupComboBox;
    lblLocEmpresa: TDBLookupComboBox;
    lblLocPaciente: TDBLookupComboBox;
    lblLocHospital: TDBLookupComboBox;
    tabOrdemProcesso: TTabControl;
    pnlLista: TPanel;
    grdProcesso: TDBGrid;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    Label23: TLabel;
    Shape2: TShape;
    Label24: TLabel;
    pnlFicha: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    lblEmpresa: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText1: TDBText;
    DBText11: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText9: TDBText;
    DBText19: TDBText;
    DBText18: TDBText;
    Label52: TLabel;
    DBText12: TDBText;
    Label14: TLabel;
    DBText22: TDBText;
    Label27: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label79: TLabel;
    DBText21: TDBText;
    cmpProcesso: TDBEdit;
    cmpCliente: TDBLookupComboBox;
    cmpEmpresa: TDBLookupComboBox;
    cmpHospital: TDBLookupComboBox;
    cmpPaciente: TDBLookupComboBox;
    DBRadioGroup4: TDBRadioGroup;
    Panel10: TPanel;
    Label15: TLabel;
    DBText46: TDBText;
    cmpInternacao: TDBEdit;
    DBEdit3: TDBEdit;
    CoolBar1: TCoolBar;
    lblLocCodigo1: TEdit;
    lblDataAuditoria: TDateTimePicker;
    lblLocAuditor: TDBLookupComboBox;
    tabOrdemItem: TTabControl;
    pnlLista1: TPanel;
    grdItem: TDBGrid;
    GroupBox8: TGroupBox;
    Shape3: TShape;
    Label57: TLabel;
    Shape4: TShape;
    Label80: TLabel;
    Shape5: TShape;
    Label81: TLabel;
    Shape6: TShape;
    Label82: TLabel;
    pagAuditoria: TPageControl;
    tabAuditoria1: TTabSheet;
    Label85: TLabel;
    grdDiagnostico: TDBGrid;
    Panel12: TPanel;
    Label19: TLabel;
    Label11: TLabel;
    DBText8: TDBText;
    Label12: TLabel;
    Label8: TLabel;
    Label83: TLabel;
    cmpItem: TDBEdit;
    cmpAuditor: TDBLookupComboBox;
    cmpDataAuditoria: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit2: TDBEdit;
    Panel7: TPanel;
    cmdGravaD: TBitBtn;
    cmdExcluiD: TBitBtn;
    cmdCancelaD: TBitBtn;
    cmdNovoD: TBitBtn;
    cmdPrincipalD: TBitBtn;
    cmdCopiaD: TBitBtn;
    tabAuditoria2: TTabSheet;
    tabAuditoria3: TTabSheet;
    tabAuditoria4: TTabSheet;
    tabAuditoria5: TTabSheet;
    tabAuditoria6: TTabSheet;
    tabAuditoria7: TTabSheet;
    Label53: TLabel;
    grdConclusao: TDBGrid;
    Panel14: TPanel;
    Panel5: TPanel;
    cmdGravaL: TBitBtn;
    cmdExcluiL: TBitBtn;
    cmdCancelaL: TBitBtn;
    cmdNovoL: TBitBtn;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    DBRichEdit7: TDBRichEdit;
    DBRichEdit8: TDBRichEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    DBRichEdit9: TDBRichEdit;
    DBRichEdit10: TDBRichEdit;
    Memo4: TMemo;
    Button1: TButton;
    Memo5: TMemo;
    DBRichEdit11: TDBRichEdit;
    dbItemBuscaAtendimentoHC1: TIntegerField;
    dbAltaAtendimentoHC1: TIntegerField;
    dbAltaTipo: TStringField;
    dbAltaCliente: TIntegerField;
    dbAltaEmpresa: TIntegerField;
    dbAltaPaciente: TIntegerField;
    dbAltaHospital: TIntegerField;
    dbAltaUltimaVisita: TIntegerField;
    dbAltaMotivoAlta: TStringField;
    dbAltaUsuario: TStringField;
    dbAltaProcessa: TStringField;
    dbItemDiagnosticoAtendimentoHC1: TIntegerField;
    dbItemDiagnosticoTipo: TStringField;
    dbItemDiagnosticoItem: TIntegerField;
    dbItemDiagnosticoDiagnostico: TIntegerField;
    dbItemDiagnosticoPrincipal: TBooleanField;
    dbItemDiagnosticoBuscaAtendimentoHC1: TIntegerField;
    dbItemDiagnosticoBuscaTipo: TStringField;
    dbItemDiagnosticoBuscaItem: TIntegerField;
    dbItemDiagnosticoBuscaDiagnostico: TIntegerField;
    dbItemDiagnosticoBuscaPrincipal: TBooleanField;
    dbProcessoAtendimentoHC1: TIntegerField;
    dbProcessoTipo: TStringField;
    dbProcessoCliente: TIntegerField;
    dbProcessoEmpresa: TIntegerField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoHospital: TIntegerField;
    dbProcessoMotivoAlta: TStringField;
    dbProcessoUsuario: TStringField;
    dbProcessoProcessa: TStringField;
    dbItemAtendimentoHC1: TIntegerField;
    dbItemTipo: TStringField;
    dbItemItem: TIntegerField;
    dbItemAuditor: TIntegerField;
    dbItemPA: TStringField;
    dbItemTemperatura: TStringField;
    dbItemQuadroClinico: TStringField;
    dbItemConsciencia: TStringField;
    dbItemLocomocao: TStringField;
    dbItemDispneia: TBooleanField;
    dbItemTosse: TBooleanField;
    dbItemSecrecaoPulmonar: TBooleanField;
    dbItemHabitoDigestivo: TBooleanField;
    dbItemEdema: TBooleanField;
    dbItemHabitoUrinario: TBooleanField;
    dbItemMonitor: TBooleanField;
    dbItemVentilacaoMecanica: TBooleanField;
    dbItemO2: TBooleanField;
    dbItemO2Continuo: TBooleanField;
    dbItemO2Qtd: TIntegerField;
    dbItemOxigenioContinuo: TBooleanField;
    dbItemOxigenioIntermitente: TBooleanField;
    dbItemOxigenioQtd: TIntegerField;
    dbItemTrocaTorpedo: TBooleanField;
    dbItemTrocaTorpedoQtd: TIntegerField;
    dbItemTrocaTorpedoFreq: TStringField;
    dbItemTrocanter1: TBooleanField;
    dbItemTamanho1: TStringField;
    dbItemAspecto1: TStringField;
    dbItemTrocanter2: TBooleanField;
    dbItemTamanho2: TStringField;
    dbItemAspecto2: TStringField;
    dbItemSacral3: TBooleanField;
    dbItemTamanho3: TStringField;
    dbItemAspecto3: TStringField;
    dbItemEscaras4: TStringField;
    dbItemLocal4: TStringField;
    dbItemTamanho4: TStringField;
    dbItemAspecto4: TStringField;
    dbItemEvolucaoGeral: TStringField;
    dbItemVMQtd: TIntegerField;
    dbItemVMFreq: TStringField;
    dbItemVMCurativo: TBooleanField;
    dbItemVMObs: TStringField;
    dbItemVEQtd: TIntegerField;
    dbItemVEFreq: TStringField;
    dbItemVECurativo: TBooleanField;
    dbItemVEObs: TStringField;
    dbItemEnfQtd: TIntegerField;
    dbItemEnfFreq: TStringField;
    dbItemEnfCurativo: TBooleanField;
    dbItemEnfInjecao: TBooleanField;
    dbItemEnfAspiracao: TBooleanField;
    dbItemEnfAparelho: TBooleanField;
    dbItemEnfHigiene: TBooleanField;
    dbItemEnfObs: TStringField;
    dbItemFisioMQtd: TIntegerField;
    dbItemFisioMFreq: TStringField;
    dbItemFisioMObs: TStringField;
    dbItemFisioRQtd: TIntegerField;
    dbItemFisioRFreq: TStringField;
    dbItemFisioRObs: TStringField;
    dbItemFonoQtd: TIntegerField;
    dbItemFonoFreq: TStringField;
    dbItemFonoObs: TStringField;
    dbItemOutros: TStringField;
    dbItemOutrosObs: TStringField;
    dbItemAlimentacao: TBooleanField;
    dbItemAlimentacaoTipo: TStringField;
    dbItemAlimentacaoQtd: TIntegerField;
    dbItemBomba: TBooleanField;
    dbItemBombaQtd: TIntegerField;
    dbItemCurativo: TBooleanField;
    dbItemCurativoPQtd: TIntegerField;
    dbItemCurativoMQtd: TIntegerField;
    dbItemCurativoGQtd: TIntegerField;
    dbItemAspiracao: TBooleanField;
    dbItemLeitoHospitalar: TBooleanField;
    dbItemLeitoHospitalarProprio: TBooleanField;
    dbItemCadeiraRodas: TBooleanField;
    dbItemCadeiraRodasProprio: TBooleanField;
    dbItemAndador: TBooleanField;
    dbItemAndadorProprio: TBooleanField;
    dbItemAspirador: TBooleanField;
    dbItemAspiradorProprio: TBooleanField;
    dbItemColchaoAgua: TBooleanField;
    dbItemColchaoAguaProprio: TBooleanField;
    dbItemColchaoOvos: TBooleanField;
    dbItemColchaoOvosProprio: TBooleanField;
    dbItemInalador: TBooleanField;
    dbItemInaladorProprio: TBooleanField;
    dbItemSuporteSoro: TBooleanField;
    dbItemSuporteSoroProprio: TBooleanField;
    dbItemOximetro: TBooleanField;
    dbItemOximetroProprio: TBooleanField;
    dbItemEquipamento1: TBooleanField;
    dbItemEquipamento1Nome: TStringField;
    dbItemEquipamento1Proprio: TBooleanField;
    dbItemDepSonda: TSmallintField;
    dbItemDepSondaCuidador: TBooleanField;
    dbItemDepStomias: TSmallintField;
    dbItemDepStomiasCuidador: TBooleanField;
    dbItemDepVenoso: TSmallintField;
    dbItemDepVenosoCuidador: TBooleanField;
    dbItemDepMedicamento: TSmallintField;
    dbItemDepMedicamentoCuidador: TBooleanField;
    dbItemDepAparelho: TSmallintField;
    dbItemDepAparelhoCuidador: TBooleanField;
    dbItemDepCurativo: TSmallintField;
    dbItemDepCurativoCuidador: TBooleanField;
    dbItemDepHigiene: TSmallintField;
    dbItemDepHigieneCuidador: TBooleanField;
    dbItemDepDieta: TSmallintField;
    dbItemDepDietaCuidador: TBooleanField;
    dbItemDepMobilizacao: TSmallintField;
    dbItemDepMobilizacaoCuidador: TBooleanField;
    dbItemDepVigilancia: TSmallintField;
    dbItemDepVigilanciaCuidador: TBooleanField;
    dbItemDepMedia: TSmallintField;
    dbItemCuidador: TBooleanField;
    dbItemCuidadorNome: TStringField;
    dbItemCuidadorM: TBooleanField;
    dbItemCuidadorT: TBooleanField;
    dbItemCuidadorN: TBooleanField;
    dbItemRecebeInstrucoes: TBooleanField;
    dbItemAssumeCuidados: TBooleanField;
    dbItemQuerAssumir: TBooleanField;
    dbItemClienteSatisfeito: TBooleanField;
    dbItemClienteSatisfeitoTexto: TMemoField;
    dbItemObservacoes: TMemoField;
    dbItemUsuario: TStringField;
    dbItemConclusaoAtendimentoHC1: TIntegerField;
    dbItemConclusaoTipo: TStringField;
    dbItemConclusaoItem: TIntegerField;
    dbItemConclusaoConclusao: TStringField;
    dbConclusaoConclusao: TStringField;
    dbConclusaoNome: TStringField;
    dbItemConclusaoConclusaoTexto: TStringField;
    dbItemBuscaTipo: TStringField;
    dbUltimaVisitaAtendimentoHC1: TIntegerField;
    dbUltimaVisitaTipo: TStringField;
    dbUltimaVisitaItem: TIntegerField;
    dbItemExame: TMSTable;
    dsItemExame: TDataSource;
    dbItemExameAtendimentoHC1: TIntegerField;
    dbItemExameTipo: TStringField;
    dbItemExameItem: TIntegerField;
    dbItemExameResultado: TStringField;
    dbItemMedicamento: TMSTable;
    dbItemMedicamentoAtendimentoHC1: TIntegerField;
    dbItemMedicamentoTipo: TStringField;
    dbItemSondaSVD: TBooleanField;
    dbItemSondaSNG: TBooleanField;
    dbItemSondaSNE: TBooleanField;
    dbItemSondaUripem: TBooleanField;
    dbItemMedicamentoVia: TStringField;
    dbItemMedicamentoHorario: TStringField;
    dbItemMedicamentoPeriodo: TStringField;
    Panel13: TPanel;
    Label49: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label68: TLabel;
    pnlMedicamento: TPanel;
    Label40: TLabel;
    Panel16: TPanel;
    cmdGravaM: TBitBtn;
    cmdExcluiM: TBitBtn;
    cmdCancelaM: TBitBtn;
    cmdNovoM: TBitBtn;
    pnlExame: TPanel;
    Label51: TLabel;
    Panel11: TPanel;
    cmdGravaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    cmdCancelaE: TBitBtn;
    cmdNovoE: TBitBtn;
    dbItemFraldasQtd: TIntegerField;
    dbItemOutrosMateriais: TStringField;
    dbItemDepMedia1: TSmallintField;
    dbProcessoBuscaAtendimentoHC1: TIntegerField;
    dbProcessoBuscaTipo: TStringField;
    dbProcessoBuscaCliente: TIntegerField;
    dbProcessoBuscaEmpresa: TIntegerField;
    dbProcessoBuscaPaciente: TIntegerField;
    dbProcessoBuscaHospital: TIntegerField;
    dbProcessoBuscaUltimaVisita: TIntegerField;
    dbProcessoBuscaMotivoAlta: TStringField;
    dbProcessoBuscaUsuario: TStringField;
    dbProcessoBuscaProcessa: TStringField;
    dbItemAspiracaoQtd: TIntegerField;
    cmpSonda: TDBEdit;
    cmpStomia: TDBEdit;
    cmpVenoso: TDBEdit;
    cmpMedicamento: TDBEdit;
    cmpAparelho: TDBEdit;
    cmpCurativo: TDBEdit;
    cmpHigiene: TDBEdit;
    cmpDieta: TDBEdit;
    cmpMobilizacao: TDBEdit;
    cmpVigilancia: TDBEdit;
    Label69: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label88: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    dbItemVM24H: TBooleanField;
    dbItemVE24H: TBooleanField;
    Label104: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    dbItemExameExame: TStringField;
    dbItemMedicamentoMedicamento: TStringField;
    grdMedicamento: TDBGrid;
    grdExame: TDBGrid;
    dbItemExameResultadoTexto: TStringField;
    dbConclusaoClinica: TBooleanField;
    dbConclusaoDomiciliar: TBooleanField;
    dbItemInformante: TStringField;
    dbItemStomiaTraqueo: TBooleanField;
    dbItemStomiaGastro: TBooleanField;
    dbItemStomiaColosto: TBooleanField;
    dbItemStomiaOutro: TStringField;
    dbItemVMVisita: TBooleanField;
    dbItemVMSegSex: TStringField;
    dbItemVMSabDom: TStringField;
    dbItemVMAdequado: TStringField;
    dbItemVEVisita: TBooleanField;
    dbItemVESegSex: TStringField;
    dbItemVESabDom: TStringField;
    dbItemVEAdequado: TStringField;
    dbItemEnfAdequado: TStringField;
    dbItemFisioRAdequado: TStringField;
    dbItemFonoAdequado: TStringField;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    dbItemExameComplementar: TBooleanField;
    dbItemFisioMAdequado: TStringField;
    dbItemMedicamentoOrigem: TStringField;
    dbItemMedicamentoItem: TIntegerField;
    Label21: TLabel;
    DBText2: TDBText;
    Panel6: TPanel;
    Label22: TLabel;
    DBText10: TDBText;
    Panel2: TPanel;
    Label128: TLabel;
    DBText23: TDBText;
    dbItemUsuarioI: TStringField;
    dsItemMedicamento: TDataSource;
    Label132: TLabel;
    DBText17: TDBText;
    Panel3: TPanel;
    pnlHistorico: TPanel;
    DBMemo1: TDBMemo;
    Label89: TLabel;
    dbItemHistoricoPatologico: TMemoField;
    Panel4: TPanel;
    DBRadioGroup7: TDBRadioGroup;
    Label133: TLabel;
    Panel17: TPanel;
    Label134: TLabel;
    Panel18: TPanel;
    Label135: TLabel;
    Label13: TLabel;
    Label72: TLabel;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    Label73: TLabel;
    Label74: TLabel;
    DBCheckBox56: TDBCheckBox;
    DBEdit62: TDBEdit;
    Label75: TLabel;
    Label67: TLabel;
    DBEdit30: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit36: TDBEdit;
    Label71: TLabel;
    Panel19: TPanel;
    Label70: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label28: TLabel;
    DBComboBox26: TDBComboBox;
    DBComboBox25: TDBComboBox;
    DBComboBox31: TDBComboBox;
    DBComboBox27: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Panel20: TPanel;
    Panel21: TPanel;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Panel22: TPanel;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    Label136: TLabel;
    Panel23: TPanel;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    Label41: TLabel;
    DBEdit22: TDBEdit;
    Label137: TLabel;
    Panel24: TPanel;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    Label138: TLabel;
    Panel25: TPanel;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBCheckBox53: TDBCheckBox;
    DBEdit60: TDBEdit;
    Label33: TLabel;
    DBEdit61: TDBEdit;
    Label139: TLabel;
    dbItemSondaSVA: TBooleanField;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBEdit23: TDBEdit;
    Label140: TLabel;
    dbItemSondaSVAQtd: TIntegerField;
    DBEdit24: TDBEdit;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBEdit26: TDBEdit;
    Label141: TLabel;
    DBEdit32: TDBEdit;
    Label142: TLabel;
    dbItemRespirador: TStringField;
    dbItemBIPAP: TBooleanField;
    dbItemBIPAPQtd: TIntegerField;
    dbItemCFAP: TBooleanField;
    dbItemCFAPQtd: TIntegerField;
    Panel26: TPanel;
    Label143: TLabel;
    Label144: TLabel;
    Label17: TLabel;
    Label34: TLabel;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    cmpVMVisita: TDBCheckBox;
    cmpVM24H: TDBCheckBox;
    cmpVMCurativo: TDBCheckBox;
    cmpVMSabDom: TDBEdit;
    cmphdia2: TLabel;
    cmpSabDom: TLabel;
    cmphdia1: TLabel;
    cmpVMSegSex: TDBEdit;
    cmpSegSex: TLabel;
    cmpVEVisita: TDBCheckBox;
    cmpVE24H: TDBCheckBox;
    cmpVECurativo: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBComboBox7: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBComboBox10: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Label84: TLabel;
    DBEdit46: TDBEdit;
    DBComboBox24: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBEdit39: TDBEdit;
    Label145: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    cmpVMAdequado: TDBComboBox;
    Label32: TLabel;
    Label18: TLabel;
    cmpVEAdequado: TDBComboBox;
    cmpEnfAdequado: TDBComboBox;
    cmpFisioRAdequado: TDBComboBox;
    cmpFisioMAdequado: TDBComboBox;
    cmpFonoAdequado: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    dbItemNutriQtd: TIntegerField;
    dbItemNutriFreq: TStringField;
    dbItemNutriObs: TStringField;
    dbItemNutriAdequado: TStringField;
    dbItemOutrosAdequado: TStringField;
    Panel27: TPanel;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    Label97: TLabel;
    DBCheckBox73: TDBCheckBox;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit19: TDBEdit;
    Label30: TLabel;
    Label122: TLabel;
    Label93: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label98: TLabel;
    DBEdit25: TDBEdit;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit38: TDBEdit;
    Label101: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    DBEdit41: TDBEdit;
    dbItemBombaNum: TIntegerField;
    Panel28: TPanel;
    DBCheckBox1: TDBCheckBox;
    chkLeitoP: TDBCheckBox;
    chkAndadorP: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    chkColchaoP: TDBCheckBox;
    chkInaladorP: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    chkOximetroP: TDBCheckBox;
    DBEdit54: TDBEdit;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    chkCadeiraP: TDBCheckBox;
    chkAspiradorP: TDBCheckBox;
    chkOvos: TDBCheckBox;
    chkSoroP: TDBCheckBox;
    chkOutro1P: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    Label148: TLabel;
    Label149: TLabel;
    Panel29: TPanel;
    Label150: TLabel;
    pbScore: TProgressBar;
    Panel31: TPanel;
    Label94: TLabel;
    Label95: TLabel;
    Panel32: TPanel;
    cmpMedia: TDBText;
    Label92: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label127: TLabel;
    pnlCuidador: TPanel;
    Label96: TLabel;
    DBCheckBox26: TDBCheckBox;
    Label48: TLabel;
    DBEdit31: TDBEdit;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    Label25: TLabel;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    dbItemCuidadorTreino: TBooleanField;
    pnlClienteSatisfeito: TPanel;
    Label151: TLabel;
    Panel35: TPanel;
    DBCheckBox75: TDBCheckBox;
    Label152: TLabel;
    DBMemo2: TDBMemo;
    Panel15: TPanel;
    Label50: TLabel;
    DBMemo5: TDBMemo;
    dbItemStomiaTraqueoD: TDateField;
    dbItemStomiaGastroD: TDateField;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    Label153: TLabel;
    dbItemMedicamentoOrigemTexto: TStringField;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel36: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdNovoP: TBitBtn;
    cmdAlteraP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdFicha1: TSpeedButton;
    cmdLista1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cmdImpP: TBitBtn;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoUltimaVisita: TIntegerField;
    dbProcessoDataUltimaVisita: TDateTimeField;
    dbProcessoDataInclusao: TDateTimeField;
    dbItemDataAuditoria: TDateTimeField;
    dbItemDataUltimaVisita: TDateTimeField;
    dbItemDataUltimaInternacao: TDateTimeField;
    dbItemDataInclusao: TDateTimeField;
    dbItemDataAlteracao: TDateTimeField;
    dbItemDataUltimaInternacaoC: TStringField;
    dbItemExameData: TDateTimeField;
    dbPacienteDataNascimento: TDateTimeField;
    dbPacienteDataInclusao: TDateTimeField;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEmpresaDataInicio: TDateTimeField;
    dbEmpresaDataFim: TDateTimeField;
    dbEmpresaDataInclusao: TDateTimeField;
    dbAltaDataInternacao: TDateTimeField;
    dbAltaDataAlta: TDateTimeField;
    dbAltaDataUltimaVisita: TDateTimeField;
    dbAltaDataInclusao: TDateTimeField;
    dbItemBuscaDataAuditoria: TDateTimeField;
    dbItemBuscaDataUltimaVisita: TDateTimeField;
    dbUltimaVisitaDataAuditoria: TDateTimeField;
    dbProcessoBuscaDataInternacao: TDateTimeField;
    dbProcessoBuscaDataAlta: TDateTimeField;
    dbProcessoBuscaDataUltimaVisita: TDateTimeField;
    dbProcessoBuscaDataInclusao: TDateTimeField;
    dbProcessoAtendimentoHC1A: TIntegerField;
    dbProcessoBuscaAtendimentoHC1A: TIntegerField;
    Label154: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText24: TDBText;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dsEnfermeiro: TDataSource;
    lblLocEnfermeiro: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    dbItemEnfermeiro: TIntegerField;
    dbItemEnfermeiroNome: TStringField;
    Panel30: TPanel;
    cmdAnterior: TBitBtn;
    cmdProximo: TBitBtn;
    pnlProntuario: TPanel;
    Panel37: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbPacienteCalcFields(DataSet: TDataSet);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure dbProcessoAfterCancel(DataSet: TDataSet);
    procedure dbProcessoAfterPost(DataSet: TDataSet);
    procedure dbProcessoAfterInsert(DataSet: TDataSet);
    procedure dbProcessoBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoBeforePost(DataSet: TDataSet);
    procedure chkLegendaEnter(Sender: TObject);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdAlteraPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdCancelaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dsItemStateChange(Sender: TObject);
    procedure dbItemAfterInsert(DataSet: TDataSet);
    procedure grdItemCellClick(Column: TColumn);
    procedure dbItemAfterCancel(DataSet: TDataSet);
    procedure dbItemAfterPost(DataSet: TDataSet);
    procedure dbItemBeforeInsert(DataSet: TDataSet);
    procedure cmdNovoLClick(Sender: TObject);
    procedure cmdGravaLClick(Sender: TObject);
    procedure cmdExcluiLClick(Sender: TObject);
    procedure cmdCancelaLClick(Sender: TObject);
    procedure dsItemConclusaoStateChange(Sender: TObject);
    procedure cmdAnteriorClick(Sender: TObject);
    procedure cmdProximoClick(Sender: TObject);
    procedure dbItemBeforePost(DataSet: TDataSet);
    procedure grdProcessoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbItemAfterDelete(DataSet: TDataSet);
    procedure cmdNovoDClick(Sender: TObject);
    procedure cmdGravaDClick(Sender: TObject);
    procedure cmdExcluiDClick(Sender: TObject);
    procedure cmdCancelaDClick(Sender: TObject);
    procedure cmdPrincipalDClick(Sender: TObject);
    procedure cmdCopiaDClick(Sender: TObject);
    procedure dbItemDiagnosticoCalcFields(DataSet: TDataSet);
    procedure dbItemDiagnosticoAfterInsert(DataSet: TDataSet);
    procedure dsItemDiagnosticoStateChange(Sender: TObject);
    procedure grdDiagnosticoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdDiagnosticoCellClick(Column: TColumn);
    procedure grdConclusaoCellClick(Column: TColumn);
    procedure dbProcessoAfterEdit(DataSet: TDataSet);
    procedure cmpDataCloseUp(Sender: TObject);
    procedure lblLocClienteCloseUp(Sender: TObject);
    procedure lblLocEmpresaCloseUp(Sender: TObject);
    procedure lblLocPacienteCloseUp(Sender: TObject);
    procedure lblLocHospitalCloseUp(Sender: TObject);
    procedure lblDataAuditoriaCloseUp(Sender: TObject);
    procedure lblLocAuditorCloseUp(Sender: TObject);
    procedure dbItemConclusaoAfterInsert(DataSet: TDataSet);
    procedure cmdAtivarClick(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure pagHospitalChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure pagHospitalChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cmdRelCompleto1Click(Sender: TObject);
    procedure dbAltaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmpQtdChange(Sender: TObject);
    procedure grdAltaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdAltaCellClick(Column: TColumn);
    procedure dbAltaCalcFields(DataSet: TDataSet);
    procedure dbAltaAfterRefresh(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure tabOrdemItemChange(Sender: TObject);
    procedure lblLocCodigo1Change(Sender: TObject);
    procedure lblDataAuditoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocAuditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabOrdemProcessoChange(Sender: TObject);
    procedure lblLocCodigoChange(Sender: TObject);
    procedure cmpDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocHospitalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure cmdFicha1Click(Sender: TObject);
    procedure cmdLista1Click(Sender: TObject);
    procedure lblLocClienteClick(Sender: TObject);
    procedure lblLocEmpresaClick(Sender: TObject);
    procedure lblLocHospitalClick(Sender: TObject);
    procedure lblLocPacienteClick(Sender: TObject);
    procedure lblLocAuditorClick(Sender: TObject);
    procedure dbItemBuscaAfterScroll(DataSet: TDataSet);
    procedure dbProcessoBeforeEdit(DataSet: TDataSet);
    procedure dbItemBeforeEdit(DataSet: TDataSet);
    procedure cmdImpPClick(Sender: TObject);
    procedure dbProcessoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbItemExameAfterInsert(DataSet: TDataSet);
    procedure dbItemMedicamentoAfterInsert(DataSet: TDataSet);
    procedure dbItemCalcFields(DataSet: TDataSet);
    procedure cmdNovoMClick(Sender: TObject);
    procedure cmdGravaMClick(Sender: TObject);
    procedure cmdCancelaMClick(Sender: TObject);
    procedure cmdExcluiMClick(Sender: TObject);
    procedure dsItemMedicamentoStateChange(Sender: TObject);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdCancelaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure dsItemExameStateChange(Sender: TObject);
    procedure dsItemDataChange(Sender: TObject; Field: TField);
    procedure dbItemExameBeforePost(DataSet: TDataSet);
    procedure dbItemMedicamentoBeforePost(DataSet: TDataSet);
    procedure dbItemExameCalcFields(DataSet: TDataSet);
    procedure grdExameDblClick(Sender: TObject);
    procedure dbConclusaoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbItemExameComplementarGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbItemExameComplementarSetText(Sender: TField;
      const Text: String);
    procedure dbItemMedicamentoCalcFields(DataSet: TDataSet);
    procedure lblLocEnfermeiroCloseUp(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbProcessoAfterScroll(DataSet: TDataSet);
    procedure dbItemAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHomeCareNovo: TfrmHomeCareNovo;
  iUltimoProcesso,iUltimoItem,iDias:integer;
  iTipo:string;
implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}


procedure TfrmHomeCareNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbPaciente.Close;
     dbCliente.Close;
     dbAuditor.Close;
     dbEnfermeiro.Close;
     dbHospital.Close;
     dbDiagnostico.Close;
     dbEmpresa.Close;
     dbConclusao.Close;
     dbProcessoBusca.Close;
     dbItem.Close;
     dbItemBusca.Close;
     dbItemConclusao.Close;
     dbItemExame.Close;
     dbItemMedicamento.Close;
     dbItemDiagnostico.Close;
     dbItemDiagnosticoBusca.Close;
     dbProcesso.Close;
     dbUltimaVisita.Close;
end;

procedure TfrmHomeCareNovo.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
     dbProcesso.OPen;
     tabOrdemProcesso.TabIndex:=0;
     cmpProcesso.Enabled:=false;
     iUltimoProcesso:=0;

     dbProcessoBusca.Open;

     dbItem.Open;
     iUltimoItem:=0;
     cmpItem.Enabled:=false;
     cmpEmpresa.Enabled:=false;
     cmpCliente.Enabled:=false;
     cmpHospital.Enabled:=false;
     cmpPaciente.Enabled:=false;

     dbItemBusca.Open;
     dbItemConclusao.Open;
     dbUltimaVisita.Open;
     dbPaciente.Open;

     dbItemDiagnostico.Open;
     dbItemDiagnosticoBusca.Open;

     dbItemExame.Open;
     dbItemMedicamento.Open;

     dbCliente.Open;
     dbAuditor.Open;
     dbEnfermeiro.Open;
     dbHospital.Open;
     dbDiagnostico.Open;
     dbConclusao.Open;
     dbEmpresa.Open;

     lblLocPaciente.KeyValue:=dbPacientePaciente.Value;
     lblLocCliente.KeyValue:=dbClienteCliente.Value;
     lblLocHospital.KeyValue:=dbHospitalHospital.Value;
     lblLocAuditor.KeyValue:=dbAuditorAuditor.Value;
     lblLocEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;
     lblLocEmpresa.KeyValue:=dbEmpresaEmpresa.Value;

     cmpData.Visible:=false;
     lblLocCliente.Visible:=false;
     lblLocEmpresa.Visible:=false;
     lblLocHospital.Visible:=false;
     lblLocPaciente.Visible:=false;
     lblLocCodigo.Visible:=true;

     lblDataAuditoria.Visible:=false;
     lblLocAuditor.Visible:=false;
     lblLocCodigo1.Visible:=true;

    with dmRelatorio do
    begin
        dbItemHC1Diagnostico.Open;
        dbItemHC1Medicamento.Open;
        dbItemHC1Exame.Open;
        dbItemHC1Conclusao.Open;
        dbItemHIDiagnostico.Open;
    end;


   finally
     if frmHomeCareNovo.tag=0 then
     begin
        //Clinica
        lblEmpresa.Caption:='Clínica';
        pnlExame.Visible:=true;
        chkAndadorP.Visible:=false;
        chkAspiradorP.visible:=false;
        chkCadeiraP.visible:=false;
        chkColchaoP.visible:=false;
        chkInaladorP.visible:=false;
        chkLeitoP.visible:=false;
        chkOutro1P.visible:=false;
        chkOximetroP.visible:=false;
        chkSoroP.visible:=false;
        chkOvos.visible:=false;

        cmpVMVisita.visible:=true;
        cmpVM24H.visible:=true;
        cmpSegSex.visible:=true;
        cmpVMSegSex.visible:=true;
        cmpSabDom.visible:=true;
        cmpVMSabDom.Visible:=true;
        cmphdia1.Visible:=true;
        cmphdia2.Visible:=true;
        cmpVMCurativo.Left:=346;
        cmpVEVisita.Visible:=true;
        cmpVE24H.visible:=true;
        cmpVECurativo.Left:=346;

        pnlCuidador.Visible:=false;
        pnlClienteSatisfeito.Visible:=false;
        pnlExame.Visible:=true;
        pnlHistorico.Visible:=false;
     end
     else
     begin
        //Domiciliar
        lblEmpresa.Caption:='Empresa';
        pnlExame.Visible:=true;
        chkAndadorP.Visible:=true;
        chkAspiradorP.visible:=true;
        chkCadeiraP.visible:=true;
        chkColchaoP.visible:=true;
        chkInaladorP.visible:=true;
        chkLeitoP.visible:=true;
        chkOutro1P.visible:=true;
        chkOximetroP.visible:=true;
        chkOvos.visible:=true;
        chkSoroP.visible:=true;

        cmpVMVisita.visible:=false;
        cmpVM24H.visible:=false;
        cmpSegSex.visible:=false;
        cmpVMSegSex.visible:=false;
        cmpSabDom.visible:=false;
        cmpVMSabDom.Visible:=false;
        cmphdia1.Visible:=false;
        cmphdia2.Visible:=false;
        cmpVMCurativo.Left:=208;
        cmpVEVisita.Visible:=false;
        cmpVE24H.visible:=false;
        cmpVECurativo.Left:=208;

        pnlClienteSatisfeito.Visible:=true;
        pnlCuidador.Visible:=true;
        pnlExame.Visible:=false;
        pnlHistorico.Visible:=true
     end;
     pnlProntuario.Caption:=IntToStr(dbProcessoAtendimentoHC1.value)+' - '+dbProcessoPacienteNome.value;
     pnlItem.Caption:=IntToStr(dbItemItem.value)+' - '+DateToStr(dbItemDataAuditoria.value)+ ' - '+
                      dbItemAuditorNome.value+' '+dbItemEnfermeiroNome.value;
     pagHospital.ActivePage:=tabProntuario;
     pagAuditoria.ActivePage:=tabAuditoria1;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmHomeCareNovo.dbPacienteCalcFields(DataSet: TDataSet);
var dia,mes,ano: word;
var dian,mesn,anon: word;
begin
    DecodeDate(date,ano,mes,dia);
    if not dbPacienteDataNascimento.IsNull then
       DecodeDate(dbPacienteDataNascimento.Value,anon,mesn,dian)
    else
        anon:=dbPacienteAnoNascimento.Value;

    dbPacienteIdade.Value:=ano-anon;
    if (dbPacienteIdade.Value<=2) and
       (not dbPacienteDataNascimento.IsNull) then
    begin
       dbPacienteIdade.Value:=mes-mesn;
       if dbPacienteIdade.Value<1 then
          dbPacienteIdade.Value:=dbPacienteIdade.Value+12;
       if ano-anon=2 then
          dbPacienteIdade.Value:=dbPacienteIdade.Value+12;    
       dbPacienteUnidade.Value:='mes(es)';
    end
    else
       dbPacienteUnidade.Value:='ano(s)';
end;

procedure TfrmHomeCareNovo.cmdNovoClick(Sender: TObject);
begin
    dbProcesso.Insert;
    cmpProcesso.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdAlteraClick(Sender: TObject);
begin
    dbProcesso.Edit;
    cmpInternacao.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdGravaClick(Sender: TObject);
begin
    dbProcesso.Post;
end;

procedure TfrmHomeCareNovo.cmdCancelaClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme o cancelamento da Inclusão/Alteração!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
    dbProcesso.Cancel;
end;

procedure TfrmHomeCareNovo.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!'+#13+'Atenção serão exclusos também todas as auditorias.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     dbItem.First;
     while not dbItem.eof do
     begin
        dbItemConclusao.First;
        while not dbItemConclusao.eof do
           dbItemConclusao.Delete;
        dbItem.Delete;
     end;
     dbProcesso.Delete;
end;

procedure TfrmHomeCareNovo.dsProcessoStateChange(Sender: TObject);
begin
     cmdNovo.Default:=dbProcesso.State in [dsBrowse];
     cmdGrava.Default:=dbProcesso.State in [dsInsert,dsEdit];
     cmdExclui.Enabled:=(dbProcesso.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProcesso.RecordCount<>0);
     cmdGrava.Enabled:=dbProcesso.State in [dsEdit,dsInsert];
     cmdAltera.Enabled:=(dbProcesso.State=dsBrowse)
                         and (dbProcesso.RecordCount<>0);
     cmdCancela.Enabled:=dbProcesso.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.dbProcessoAfterCancel(DataSet: TDataSet);
begin
     cmpProcesso.Enabled:=false;
     cmpEmpresa.Enabled:=false;
     cmpCliente.Enabled:=false;
     cmpHospital.Enabled:=false;
     cmpPaciente.Enabled:=false;
end;

procedure TfrmHomeCareNovo.dbProcessoAfterPost(DataSet: TDataSet);
begin
     cmpProcesso.Enabled:=false;
     cmpEmpresa.Enabled:=false;
     cmpCliente.Enabled:=false;
     cmpHospital.Enabled:=false;
     cmpPaciente.Enabled:=false;
end;

procedure TfrmHomeCareNovo.dbProcessoAfterInsert(DataSet: TDataSet);
begin
     cmpProcesso.Enabled:=true;
     cmpEmpresa.Enabled:=true;
     cmpCliente.Enabled:=true;
     cmpHospital.Enabled:=true;
     cmpPaciente.Enabled:=true;
     dbProcessoAtendimentoHC1.Value:=iUltimoProcesso+1;
     dbProcessoTipo.value:=iTipo;
     dbProcessoDataInclusao.Value:=date;
     dbProcessoDataInternacao.Value:=date;
     dbProcessoMotivoAlta.Value:='H';
end;

procedure TfrmHomeCareNovo.dbProcessoBeforeInsert(DataSet: TDataSet);
begin
    cmdFichaClick(DataSet);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;

    dbCodigo.Open;
    if iTipo='C' then
        dbCodigo.Refresh;
        if not dbCodigo.Locate('Campo','HomeCareC',[]) then
        begin
            dbCodigo.Insert;
            dbCodigoCampo.value:='HomeCareC';
            dbCodigoUltimo.value:=0;
            dbCodigo.Post;
        end;
    if iTipo='D' then
        dbCodigo.Refresh;
        if not dbCodigo.Locate('Campo','HomeCareD',[]) then
                begin
            dbCodigo.Insert;
            dbCodigoCampo.value:='HomeCareD';
            dbCodigoUltimo.value:=0;
            dbCodigo.Post;
        end;
    iUltimoProcesso:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
    dbCodigo.Close;
end;

procedure TfrmHomeCareNovo.dbProcessoBeforePost(DataSet: TDataSet);
var iAnterior:integer;
begin
     if dbProcessoAtendimentoHC1.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if (dbProcesso.State=dsInsert) and
        (dbProcessoAtendimentoHC1.Value>iUltimoProcesso+1) then
     begin
        ShowMessage('Código deve ser menor ou igual ao sugerido'+#13+
                    'Codigo Sugerido:'+IntToStr(iUltimoProcesso+1));
        abort;
     end;

     if dbProcessoCliente.Value=0 then
     begin
        ShowMessage('Cliente inválido');
        abort;
     end;
     if dbProcessoHospital.Value=0 then
     begin
        ShowMessage('Hospital inválido');
        abort;
     end;
     if dbProcessoPaciente.Value=0 then
     begin
        ShowMessage('Paciente inválido');
        abort;
     end;
     if dbProcessoDataInternacao.IsNull then
     begin
        ShowMessage('Data Internação inválida');
        abort;
     end;

     dbProcessoUsuario.Value:=iUsuario;

     iAnterior:=0;
     dbProcessoBusca.IndexFieldNames:='Paciente;DataInternacao';
     dbProcessoBusca.Locate('Paciente',dbProcessoPaciente.value,[]);
     while (not dbProcessoBusca.eof) and
           (dbProcessoBuscaPaciente.value=dbProcessoPaciente.value) and
           (dbProcessoBuscaAtendimentoHC1.value<>dbProcessoAtendimentoHC1.value) do 
     begin
        iAnterior:=dbProcessoBuscaAtendimentoHC1.value;
        dbProcessoBusca.Next;
    end;
    dbProcessoAtendimentoHC1A.value:=iAnterior;
end;

procedure TfrmHomeCareNovo.chkLegendaEnter(Sender: TObject);
begin
    dbItem.Edit;
end;

procedure TfrmHomeCareNovo.cmdNovoPClick(Sender: TObject);
begin
    dbItem.Insert;
    cmpItem.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdAlteraPClick(Sender: TObject);
begin
    dbItem.Edit;
end;

procedure TfrmHomeCareNovo.cmdGravaPClick(Sender: TObject);
begin
    dbItem.Post;
end;

procedure TfrmHomeCareNovo.cmdCancelaPClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme o cancelamento da Inclusão/Alteração!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
    dbItem.Cancel;
end;

procedure TfrmHomeCareNovo.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
     dbItem.Delete;

end;

procedure TfrmHomeCareNovo.BitBtn8Click(Sender: TObject);
begin
    dbItem.Next;
    if dbItem.bof then
       ShowMessage('Primeira Visita');
end;

procedure TfrmHomeCareNovo.BitBtn9Click(Sender: TObject);
begin
    dbItem.Prior;
    if dbItem.eof then
       ShowMessage('Última Visita');
end;

procedure TfrmHomeCareNovo.dsItemStateChange(Sender: TObject);
begin
     cmdNovoP.Default:=dbItem.State in [dsBrowse];
     cmdGravaP.Default:=dbItem.State in [dsInsert,dsEdit];
     cmdNovoP.Enabled:=dbItem.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiP.Enabled:=(dbItem.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItem.RecordCount<>0);
     cmdGravaP.Enabled:=dbItem.State in [dsEdit,dsInsert];
     cmdAlteraP.Enabled:=(dbItem.State=dsBrowse)
                         and (dbItem.RecordCount<>0);
     cmdCancelaP.Enabled:=dbItem.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.dbItemAfterInsert(DataSet: TDataSet);
begin
    cmpItem.Enabled:=true;
    dbItemItem.Value:=iUltimoItem+1;
    dbItemAtendimentoHC1.Value:=dbProcessoAtendimentoHC1.Value;
    dbItemTipo.Value:=dbProcessoTipo.Value;
    dbItemDataAuditoria.Value:=date;
    dbItemAuditor.value:=0;
    dbItemEnfermeiro.value:=0;

    dbItemAspiracao.Value:=false;
    dbItemAspiracaoQtd.Value:=0;

    dbItemDispneia.value:=false;
    dbItemTosse.value:=false;
    dbItemSecrecaoPulmonar.value:=false;
    dbItemHabitoDigestivo.value:=false;
    dbItemEdema.value:=false;
    dbItemHabitoUrinario.Value:=false;
    dbItemSondaSVD.value:=false;
    dbItemSondaSNG.value:=false;
    dbItemSondaSNE.value:=false;
    dbItemSondaUripem.Value:=false;
    dbItemSondaSVA.value:=false;
    dbItemSondaSVAQtd.value:=0;
    dbItemStomiaTraqueo.value:=false;
    dbItemStomiaGastro.value:=false;
    dbItemStomiaColosto.value:=false;
    dbItemMOnitor.value:=false;
    dbItemVentilacaoMecanica.value:=false;
    dbItemO2.value:=false;
    dbItemO2Continuo.value:=false;
    dbItemO2Qtd.value:=0;
    dbItemOxigenioContinuo.value:=false;
    dbItemOxigenioIntermitente.value:=false;
    dbItemOxigenioQtd.value:=0;
    dbItemTrocaTorpedo.value:=false;
    dbItemTrocaTorpedoQtd.value:=0;
    dbItemTrocanter1.value:=false;
    dbItemTrocanter2.value:=false;
    dbItemSacral3.value:=false;
    dbItemEvolucaoGeral.value:='N';
    dbItemBIPAP.value:=false;
    dbItemBIPAPQtd.value:=0;
    dbItemCFAP.value:=false;
    dbItemCFAPQtd.value:=0;


    dbItemVmQtd.Value:=0;
    dbItemVMCurativo.value:=false;
    dbItemVM24H.value:=false;
    dbItemVMVisita.value:=false;
    dbItemVEQtd.Value:=0;
    dbItemVECurativo.value:=false;
    dbItemVEVisita.value:=false;
    dbItemVE24H.value:=false;
    dbItemEnfQtd.Value:=0;
    dbItemEnfCurativo.Value:=false;
    dbItemEnfInjecao.value:=false;
    dbItemEnfAspiracao.value:=false;
    dbItemEnfAparelho.value:=false;
    dbItemEnfHigiene.value:=false;
    dbItemFisioMQtd.Value:=0;
    dbItemFisioRQtd.Value:=0;
    dbItemFonoQtd.Value:=0;
    dbItemNutriQtd.value:=0;
    dbItemAlimentacao.value:=false;
    dbItemAlimentacaoQtd.value:=0;
    dbItemBomba.Value:=false;
    dbItemBombaQtd.value:=0;
    dbItemCurativo.value:=false;
    dbItemCurativoPQtd.value:=0;
    dbItemCurativoMQtd.value:=0;
    dbItemCurativoGQtd.value:=0;
    dbItemAspiracao.value:=false;
    dbItemAspiracaoQtd.value:=0;
    dbItemFraldasQtd.value:=0;

    dbItemLeitoHospitalar.Value:=false;
    dbItemCadeiraRodas.Value:=false;
    dbItemAndador.Value:=false;
    dbItemAspirador.Value:=false;
    dbItemColchaoAgua.Value:=false;
    dbItemColchaoOvos.Value:=false;
    dbItemInalador.value:=false;
    dbItemSuporteSoro.Value:=false;
    dbItemOximetro.Value:=false;
    dbItemEquipamento1.Value:=false;

    dbItemLeitoHospitalarProprio.Value:=false;
    dbItemCadeiraRodasProprio.Value:=false;
    dbItemAndadorProprio.Value:=false;
    dbItemAspiradorProprio.Value:=false;
    dbItemColchaoAguaProprio.Value:=false;
    dbItemColchaoOvosProprio.Value:=false;
    dbItemInaladorProprio.Value:=false;
    dbItemSuporteSoroProprio.Value:=false;
    dbItemOximetroProprio.Value:=false;
    dbItemEquipamento1Proprio.Value:=false;

    dbItemDepSonda.value:=0;
    dbItemDepSondaCuidador.Value:=false;
    dbItemDepStomias.value:=0;
    dbItemDepStomiasCuidador.Value:=false;
    dbItemDepVenoso.value:=0;
    dbItemDepVenosoCuidador.Value:=false;
    dbItemDepMedicamento.value:=0;
    dbItemDepMedicamentoCuidador.Value:=false;
    dbItemDepAparelho.value:=0;
    dbItemDepAparelhoCuidador.Value:=false;
    dbItemDepCurativo.value:=0;
    dbItemDepCurativoCuidador.Value:=false;
    dbItemDepHigiene.value:=0;
    dbItemDepHigieneCuidador.Value:=false;
    dbItemDepDieta.value:=0;
    dbItemDepDietaCuidador.Value:=false;
    dbItemDepMobilizacao.value:=0;
    dbItemDepMobilizacaoCuidador.Value:=false;
    dbItemDepVigilancia.value:=0;
    dbItemDepVigilanciaCuidador.Value:=false;

    dbItemCuidador.Value:=false;
    dbItemCuidadorM.value:=false;
    dbItemCuidadorT.value:=false;
    dbItemCuidadorN.value:=false;
    dbItemCuidadorTreino.value:=false;
    dbItemAssumeCuidados.value:=false;
    dbItemRecebeInstrucoes.Value:=false;
    dbItemQuerAssumir.value:=false;
    dbItemClienteSatisfeito.value:=false;

    dbItemDataInclusao.Value:=date;
    dbItemUsuarioI.value:=iUsuario;
end;

procedure TfrmHomeCareNovo.grdItemCellClick(Column: TColumn);
begin
    tabOrdemProcesso.tabIndex:=0;
    dbProcesso.Locate('AtendimentoHC1',dbItemBuscaAtendimentoHC1.Value,[]);
    dbItem.Locate('AtendimentoHC1;Item',VarArrayof([dbItemBuscaAtendimentoHC1.Value,
                                                    dbItemBuscaItem.Value]),[]);

end;

procedure TfrmHomeCareNovo.dbItemAfterCancel(DataSet: TDataSet);
begin
     cmpItem.Enabled:=false;
end;

procedure TfrmHomeCareNovo.dbItemAfterPost(DataSet: TDataSet);
begin
     cmpItem.Enabled:=false;
     dbItemBusca.Refresh;

     dbUltimaVisita.Last;
     dbProcesso.Edit;
     dbProcessoUltimaVisita.Value:=dbUltimaVisitaItem.Value;
     dbProcessoDataUltimaVisita.Value:=dbUltimaVisitaDataAuditoria.Value;
     dbProcesso.Post;
end;

procedure TfrmHomeCareNovo.dbItemBeforeInsert(DataSet: TDataSet);
begin
    cmdFicha1Click(DataSet);
    cmdFicha1.Down:=true;
    cmdLista1.Down:=false;

    tabOrdemItem.TabIndex:=0;;
    dbItem.Last;
    iUltimoItem:=dbItemItem.Value;
    pagAuditoria.ActivePage:=tabAuditoria1;
end;

procedure TfrmHomeCareNovo.cmdNovoLClick(Sender: TObject);
begin
    dbItemConclusao.Insert;
    grdConclusao.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdGravaLClick(Sender: TObject);
begin
    dbItemConclusao.Post;
end;

procedure TfrmHomeCareNovo.cmdExcluiLClick(Sender: TObject);
begin
    dbItemConclusao.Delete;
end;

procedure TfrmHomeCareNovo.cmdCancelaLClick(Sender: TObject);
begin
    dbItemConclusao.Cancel;
end;

procedure TfrmHomeCareNovo.dsItemConclusaoStateChange(Sender: TObject);
begin
     cmdNovoL.Enabled:=dbItemConclusao.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiL.Enabled:=(dbItemConclusao.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItemConclusao.RecordCount<>0);
     cmdGravaL.Enabled:=dbItemConclusao.State in [dsEdit,dsInsert];
     cmdCancelaL.Enabled:=dbItemConclusao.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.cmdAnteriorClick(Sender: TObject);
begin
    dbProcesso.Prior;
end;

procedure TfrmHomeCareNovo.cmdProximoClick(Sender: TObject);
begin
    dbProcesso.Next;
end;

procedure TfrmHomeCareNovo.dbItemBeforePost(DataSet: TDataSet);
var i:integer;
begin
     if dbItemItem.Value<=0 then
     begin
        ShowMessage('Item inválido');
        abort;
     end;

     if (dbItemAuditor.Value=0) and (dbItemEnfermeiro.value=0) then
     begin
        pagAuditoria.ActivePageIndex:=0;
        ShowMessage('Selecione um Auditor ou Enfermeiro');
        abort;
     end;

     if (dbItemAuditor.Value<>0) and (dbItemEnfermeiro.value<>0) then
     begin
        pagAuditoria.ActivePageIndex:=0;
        ShowMessage('Selecione um Auditor ou Enfermeiro');
        abort;
     end;

     if dbItemDataAuditoria.IsNull then
     begin
        pagAuditoria.ActivePageIndex:=0;
        cmpDataAuditoria.SetFocus;
        ShowMessage('Data da Auditoria inválida');
        abort;
     end;
     if (dbItemDepSonda.value<0) or
        (dbItemDepSonda.value>2) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpSonda.SetFocus;
        ShowMessage('Selecione Dependência de Sondas entre [0] e [2]');
        abort;
     end;
     if (dbItemDepStomias.value<0) or
        (dbItemDepStomias.value>3) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpStomia.SetFocus;
        ShowMessage('Selecione Dependência de Stomias entre [0] e [3]');
        abort;
     end;
     if (dbItemDepVenoso.value<0) or
        (dbItemDepVenoso.value>3) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpVenoso.SetFocus;
        ShowMessage('Selecione Dependência Acesso Venosos entre [0] e [3]');
        abort;
     end;
     if (dbItemDepMedicamento.value<0) or
        (dbItemDepMedicamento.value>3) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpMedicamento.SetFocus;
        ShowMessage('Selecione Dependência de Medicamentos entre [0] e [3]');
        abort;
     end;
     if (dbItemDepAparelho.value<0) or
        (dbItemDepAparelho.value>5) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpAparelho.SetFocus;
        ShowMessage('Selecione Dependência de Aparelhos entre [0] e [5]');
        abort;
     end;
     if (dbItemDepCurativo.value<0) or
        (dbItemDepCurativo.value>4) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpCurativo.SetFocus;
        ShowMessage('Selecione Dependência de Curativos entre [0] e [4]');
        abort;
     end;
     if (dbItemDepHigiene.value<0) or
        (dbItemDepHigiene.value>4) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpHigiene.SetFocus;
        ShowMessage('Selecione Dependência de Higiene Pessoal entre [0] e [4]');
        abort;
     end;
     if (dbItemDepDieta.value<0) or
        (dbItemDepDieta.value>5) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpDieta.SetFocus;
        ShowMessage('Selecione Dependência de Dietas entre [0] e [5]');
        abort;
     end;
     if (dbItemDepMobilizacao.value<0) or
        (dbItemDepMobilizacao.value>3) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpMobilizacao.SetFocus;
        ShowMessage('Selecione Dependência para Mobilização entre [0] e [3]');
        abort;
     end;
     if (dbItemDepVigilancia.value<0) or
        (dbItemDepVigilancia.value>5) then
     begin
        pagAuditoria.ActivePageIndex:=4;
        cmpVigilancia.SetFocus;
        ShowMessage('Selecione Dependência de Vigilância entre [0] e [5]');
        abort;
     end;

     if (dbItemVMAdequado.value<>'Sim') and
        (dbItemVMAdequado.value<>'Não') and
        (dbItemVMAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpVMAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Médico inválida');
        abort;
     end;
     if (dbItemVEAdequado.value<>'Sim') and
        (dbItemVEAdequado.value<>'Não') and
        (dbItemVEAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpVEAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Enfermeira inválida');
        abort;
     end;
     if (dbItemEnfAdequado.value<>'Sim') and
        (dbItemEnfAdequado.value<>'Não') and
        (dbItemEnfAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpEnfAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Auxiliar de Enfermagem inválida');
        abort;
     end;
     if (dbItemFisioMAdequado.value<>'Sim') and
        (dbItemFisioMAdequado.value<>'Não') and
        (dbItemFisioMAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpFisioMAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Fisio Motora inválida');
        abort;
     end;
     if (dbItemFisioRAdequado.value<>'Sim') and
        (dbItemFisioRAdequado.value<>'Não') and
        (dbItemFisioRAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpFisioRAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Fisio Respiratória inválida');
        abort;
     end;
     if (dbItemFonoAdequado.value<>'Sim') and
        (dbItemFonoAdequado.value<>'Não') and
        (dbItemFonoAdequado.value<>'') then
     begin
        pagAuditoria.ActivePageIndex:=2;
        cmpFonoAdequado.SetFocus;
        ShowMessage('Opção de Assistencia Adequada para Fonoaudiologia inválida');
        abort;
     end;


     if dbItem.State=dsInsert then
     begin
         if dbUltimaVisita.RecordCount=0 then
            dbItemDataUltimaVisita.Clear
         else
         begin
             dbUltimaVisita.Last;
             if dbUltimaVisitaItem.value=dbItemItem.value then
                dbUltimaVisita.Prior;
             dbItemDataUltimaVisita.Value:=dbUltimaVisitaDataAuditoria.Value;
         end;
     end;

     dbItemDepMedia.value:=dbItemDepMedia1.value;
     dbItemUsuario.Value:=iUsuario;
     dbItemDataAlteracao.value:=date;
end;

procedure TfrmHomeCareNovo.grdProcessoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if (dbProcessoDataAlta.Value<=date) and
        (not dbProcessoDataAlta.IsNull) then
        grdProcesso.Canvas.Font.Color:=clBlue
     else
        grdProcesso.Canvas.Font.Color:=clGreen;

     grdProcesso.DefaultDrawDataCell(Rect,grdProcesso.Columns[DataCol].field,State);
end;

procedure TfrmHomeCareNovo.FormCreate(Sender: TObject);
begin
    cmpData.date:=date;
    lblDataAuditoria.date:=date;
end;

procedure TfrmHomeCareNovo.dbItemAfterDelete(DataSet: TDataSet);
begin
    dbItemBusca.Refresh;
     dbUltimaVisita.Last;
     dbProcesso.Edit;
     dbProcessoUltimaVisita.Value:=dbUltimaVisitaItem.Value;
     dbProcessoDataUltimaVisita.Value:=dbUltimaVisitaDataAuditoria.Value;
     dbProcesso.Post;
end;

procedure TfrmHomeCareNovo.cmdNovoDClick(Sender: TObject);
begin
    dbItemDiagnostico.Insert;
    grdDiagnostico.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdGravaDClick(Sender: TObject);
begin
    dbItemDiagnostico.Post;
end;

procedure TfrmHomeCareNovo.cmdExcluiDClick(Sender: TObject);
begin
    dbItemDiagnostico.Delete;
end;

procedure TfrmHomeCareNovo.cmdCancelaDClick(Sender: TObject);
begin
    dbItemDiagnostico.Cancel;
end;

procedure TfrmHomeCareNovo.cmdPrincipalDClick(Sender: TObject);
begin
    if dbItemDiagnostico.State=dsbrowse then
       dbItemDiagnostico.Edit;
    if dbItemDiagnosticoPrincipal.Value=true then
       dbItemDiagnosticoPrincipal.Value:=false
    else
       dbItemDiagnosticoPrincipal.Value:=true;
    dbItemDiagnostico.Post;
end;

procedure TfrmHomeCareNovo.cmdCopiaDClick(Sender: TObject);
var iProntuario,iItem,iItemAnterior:integer;
begin
    dbItemBusca.Tag:=1;
    iProntuario:=dbItemAtendimentoHC1.Value;
    iItem:=dbItemItem.Value;
    tabOrdemItem.tabIndex:=0;
    dbItemBusca.Locate('AtendimentoHC1;Item',VarArrayof([iProntuario,iItem]),[]);
    dbItemBusca.Prior;
    iItemAnterior:=dbItemBuscaItem.Value;

    if dbItemBusca.bof then
    begin
        ShowMessage('Primeira visita cadastrada');
        dbItemBusca.Tag:=0;
        abort;
    end;
    dbItemDiagnostico.DisableControls;
    dbItemDiagnosticoBusca.First;
    while not dbItemDiagnosticoBusca.eof do
    begin
        if not dbItemDiagnostico.Locate('Diagnostico',dbItemDiagnosticoBuscaDiagnostico.Value,[]) then
        begin
            dbItemDiagnostico.Insert;
            dbItemDiagnosticoAtendimentoHC1.Value:=iProntuario;
            dbItemDiagnosticoItem.Value:=iItem;
            dbItemDiagnosticoDiagnostico.Value:=dbItemDiagnosticoBuscaDiagnostico.Value;
            dbItemDiagnosticoPrincipal.Value:=dbItemDiagnosticoBuscaPrincipal.Value;
            dbItemDiagnostico.Post;
        end;
        dbItemDiagnosticoBusca.Next;
    end;
    dbItemDiagnostico.EnableControls;
    dbItemBusca.Tag:=0;
end;

procedure TfrmHomeCareNovo.dbItemDiagnosticoCalcFields(DataSet: TDataSet);
begin
    if dbItemDiagnosticoPrincipal.value=true then
       dbItemDiagnosticoPrincipalTexto.value:='Sim'
    else
       dbItemDiagnosticoPrincipalTexto.value:='Não';
end;

procedure TfrmHomeCareNovo.dbItemDiagnosticoAfterInsert(DataSet: TDataSet);
begin
    dbItemDiagnosticoAtendimentoHC1.Value:=dbItemAtendimentoHC1.Value;
    dbItemDiagnosticoTipo.Value:=dbItemTipo.Value;
    dbItemDiagnosticoItem.Value:=dbItemItem.Value;
    dbItemDiagnosticoPrincipal.value:=false;
end;

procedure TfrmHomeCareNovo.dsItemDiagnosticoStateChange(Sender: TObject);
begin
     cmdNovoD.Enabled:=dbItemDiagnostico.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiD.Enabled:=(dbItemDiagnostico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItemDiagnostico.RecordCount<>0);
     cmdGravaD.Enabled:=dbItemDiagnostico.State in [dsEdit,dsInsert];
     cmdCancelaD.Enabled:=dbItemDiagnostico.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.grdDiagnosticoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbItemDiagnosticoPrincipal.Value=true then
        grdDiagnostico.Canvas.Font.Color:=clRed;

     grdDiagnostico.DefaultDrawDataCell(Rect,grdDiagnostico.Columns[DataCol].field,State);
end;

procedure TfrmHomeCareNovo.grdDiagnosticoCellClick(Column: TColumn);
begin
    if dbItem.State in [dsInsert,dsEdit] then
       dbItem.Post;
end;

procedure TfrmHomeCareNovo.grdConclusaoCellClick(Column: TColumn);
begin
    if dbItem.State in [dsInsert,dsEdit] then
       dbItem.Post;
end;

procedure TfrmHomeCareNovo.dbProcessoAfterEdit(DataSet: TDataSet);
begin
    if iMaster then
    begin
     cmpEmpresa.Enabled:=true;
     cmpCliente.Enabled:=true;
     cmpHospital.Enabled:=true;
     cmpPaciente.Enabled:=true;
    end;

end;

procedure TfrmHomeCareNovo.cmpDataCloseUp(Sender: TObject);
begin
     case tabOrdemProcesso.tabIndex of
     5:dbProcesso.Locate('DataInternacao',cmpData.date,[]);
     6:dbProcesso.Locate('DataAlta',cmpData.date,[]);
     end; 
end;

procedure TfrmHomeCareNovo.lblLocClienteCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Cliente',lblLocCliente.KeyValue,[]);
end;

procedure TfrmHomeCareNovo.lblLocEmpresaCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Empresa',lblLocEmpresa.KeyValue,[]);
end;

procedure TfrmHomeCareNovo.lblLocPacienteCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Paciente',lblLocPaciente.KeyValue,[]);
end;

procedure TfrmHomeCareNovo.lblLocHospitalCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Hospital',lblLocHospital.KeyValue,[]);
end;

procedure TfrmHomeCareNovo.lblDataAuditoriaCloseUp(Sender: TObject);
begin
    dbItemBusca.Locate('DataAuditoria',lblDataAuditoria.date,[]);
end;

procedure TfrmHomeCareNovo.lblLocAuditorCloseUp(Sender: TObject);
begin
    dbItemBusca.Locate('Auditor',lblLocAuditor.KeyValue,[]);
end;

procedure TfrmHomeCareNovo.dbItemConclusaoAfterInsert(DataSet: TDataSet);
begin
    dbItemConclusaoAtendimentoHC1.Value:=dbItemAtendimentoHC1.Value;
    dbItemConclusaoTipo.Value:=dbItemTipo.Value;
    dbItemConclusaoItem.Value:=dbItemItem.Value;
end;


procedure TfrmHomeCareNovo.cmdAtivarClick(Sender: TObject);
begin
    dbAlta.Open;
    dbAlta.Filtered:=true;
    dbAlta.Refresh;
    cmdAtivar.Enabled:=false;
end;

procedure TfrmHomeCareNovo.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pagHospital.ActivePage=tabAlta then
    begin
       dbAlta.Filtered:=false;
       dbAlta.Close;
    end;
end;

procedure TfrmHomeCareNovo.pagHospitalChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if pagHospital.ActivePage=tabAlta then
    begin
       dbAlta.Filtered:=false;
       dbAlta.Close;
    end;

end;

procedure TfrmHomeCareNovo.pagHospitalChange(Sender: TObject);
begin
    cmdAtivar.Enabled:=true;
end;

procedure TfrmHomeCareNovo.BitBtn2Click(Sender: TObject);
begin
    if dbAlta.Active=false then
    begin
        ShowMessage('Selecione os prontuarios');
        abort;
    end;
    dbAlta.Edit;
    if dbAltaProcessa.VAlue='S' then
       dbAltaProcessa.Value:='N'
    else
       dbAltaProcessa.Value:='S';
    dbAlta.Post;

end;

procedure TfrmHomeCareNovo.BitBtn7Click(Sender: TObject);
var iResultado:integer;
begin
    if dbAlta.Active=false then
    begin
        ShowMessage('Selecione os prontuarios');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a atualização de todos os dados como Processa=[Sim]',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    barProcesso.Position:=0;
    if dbAlta.RecordCount=0 then
       barProcesso.Max:=1
    else
       barProcesso.Max:=dbAlta.RecordCount;

    dbAlta.First;
    while not dbAlta.eof do
    begin
         if dbAltaProcessa.Value<>'S' then
         begin
             dbAlta.Edit;
             dbAltaProcessa.Value:='S';
             dbAlta.Post;
         end;
         dbAlta.Next;
         barProcesso.Position:=barProcesso.Position+1;
    end;
    dbAlta.Refresh;
    ShowMessage('Atualizações efetuadas com sucesso');
    barProcesso.Position:=0;

end;

procedure TfrmHomeCareNovo.BitBtn10Click(Sender: TObject);
var iResultado:integer;
begin
    if dbAlta.Active=false then
    begin
        ShowMessage('Selecione os prontuarios');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a atualização de todos os dados como Processa=[Não]',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    barProcesso.Position:=0;
    if dbAlta.RecordCount=0 then
       barProcesso.Max:=1
    else
       barProcesso.Max:=dbAlta.RecordCount;

    dbAlta.First;
    while not dbAlta.eof do
    begin
         if dbAltaProcessa.Value<>'N' then
         begin
             dbAlta.Edit;
             dbAltaProcessa.Value:='N';
             dbAlta.Post;
         end;
         dbAlta.Next;
         barProcesso.Position:=barProcesso.Position+1;
    end;
    dbAlta.Refresh;
    ShowMessage('Atualizações efetuadas com sucesso');
    barProcesso.Position:=0;
end;

procedure TfrmHomeCareNovo.BitBtn4Click(Sender: TObject);
var iResultado:integer;
begin
    if dbAlta.Active=false then
    begin
        ShowMessage('Selecione os prontuarios');
        abort;
    end;
     iResultado:=Application.MessageBox('Confirme a baixa dos prontuarios!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

    barProcesso.Position:=0;
    if dbAlta.RecordCount=0 then
       barProcesso.Max:=1
    else
       barProcesso.Max:=dbAlta.RecordCount;

    dbAlta.DisableControls;
    dbAlta.First;
    while not dbAlta.eof do
    begin
        if dbAltaProcessa.Value='S' then
        begin
            dbAlta.Edit;
            dbAltaDataAlta.Value:=date;
            dbAltaUsuario.Value:='ALTA AUTOM';
            dbAltaMotivoAlta.Value:='A';
            dbAlta.Post;
        end
        else
            dbAlta.Next;
        barProcesso.Position:=barProcesso.Position+1;
    end;
    dbAlta.EnableControls;
    dbAlta.Refresh;
    ShowMessage('Altas atualizadas com sucesso');
    barProcesso.Position:=0;
end;

procedure TfrmHomeCareNovo.cmdRelCompleto1Click(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a atualização da ultima visita!',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    barProcesso.Position:=0;
    if dbProcesso.RecordCount=0 then
       barProcesso.Max:=1
    else
       barProcesso.Max:=dbProcesso.RecordCount;

    dbProcesso.First;
    while not dbProcesso.eof do
    begin
         dbUltimaVisita.Last;
         dbProcesso.Edit;
         dbProcessoUltimaVisita.Value:=dbUltimaVisitaItem.Value;
         dbProcessoDataUltimaVisita.Value:=dbUltimaVisitaDataAuditoria.Value;
         dbProcesso.Post;
         dbProcesso.Next;
         barProcesso.Position:=barProcesso.Position+1;
    end;
    if dbAlta.Active=true then
        dbAlta.Refresh;
    ShowMessage('Ultimas Visitas atualizadas com sucesso');
    barProcesso.Position:=0;
end;

procedure TfrmHomeCareNovo.dbAltaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   if (dbAltaDataAlta.IsNull) and
       (dbAltaDataUltimaVisita.Value<=date-iDias) then
        accept:=true
    else
        accept:=false;
end;

procedure TfrmHomeCareNovo.cmpQtdChange(Sender: TObject);
begin
    lblDataAlta.Caption:=DateToStr(Date-StrToInt(cmpQtd.Text));
    iDias:=StrToInt(cmpQtd.Text);
    if dbAlta.Active=true then
       dbAlta.Refresh;
end;

procedure TfrmHomeCareNovo.grdAltaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbAltaProcessa.Value='N' then
        grdAlta.Canvas.Font.Color:=clRed;

     grdAlta.DefaultDrawDataCell(Rect,grdAlta.Columns[DataCol].field,State);
end;

procedure TfrmHomeCareNovo.grdAltaCellClick(Column: TColumn);
begin
    tabOrdemProcesso.tabIndex:=0;
    dbProcesso.Locate('AtendimentoHC1',dbAltaAtendimentoHC1.Value,[]);
end;

procedure TfrmHomeCareNovo.dbAltaCalcFields(DataSet: TDataSet);
begin
    if dbAltaProcessa.Value='S' then
        dbAltaProcessaTexto.VAlue:='Sim'
    else
        dbAltaProcessaTexto.Value:='Não';
end;

procedure TfrmHomeCareNovo.dbAltaAfterRefresh(DataSet: TDataSet);
begin
    lblTotal.Caption:='Total de Prontuarios: '+IntToStr(dbAlta.recordCount);
end;

procedure TfrmHomeCareNovo.Button1Click(Sender: TObject);
begin
    table1.Open;
    table1.First;
    while not table1.eof do
    begin
        dbrichedit7.SelectAll;
        memo1.text:=dbrichedit7.SelText;

        table1.edit;
        table1infeccao.value:=memo1.Text;
        table1.Post;
        table1.Next;
    end;
    table1.Close;
    showmessage('fim');
end;

procedure TfrmHomeCareNovo.tabOrdemItemChange(Sender: TObject);
begin
     lblLocCodigo1.Visible:=false;
     lblLocAuditor.Visible:=false;
     lblLocEnfermeiro.Visible:=false;
     lblDataAuditoria.Visible:=false;

     case tabOrdemItem.tabIndex of
     0: begin
        dbItemBusca.IndexFieldNames:='AtendimentoHC1 desc;Tipo;Item;Auditor;DataAuditoria desc';
        lblLocCodigo1.Visible:=true;
        lblLocCodigo1.SetFocus;
        end;
     1: begin
        dbItemBusca.IndexFieldNames:='Auditor;DataAuditoria desc';
        lblLocAuditor.Visible:=true;
        lblLocAuditor.SetFocus;
        end;
     2: begin
        dbItemBusca.IndexFieldNames:='Enfermeiro;DataAuditoria desc';
        lblLocEnfermeiro.Visible:=true;
        lblLocEnfermeiro.SetFocus;
        end;
     3: begin
        dbItemBusca.IndexFieldNames:='DataAuditoria desc;Auditor';
        lblDataAuditoria.Visible:=true;
        lblDataAuditoria.SetFocus;
        end;
     end;

end;

procedure TfrmHomeCareNovo.lblLocCodigo1Change(Sender: TObject);
begin
    if lblLocCodigo1.text<>'' then
        dbItemBusca.Locate('AtendimentoHC1',StrToInt(lblLocCodigo1.Text),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmHomeCareNovo.lblDataAuditoriaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
        lblDataAuditoriaCloseUp(Sender);
end;

procedure TfrmHomeCareNovo.lblLocAuditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocAuditorCloseUp(Sender);
        dsItem.OnStateChange(sender);
    end;
end;

procedure TfrmHomeCareNovo.tabOrdemProcessoChange(Sender: TObject);
begin
     lblLocCodigo.Visible:=false;
     lblLocCliente.Visible:=false;
     lblLocEmpresa.Visible:=false;
     lblLocPaciente.Visible:=false;
     lblLocHospital.Visible:=false;
     cmpData.Visible:=false;

     case tabOrdemProcesso.tabIndex of
     0: begin
        dbProcesso.IndexFieldNames:='AtendimentoHC1';
        lblLocCodigo.Visible:=true;
        lblLocCodigo.SetFocus;
        end;
     1: begin
        dbProcesso.IndexFieldNames:='Cliente;DataInternacao';
        lblLocCliente.Visible:=true;
        lblLocCliente.SetFocus;
        end;
     2: begin
        dbProcesso.IndexFieldNames:='Empresa;DataInternacao';
        lblLocEmpresa.Visible:=true;
        lblLocEmpresa.SetFocus;
        end;
     3: begin
        dbProcesso.IndexFieldNames:='Paciente;DataInternacao';
        lblLocPaciente.Visible:=true;
        lblLocPaciente.SetFocus;
        end;
     4: begin
        dbProcesso.IndexFieldNames:='Hospital;DataInternacao';
        lblLocHospital.Visible:=true;
        lblLocHospital.SetFocus;
        end;
     5: begin
        dbProcesso.IndexFieldNames:='DataInternacao;Paciente';
        cmpData.Visible:=true;
        cmpData.SetFocus;
        end;
     6: begin
        dbProcesso.IndexFieldNames:='DataAlta;Paciente';
        cmpData.Visible:=true;
        cmpData.SetFocus;
        end;
     end;
end;

procedure TfrmHomeCareNovo.lblLocCodigoChange(Sender: TObject);
begin
    if lblLocCodigo.text<>'' then
        dbProcesso.Locate('AtendimentoHC1',StrToInt(lblLocCodigo.Text),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmHomeCareNovo.cmpDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_Return then
        cmpDataCloseUp(Sender);
end;

procedure TfrmHomeCareNovo.lblLocClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocClienteCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;
end;

procedure TfrmHomeCareNovo.lblLocEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocEmpresaCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;
end;

procedure TfrmHomeCareNovo.lblLocHospitalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocHospitalCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmHomeCareNovo.lblLocPacienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocPacienteCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmHomeCareNovo.cmdFichaClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmHomeCareNovo.cmdListaClick(Sender: TObject);
begin
    pnlLista.BringToFront;
end;

procedure TfrmHomeCareNovo.cmdFicha1Click(Sender: TObject);
begin
    pagAuditoria.BringToFront;
end;

procedure TfrmHomeCareNovo.cmdLista1Click(Sender: TObject);
begin
    pnlLista1.BringToFront;
end;

procedure TfrmHomeCareNovo.lblLocClienteClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmHomeCareNovo.lblLocEmpresaClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmHomeCareNovo.lblLocHospitalClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmHomeCareNovo.lblLocPacienteClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmHomeCareNovo.lblLocAuditorClick(Sender: TObject);
begin
    cmdNovoP.Default:=false;
    cmdGravaP.Default:=false;
end;

procedure TfrmHomeCareNovo.dbItemBuscaAfterScroll(DataSet: TDataSet);
begin
    if dbItemBusca.Tag=0 then
    begin
        cmpData.Visible:=false;
        lblLocCliente.Visible:=false;
        lblLocEmpresa.Visible:=false;
        lblLocHospital.Visible:=false;
        lblLocPaciente.Visible:=false;
        lblLocCodigo.Visible:=true;
        dbProcesso.IndexFieldNames:='AtendimentoHC1';

     if (dbItemBusca.Active=true) and
        (dbProcesso.Active=true) then
     begin
        tabOrdemProcesso.tabIndex:=0;
        dbProcesso.Locate('AtendimentoHC1',dbItemBuscaAtendimentoHC1.Value,[]);
        dbItem.Locate('AtendimentoHC1;Item',VarArrayof([dbItemBuscaAtendimentoHC1.Value,
                        dbItemBuscaItem.Value]),[]);
    end;
    end;
end;

procedure TfrmHomeCareNovo.dbProcessoBeforeEdit(DataSet: TDataSet);
begin
    cmdFichaClick(DataSet);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
end;

procedure TfrmHomeCareNovo.dbItemBeforeEdit(DataSet: TDataSet);
begin
    cmdFicha1Click(DataSet);
    cmdFicha1.Down:=true;
    cmdLista1.Down:=false;
end;

procedure TfrmHomeCareNovo.cmdImpPClick(Sender: TObject);
begin
    with dmRelatorio do
    begin
        qryAudHC1.SQL.Clear;
        qryAudHC1.SQL.Text:='Select * from AtendHC,AtendHCItem '+
                            'where AtendHCItem.AtendimentoHC1=AtendHC.AtendimentoHC1 and '+
                            '      AtendHCItem.Tipo=AtendHC.Tipo and '+                            '      AtendHC.AtendimentoHC1=:Prontuario and '+
                            '      AtendHC.Tipo=:Tip and '+
                            '      AtendHCItem.Item=:Item  ';

        qryAudHC1.ParamByName('Prontuario').Value:=dbItemAtendimentoHC1.Value;
        qryAudHC1.ParamByName('Tip').Value:=dbItemTipo.Value;
        qryAudHC1.ParamByName('Item').Value:=dbItemItem.Value;
        qryAudHC1.Open;
    end;
    if dbItemTipo.value='C' then
    begin
       frmMenu.rvBBAuditoria.SelectReport('relAuditoriaHCC',true);
        frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório de Auditoria Home Care Clinicas');
    end;
    if dbItemTipo.value='D' then
    begin
        frmMenu.rvBBAuditoria.SelectReport('relAuditoriaHCD',true);
        frmMenu.rvBBAuditoria.SetParam('Titulo','Relatório de Auditoria Home Care - Visita Domiciliar');
    end;    
    frmMenu.rvBBAuditoria.Execute;
end;

procedure TfrmHomeCareNovo.dbProcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmHomeCareNovo.tag=0 then
        accept:=dbProcessoTipo.value='C'
    else accept:=dbProcessoTipo.value='D';
end;

procedure TfrmHomeCareNovo.dbItemExameAfterInsert(DataSet: TDataSet);
begin
    dbItemExameAtendimentoHC1.Value:=dbItemAtendimentoHC1.Value;
    dbItemExameTipo.Value:=dbItemTipo.Value;
    dbItemExameItem.Value:=dbItemItem.Value;
    dbItemExameData.value:=date;
    dbItemExameResultado.value:='N';
end;

procedure TfrmHomeCareNovo.dbItemMedicamentoAfterInsert(DataSet: TDataSet);
begin
    dbItemMedicamentoAtendimentoHC1.Value:=dbItemAtendimentoHC1.Value;
    dbItemMedicamentoTipo.Value:=dbItemTipo.Value;
    dbItemMedicamentoItem.Value:=dbItemItem.Value;
    dbItemMedicamentoOrigem.Value:='F';
end;

procedure TfrmHomeCareNovo.dbItemCalcFields(DataSet: TDataSet);
begin
    dbItemDepMedia1.value:=dbItemDepSonda.value+dbItemDepStomias.value+
                           dbItemDepVenoso.value+dbItemDepMedicamento.value+
                           dbItemDepAparelho.value+dbItemDepCurativo.value+
                           dbItemDepHigiene.value+dbItemDepDieta.value+
                           dbItemDepMobilizacao.value+dbItemDepVigilancia.value;
end;

procedure TfrmHomeCareNovo.cmdNovoMClick(Sender: TObject);
begin
    dbItemMedicamento.Insert;
    grdMedicamento.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdGravaMClick(Sender: TObject);
begin
    dbItemMedicamento.Post;
end;

procedure TfrmHomeCareNovo.cmdCancelaMClick(Sender: TObject);
begin
    dbItemMedicamento.Post;
end;

procedure TfrmHomeCareNovo.cmdExcluiMClick(Sender: TObject);
begin
    dbItemMedicamento.Delete;
end;

procedure TfrmHomeCareNovo.dsItemMedicamentoStateChange(Sender: TObject);
begin
     cmdNovoM.Enabled:=dbItemMedicamento.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiM.Enabled:=(dbItemMedicamento.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItemMedicamento.RecordCount<>0);
     cmdGravaM.Enabled:=dbItemMedicamento.State in [dsEdit,dsInsert];
     cmdCancelaM.Enabled:=dbItemMedicamento.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.cmdNovoEClick(Sender: TObject);
begin
    dbItemExame.Insert;
    grdExame.SetFocus;
end;

procedure TfrmHomeCareNovo.cmdGravaEClick(Sender: TObject);
begin
    dbItemExame.Post;
end;

procedure TfrmHomeCareNovo.cmdCancelaEClick(Sender: TObject);
begin
    dbItemExame.Cancel;
end;

procedure TfrmHomeCareNovo.cmdExcluiEClick(Sender: TObject);
begin
    dbItemExame.Delete;
end;

procedure TfrmHomeCareNovo.dsItemExameStateChange(Sender: TObject);
begin
     cmdNovoE.Enabled:=dbItemExame.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiE.Enabled:=(dbItemExame.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItemExame.RecordCount<>0);
     cmdGravaE.Enabled:=dbItemExame.State in [dsEdit,dsInsert];
     cmdCancelaE.Enabled:=dbItemExame.State in [dsEdit,dsInsert];
end;

procedure TfrmHomeCareNovo.dsItemDataChange(Sender: TObject;
  Field: TField);
begin
    pbScore.Position:=dbItemDepMedia1.value;
    if (dbItemDepMedia1.value>0) and
       (dbItemDepMedia1.value<=3) then
    begin
       cmpMedia.Font.Color:=clGreen;
       SendMessage(pbScore.Handle, PBM_SETBARCOLOR, 0, clGreen);
    end;
    if (dbItemDepMedia1.value>3) and
       (dbItemDepMedia1.value<=7) then
    begin
       cmpMedia.Font.Color:=clBlue;
       SendMessage(pbScore.Handle, PBM_SETBARCOLOR, 0, clBlue);
    end;
    if (dbItemDepMedia1.value>7) and
       (dbItemDepMedia1.value<=12) then
    begin
       cmpMedia.Font.Color:=$004080FF;
       SendMessage(pbScore.Handle, PBM_SETBARCOLOR, 0, $004080FF);
    end;
    if (dbItemDepMedia1.value>12) then
    begin
       cmpMedia.Font.Color:=clRed;
       SendMessage(pbScore.Handle, PBM_SETBARCOLOR, 0, clRed);
    end;
end;

procedure TfrmHomeCareNovo.dbItemExameBeforePost(DataSet: TDataSet);
begin
     if dbItemExameExame.Value='' then
     begin
        ShowMessage('Exame inválido');
        abort;
     end;
end;

procedure TfrmHomeCareNovo.dbItemMedicamentoBeforePost(DataSet: TDataSet);
begin
    dbItemMedicamentoOrigem.value:=UpperCase(dbItemMedicamentoOrigem.value);
    if (dbItemMedicamentoOrigem.value<>'F') and 
       (dbItemMedicamentoOrigem.value<>'E') then
    begin
      ShowMessage('Selecione Origem [F]amiliar ou [E]empresa');
      abort;
    end; 

     if dbItemMedicamentoMedicamento.Value='' then
     begin
        ShowMessage('Medicamento inválido');
        abort;
     end;
end;

procedure TfrmHomeCareNovo.dbItemExameCalcFields(DataSet: TDataSet);
begin
    if dbItemExameResultado.value='N' then
        dbItemExameResultadoTexto.value:='Normal';
    if dbItemExameResultado.value='A' then
        dbItemExameResultadoTexto.value:='Alterado';

end;

procedure TfrmHomeCareNovo.grdExameDblClick(Sender: TObject);
begin
    if dbItemExame.state=dsbrowse then
        dbItemExame.Edit;
    if dbItemExameResultado.value='N' then
       dbItemExameResultado.value:='A'
    else
        dbItemExameResultado.value:='N';
    dbItemExame.Post;
end;

procedure TfrmHomeCareNovo.dbConclusaoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if iTipo='C' then
        accept:=dbConclusaoClinica.value=true;
    if iTipo='D' then
        accept:=dbConclusaoDomiciliar.value=true;
end;

procedure TfrmHomeCareNovo.dbItemExameComplementarGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbItemExameComplementar.value=true then
       text:='Sim';
    if dbItemExameComplementar.value=false then
        text:='Não';
end;

procedure TfrmHomeCareNovo.dbItemExameComplementarSetText(Sender: TField;
  const Text: String);
begin
    if text='Sim' then
       dbItemExameComplementar.value:=true;
    if text='Não' then
       dbItemExameComplementar.value:=false;

end;

procedure TfrmHomeCareNovo.dbItemMedicamentoCalcFields(DataSet: TDataSet);
begin
    if dbItemMedicamentoOrigem.value='F' then
       dbItemMedicamentoOrigemTexto.value:='Familiar';
    if dbItemMedicamentoOrigem.value='E' then
        dbItemMedicamentoOrigemTexto.value:='Empresa';
end;

procedure TfrmHomeCareNovo.lblLocEnfermeiroCloseUp(Sender: TObject);
begin
    dbItemBusca.Locate('Enfermeiro',lblLocEnfermeiro.KeyValue,[]);

end;

procedure TfrmHomeCareNovo.BitBtn3Click(Sender: TObject);
begin
    if dbItem.State in [dsBrowse] then
        dbItem.Edit;
    dbItemEnfermeiro.value:=0;
end;

procedure TfrmHomeCareNovo.BitBtn1Click(Sender: TObject);
begin
    if dbItem.State in [dsBrowse] then
        dbItem.Edit;
    dbItemAuditor.value:=0;
end;

procedure TfrmHomeCareNovo.dbProcessoAfterScroll(DataSet: TDataSet);
begin
    pnlProntuario.Caption:=IntToStr(dbProcessoAtendimentoHC1.value)+' - '+dbProcessoPacienteNome.value;
end;

procedure TfrmHomeCareNovo.dbItemAfterScroll(DataSet: TDataSet);
begin
    pnlItem.Caption:=IntToStr(dbItemItem.value)+' - '+DateToStr(dbItemDataAuditoria.value)+ ' - '+
                     dbItemAuditorNome.value+' '+dbItemEnfermeiroNome.value;

end;

end.
