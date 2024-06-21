unit frmProdutividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf,
  DBAccess, MemDS, StdCtrls, Buttons,
  ComCtrls, ToolWin, DBCtrls, RpDefine, RpCon, RpConDS, RpConBDE, Menus;

type
  TfrmProdutividade = class(TForm)
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dsAuditor: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    grdProd: TDBGrid;
    dbProdM: TMSTable;
    dsProdM: TDataSource;
    dbServico: TMSTable;
    dsServico: TDataSource;
    dbServicoServico: TStringField;
    dbProdMClienteNome: TStringField;
    dbProdMAuditorNome: TStringField;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    tabProd: TTabControl;
    dbProdMEnfermeiroNome: TStringField;
    dbProdMHospitalNome: TStringField;
    dbProdMServicoNome: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbProdMClienteAud: TIntegerField;
    dbProdMTipo: TStringField;
    dbProdMAuditor: TIntegerField;
    dbProdMHospital: TIntegerField;
    dbProdMServico: TStringField;
    dbProdMQtd: TIntegerField;
    dbProdMEmpresa: TIntegerField;
    dbProdMStatus: TStringField;
    dbProdMUsuario: TStringField;
    dbAtendHIM: TMSTable;
    dbAtendHIMCliente: TIntegerField;
    dbAtendHIMHospital: TIntegerField;
    dbAtendHIMMedico: TIntegerField;
    dbAtendHIMEnfermeiro: TIntegerField;
    dbAtendHIMValor: TCurrencyField;
    dbAtendHIMUsuario: TStringField;
    dbAtendHIMHospitalNome: TStringField;
    dbAtendHIMClienteNome: TStringField;
    dbAtendHIMMesCompetencia: TIntegerField;
    dbAtendHIMAnoCompetencia: TIntegerField;
    dsAtendHIM: TDataSource;
    Label2: TLabel;
    dbAtendHIE: TMSTable;
    dsAtendHIE: TDataSource;
    dsAtendHI: TDataSource;
    dbProd: TMSTable;
    dsProd: TDataSource;
    dbProdAnoCompetencia: TIntegerField;
    dbProdMesCompetencia: TIntegerField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    ProgressBar1: TProgressBar;
    dbProdProdutividade: TAutoIncField;
    dbAtendHIMProdutividade: TIntegerField;
    dbAtendHIEClienteNome: TStringField;
    dbAtendHIMPaciente: TIntegerField;
    dsPaciente: TDataSource;
    dbAtendHIMPacienteNome: TStringField;
    dbAtendHIEPacienteNome: TStringField;
    dbProdMProdutividade: TIntegerField;
    dbAtendHIMServico: TStringField;
    dbAtendHIEServico: TStringField;
    Panel1: TPanel;
    grdMed: TDBGrid;
    dbAtendHIMServicoTexto: TStringField;
    dbAtendHIEServicoTexto: TStringField;
    dbAtendHIMParcialTexto: TStringField;
    dbAtendHIMDayClinicTexto: TStringField;
    dbAtendHIEParcialTexto: TStringField;
    dbAtendHIEDayClinicTexto: TStringField;
    dbAtendHIMParcial: TIntegerField;
    dbAtendHIEParcial: TIntegerField;
    dbAtendHIMDayClinic: TBooleanField;
    dbAtendHIEDayClinic: TBooleanField;
    grdEnf: TDBGrid;
    dbAtendHIMUsuarioI: TStringField;
    dbAtendHIEUsuarioI: TStringField;
    dbProdStatusTexto: TStringField;
    qryProd: TMSQuery;
    qryProdProdutividade: TIntegerField;
    qryProdClienteAud: TIntegerField;
    qryProdTipo: TStringField;
    qryProdAuditor: TIntegerField;
    qryProdHospital: TIntegerField;
    qryProdServico: TStringField;
    qryProdQtd: TIntegerField;
    qryProdEmpresa: TIntegerField;
    qryProdStatus: TStringField;
    qryProdUsuario: TStringField;
    qryProdServicoNome: TStringField;
    qryProdHospitalNome: TStringField;
    qryProdEnfermeiroNome: TStringField;
    qryProdAuditorNome: TStringField;
    qryProdClienteNome: TStringField;
    dbProdMAnoCompetencia: TIntegerField;
    dbProdMMesCompetencia: TIntegerField;
    dbProdMCliente: TIntegerField;
    dbAuditorCliente: TIntegerField;
    dbEnfermeiroCliente: TIntegerField;
    dbProdMEmpresaM: TIntegerField;
    dbProdMEmpresaE: TIntegerField;
    dbServicoVinculado: TStringField;
    dbProdMServicoVinculado: TStringField;
    CoolBar3: TCoolBar;
    cmbMed: TDBLookupComboBox;
    cmbEnf: TDBLookupComboBox;
    qryProdAnoCompetencia: TIntegerField;
    qryProdMesCompetencia: TIntegerField;
    dbRel: TMSTable;
    dbRelCliente: TIntegerField;
    dbRelTipo: TStringField;
    dbRelNome: TStringField;
    dbRelHospitalNome: TStringField;
    dbRelHospital: TIntegerField;
    dbRelTipoNome: TStringField;
    dbRelTotH: TIntegerField;
    dbRelP: TIntegerField;
    dbRelPP1: TIntegerField;
    dbRelPPD: TIntegerField;
    dbRelPAC: TIntegerField;
    dbRelDAY: TIntegerField;
    dbRelPS: TIntegerField;
    dbRelAMB: TIntegerField;
    dbRelVHC: TIntegerField;
    dbRelV: TIntegerField;
    dbRelSUS: TIntegerField;
    dbRelPER: TIntegerField;
    dbServicoP: TMSTable;
    dsServicoP: TDataSource;
    dbServicoPServico: TStringField;
    dbServicoPNome: TStringField;
    dbServicoPValorizado: TBooleanField;
    dbServicoPValor: TCurrencyField;
    dbServicoPVinculado: TStringField;
    dbAtendHIECliente: TIntegerField;
    dbAtendHIEPaciente: TIntegerField;
    dbAtendHIEHospital: TIntegerField;
    dbAtendHIEMedico: TIntegerField;
    dbAtendHIEEnfermeiro: TIntegerField;
    dbAtendHIEMesCompetencia: TIntegerField;
    dbAtendHIEAnoCompetencia: TIntegerField;
    dbAtendHIEValor: TCurrencyField;
    dbAtendHIEUsuario: TStringField;
    dbAtendHIEHospitalNome: TStringField;
    dbAtendHIEProdutividade: TIntegerField;
    dbRelVD: TIntegerField;
    dbRelCO: TIntegerField;
    dbProdMPagtoPre: TIntegerField;
    Panel3: TPanel;
    dbAtendHIMComplemento: TBooleanField;
    dbAtendHIMComplementoTexto: TStringField;
    qryTot: TMSQuery;
    qryProdServicoVinculado: TStringField;
    qryProdCliente: TIntegerField;
    dbProdMUsuarioA: TStringField;
    dbProdDataInclusao: TDateTimeField;
    dbProdMDataInclusao: TDateTimeField;
    dbProdMDataAlteracao: TDateTimeField;
    dbAtendHIMDataInternacao: TDateTimeField;
    dbAtendHIMDataAlta: TDateTimeField;
    dbAtendHIEDataInternacao: TDateTimeField;
    dbAtendHIEDataAlta: TDateTimeField;
    dbAtendHIEDataInicioP: TDateTimeField;
    dbAtendHIMDataInicioP: TDateTimeField;
    qryProdDataInclusao: TDateTimeField;
    rvRelProd: TRvDataSetConnection;
    Panel59: TPanel;
    cmdSeleciona: TBitBtn;
    cmdCopia: TBitBtn;
    cmdFecha: TBitBtn;
    relProd: TBitBtn;
    relProdNP: TBitBtn;
    relExcel: TBitBtn;
    Panel5: TPanel;
    cmdNovo: TBitBtn;
    cmdGrava: TBitBtn;
    cmdExclui: TBitBtn;
    dbPaciente: TMSQuery;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbAtendHI: TMSQuery;
    dbAtendHICliente: TIntegerField;
    dbAtendHIPaciente: TIntegerField;
    dbAtendHIHospital: TIntegerField;
    dbAtendHIMedico: TIntegerField;
    dbAtendHIEnfermeiro: TIntegerField;
    dbAtendHIMesCompetencia: TSmallintField;
    dbAtendHIAnoCompetencia: TSmallintField;
    dbAtendHIDataInternacao: TDateTimeField;
    dbAtendHIDataAlta: TDateTimeField;
    dbAtendHIValor: TCurrencyField;
    dbAtendHIComplemento: TBooleanField;
    dbAtendHIParcial: TWordField;
    dbAtendHIDataInicioP: TDateTimeField;
    dbAtendHIDayClinic: TBooleanField;
    dbAtendHIUsuarioI: TStringField;
    dbAtendHIUsuario: TStringField;
    dbAtendHIServico: TStringField;
    dbAtendHIProdutividade: TIntegerField;
    dbProdMTrab: TMSQuery;
    dbProdMTrabProdutividade: TIntegerField;
    dbProdMTrabAnoCompetencia: TSmallintField;
    dbProdMTrabMesCompetencia: TSmallintField;
    dbProdMTrabTipo: TStringField;
    dbProdMTrabAuditor: TIntegerField;
    dbProdMTrabClienteAud: TIntegerField;
    dbProdMTrabHospital: TIntegerField;
    dbProdMTrabServico: TStringField;
    dbProdMTrabQtd: TIntegerField;
    dbProdMTrabEmpresa: TIntegerField;
    dbProdMTrabCliente: TIntegerField;
    dbProdMTrabStatus: TStringField;
    dbProdMTrabDataInclusao: TDateTimeField;
    dbProdMTrabUsuario: TStringField;
    dbProdMTrabEmpresaE: TIntegerField;
    dbProdMTrabEmpresaM: TIntegerField;
    dbProdMTrabPagtoPre: TIntegerField;
    dbProdMTrabServicoVinculado: TStringField;
    dbProdMVinculado: TStringField;
    dbProdMTrabVinculado: TStringField;
    qryProdNomeAuditor: TStringField;
    qryProdFIM: TStringField;
    rvRelProdC: TRvDataSetConnection;
    dbRelDG: TIntegerField;
    dbRelPS2: TIntegerField;
    dbRelRAC: TIntegerField;
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    Fechamentos1: TMenuItem;
    Relatrios1: TMenuItem;
    N1SelecionarDados1: TMenuItem;
    N2CopiarDadosoutraCompetencia1: TMenuItem;
    N1FecharCompetencia1: TMenuItem;
    N1: TMenuItem;
    N2RelatriodeParciais1: TMenuItem;
    N2AtualizarParciais1: TMenuItem;
    N3RelatrionaoPagos1: TMenuItem;
    dbRelPNP: TIntegerField;
    N2: TMenuItem;
    N4AtualizarMaisdeumaParcialCompetencia1: TMenuItem;
    N5RelatorioMaisdeumaParcial1: TMenuItem;
    qryParcialUnica: TMSQuery;
    qryParcialUnicacliente: TIntegerField;
    qryParcialUnicahospital: TIntegerField;
    qryParcialUnicapaciente: TIntegerField;
    qryParcialUnicasenha: TStringField;
    qryParcialUnicaQtd: TIntegerField;
    qryParcialUnicaClienteNome: TStringField;
    qryParcialUnicaHospitalNome: TStringField;
    qryParcialUnicaPacienteNome: TStringField;
    qryParcialUnicaProdutividade: TIntegerField;
    qryParcialUnicaNome: TStringField;
    qryProdUnica: TMSQuery;
    qryProdUnicaCliente: TIntegerField;
    qryProdUnicaPaciente: TIntegerField;
    qryProdUnicaSenha: TStringField;
    qryProdUnicaHospital: TIntegerField;
    qryProdUnicaMedico: TIntegerField;
    qryProdUnicaEnfermeiro: TIntegerField;
    qryProdUnicaMesCompetencia: TSmallintField;
    qryProdUnicaAnoCompetencia: TSmallintField;
    qryProdUnicaDataInternacao: TDateTimeField;
    qryProdUnicaServico: TStringField;
    qryProdUnicaServicoC: TStringField;
    qryProdUnicaProdutividade: TIntegerField;
    qryProdUnicaMedicoNome: TStringField;
    qryProdUnicaEnfermeiroNome: TStringField;
    qryProdUnicaParcial: TWordField;
    qryProdUnicaParcialTexto: TStringField;
    rvProdParcialItemUnico: TRvDataSetConnection;
    rvProdParcialUnica: TRvDataSetConnection;
    N31: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N7RelatriodeRecemNascidos1: TMenuItem;
    N5: TMenuItem;
    N8CalculodeVisitas1: TMenuItem;
    N3RelatriodeComplementos1: TMenuItem;
    rvProdComplemento: TRvDataSetConnection;
    qryProdComplemento: TMSQuery;
    qryProdComplementoCliente: TIntegerField;
    qryProdComplementoPaciente: TIntegerField;
    qryProdComplementoSenha: TStringField;
    qryProdComplementoHospital: TIntegerField;
    qryProdComplementoMedico: TIntegerField;
    qryProdComplementoEnfermeiro: TIntegerField;
    qryProdComplementoMesCompetencia: TSmallintField;
    qryProdComplementoAnoCompetencia: TSmallintField;
    qryProdComplementoDataInternacao: TDateTimeField;
    qryProdComplementoServico: TStringField;
    qryProdComplementoServicoC: TStringField;
    qryProdComplementoProdutividade: TIntegerField;
    qryProdComplementoComplemento: TBooleanField;
    qryProdComplementoComplementoTexto: TStringField;
    qryProdComplementoClienteNome: TStringField;
    qryProdComplementoPacienteNome: TStringField;
    qryProdComplementoHospitalNome: TStringField;
    qryVisita: TMSQuery;
    qryVisitacliente: TIntegerField;
    qryVisitahospital: TIntegerField;
    qryVisitaQtd: TIntegerField;
    qryVisitaClienteNome: TStringField;
    qryVisitaHospitalNome: TStringField;
    qryVisitaProdutividade: TIntegerField;
    rvProdVisitaItem: TRvDataSetConnection;
    qryProdVisitaItem: TMSQuery;
    qryProdVisitaItemCliente: TIntegerField;
    qryProdVisitaItemPaciente: TIntegerField;
    qryProdVisitaItemHospital: TIntegerField;
    qryProdVisitaItemMesCompetencia: TSmallintField;
    qryProdVisitaItemAnoCompetencia: TSmallintField;
    qryProdVisitaItemServico: TStringField;
    qryProdVisitaItemServicoC: TStringField;
    qryProdVisitaItemProdutividade: TIntegerField;
    qryProdVisitaItemPacienteNome: TStringField;
    qryProdVisitaItemHospitalNome: TStringField;
    qryProdVisitaItemClienteNome: TStringField;
    N6: TMenuItem;
    CCalculodeProntoAtendimentoAMB1: TMenuItem;
    qryProdPS: TMSQuery;
    qryProdPSAtendimentoPS: TIntegerField;
    qryProdPSSequencial: TIntegerField;
    qryProdPSTipo: TStringField;
    qryProdPSCliente: TIntegerField;
    qryProdPSHospital: TIntegerField;
    qryProdPSMedico: TIntegerField;
    qryProdPSEnfermeiro: TIntegerField;
    qryProdPSDataFechamento: TDateTimeField;
    qryProdPSMesCompetencia: TSmallintField;
    qryProdPSAnoCompetencia: TSmallintField;
    qryProdPSQtdAtendimento: TSmallintField;
    qryProdPSValor: TCurrencyField;
    qryProdPSValorGlosado: TCurrencyField;
    qryProdPSValorNaoAcordado: TCurrencyField;
    qryProdPSPosAnalise: TBooleanField;
    dbAtendHIDiarias: TFloatField;
    qryProdVisitaItemDiarias: TFloatField;
    qryRN: TMSQuery;
    rvRN: TRvDataSetConnection;
    qryRNcliente: TIntegerField;
    qryRNhospital: TIntegerField;
    qryRNsenha: TStringField;
    qryRNDataInternacao: TDateTimeField;
    qryRNDataAlta: TDateTimeField;
    qryRNProdutividade: TIntegerField;
    qryRNQtd: TIntegerField;
    qryRNClienteNome: TStringField;
    qryRNHospitalNome: TStringField;
    dbAuditorDataFim: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    cmdFiltro: TSpeedButton;
    dbEscala: TMSTable;
    dbEscalaCliente: TIntegerField;
    dbEscalaHospital: TIntegerField;
    dbEscalaTipo: TStringField;
    dbEscalaServico: TStringField;
    dbEscalaAuditor: TIntegerField;
    dbEscalaClienteID: TStringField;
    dsEscala: TDataSource;
    Panel2: TPanel;
    Panel7: TPanel;
    cmdNovoP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    grdProdutividade: TDBGrid;
    Panel4: TPanel;
    Panel6: TPanel;
    cmdNovoC: TBitBtn;
    cmdExcluiC: TBitBtn;
    grdProdCli: TDBGrid;
    Label1: TLabel;
    dbProdCli: TMSTable;
    dsProdCli: TDataSource;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dbClienteClienteID: TStringField;
    Label3: TLabel;
    dbProdCliClienteID: TStringField;
    cmdGravaC: TBitBtn;
    qryClienteok: TMSQuery;
    qryClienteokClienteID: TStringField;
    qryClienteokqtd: TIntegerField;
    Panel8: TPanel;
    cmbCli: TDBLookupComboBox;
    dbRelClienteNome: TStringField;
    chkCli: TCheckBox;
    dbEscalaDataInicio: TDateTimeField;
    dbEscalaDataFim: TDateTimeField;
    dbAtendHIMAtendimentoHI: TLargeintField;
    dbAtendHIEAtendimentoHI: TLargeintField;
    dbAtendHIAtendimentoHI: TLargeintField;
    qryProdUnicaAtendimentoHI: TLargeintField;
    qryProdComplementoAtendimentoHI: TLargeintField;
    qryProdVisitaItemAtendimentoHI: TLargeintField;
    dbRelVE: TIntegerField;
    dbRelFIS: TIntegerField;
    dbRelVCC: TIntegerField;
    dbRelAPA: TIntegerField;
    dbRelAIH: TIntegerField;
    dbRelTotHRel: TIntegerField;
    dbRelAPU: TIntegerField;
    dbRelAPS: TIntegerField;
    dbRelVAC: TIntegerField;
    N7: TMenuItem;
    BAlteraoMedicoEnfermeiroResponsavel1: TMenuItem;
    qryProdVinculado: TStringField;
    dbProdCliFechamento: TStringField;
    dbProdCliLancamento: TStringField;
    N1Produtividade1: TMenuItem;
    qryProdTipoTexto: TStringField;
    qryProdH: TMSQuery;
    qryProdHAnoCompetencia: TSmallintField;
    qryProdHMesCompetencia: TSmallintField;
    qryProdHHospital: TIntegerField;
    qryProdHTipo: TStringField;
    qryProdHServico: TStringField;
    qryProdHQtd: TIntegerField;
    qryProdHClienteAud: TIntegerField;
    qryProdHClienteNome: TStringField;
    dbRelPP: TIntegerField;
    qryProdHGeral: TMSQuery;
    qryProdHGeralHospital: TIntegerField;
    qryProdHGeralHospitalNome: TStringField;
    qryProdHGeralP: TIntegerField;
    qryProdHGeralPP: TIntegerField;
    qryProdHGeralPS: TIntegerField;
    qryProdHGeralV: TIntegerField;
    qryProdHGeralDG: TIntegerField;
    rvProdHGeral: TRvDataSetConnection;
    qryProdHGeralCompetencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tabProdChange(Sender: TObject);
    procedure dbProdMAfterInsert(DataSet: TDataSet);
    procedure dbProdMBeforePost(DataSet: TDataSet);
    procedure dbProdMFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure relProdClick(Sender: TObject);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdSelecionaClick(Sender: TObject);
    procedure dbAtendHIMCalcFields(DataSet: TDataSet);
    procedure dbAtendHIECalcFields(DataSet: TDataSet);
    procedure dbProdCalcFields(DataSet: TDataSet);
    procedure cmdFechaClick(Sender: TObject);
    procedure grdProdutividadeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbProdMBeforeEdit(DataSet: TDataSet);
    procedure dbProdMBeforeDelete(DataSet: TDataSet);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure grdProdDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbProdMTrabBeforePost(DataSet: TDataSet);
    procedure dbProdMTrabAfterInsert(DataSet: TDataSet);
    procedure dbProdMBeforeInsert(DataSet: TDataSet);
    procedure cmbMedCloseUp(Sender: TObject);
    procedure cmbEnfCloseUp(Sender: TObject);
    procedure dbRelCalcFields(DataSet: TDataSet);
    procedure dbServicoPFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure grdMedDblClick(Sender: TObject);
    procedure relProdNPClick(Sender: TObject);
    procedure cmdNovoPClick(Sender: TObject);
    procedure CalcTotal;
    procedure dbProdMAfterScroll(DataSet: TDataSet);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dsProdStateChange(Sender: TObject);
    procedure dsProdMStateChange(Sender: TObject);
    procedure cmdCopiaClick(Sender: TObject);
    procedure grdProdTitleClick(Column: TColumn);
    procedure qryProdCalcFields(DataSet: TDataSet);
    procedure N4AtualizarMaisdeumaParcialCompetencia1Click(
      Sender: TObject);
    procedure N5RelatorioMaisdeumaParcial1Click(Sender: TObject);
    procedure N2AtualizarParciais1Click(Sender: TObject);
    procedure qryProdUnicaCalcFields(DataSet: TDataSet);
    procedure N2RelatriodeParciais1Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N3RelatriodeComplementos1Click(Sender: TObject);
    procedure qryProdComplementoCalcFields(DataSet: TDataSet);
    procedure N7RelatriodeRecemNascidos1Click(Sender: TObject);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdFiltroClick(Sender: TObject);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbProdMAfterEdit(DataSet: TDataSet);
    procedure N8CalculodeVisitas1Click(Sender: TObject);
    procedure CCalculodeProntoAtendimentoAMB1Click(Sender: TObject);
    procedure dbProdCliAfterInsert(DataSet: TDataSet);
    procedure dbProdCliBeforePost(DataSet: TDataSet);
    procedure cmdNovoCClick(Sender: TObject);
    procedure cmdExcluiCClick(Sender: TObject);
    procedure cmdGravaCClick(Sender: TObject);
    procedure dsProdCliStateChange(Sender: TObject);
    procedure cmbCliCloseUp(Sender: TObject);
    procedure chkCliClick(Sender: TObject);
    procedure cmbCliClick(Sender: TObject);
    procedure BAlteraoMedicoEnfermeiroResponsavel1Click(Sender: TObject);
    procedure dbProdCliFechamentoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProdCliFechamentoSetText(Sender: TField;
      const Text: String);
    procedure dbProdCliCalcFields(DataSet: TDataSet);
    procedure grdProdCliDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure relExcelClick(Sender: TObject);
  private
     iaud,ihos,icli,iprod:integer;
     iser,itipo:string;
    { Private declarations }
  public
     iano,imes:integer;
    { Public declarations }
  end;

var
  frmProdutividade: TfrmProdutividade;

implementation

uses dmRelatorios, frmPrincipal, frmPreAnalises, frmRelProdsNP,
     frmProdCopias, frmRelProdParciais, frmProdParciais,
  frmProdParciaisUnica, frmProdComplementos, DateUtils, frmProdVisitas,
  frmProdPSs, frmProdAlteraME, frmRelProdutividades;

{$R *.dfm}

procedure TfrmProdutividade.CalcTotal;
begin
{    if (dbProdMQtd.value<>dbAtendHIM.RecordCount) and
       (dbProdMVinculado.value='P') then
    begin
        dbProdM.Edit;
        dbProdMQtd.value:=dbAtendHIM.RecordCount;
        dbProdM.Post;
    end;}

end;

procedure TfrmProdutividade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbHospital.Close;
    dbPaciente.Close;
    dbServico.Close;
    dbServicoP.Close;
    dbCliente.Close;
    dbProd.Close;
    dbProdM.Close;
    dbProdMTrab.Close;
    dbProdCli.Close;
    dbAtendHIM.Close;
    dbAtendHIE.Close;
    dbAtendHI.Close;
    dbEscala.Close;
end;

procedure TfrmProdutividade.FormShow(Sender: TObject);
var d,m,a:word;
begin
try
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbHospital.Open;
    dbPaciente.OPen;
    dbServico.Open;
    dbServicoP.Open; //apenas pre-analise
    dbCliente.Open;
    dbEscala.Open;
    dbEscala.IndexFieldNames:='Cliente;Hospital;Tipo;Servico;DataInicio';
    dbProdM.Filtered:=true;
    dbProdMTrab.Open;
    dbProdCli.Open;
    dbAtendHIM.Open;
    dbAtendHIE.Open;
    dbAtendHI.Open;
    dbProd.Open;
    dbProd.IndexFieldNames:='AnoCompetencia desc;MesCompetencia desc';
    dbProd.First;
    dbProdM.Open;
finally
    dbProdM.tag:=0;
    tabProd.TabIndex:=0;
    cmbMed.Visible:=true;
    cmbEnf.Visible:=false;
    cmbCli.KeyValue:=dbClienteCliente.value;
    cmbCli.Visible:=false;
    grdProd.Columns[1].Visible:=true;
    grdProd.Columns[2].Visible:=false;
    grdMed.BringToFront;
    grdProd.Columns[1].title.Font.color:=clBlue;
    grdProd.Columns[2].title.Font.color:=clBlue;
    imes:=0;
    iano:=0;
    icli:=0;
    iaud:=0;
    ihos:=0;
    iser:='';

    DecodeDate(date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        m:=12;
        a:=a-1;
    end;
    relProd.Tag:=0;
end;
end;

procedure TfrmProdutividade.tabProdChange(Sender: TObject);
begin
    case tabProd.TabIndex of
    0,1,2:begin
        grdProd.Columns[1].Visible:=true;
        grdProd.Columns[2].Visible:=false;
        grdMed.BringToFront;
        cmbEnf.Visible:=false;
        cmbMed.Visible:=true;
      end;
    3,4,5:begin
        grdProd.Columns[1].Visible:=false;
        grdProd.Columns[2].Visible:=true;
        grdEnf.BringToFront;
        cmbMed.Visible:=false;
        cmbEnf.Visible:=true;
      end;
    end;
    dbProdM.Refresh;
end;

procedure TfrmProdutividade.dbProdMAfterInsert(DataSet: TDataSet);
begin
    dbProdMQtd.value:=0;
    dbProdMCliente.value:=0;
    dbProdMEmpresa.value:=0;
    dbProdMPagtoPre.value:=0;
    dbProdMStatus.Value:='A';
    dbProdMProdutividade.value:=dbProdProdutividade.value;
    dbProdMAnoCompetencia.value:=dbProdAnoCompetencia.value;
    dbProdMMesCompetencia.value:=dbProdMMesCompetencia.value;
    case tabProd.TabIndex of
    0,1:dbProdMTipo.value:='M';
    2,3:dbProdMTipo.value:='E';
    end;

    dbProdMAuditor.value:=iaud;
    dbProdMHospital.value:=ihos;
    if itipo<>'' then
        dbProdMTipo.value:=itipo;
    dbProdMClienteAud.value:=icli;
end;

procedure TfrmProdutividade.dbProdMBeforePost(DataSet: TDataSet);
var iResultado:integer;
begin
if dbProdM.Tag=0 then
begin
    if dbProdMTipo.value='M' then
        dbProdMEmpresa.value:=dbProdMEmpresaM.value
    else
        dbProdMEmpresa.value:=dbProdMEmpresaE.value;

    if dbProdMServicoVinculado.value='P'  then
    begin
        ShowMessage('Serviço vinculado a produtividade. Selecione um serviço não vinculado');
        abort;
    end
    else
        dbProdMVinculado.value:=dbProdMServicoVinculado.value;

    if dbProdMQtd.value=0 then
    begin
        ShowMessage('Quantidade inválida');
        abort;
    end;

    if dbProdStatus.value='F' then
    begin
        iResultado:=Application.MessageBox('Produtividade Fechada. Confirme a alteração','Aviso', mb_yesno+ mb_iconExclamation);
        if(iResultado=id_no) then
            dbProdM.Cancel;
        dbProdMDataAlteracao.value:=date;
        dbProdMUsuarioA.value:=iUsuario
    end;

    if dbProd.State in [dsInsert] then
    begin
        dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM '+
                              'where Produtividade=:iProd and '+
                              '       Tipo=:iTipo and '+
                              '       Auditor=:iAud and '+
                              '       ClienteAud=:icli and '+
                              '       Hospital=:iHosp  and  '+
                              '       Servico=:iServ ';

        dbProdMTrab.ParamByName('iProd').value:=dbProdProdutividade.value;
        dbProdMTrab.ParamByName('iTipo').value:=dbProdMTipo.value;
        dbProdMTrab.ParamByName('iAud').value:=dbProdMAuditor.value;
        dbProdMTrab.ParamByName('icli').value:=dbProdMClienteAud.value;
        dbProdMTrab.ParamByName('iHosp').value:=dbProdMHospital.value;
        dbProdMTrab.ParamByName('iServ').value:=dbProdMServico.value;
        dbProdMTrab.Open;

        if dbProdMTrab.RecordCount>0 then
        begin
            ShowMessage('Serviço ja cadastrado para este Cliente - Medico/Enfermeiro - Hospital');
            abort;
        end;
    end;

    if dbProdM.State in [dsInsert] then
    begin
        dbProdMDataInclusao.value:=date;
        dbProdMUsuario.value:=iUsuario;
    end;
end;
end;

procedure TfrmProdutividade.dbProdMFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var iCli:integer;
begin
    if chkCli.checked then
    begin
        case tabProd.TabIndex of
        0:accept:=(dbProdMTipo.value='M');
        1:accept:=(dbProdMTipo.value='M') and (dbProdMQtd.value=0);
        2:accept:=(dbProdMTipo.value='M') and (dbProdMVinculado.value='A');
        3:accept:=(dbProdMTipo.value='E');
        4:accept:=(dbProdMTipo.value='E') and (dbProdMQtd.value=0);
        5:accept:=(dbProdMTipo.value='E') and (dbProdMVinculado.value='A');
        end;
    end
    else
    begin
        iCli:=cmbCli.KeyValue;
        case tabProd.TabIndex of
        0:accept:=((dbProdMTipo.value='M') and (dbProdMClienteAud.value=icli));
        1:accept:=((dbProdMTipo.value='M') and (dbProdMQtd.value=0)  and (dbProdMClienteAud.value=icli));
        2:accept:=((dbProdMTipo.value='M') and (dbProdMVinculado.value='A')  and (dbProdMClienteAud.value=icli));

        3:accept:=((dbProdMTipo.value='E') and (dbProdMClienteAud.value=icli));
        4:accept:=((dbProdMTipo.value='E') and (dbProdMQtd.value=0)  and (dbProdMClienteAud.value=icli));
        5:accept:=((dbProdMTipo.value='E') and (dbProdMVinculado.value='A')  and (dbProdMClienteAud.value=icli));
        end;
    end;
end;

procedure TfrmProdutividade.relProdClick(Sender: TObject);
begin 
    if frmRelProdutividade=nil then
      Application.CreateForm(TfrmRelProdutividade, frmRelProdutividade);
    frmRelProdutividade.ShowModal;
end;

procedure TfrmProdutividade.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServicoValorizado.Value=true);
end;

procedure TfrmProdutividade.cmdSelecionaClick(Sender: TObject);
var i,iBusca,iResultado:integer;
var iMes,iAno,iProd,iCli,iHosp,iMed,iEnf:integer;
var iServ,imsg:string;
var d,m,a:word;
begin
try
    chkCli.Checked:=true;
    dbProdM.Refresh;

    if dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;
    if dbProdStatus.value='A' then
    begin
        iResultado:=Application.MessageBox('Produtividade não finalizada. Reprocessa?' ,
                                           '', mb_yesno+ mb_iconExclamation);
        if iResultado=id_no then abort;
    end;
    iMes:=dbProdMesCompetencia.value;
    iAno:=dbProdAnoCompetencia.value;
    iProd:=dbProdProdutividade.value;
    dbProdMTrab.Refresh;
    dbProd.Refresh;
    dbAtendHI.Refresh;

    dbProdMTrab.sql.text:='Delete from ProdutividadeM where Vinculado='+QuotedStr('P')+' and '+
                          'Produtividade=:Prod';
    dbProdMTrab.ParamByName('Prod').value:=iProd;

    dbProdMTrab.Execute;
    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where ((Produtividade=0) or (Produtividade=:Prod and Vinculado='+QuotedStr('A')+')) '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Auditor,ClienteAud,Hospital,Servico,Vinculado';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.Execute;

    dbAtendHI.sql.text:='Update AtendHI set Produtividade=0 where Produtividade=:Prod';
    dbAtendHI.ParamByName('Prod').value:=iProd;
    dbAtendHI.execute;

    dbAtendHI.SQL.text:='Select * from AtendHI '+
                        'where Servico<>'+QuotedStr('NP')+' and '+
                        '      Servico<>'+QuotedStr('CE')+' and '+
                        'Produtividade=0 and AnoCompetencia=:iAno and '+
                        '                    MesCompetencia=:iMes  '+
                        ' order by Produtividade,AnoCompetencia,MesCompetencia';
    dbAtendHI.ParamByName('iAno').value:=iAno;
    dbAtendHI.ParamByName('iMes').value:=iMes;
    dbAtendHI.Execute;

    dbProd.Edit;
    dbProdUsuario.value:=iUsuario;
    dbProd.Post;
//**** Fim Limpeza
    qryTot.Close;
    qryTot.SQL.Clear;
    qryTot.sql.Text:='Select * from AtendHI '+
                     'where AnoCompetencia=:iAno  and '+
                     '      MesCompetencia=:iMes and '+
                     '      Produtividade=0  ';
    qryTot.ParamByName('iAno').value:=iAno;
    qryTot.ParamByName('iMes').value:=iMes;
    qryTot.Open;

    ProgressBar1.Min:=0;
    ProgressBar1.Position:=0;
    ProgressBar1.Max:=qryTot.RecordCount;
    if qryTot.RecordCount=0 then
        ShowMessage('Não ha capeantes abertos na Competencia selecionada'); //mas processa os lançados

    while dbAtendHI.Locate('Produtividade;AnoCompetencia;MesCompetencia',
                           VarArrayof([0,iAno,iMes]),[]) do
    begin
        if (dbAtendHIAnoCompetencia.value=iAno) and
           (dbAtendHIMesCompetencia.value=iMes) and
           (dbAtendHIProdutividade.value=0) then
        begin
            iCli:=dbAtendHICliente.Value;
            iHosp:=dbAtendHIHospital.value;
            iMed:=dbAtendHIMedico.value;
            iEnf:=dbAtendHIEnfermeiro.value;
            iServ:=dbAtendHIServico.value;
            if iServ='' then
            begin
                if dbAtendHIParcial.value=0 then
                    iServ:='P'
                else
                begin
                    if dbAtendHIDataInternacao.Value=dbAtendHIDataInicioP.value then
                        iServ:='PP1'
                    else
                    begin
                        if dbAtendHIDayClinic.value=true then
                            iServ:='DAY'
                        else
                            if dbAtendHIComplemento.value=true then
                                iServ:='CO'
                            else
                                iServ:='PPD';
                    end;
                end;
            end;
            if iMed>0 then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico;Vinculado',
                                      VarArrayof([iProd,iAno,iMes,'M',iMed,iCli,iHosp,iServ,'A']),[]) then
                    dbProdMTrab.Delete;  //Lançado - Apagar

                if not dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico;Vinculado',
                                            VarArrayof([iProd,iAno,iMes,'M',iMed,iCli,iHosp,iServ,'P']),[]) then
                begin
                    dbProdMTrab.Insert;
                    dbProdMTrabProdutividade.value:=iProd;
                    dbProdMTrabClienteAud.value:=iCli;
                    dbProdMTrabAuditor.value:=iMed;
                    dbProdMTrabTipo.value:='M';
                    dbProdMTrabServico.value:=iServ;
                    dbProdMTrabHospital.value:=iHosp;
                    dbProdMTrabStatus.Value:='A';
                    dbProdMTrabAnoCompetencia.value:=iAno;
                    dbProdMTrabMesCompetencia.value:=iMes;
                    dbProdMTrabVinculado.value:='P';
                end
                else
                    dbProdMTrab.Edit;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+1;
                dbProdMTrab.Post;
            end;
//**********Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico
            if iEnf>0 then
            begin
                if dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico;Vinculado',
                                         VarArrayof([iProd,iAno,iMes,'E',iEnf,iCli,iHosp,iServ,'A']),[]) then
                   dbProdMTrab.Delete; //Lançado - Apagar

                if not dbProdMTrab.Locate('Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico;Vinculado',
                                   VarArrayof([iProd,iAno,iMes,'E',iEnf,iCli,iHosp,iServ,'P']),[]) then
                begin
                    dbProdMTrab.Insert;
                    dbProdMTrabProdutividade.value:=iProd;
                    dbProdMTrabClienteAud.value:=iCli;
                    dbProdMTrabAuditor.value:=iEnf;
                    dbProdMTrabTipo.value:='E';
                    dbProdMTrabServico.value:=iServ;
                    dbProdMTrabHospital.value:=iHosp;
                    dbProdMTrabStatus.Value:='A';
                    dbProdMTrabAnoCompetencia.value:=iAno;
                    dbProdMTrabMesCompetencia.value:=iMes;
                    dbProdMTrabVinculado.value:='P';
                end
                else
                    dbProdMTrab.Edit;
                dbProdMTrabQtd.value:=dbProdMTrabQtd.value+1;
                dbProdMTrab.Post;
            end;
            dbAtendHI.Edit;
            dbAtendHIProdutividade.value:=iProd;
            dbAtendHIServico.value:=iServ;
            dbAtendHI.Post;
        end;
        ProgressBar1.Position:=ProgressBar1.Position+1;
    end;

    ProgressBar1.Position:=0;
    ShowMessage('Produtividade calculada com sucesso');
finally
    dbProdM.Refresh;
    dbAtendHIM.Refresh;
    dbAtendHIE.Refresh;
    ProgressBar1.Position:=0;
end;
end;

procedure TfrmProdutividade.dbAtendHIMCalcFields(DataSet: TDataSet);
begin
    if dbAtendHIMParcial.value=1 then
        dbAtendHIMParcialTexto.value:='Sim'
    else
        dbAtendHIMParcialTexto.value:='Não';

    if dbAtendHIMDayClinic.value=true then
        dbAtendHIMDayClinicTexto.value:='Sim'
    else
        dbAtendHIMDayClinicTexto.value:='Não';

    if dbAtendHIMComplemento.value=true then
        dbAtendHIMComplementoTexto.value:='Sim'
    else
        dbAtendHIMComplementoTexto.value:='Não';
end;

procedure TfrmProdutividade.dbAtendHIECalcFields(DataSet: TDataSet);
begin
    if dbAtendHIEParcial.value=1 then
        dbAtendHIEParcialTexto.value:='Sim'
    else
        dbAtendHIEParcialTexto.value:='Não';

    if dbAtendHIEDayClinic.value=true then
        dbAtendHIEDayClinicTexto.value:='Sim'
    else
        dbAtendHIEDayClinicTexto.value:='Não';

end;

procedure TfrmProdutividade.dbProdCalcFields(DataSet: TDataSet);
begin
    if dbProdStatus.value='F' then
        dbProdStatusTexto.value:='Fechado';
    if dbProdStatus.value='D' then
        dbProdStatusTexto.value:='Excluido';
    if dbProdStatus.value='A' then
        dbProdStatusTexto.value:='Aberto';

end;

procedure TfrmProdutividade.cmdFechaClick(Sender: TObject);
var iResultado:integer;
var itexto:string;
var iok:boolean;
begin
    iProd:=dbProdProdutividade.value;
    chkCli.Checked:=true;
    dbProdM.Refresh;
try
if dbProdStatus.value='F' then
begin
    qryTot.SQL.Clear;
    qryTot.sql.Text:='Select * from ProdutividadeM '+
                     'where Produtividade=:iProd and PagtoPre>0';
    qryTot.ParamByName('iProd').value:=iProd;
    qryTot.Open;

    if qryTot.RecordCount>0 then
    begin
        ShowMessage('Produtividade possui pagamentos efetuados. Impossivel reabrir');
        abort;
    end;

    iResultado:=Application.MessageBox('A Produtividade Fechada. Reabre?',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    dbProdMTrab.sql.text:='Update ProdutividadeM set Status='+QuotedStr('A')+' where Produtividade=:Prod';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.Execute;
    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=0 '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Auditor,ClienteAud,Hospital,Servico';
    dbProdMTrab.Execute;

    dbProd.Edit;
    dbProdStatus.value:='A';
    dbProd.Post;
end
else
begin
    iResultado:=Application.MessageBox('O sistema irá verificar a produtividade.'+#13+
                                       'As produtividades zeradas serão apagadas. Confirme o processamento',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    dbProdMTrab.sql.text:='Delete ProdutividadeM where Produtividade=:Prod and Qtd=0 ';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.Execute;

    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=:Prod '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Auditor,ClienteAud,Hospital,Servico';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.Execute;

    ProgressBar1.Min:=0;
    ProgressBar1.Position:=0;
    ProgressBar1.Max:=dbProdMTrab.RecordCount;

    iok:=true;
    dbProdM.Filtered:=false;
    dbProdM.Refresh;
    dbProdM.First;
    while not dbProdM.eof do
    begin
        if (dbProdMHospital.value=0) and (dbProdMTipo.value='M') then
        begin
            itexto:='Médico ['+dbProdMAuditorNome.value+'] sem Hospital cadastrado';
            ShowMessage(itexto);
            iok:=false;
        end;
        if (dbProdMHospital.value=0) and (dbProdMTipo.value='E') then
        begin
            itexto:='Enfermeiro ['+dbProdMAuditorNome.value+'] sem Hospital cadastrado';
            ShowMessage(itexto);
            iok:=false;
        end;
        if (dbProdMEmpresa.value=0) and (dbProdMTipo.value='M') then
        begin
            if dbAuditor.Locate('Auditor',dbProdMAuditor.value,[]) then
            begin
                dbProdM.Tag:=1;
                dbProdM.Edit;
                dbProdMEmpresa.value:=dbAuditorCliente.value;
                dbProdM.Post;
                dbProdM.Tag:=0;
            end
            else
            begin
                itexto:='Médico ['+dbProdMAuditorNome.AsString+'] sem Empresa cadastrada. Corrija e reprocesse o fechamento antes de prosseguir';
                ShowMessage(itexto);
                iok:=false;
            end;
        end;
        if (dbProdMEmpresa.value=0) and (dbProdMTipo.value='E') then
        begin
            if dbEnfermeiro.Locate('Enfermeiro',dbProdMAuditor.value,[]) then
            begin
                dbProdM.Tag:=1;
                dbProdM.Edit;
                dbProdMEmpresa.value:=dbEnfermeiroCliente.value;
                dbProdM.Post;
                dbProdM.Tag:=0;
            end
            else
            begin
                itexto:='Enfermeiro ['+dbProdMAuditorNome.AsString+'] sem Empresa cadastrada. Corrija e reprocesse o fechamento antes de prosseguir';
                ShowMessage(itexto);
                iok:=false;
            end;
        end;
        if (dbProdMAuditor.value=0) and (dbProdMTipo.value='M') then
        begin
            itexto:='Atenção! Produtividade Hospital ['+dbProdMHospitalNome.value+'] sem Medico';
            ShowMessage(itexto);
        end;
        if (dbProdMAuditor.value=0) and (dbProdMTipo.value='E') then
        begin
            itexto:='Atenção! Produtividade Hospital ['+dbProdMHospitalNome.value+'] sem Enfermeiro';
            ShowMessage(itexto);
        end;
        dbProdM.Next;
        ProgressBar1.Position:=ProgressBar1.Position+1;
    end;

    if not iok then abort;

    iResultado:=Application.MessageBox('A Produtividade será recalculada e fechada. Confirme',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    cmdSelecionaClick(sender);

    dbProdMTrab.sql.text:='Update ProdutividadeM set Status='+QuotedStr('F')+' where Produtividade=:Prod';
    dbProdMTrab.ParamByName('Prod').value:=iProd;
    dbProdMTrab.Execute;
    dbProdMTrab.sql.text:='SELECT * FROM ProdutividadeM where Produtividade=0 '+
                          'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Auditor,ClienteAud,Hospital,Servico';
    dbProdMTrab.Execute;

    dbProd.Edit;
    dbProdStatus.value:='F';
    dbProd.Post;
end;
finally
    ProgressBar1.Position:=0;
    dbProdM.Tag:=0;
    dbProdM.Filtered:=true;
    dbProdM.Refresh;
end;
end;

procedure TfrmProdutividade.grdProdutividadeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProdStatus.Value='F' then
        grdProdutividade.Canvas.Font.Color:=clRed;
     if dbProdStatus.Value='D' then
        grdProdutividade.Canvas.Font.Color:=clFuchsia;
     grdProdutividade.DefaultDrawDataCell(Rect,grdProdutividade.Columns[DataCol].field,State);
end;

procedure TfrmProdutividade.dbProdMBeforeEdit(DataSet: TDataSet);
begin
if dbProdM.Tag=0 then
begin
    if dbProdMVinculado.value='P' then
    begin
        ShowMessage('Servico vinculado ao sistema. Impossivel alterar serviço');
        if dbProdM.State in [dsEdit] then
            dbProdM.Cancel;
        abort;
    end;
end;
end;

procedure TfrmProdutividade.dbProdMBeforeDelete(DataSet: TDataSet);
begin
if dbProdM.tag=0 then
begin
    if dbProdMVinculado.value='P' then
    begin
        ShowMessage('Serviço vinculado ao sistema. Impossivel excluir serviço');
        abort;
    end;
end;
end;

procedure TfrmProdutividade.cmdNovoClick(Sender: TObject);
begin
    dbProdM.Insert;
    grdProd.SetFocus;
end;

procedure TfrmProdutividade.cmdGravaClick(Sender: TObject);
begin
    dbProdM.Post;
end;

procedure TfrmProdutividade.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
    dbProdM.Delete;
end;

procedure TfrmProdutividade.grdProdDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProdMVinculado.Value='P' then
        grdProd.Canvas.Font.Color:=clBlack
     else
        if dbProdMVinculado.Value='A' then //vinculado/lançado
            grdProd.Canvas.Font.Color:=clTeal
        else
            grdProd.Canvas.Font.Color:=clBlue;

     if dbProdMQtd.value=0 then
        grdProd.Canvas.Font.Color:=clRed;

     grdProd.DefaultDrawDataCell(Rect,grdProd.Columns[DataCol].field,State);
end;

procedure TfrmProdutividade.dbProdMTrabBeforePost(DataSet: TDataSet);
begin
    if dbProdMTrabTipo.value='M' then
        dbProdMTrabEmpresa.value:=dbProdMTrabEmpresaM.value
    else
        dbProdMTrabEmpresa.value:=dbProdMTrabEmpresaE.value;

    if dbProdMTrab.State in [dsInsert] then
    begin
        dbProdMTrabDataInclusao.value:=date;
        dbProdMTrabUsuario.value:=iUsuario;
    end;
end;


procedure TfrmProdutividade.dbProdMTrabAfterInsert(DataSet: TDataSet);
begin
    dbProdMTrabQtd.value:=0;
    dbProdMTrabCliente.value:=0;
    dbProdMTrabEmpresa.value:=0;
    dbProdMTrabStatus.Value:='A';
    dbProdMTrabPagtoPre.value:=0;
end;

procedure TfrmProdutividade.dbProdMBeforeInsert(DataSet: TDataSet);
begin
    if dbProdM.Tag=0 then
        if cmdFiltro.Down=false then
            ShowMessage('O Filtro de Médicos/Enfermeiro inativos está desligado');

    iaud:=dbProdMAuditor.value;
    ihos:=dbProdMHospital.value;
    itipo:=dbProdMTipo.value;
    icli:=dbProdMClienteAud.value;

    if (icli=0) and (not chkCli.Checked) then
        iCli:=cmbCli.KeyValue;
end;

procedure TfrmProdutividade.cmbMedCloseUp(Sender: TObject);
begin
    dbProdM.Locate('Tipo;Auditor',VarArrayof(['M',cmbMed.KeyValue]),[]);
end;

procedure TfrmProdutividade.cmbEnfCloseUp(Sender: TObject);
begin
    dbProdM.Locate('Tipo;Auditor',VarArrayof(['E',cmbEnf.KeyValue]),[]);
end;

procedure TfrmProdutividade.dbRelCalcFields(DataSet: TDataSet);
begin
    if dbRelTipo.value='M' then
        dbRelTipoNome.value:='Médicos';
    if dbRelTipo.value='E' then
        dbRelTipoNome.value:='Enfermeiros';

    dbRelPP.value:=dbRelPP1.value+dbRelPPD.value;  //somente relatorio por Hospital 

    dbRelTotH.value:=dbRelP.value+dbRelPP1.value+       //total excel todos os campos (24)
                     dbRelPPD.value+dbRelDAY.value+
                     dbRelPAC.value+dbRelPS.value+
                     dbRelVE.value+dbRelV.value+
                     dbRelRAC.value+dbRelVHC.value+
                     dbRelSUS.value+dbRelPER.value+
                     dbRelDG.value+dbRelPS2.Value+
                     dbRelVD.value+dbRelCo.value+
                     dbRelPNP.value+dbRelFIS.Value+
                     dbRelVCC.value+dbRelAPA.value+
                     dbRelAIH.value+dbRelAPU.Value+
                     dbRelAPS.value+dbRelDG.value+dbRelAMB.value;

    if relProd.tag=0 then
        dbRelTotHRel.value:=dbRelP.value+dbRelPP1.value+      //total relatorio    (13)
                            dbRelPPD.value+dbRelPS2.Value+
                            dbRelPAC.value+dbRelPS.value+
                            dbRelVE.value+dbRelV.value+
                            dbRelVHC.value+dbRelVD.value+
                            dbRelVCC.value+dbRelAIH.value+
                            dbRelDG.value+dbRelAMB.value
    else
        dbRelTotHRel.value:=dbRelP.value+dbRelPP1.value+      //total relatorio antigo   (17)
                            dbRelPPD.value+dbRelPS2.Value+
                            dbRelPAC.value+dbRelPS.value+
                            dbRelVE.value+dbRelV.value+
                            dbRelRAC.value+dbRelVHC.value+
                            dbRelVD.value+dbRelFIS.Value+
                            dbRelVCC.value+dbRelAIH.value+
                            dbRelAPU.value+dbRelAPS.value+
                            dbRelDG.value;
end;

procedure TfrmProdutividade.dbServicoPFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServicoPValorizado.Value=true) and
            (dbServicoPVinculado.value='P');
end;

procedure TfrmProdutividade.grdMedDblClick(Sender: TObject);
begin
    with frmPreAnalise do
    begin
        case tabProd.TabIndex of
        0:begin
          iCliProd:=dbAtendHIMCliente.value;
          iAtendHProd:=dbAtendHIMAtendimentoHI.value;
          end;
        1:begin
          iCliProd:=dbAtendHIECliente.value;
          iAtendHProd:=dbAtendHIEAtendimentoHI.value;
          end;
        end;
        if frmPreAnalise=nil then
           Application.CreateForm(TfrmPreAnalise, frmPreAnalise);
        frmPreAnalise.Tag:=10;
        frmPreAnalise.Show;
    end;
end;

procedure TfrmProdutividade.relProdNPClick(Sender: TObject);
begin
    iano:=dbProdAnoCompetencia.value;
    imes:=dbProdMesCompetencia.value;
    if frmRelProdNP=nil then
      Application.CreateForm(TfrmRelProdNP, frmRelProdNP);
    frmRelProdNP.ShowModal;
end;

procedure TfrmProdutividade.cmdNovoPClick(Sender: TObject);
var iMes,iAno,iProd,iqtd:integer;
var d,m,a:word;
begin
     DecodeDate(date,a,m,d);
     m:=m-1;
     if m=0 then
     begin
        m:=12;
        a:=a-1;
     end;
     iMes:=m;
     iAno:=a;
     dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([iAno,iMes]),[]);
     while (dbProdAnoCompetencia.value=iAno) and
           (dbProdMesCompetencia.value=iMes) and
           (not dbProd.eof) do
     begin
        if (dbProdStatus.value='A')  then
        begin
            ShowMessage('Produtividade do Mes Anterior ja existente e em aberto');
            abort;
        end;
        dbProd.Next;
     end;
     dbProd.Insert;
     dbProdAnoCompetencia.value:=iAno;
     dbProdMesCompetencia.Value:=iMes;
     dbProdUsuario.value:=iUsuario;
     dbProdDataInclusao.value:=date;
     dbProdStatus.value:='A';
end;

procedure TfrmProdutividade.dbProdMAfterScroll(DataSet: TDataSet);
begin
    CalcTotal;
end;

procedure TfrmProdutividade.cmdGravaPClick(Sender: TObject);
begin
     dbProd.Post;
end;

procedure TfrmProdutividade.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
    if dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade fechada. Impossivel excluir');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a exclusão. A Produtividade será limpa','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
try
begin
    dbProdM.Tag:=1;
    dbProdM.First;
    while not dbProdM.eof do
    begin
        while dbAtendHIM.RecordCount>0 do
        begin
            dbAtendHIM.Edit;
            dbAtendHIMProdutividade.value:=0;
            dbAtendHIM.Post;
        end;
        dbProdM.Next;
    end;
    while dbProdM.RecordCount>0 do
        dbProdM.Delete;
    dbProd.Edit;
    dbProdStatus.value:='D';
    dbProdUsuario.value:=iUsuario;
    dbProdDataInclusao.value:=date;
    dbProd.Post;
end;
finally
    dbProdM.Tag:=0;
end;
end;

procedure TfrmProdutividade.dsProdStateChange(Sender: TObject);
begin
     cmdNovoP.Enabled:=dbProd.State in [dsBrowse];
     cmdExcluiP.Enabled:=(dbProd.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProd.RecordCount<>0);
     cmdGravaP.Enabled:=dbProd.State in [dsEdit,dsInsert];

end;

procedure TfrmProdutividade.dsProdMStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbProdM.State in [dsBrowse];
     cmdExclui.Enabled:=(dbProdM.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProdM.RecordCount<>0);
     cmdGrava.Enabled:=dbProdM.State in [dsEdit,dsInsert];
end;

procedure TfrmProdutividade.cmdCopiaClick(Sender: TObject);
begin
    chkCli.Checked:=true;
    dbProdM.Refresh;

    if frmProdCopia=nil then
      Application.CreateForm(TfrmProdCopia, frmProdCopia);
    frmProdCopia.ShowModal;
end;

procedure TfrmProdutividade.grdProdTitleClick(Column: TColumn);
var i:integer;
begin
    case Column.Index of
    1,2:dbProdM.IndexFieldNames:='Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico';
    3:dbProdM.IndexFieldNames:='Produtividade;AnoCompetencia;MesCompetencia;Tipo;ClienteAud;Auditor;Hospital;Servico';
    end;

    for i:=1 to 3 do
        grdProd.Columns[i].title.Font.Color:=clWindowText;

    if (Column.index>0) and (Column.Index<4) then
       grdProd.Columns[Column.Index].title.Font.color:=clBlue;
end;

procedure TfrmProdutividade.qryProdCalcFields(DataSet: TDataSet);
begin
    qryProdFIM.value:='***';
    if qryProdTipo.value='M' then
    begin
        qryProdNomeAuditor.value:=qryProdAuditorNome.value;
        qryProdTipoTexto.value:='Médicos';
    end
    else
    begin
        qryProdNomeAuditor.value:=qryProdEnfermeiroNome.value;
        qryProdTipoTexto.value:='Enfermeiros';
    end;

end;

procedure TfrmProdutividade.N4AtualizarMaisdeumaParcialCompetencia1Click(
  Sender: TObject);
begin
    if frmProdParcial=nil then
      Application.CreateForm(TfrmProdParcial, frmProdParcial);
    frmProdParcial.ShowModal;
end;

procedure TfrmProdutividade.N5RelatorioMaisdeumaParcial1Click(
  Sender: TObject);
begin
    if frmRelProdParcial=nil then
      Application.CreateForm(TfrmRelProdParcial, frmRelProdParcial);
    frmRelProdParcial.ShowModal;
end;

procedure TfrmProdutividade.N2AtualizarParciais1Click(Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno:integer;
begin
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    qryParcialUnica.Close;
    qryParcialUnica.SQL.Clear;
    qryParcialUnica.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, '+
                              '       AtendHI.Paciente, AtendHI.Senha, '+
                              '       AtendHI.Produtividade, '+
                              '       count(AtendimentoHI) as Qtd, '+
                              '       Pacientes.Nome '+
                              'from AtendHI '+
                              'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '+
                              'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes)  '+
                              '     and  (Parcial=1)  and (Complemento=0)  '+
                              'group by AtendHI.cliente, nome, AtendHI.paciente, senha, hospital, Produtividade '+
                              'having count(AtendimentoHI)=1 '+
                              'order by AtendHI.cliente, Nome, AtendHI.paciente, senha, hospital ';

    qryParcialUnica.ParamByName('iMes').asinteger:=iMes;
    qryParcialUnica.ParamByName('iAno').asinteger:=iAno;
    qryParcialUnica.Open;

    if qryParcialUnica.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Parciais');
        abort;
    end;

    qryProdUnica.Close;
    qryProdUnica.SQL.Clear;
    qryProdUnica.SQL.Text:='Select * from AtendHI '+
                           'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) '+
                           'order by Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProdUnica.ParamByName('iMes').asinteger:=iMes;
    qryProdUnica.ParamByName('iAno').asinteger:=iAno;
    qryProdUnica.Open;

    iCompetencia:=InttoStr(frmProdutividade.dbProdMesCompetencia.value)+'/'+IntToStr(frmProdutividade.dbProdAnoCompetencia.value);
    frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

    frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade - Parciais Unicas');

    frmMenu.rvBBAuditoria.SelectReport('relProdParcialUnica',true);
    frmMenu.rvBBAuditoria.Execute;

end;

procedure TfrmProdutividade.qryProdUnicaCalcFields(DataSet: TDataSet);
begin
    if qryprodUnicaParcial.value=1 then
        qryprodUnicaParcialTexto.value:='Sim'
    else
        qryprodUnicaParcialTexto.value:='Não'

end;

procedure TfrmProdutividade.N2RelatriodeParciais1Click(Sender: TObject);
begin
    if frmProdParcialUnica=nil then
      Application.CreateForm(TfrmProdParcialUnica, frmProdParcialUnica);
    frmProdParcialUnica.ShowModal;

end;

procedure TfrmProdutividade.N31Click(Sender: TObject);
begin
    if frmProdComplemento=nil then
      Application.CreateForm(TfrmProdComplemento, frmProdComplemento);
    frmProdComplemento.ShowModal;

end;

procedure TfrmProdutividade.N3RelatriodeComplementos1Click(
  Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno:integer;
begin
    iProd:=dbProdProdutividade.value;
    iMes:=dbProdMesCompetencia.value;
    iAno:=dbProdAnoCompetencia.value;
    qryProdComplemento.Close;
    qryProdComplemento.SQL.Clear;
    qryProdComplemento.SQL.Text:='Select * from AtendHI '+
                      'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes) and (Complemento=1) and '+
                      '      (Servico<>'+QuotedStr('NP')+') '+
                      'order by Cliente,Paciente,Senha,DataInternacao,AtendimentoHI ';

    qryProdComplemento.ParamByName('iMes').asinteger:=iMes;
    qryProdComplemento.ParamByName('iAno').asinteger:=iAno;
    qryProdComplemento.Open;

    if qryProdComplemento.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Complementos');
        abort;
    end;

    iCompetencia:=InttoStr(frmProdutividade.dbProdMesCompetencia.value)+'/'+IntToStr(frmProdutividade.dbProdAnoCompetencia.value);
    frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

    frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade de Prestadores - Complementos');

    frmMenu.rvBBAuditoria.SelectReport('relProdComplemento',true);
    frmMenu.rvBBAuditoria.Execute;

end;

procedure TfrmProdutividade.qryProdComplementoCalcFields(
  DataSet: TDataSet);
begin
    if qryProdComplementoComplemento.value=true then
        qryProdComplementoComplementoTexto.value:='Sim'
    else
        qryProdComplementoComplementoTexto.value:='Não';

end;


procedure TfrmProdutividade.N7RelatriodeRecemNascidos1Click(
  Sender: TObject);
var iCompetencia,iHospital:string;
var iProd,iMes,iAno:integer;
begin
    iProd:=frmProdutividade.dbProdProdutividade.value;
    iMes:=frmProdutividade.dbProdMesCompetencia.value;
    iAno:=frmProdutividade.dbProdAnoCompetencia.value;
    qryRN.Close;
    qryRN.SQL.Clear;
    qryRN.SQL.Text:='Select AtendHI.Cliente, AtendHI.Hospital, '+
                    '       AtendHI.Senha, '+
                    '       AtendHI.Produtividade, '+
                    '       count(AtendimentoHI) as Qtd, '+
                    '       AtendHI.DataInternacao, '+
                    '       AtendHI.DataAlta '+
                    'from AtendHI '+
                    'where (AnoCompetencia=:iAno) and (MesCompetencia=:iMes)  and '+
                    '      Complemento=0  '+
                    'group by cliente, hospital, senha, datainternacao,dataalta, Produtividade '+
                    'having count(AtendimentoHI)>=2 and Senha is not null '+
                    'order by cliente, hospital, Senha, DataInternacao ';

    qryRN.ParamByName('iMes').asinteger:=iMes;
    qryRN.ParamByName('iAno').asinteger:=iAno;
    qryRN.Open;

    if qryRN.RecordCount=0 then
    begin
        ShowMessage('Competencia nao possui Senhas/Periodos duplicados');
        abort;
    end;

    iCompetencia:=InttoStr(frmProdutividade.dbProdMesCompetencia.value)+'/'+IntToStr(frmProdutividade.dbProdAnoCompetencia.value);
    frmMenu.rvBBAuditoria.SetParam('Competencia',iCompetencia);

    frmMenu.rvBBAuditoria.SetParam('Titulo','Produtividade - Senha/Internação/Periodo');

    frmMenu.rvBBAuditoria.SelectReport('relProdRN',true);
    frmMenu.rvBBAuditoria.Execute;

end;

procedure TfrmProdutividade.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAuditorDataFim.IsNull;
end;

procedure TfrmProdutividade.cmdFiltroClick(Sender: TObject);
begin
    if not cmdFiltro.Down then
    begin
        dbAuditor.Filtered:=false;
        dbAuditor.Refresh;
        dbEnfermeiro.Filtered:=false;
        dbEnfermeiro.Refresh;
    end
    else
    begin
        dbAuditor.Filtered:=true;
        dbAuditor.Refresh;
        dbEnfermeiro.Filtered:=true;
        dbEnfermeiro.Refresh;
    end;
    dbProdM.Refresh;

end;

procedure TfrmProdutividade.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbEnfermeiroDataFim.IsNull;
end;

procedure TfrmProdutividade.dbProdMAfterEdit(DataSet: TDataSet);
begin
if dbProdM.Tag=0 then
    if cmdFiltro.Down=false then
        ShowMessage('O Filtro de Médicos/Enfermeiro inativos está desligado');

end;

procedure TfrmProdutividade.N8CalculodeVisitas1Click(Sender: TObject);
begin
  if frmProdVisita=nil then
      Application.CreateForm(TfrmProdVisita, frmProdVisita);
   frmProdVisita.ShowModal;
end;

procedure TfrmProdutividade.CCalculodeProntoAtendimentoAMB1Click(
  Sender: TObject);
begin
  if frmProdPS=nil then
      Application.CreateForm(TfrmProdPS, frmProdPS);
   frmProdPS.ShowModal;
end;

procedure TfrmProdutividade.dbProdCliAfterInsert(DataSet: TDataSet);
begin
    dbProdCliProdutividade.value:=dbProdProdutividade.value;
    dbProdCliFechamento.value:='A';
    dbProdCliDataInclusao.value:=date;
    dbProdCliUsuario.value:=iUsuario;
    dbProdCliCliente.value:=0;
end;

procedure TfrmProdutividade.dbProdCliBeforePost(DataSet: TDataSet);
begin
    if dbProdCliCliente.value=0 then
    begin
        ShowMessage('Cliente inválido');
        abort;
    end;    
end;

procedure TfrmProdutividade.cmdNovoCClick(Sender: TObject);
begin
    dbProdCli.Insert;
    grdProdCli.SetFocus;
end;

procedure TfrmProdutividade.cmdExcluiCClick(Sender: TObject);
var iResultado:integer;
begin
    if dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade fechada. Impossivel excluir');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a exclusão','Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then
        abort;
    dbProdCli.Delete;
end;

procedure TfrmProdutividade.cmdGravaCClick(Sender: TObject);
begin
    dbProdCli.Post;
end;

procedure TfrmProdutividade.dsProdCliStateChange(Sender: TObject);
begin
     cmdNovoC.Enabled:=dbProdCli.State in [dsBrowse];
     cmdExcluiC.Enabled:=(dbProdCli.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProdCli.RecordCount<>0);
     cmdGravaC.Enabled:=dbProdCli.State in [dsEdit,dsInsert];

end;

procedure TfrmProdutividade.cmbCliCloseUp(Sender: TObject);
begin
    dbProdM.Refresh;
end;

procedure TfrmProdutividade.chkCliClick(Sender: TObject);
begin
    if chkCli.Checked then
        cmbCli.Visible:=false
    else
        cmbCli.Visible:=true;
    dbProdM.Refresh;
end;

procedure TfrmProdutividade.cmbCliClick(Sender: TObject);
begin
    dbProdM.Refresh;
end;

procedure TfrmProdutividade.BAlteraoMedicoEnfermeiroResponsavel1Click(
  Sender: TObject);
begin
    if frmProdutividade.dbProdStatus.value='F' then
    begin
        ShowMessage('Produtividade Fechada');
        abort;
    end;

    if frmProdsAlteraME=nil then
        Application.CreateForm(TfrmProdsAlteraME, frmProdsAlteraME);
    frmProdsAlteraME.ShowModal;
end;

procedure TfrmProdutividade.dbProdCliFechamentoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProdCliFechamento.value='A' then
        text:='Aberto';
    if dbProdCliFechamento.value='F' then
        text:='Fechado';

end;

procedure TfrmProdutividade.dbProdCliFechamentoSetText(Sender: TField;
  const Text: String);
begin
    if text='Aberto' then
        dbProdCliFechamento.value:='A';
    if text='Fechado' then
        dbProdCliFechamento.value:='F';

end;

procedure TfrmProdutividade.dbProdCliCalcFields(DataSet: TDataSet);
begin
    dbProdCliLancamento.value:='Fechado';
end;

procedure TfrmProdutividade.grdProdCliDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProdCliFechamento.Value='F' then
        grdProdCli.Canvas.Font.Color:=clRed;
     grdProdCli.DefaultDrawDataCell(Rect,grdProdCli.Columns[DataCol].field,State);

end;

procedure TfrmProdutividade.relExcelClick(Sender: TObject);
begin
    if frmRelProdutividade=nil then
      Application.CreateForm(TfrmRelProdutividade, frmRelProdutividade);
    frmRelProdutividade.ShowModal;
end;

end.




