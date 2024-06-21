unit frmPreAnalises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Variants,
  Grids, DBGrids, CheckLst, ToolWin, ImgList, DateUtils, Math ;

type
  TfrmPreAnalise = class(TForm)
    dsProcesso: TDataSource;
    pagHospital: TPageControl;
    tabProntuario: TTabSheet;
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
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dsAuditor: TDataSource;
    dsDiagnostico: TDataSource;
    dsItemDiagnostico: TDataSource;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    TabSheet1: TTabSheet;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dsEnfermeiro: TDataSource;
    dbClienteCapeante: TBooleanField;
    Label36: TLabel;
    DBText18: TDBText;
    qryDiagnosticoBusca: TMSQuery;
    qryDiagnosticoBuscaAtendimentoH: TIntegerField;
    qryDiagnosticoBuscaPaciente: TIntegerField;
    qryDiagnosticoBuscaItem: TIntegerField;
    qryDiagnosticoBuscaDataAuditoria: TDateField;
    qryDiagnosticoBuscaDiagnostico: TIntegerField;
    dbProcessoPS: TMSTable;
    dsAtendimentoPS: TDataSource;
    dsItemPS: TDataSource;
    dbItemPS: TMSTable;
    dbProcessoPSCliente: TIntegerField;
    dbProcessoPSHospital: TIntegerField;
    dbProcessoPSMedico: TIntegerField;
    dbProcessoPSEnfermeiro: TIntegerField;
    dbProcessoPSMesCompetencia: TIntegerField;
    dbProcessoPSAnoCompetencia: TIntegerField;
    dbProcessoPSQtdAtendimento: TIntegerField;
    dbProcessoPSValor: TCurrencyField;
    dbProcessoPSValorGlosado: TCurrencyField;
    dbProcessoPSUsuario: TStringField;
    dbProcessoPSObservacao: TMemoField;
    dbProcessoPSValorPago: TCurrencyField;
    dbProcessoPSAtendimentoPS: TIntegerField;
    dbGlosaI: TMSTable;
    dbGlosaIGlosaI: TStringField;
    dbGlosaINome: TStringField;
    dbGlosaIResponsavel: TStringField;
    dsGlosaI: TDataSource;
    dbGlosaPS: TMSTable;
    dbGlosaPSGlosa1: TSmallintField;
    dbGlosaPSGlosa2: TSmallintField;
    dbGlosaPSDescricao: TStringField;
    dsGlosaPS: TDataSource;
    dbItemPSAtendimentoPS: TIntegerField;
    dbItemPSValorGlosadoM: TCurrencyField;
    dbItemPSValorGlosadoE: TCurrencyField;
    dbItemPSUsuario: TStringField;
    dbItemPSObservacao: TStringField;
    dbItemPSDescricao: TStringField;
    dbItemPSGlosa1: TSmallintField;
    dbItemPSGlosa2: TSmallintField;
    dsItem: TDataSource;
    dbProcessoPSClienteNome: TStringField;
    dbProcessoPSHospitalNome: TStringField;
    dbProcessoPSMedicoNome: TStringField;
    dbProcessoPSEnfermeiroNome: TStringField;
    dbProcessoPSTipo: TStringField;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteCor1: TStringField;
    dbClienteDiagnostico1: TBooleanField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteCor2: TStringField;
    dbClienteDiagnostico2: TBooleanField;
    dbClienteMaximoCobrado3: TCurrencyField;
    dbClienteCor3: TStringField;
    dbClienteDiagnostico3: TBooleanField;
    dbClienteMaximoCobrado: TCurrencyField;
    dbProcessoPSPosAnalise: TBooleanField;
    dbProcessoPSValorNaoAcordado: TCurrencyField;
    dbItemPSTipo: TStringField;
    dbItemPSTipoNome: TStringField;
    CoolBar3: TCoolBar;
    txtBuscaPS: TEdit;
    cmpDataPS: TDateTimePicker;
    lblLocClientePS: TDBLookupComboBox;
    lblLocHospitalPS: TDBLookupComboBox;
    lblLocMedicoPS: TDBLookupComboBox;
    lblLocEnfermeiroPS: TDBLookupComboBox;
    tabOrdemProcessoPS: TTabControl;
    grdPS: TDBGrid;
    pnlFicha1: TPanel;
    Label40: TLabel;
    grdGlosa: TDBGrid;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    tabPS: TTabControl;
    Panel5: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBText3: TDBText;
    DBText10: TDBText;
    Label30: TLabel;
    Label35: TLabel;
    DBText11: TDBText;
    DBText13: TDBText;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBText17: TDBText;
    DBText19: TDBText;
    Label39: TLabel;
    Label41: TLabel;
    DBText14: TDBText;
    Label42: TLabel;
    DBText15: TDBText;
    lblTipo: TLabel;
    Label25: TLabel;
    DBText27: TDBText;
    cmpClientePS: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    cmdTotalPS: TBitBtn;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Panel8: TPanel;
    Label43: TLabel;
    DBText20: TDBText;
    DBCheckBox6: TDBCheckBox;
    DBEdit9: TDBEdit;
    dbAMB: TMSTable;
    dbAMBCodAMB: TIntegerField;
    dbAMBDescricaoAMB: TStringField;
    dsAMB: TDataSource;
    Panel9: TPanel;
    Label56: TLabel;
    DBText12: TDBText;
    dbItemPSUsuarioI: TStringField;
    qryDiagnosticoBuscaPrincipal: TBooleanField;
    Label58: TLabel;
    DBText29: TDBText;
    dbProcessoPSUsuarioI: TStringField;
    dbRemessa: TMSTable;
    dbRemessaRemessa: TIntegerField;
    dbRemessaCliente: TIntegerField;
    dbRemessaUsuario: TStringField;
    dbRemessaUsuarioFechamento: TStringField;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dsServico: TDataSource;
    dsProd: TDataSource;
    dbServicoVinculado: TStringField;
    Panel21: TPanel;
    Panel22: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    BitBtn11: TBitBtn;
    Panel23: TPanel;
    Panel24: TPanel;
    cmdAnteriorP: TBitBtn;
    cmdProximoP: TBitBtn;
    cmdNovoPS: TBitBtn;
    cmdAlteraPS: TBitBtn;
    cmdGravaPS: TBitBtn;
    cmdCancelaPS: TBitBtn;
    cmdExcluiPS: TBitBtn;
    cmdFicha1: TSpeedButton;
    cmdLista1: TSpeedButton;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    dbProcessoPSDataFechamento: TDateTimeField;
    dbProcessoPSDataInclusao: TDateTimeField;
    dbProcessoPSDataAlteracao: TDateTimeField;
    dbItemPSDataInclusao: TDateTimeField;
    dbItemPSDataAlteracao: TDateTimeField;
    dbProcessoPSSequencial: TIntegerField;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbClienteDiarias: TSmallintField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TSmallintField;
    dbClienteCorDiariaUTI: TStringField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbRemessaDataGeracao: TDateTimeField;
    dbRemessaDataEnvio: TDateTimeField;
    dbRemessaHoraEnvio: TDateTimeField;
    dbRemessaDataFechamento: TDateTimeField;
    dbProcesso: TMSQuery;
    dbProcessoCliente: TIntegerField;
    dbProcessoSequencial: TIntegerField;
    dbProcessoIDPaciente: TStringField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoHospital: TIntegerField;
    dbProcessoMedico: TIntegerField;
    dbProcessoEnfermeiro: TIntegerField;
    dbProcessoDataFechamento: TDateTimeField;
    dbProcessoMesCompetencia: TSmallintField;
    dbProcessoAnoCompetencia: TSmallintField;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoDiasUTI: TFloatField;
    dbProcessoDiarias: TFloatField;
    dbProcessoDiariasGlosadas: TFloatField;
    dbProcessoDiariasCalculadas: TSmallintField;
    dbProcessoValor: TCurrencyField;
    dbProcessoValorGlosadoM: TCurrencyField;
    dbProcessoValorGlosadoE: TCurrencyField;
    dbProcessoObservacao: TMemoField;
    dbProcessoComplemento: TBooleanField;
    dbProcessoParcial: TWordField;
    dbProcessoNumeroParcial: TSmallintField;
    dbProcessoDataInicioP: TDateTimeField;
    dbProcessoDayClinic: TBooleanField;
    dbProcessoIntercambio: TBooleanField;
    dbProcessoPosAnalise: TBooleanField;
    dbProcessoValorNaoAcordadoM: TCurrencyField;
    dbProcessoValorNaoAcordadoE: TCurrencyField;
    dbProcessoPacote: TBooleanField;
    dbProcessoMedicoACRM: TIntegerField;
    dbProcessoConclusao: TStringField;
    dbProcessoInternacao: TStringField;
    dbProcessoTratamento: TStringField;
    dbProcessoApto: TFloatField;
    dbProcessoEnfermaria: TFloatField;
    dbProcessoSemi: TFloatField;
    dbProcessoBercario: TFloatField;
    dbProcessoDayClinicQtd: TFloatField;
    dbProcessoIsolamento: TFloatField;
    dbProcessoCodAmb: TIntegerField;
    dbProcessoQtdAmb: TSmallintField;
    dbProcessoExtraAmb: TBooleanField;
    dbProcessoSenha: TStringField;
    dbProcessoCodAmb1: TIntegerField;
    dbProcessoQtdAmb1: TSmallintField;
    dbProcessoExtraAmb1: TBooleanField;
    dbProcessoSenha1: TStringField;
    dbProcessoRetorno: TIntegerField;
    dbProcessoRemessa: TIntegerField;
    dbProcessoVisita: TWordField;
    dbProcessoValorPago: TCurrencyField;
    dbProcessoObitoGravida: TStringField;
    dbProcessoQtdRNVivo: TSmallintField;
    dbProcessoQtdRNMorto: TSmallintField;
    dbProcessoQtdRNPrematuro: TSmallintField;
    dbProcessoAcidente: TStringField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoUsuario: TStringField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoUsuarioSite: TStringField;
    dbProcessoDataSite: TDateTimeField;
    dbProcessoDataFimP: TDateTimeField;
    dbProcessoMedicoA: TStringField;
    dbProcessoMedicoAEspec: TStringField;
    dbProcessoGemelar: TWordField;
    dbProcessoDataAmb1: TDateTimeField;
    dbProcessoDataAmb2: TDateTimeField;
    dbProcessoDataAmb3: TDateTimeField;
    dbProcessoPAmb1: TFloatField;
    dbProcessoPAmb2: TFloatField;
    dbProcessoPAmb3: TFloatField;
    dbProcessoCodAmb3: TIntegerField;
    dbProcessoResponsavelH: TStringField;
    dbProcessoRN: TStringField;
    dbProcessoPExcedente: TWordField;
    dbProcessoPAberto: TWordField;
    dbProcessoPAbertoMotivo: TStringField;
    dbProcessoServico: TStringField;
    dbProcessoProdutividade: TIntegerField;
    dbProcessoPacienteNome: TStringField;
    dbProcessoHospitalNome: TStringField;
    dbProcessoClienteNome: TStringField;
    dbProcessoValorMaximo: TCurrencyField;
    dbProcessoMedicoNome: TStringField;
    dbProcessoEnfermeiroNome: TStringField;
    dbProcessoDiariasPagas: TFloatField;
    dbProcessoDescricaoAMB: TStringField;
    dbProcessoDescricaoAmb1: TStringField;
    dbProcessoDescricaoAmb3: TStringField;
    dbProcessoServicoTexto: TStringField;
    dbPaciente: TMSQuery;
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
    dbPacienteAnoNascimento: TSmallintField;
    dbPacienteDataNascimento: TDateTimeField;
    dbPacienteCliente: TIntegerField;
    dbPacienteIDPaciente: TStringField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateTimeField;
    dbPacienteSexo: TStringField;
    dbProcessoBusca: TMSQuery;
    dbProcessoBuscaCliente: TIntegerField;
    dbProcessoBuscaPaciente: TIntegerField;
    dbProcessoBuscaHospital: TIntegerField;
    dbProcessoBuscaMedico: TIntegerField;
    dbProcessoBuscaEnfermeiro: TIntegerField;
    dbProcessoBuscaMesCompetencia: TSmallintField;
    dbProcessoBuscaAnoCompetencia: TSmallintField;
    dbProcessoBuscaValor: TCurrencyField;
    dbProcessoBuscaValorGlosadoM: TCurrencyField;
    dbProcessoBuscaValorGlosadoE: TCurrencyField;
    dbProcessoBuscaComplemento: TBooleanField;
    dbProcessoBuscaNumeroParcial: TSmallintField;
    dbProcessoBuscaUsuario: TStringField;
    dbProcessoBuscaObservacao: TMemoField;
    dbProcessoBuscaDiasUTI: TFloatField;
    dbProcessoBuscaDiarias: TFloatField;
    dbProcessoBuscaDiariasGlosadas: TFloatField;
    dbProcessoBuscaDayClinic: TBooleanField;
    dbProcessoBuscaIntercambio: TBooleanField;
    dbProcessoBuscaParcial: TWordField;
    dbProcessoBuscaDataFechamento: TDateTimeField;
    dbProcessoBuscaDataInternacao: TDateTimeField;
    dbProcessoBuscaDataAlta: TDateTimeField;
    dbPacienteBusca: TMSQuery;
    dbPacienteBuscaPaciente: TIntegerField;
    dbPacienteBuscaNome: TStringField;
    dbPacienteBuscaIDPaciente: TStringField;
    dbDiagnostico: TMSQuery;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoCodCid: TStringField;
    dbDiagnosticoNome: TStringField;
    dbProd: TMSQuery;
    dbProdAnoCompetencia: TSmallintField;
    dbProdMesCompetencia: TSmallintField;
    dbProdProdutividade: TIntegerField;
    dbProdDataInclusao: TDateTimeField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dbProcessoValorNaoAcordado: TCurrencyField;
    dbProcessoDataExclusao: TDateTimeField;
    tabOrdemProcesso: TTabControl;
    tabCompetencia: TTabControl;
    pnlFicha: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    DBText4: TDBText;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label26: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label81: TLabel;
    Label85: TLabel;
    DBText38: TDBText;
    cmpCliente: TDBLookupComboBox;
    cmpHospital: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    cmpAno: TDBEdit;
    cmpMedico: TDBLookupComboBox;
    cmpEnfermeiro: TDBLookupComboBox;
    chkCab: TCheckBox;
    cmpCapeante: TDBEdit;
    cmpMes: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit44: TDBEdit;
    cmpServico: TDBLookupComboBox;
    Panel4: TPanel;
    Panel12: TPanel;
    Label7: TLabel;
    lblPacienteAtivo: TLabel;
    Panel13: TPanel;
    Label83: TLabel;
    lblPaciente: TEdit;
    DBEdit43: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Panel14: TPanel;
    Label27: TLabel;
    DBText2: TDBText;
    Label63: TLabel;
    DBText32: TDBText;
    Label60: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label78: TLabel;
    DBText36: TDBText;
    Label80: TLabel;
    Label82: TLabel;
    DBEdit21: TDBEdit;
    DBEdit18: TDBEdit;
    DBCheckBox9: TDBCheckBox;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    DBEdit5: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    Panel15: TPanel;
    Label3: TLabel;
    Label20: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    Label44: TLabel;
    Label71: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    chkDayClinic: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    chkPacote: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBComboBox3: TDBComboBox;
    DBCheckBox8: TDBCheckBox;
    DBComboBox2: TDBComboBox;
    DBComboBox1: TDBComboBox;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label75: TLabel;
    DBEdit13: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit27: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    DBComboBox4: TDBComboBox;
    DBEdit39: TDBEdit;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBComboBox6: TDBComboBox;
    Panel16: TPanel;
    Label64: TLabel;
    Panel17: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    DBText21: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label23: TLabel;
    DBText22: TDBText;
    Label32: TLabel;
    Label12: TLabel;
    Label59: TLabel;
    Label31: TLabel;
    DBText7: TDBText;
    Label33: TLabel;
    DBText16: TDBText;
    Label24: TLabel;
    DBText24: TDBText;
    DBText30: TDBText;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    cmdCalc: TBitBtn;
    pagEstat: TPageControl;
    TabSheet4: TTabSheet;
    grdItem: TDBGrid;
    TabSheet5: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    cmpDiariaDC: TDBEdit;
    DBEdit28: TDBEdit;
    TabSheet7: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    DBEdit12: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBComboBox5: TDBComboBox;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet8: TTabSheet;
    Label10: TLabel;
    DBText5: TDBText;
    Label57: TLabel;
    DBText28: TDBText;
    Label73: TLabel;
    DBText34: TDBText;
    Panel10: TPanel;
    Label54: TLabel;
    DBText46: TDBText;
    Panel3: TPanel;
    Label55: TLabel;
    DBText6: TDBText;
    Panel11: TPanel;
    Label61: TLabel;
    DBText31: TDBText;
    Panel18: TPanel;
    Label67: TLabel;
    DBText33: TDBText;
    Panel19: TPanel;
    Label74: TLabel;
    DBText35: TDBText;
    Panel20: TPanel;
    Label86: TLabel;
    DBText37: TDBText;
    Panel7: TPanel;
    cmdGravaD: TBitBtn;
    cmdExcluiD: TBitBtn;
    cmdNovoD: TBitBtn;
    cmdPrincipalD: TBitBtn;
    Panel2: TPanel;
    Label18: TLabel;
    DBText23: TDBText;
    grdDiagnostico: TDBGrid;
    grdProcesso: TDBGrid;
    CoolBar1: TCoolBar;
    lblLocCodigo: TEdit;
    cmpData: TDateTimePicker;
    lblLocEnfermeiro: TDBLookupComboBox;
    lblLocCliente: TDBLookupComboBox;
    lblLocPaciente: TDBLookupComboBox;
    lblLocHospital: TDBLookupComboBox;
    lblLocMedico: TDBLookupComboBox;
    Panel25: TPanel;
    cmpAnoC: TEdit;
    UpDown2: TUpDown;
    tabPaciente: TTabControl;
    grdPaciente: TDBGrid;
    Panel26: TPanel;
    cmdNovoP: TBitBtn;
    cmdAlteraP: TBitBtn;
    cmdGravaP: TBitBtn;
    dbItem: TMSQuery;
    dbItemCliente: TIntegerField;
    dbItemTipo: TStringField;
    dbItemGlosaI: TStringField;
    dbItemValor: TCurrencyField;
    dbItemValorApresentado: TCurrencyField;
    dbItemResponsavel: TStringField;
    dbItemNome: TStringField;
    dbItemTipoNome: TStringField;
    BitBtn2: TBitBtn;
    Label19: TLabel;
    dbProcessoServicoC: TStringField;
    dbProcessoServicoCTexto: TStringField;
    DBText40: TDBText;
    DBText39: TDBText;
    cmdFiltro: TCheckBox;
    dbEscala: TMSTable;
    dbEscalaCliente: TIntegerField;
    dbEscalaHospital: TIntegerField;
    dbEscalaTipo: TStringField;
    dbEscalaServico: TStringField;
    dbEscalaAuditor: TIntegerField;
    dbEscalaClienteID: TStringField;
    dsEscala: TDataSource;
    dbProdCli: TMSTable;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dsProdCli: TDataSource;
    dbDiagnosticoC: TMSQuery;
    dbDiagnosticoCDiagnostico: TIntegerField;
    dbDiagnosticoCCodCid: TStringField;
    dbDiagnosticoCNome: TStringField;
    dbItemDiagnostico: TMSQuery;
    dbItemDiagnosticoCliente: TIntegerField;
    dbItemDiagnosticoDiagnostico: TIntegerField;
    dbItemDiagnosticoAtendimentoHC: TIntegerField;
    dbItemDiagnosticoItem: TIntegerField;
    dbItemDiagnosticoDataAuditoria: TDateTimeField;
    dbItemDiagnosticoPrincipal: TBooleanField;
    dbItemDiagnosticoCodCid: TStringField;
    dbItemDiagnosticoGrupocid: TStringField;
    dbItemDiagnosticoDiagnosticoTexto: TStringField;
    dbItemDiagnosticoPrincipalTexto: TStringField;
    dbItemDiagnosticoCodCid1: TStringField;
    dbProcessoComplementoF: TBooleanField;
    DBCheckBox13: TDBCheckBox;
    BitBtn10: TBitBtn;
    dbHI: TMSQuery;
    dbI: TMSQuery;
    IntegerField16: TIntegerField;
    StringField29: TStringField;
    IntegerField17: TIntegerField;
    StringField30: TStringField;
    CurrencyField9: TCurrencyField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    CurrencyField10: TCurrencyField;
    dbD: TMSQuery;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    StringField34: TStringField;
    IntegerField22: TIntegerField;
    BooleanField9: TBooleanField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    DateTimeField13: TDateTimeField;
    dsHI: TDataSource;
    dbProcessoAtendimentoHI: TLargeintField;
    dbProcessoBuscaAtendimentoHI: TLargeintField;
    dbItemAtendimentoHI: TLargeintField;
    dbItemDiagnosticoAtendimentoHI: TLargeintField;
    dbProcessoAtendimentoHIO: TLargeintField;
    TabSheet2: TTabSheet;
    Label62: TLabel;
    dbProcessoNABradesco: TStringField;
    dbAMBBradesco: TBooleanField;
    rdgPacoteS: TDBRadioGroup;
    dbProcessoBradesco: TBooleanField;
    dbItemDiagBusca: TMSQuery;
    dbItemDiagBuscaCliente: TIntegerField;
    dbItemDiagBuscaAtendimentoHI: TLargeintField;
    dbItemDiagBuscaDiagnostico: TIntegerField;
    dbItemDiagBuscaAtendimentoHC: TIntegerField;
    dbItemDiagBuscaItem: TIntegerField;
    dbItemDiagBuscaDataAuditoria: TDateTimeField;
    dbItemDiagBuscaPrincipal: TBooleanField;
    dbItemDiagBuscaCodCid: TStringField;
    qryCalc: TMSQuery;
    qryCalcValor: TCurrencyField;
    qryCalcValorA: TCurrencyField;
    qryCalcTipo: TStringField;
    qryCalcResponsavel: TStringField;
    rdgPacoteN: TDBRadioGroup;
    Label87: TLabel;
    DBText41: TDBText;
    DBText42: TDBText;
    dbProcessoNABradescoTexto: TStringField;
    dbProcessoDiariasLonga: TIntegerField;
    DBText43: TDBText;
    Label88: TLabel;
    dbExcel: TMSQuery;
    dbExcelDSDesigner1: TStringField;
    dbExcelDSDesigner2: TStringField;
    dbExcelDSDesigner3: TStringField;
    dbExcelDSDesigner4: TStringField;
    dbExcelDSDesigner5: TStringField;
    dbExcelDSDesigner6: TStringField;
    dbExcelDSDesigner7: TStringField;
    dbExcelDSDesigner8: TStringField;
    dbExcelDSDesigner9: TStringField;
    dbExcelDSDesigner10: TStringField;
    dbExcelDSDesigner11: TStringField;
    dbExcelDSDesigner12: TStringField;
    dbExcelDSDesigner13: TStringField;
    dbExcelDSDesigner14: TStringField;
    dbExcelDSDesigner15: TStringField;
    dbExcelDSDesigner16: TStringField;
    dbExcelDSDesigner17: TStringField;
    dbExcelDSDesigner18: TStringField;
    dbExcelDSDesigner19: TStringField;
    dbExcelDSDesigner20: TStringField;
    dbExcelDSDesigner21: TStringField;
    dbExcelDSDesigner22: TStringField;
    dbExcelDSDesigner23: TStringField;
    dbExcelDSDesigner24: TStringField;
    dbExcelDSDesigner25: TStringField;
    dbExcelDSDesigner26: TStringField;
    dbExcelDSDesigner27: TStringField;
    dbExcelDSDesigner28: TStringField;
    dbExcelDSDesigner29: TStringField;
    dbExcelDSDesigner30: TStringField;
    dbExcelDSDesigner31: TStringField;
    dbExcelDSDesigner32: TStringField;
    dbExcelDSDesigner33: TStringField;
    dbExcelDSDesigner34: TStringField;
    dbExcelDSDesigner35: TStringField;
    dbExcelDSDesigner36: TStringField;
    dbExcelDSDesigner37: TStringField;
    dbExcelDSDesigner38: TStringField;
    dbExcelDSDesigner39: TStringField;
    dbExcelDSDesigner40: TStringField;
    dbExcelDSDesigner41: TStringField;
    dbExcelDSDesigner42: TStringField;
    dbExcelDSDesigner43: TStringField;
    dbExcelDSDesigner44: TStringField;
    dbExcelDSDesigner45: TStringField;
    dbExcelDSDesigner46: TStringField;
    dbExcelDSDesigner47: TStringField;
    dbExcelDSDesigner48: TStringField;
    dbExcelDSDesigner49: TStringField;
    dbExcelDSDesigner50: TStringField;
    dbExcelDSDesigner51: TStringField;
    dbExcelDSDesigner52: TStringField;
    dbExcelDSDesigner53: TStringField;
    dbExcelDSDesigner54: TStringField;
    dbExcelDSDesigner55: TStringField;
    dbExcelDSDesigner56: TStringField;
    dbExcelDSDesigner57: TStringField;
    dbExcelDSDesigner58: TStringField;
    dbExcelDSDesigner59: TStringField;
    dbExcelDSDesigner60: TStringField;
    dbExcelDSDesigner61: TStringField;
    dbExcelDSDesigner62: TStringField;
    dbExcelDSDesigner63: TStringField;
    dbExcelDSDesigner64: TStringField;
    dbExcelDSDesigner65: TStringField;
    dbExcelDSDesigner66: TStringField;
    dbExcelDSDesigner67: TStringField;
    dbExcelDSDesigner68: TStringField;
    dbExcelDSDesigner69: TStringField;
    dbExcelDSDesigner70: TStringField;
    dbExcelDSDesigner71: TStringField;
    dbExcelDSDesigner72: TStringField;
    dbExcelDSDesigner73: TStringField;
    dbExcelDSDesigner74: TStringField;
    dbExcelDSDesigner75: TStringField;
    dbExcelDSDesigner76: TStringField;
    dbExcelDSDesigner77: TStringField;
    dbExcelDSDesigner78: TStringField;
    dbExcelDSDesigner79: TStringField;
    dbExcelDSDesigner80: TStringField;
    dbExcelDSDesigner81: TStringField;
    dbExcelDSDesigner82: TStringField;
    dbExcelDSDesigner83: TStringField;
    dbExcelDSDesigner84: TStringField;
    dbExcelDSDesigner85: TStringField;
    dbExcelDSDesigner86: TStringField;
    dbExcelDSDesigner87: TStringField;
    dbExcelDSDesigner88: TStringField;
    dbExcelDSDesigner89: TStringField;
    dbExcelDSDesigner90: TStringField;
    dbExcelDSDesigner91: TStringField;
    dbExcelDSDesigner92: TStringField;
    dbExcelDSDesigner93: TStringField;
    dbExcelDSDesigner94: TStringField;
    dbExcelDSDesigner95: TStringField;
    dbExcelDSDesigner96: TStringField;
    dbExcelDSDesigner97: TStringField;
    dbExcelDSDesigner98: TStringField;
    dbExcelDSDesigner99: TStringField;
    dbExcelDSDesigner100: TStringField;
    dbExcelDSDesigner101: TStringField;
    dbExcelDSDesigner102: TStringField;
    dbExcelDSDesigner103: TStringField;
    dbExcelDSDesigner104: TStringField;
    dbExcelDSDesigner105: TStringField;
    dbExcelDSDesigner106: TStringField;
    dbExcelDSDesigner107: TStringField;
    dbExcelDSDesigner108: TStringField;
    dbExcelDSDesigner109: TStringField;
    dbExcelDSDesigner110: TStringField;
    dbExcelDSDesigner111: TStringField;
    dbExcelDSDesigner112: TStringField;
    dbExcelDSDesigner113: TStringField;
    dbExcelDSDesigner114: TStringField;
    dbExcelDSDesigner115: TStringField;
    dbExcelDSDesigner116: TStringField;
    dbExcelDSDesigner117: TStringField;
    dbExcelDSDesigner118: TStringField;
    dbExcelDSDesigner119: TStringField;
    dbExcelDSDesigner120: TStringField;
    dbExcelDSDesigner121: TStringField;
    dbExcelDSDesigner122: TStringField;
    dbExcelDSDesigner123: TStringField;
    dbExcelDSDesigner124: TStringField;
    dbExcelDSDesigner125: TStringField;
    dbExcelDSDesigner126: TStringField;
    dbExcelDSDesigner127: TStringField;
    dbExcelDSDesigner128: TStringField;
    dbExcelDSDesigner129: TStringField;
    dbExcelDSDesigner130: TStringField;
    dbExcelDSDesigner131: TStringField;
    dbExcelDSDesigner132: TStringField;
    dbExcelDSDesigner133: TStringField;
    dbExcelDSDesigner134: TStringField;
    dbExcelDSDesigner135: TStringField;
    dbExcelDSDesigner136: TStringField;
    dbExcelDSDesigner137: TStringField;
    dbExcelDSDesigner138: TStringField;
    dbExcelDSDesigner139: TStringField;
    dbExcelDSDesigner140: TStringField;
    dbExcelDSDesigner141: TStringField;
    dbExcelDSDesigner142: TStringField;
    dbExcelDSDesigner143: TStringField;
    dbHICliente: TIntegerField;
    dbHIAtendimentoHI: TLargeintField;
    dbHISequencial: TIntegerField;
    dbHIIDPaciente: TStringField;
    dbHIPaciente: TIntegerField;
    dbHIHospital: TIntegerField;
    dbHIMedico: TIntegerField;
    dbHIEnfermeiro: TIntegerField;
    dbHIDataFechamento: TDateTimeField;
    dbHIMesCompetencia: TSmallintField;
    dbHIAnoCompetencia: TSmallintField;
    dbHIDataInternacao: TDateTimeField;
    dbHIDataAlta: TDateTimeField;
    dbHIDiasUTI: TFloatField;
    dbHIDiarias: TFloatField;
    dbHIDiariasGlosadas: TFloatField;
    dbHIDiariasCalculadas: TIntegerField;
    dbHIValor: TCurrencyField;
    dbHIValorGlosadoM: TCurrencyField;
    dbHIValorGlosadoE: TCurrencyField;
    dbHIObservacao: TMemoField;
    dbHIComplemento: TBooleanField;
    dbHIComplementoF: TBooleanField;
    dbHIParcial: TWordField;
    dbHINumeroParcial: TSmallintField;
    dbHIDataInicioP: TDateTimeField;
    dbHIDayClinic: TBooleanField;
    dbHIIntercambio: TBooleanField;
    dbHIPosAnalise: TBooleanField;
    dbHIValorNaoAcordadoM: TCurrencyField;
    dbHIValorNaoAcordadoE: TCurrencyField;
    dbHIPacote: TBooleanField;
    dbHIMedicoACRM: TIntegerField;
    dbHIConclusao: TStringField;
    dbHIInternacao: TStringField;
    dbHITratamento: TStringField;
    dbHIApto: TFloatField;
    dbHIEnfermaria: TFloatField;
    dbHISemi: TFloatField;
    dbHIBercario: TFloatField;
    dbHIDayClinicQtd: TFloatField;
    dbHIIsolamento: TFloatField;
    dbHICodAmb: TIntegerField;
    dbHIQtdAmb: TSmallintField;
    dbHIExtraAmb: TBooleanField;
    dbHISenha: TStringField;
    dbHICodAmb1: TIntegerField;
    dbHIQtdAmb1: TSmallintField;
    dbHIExtraAmb1: TBooleanField;
    dbHISenha1: TStringField;
    dbHIRetorno: TIntegerField;
    dbHIRemessa: TIntegerField;
    dbHIVisita: TWordField;
    dbHIValorPago: TCurrencyField;
    dbHIObitoGravida: TStringField;
    dbHIQtdRNVivo: TSmallintField;
    dbHIQtdRNMorto: TSmallintField;
    dbHIQtdRNPrematuro: TSmallintField;
    dbHIAcidente: TStringField;
    dbHIUsuarioI: TStringField;
    dbHIDataInclusao: TDateTimeField;
    dbHIDataExclusao: TDateTimeField;
    dbHIUsuario: TStringField;
    dbHIDataAlteracao: TDateTimeField;
    dbHIUsuarioSite: TStringField;
    dbHIDataSite: TDateTimeField;
    dbHIDataFimP: TDateTimeField;
    dbHIMedicoA: TStringField;
    dbHIMedicoAEspec: TStringField;
    dbHIAtendimentoHIO: TLargeintField;
    dbHIGemelar: TWordField;
    dbHIDataAmb1: TDateTimeField;
    dbHIDataAmb2: TDateTimeField;
    dbHIDataAmb3: TDateTimeField;
    dbHIPAmb1: TFloatField;
    dbHIPAmb2: TFloatField;
    dbHIPAmb3: TFloatField;
    dbHICodAmb3: TIntegerField;
    dbHIResponsavelH: TStringField;
    dbHIRN: TStringField;
    dbHIPExcedente: TWordField;
    dbHIPAberto: TWordField;
    dbHIPAbertoMotivo: TStringField;
    dbHIServico: TStringField;
    dbHIServicoC: TStringField;
    dbHIProdutividade: TIntegerField;
    dbHINABradesco: TStringField;
    dbHIDiariasLonga: TIntegerField;
    Panel27: TPanel;
    Label89: TLabel;
    DBText44: TDBText;
    dbProcessoPSRetorno: TIntegerField;
    Label90: TLabel;
    DBText45: TDBText;
    dbProcessoPSDataRetorno: TDateTimeField;
    BitBtn6: TBitBtn;
    BitBtn12: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure dbProcessoAfterPost(DataSet: TDataSet);
    procedure dbProcessoAfterInsert(DataSet: TDataSet);
    procedure dbProcessoBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cmdNovoDClick(Sender: TObject);
    procedure cmdGravaDClick(Sender: TObject);
    procedure cmdExcluiDClick(Sender: TObject);
    procedure cmdCancelaDClick(Sender: TObject);
    procedure dsItemDiagnosticoStateChange(Sender: TObject);
    procedure dbPacienteBeforeInsert(DataSet: TDataSet);
    procedure dbPacienteBeforePost(DataSet: TDataSet);
    procedure dbPacienteAfterInsert(DataSet: TDataSet);
    procedure lblLocPacienteCloseUp(Sender: TObject);
    procedure cmpDataCloseUp(Sender: TObject);
    procedure lblLocClienteCloseUp(Sender: TObject);
    procedure lblLocHospitalCloseUp(Sender: TObject);
    procedure dbItemDiagnosticoAfterPost(DataSet: TDataSet);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure cmdAnteriorPClick(Sender: TObject);
    procedure cmdProximoPClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure lblPacienteChange(Sender: TObject);
    procedure cmdNovoPClick(Sender: TObject);
    procedure dbProcessoCalcFields(DataSet: TDataSet);
    procedure cmpClienteExit(Sender: TObject);
    procedure dbProcessoAfterCancel(DataSet: TDataSet);
    procedure grdPacienteCellClick(Column: TColumn);
    procedure lblPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbItemDiagnosticoAfterInsert(DataSet: TDataSet);
    procedure dbProcessoBeforeScroll(DataSet: TDataSet);
    procedure cmdNovoPSClick(Sender: TObject);
    procedure cmdAlteraPSClick(Sender: TObject);
    procedure cmdGravaPSClick(Sender: TObject);
    procedure cmdCancelaPSClick(Sender: TObject);
    procedure cmdExcluiPSClick(Sender: TObject);
    procedure dsAtendimentoPSStateChange(Sender: TObject);
    procedure dbItemPSAfterInsert(DataSet: TDataSet);
    procedure dbProcessoPSCalcFields(DataSet: TDataSet);
    procedure dbItemPSAfterPost(DataSet: TDataSet);
    procedure dbItemPSBeforeDelete(DataSet: TDataSet);
    procedure dbItemPSAfterDelete(DataSet: TDataSet);
    procedure dbItemPSBeforePost(DataSet: TDataSet);
    procedure dbItemPSBeforeEdit(DataSet: TDataSet);
    procedure cmdTotalPSClick(Sender: TObject);
    procedure dbProcessoPSBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoPSAfterInsert(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure dbProcessoPSBeforePost(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbItemAfterInsert(DataSet: TDataSet);
    procedure dbItemAfterPost(DataSet: TDataSet);
    procedure dbItemAfterDelete(DataSet: TDataSet);
    procedure dbItemBeforeDelete(DataSet: TDataSet);
    procedure dbItemBeforeEdit(DataSet: TDataSet);
    procedure dbItemBeforePost(DataSet: TDataSet);
    procedure cmdCalcClick(Sender: TObject);
    procedure rdgOrdemProcessoPSClick(Sender: TObject);
    procedure lblLocEnfermeiroCloseUp(Sender: TObject);
    procedure lblLocMedicoCloseUp(Sender: TObject);
    procedure tabOrdemProcessoPSChange(Sender: TObject);
    procedure txtBuscaPSChange(Sender: TObject);
    procedure cmpDataPSCloseUp(Sender: TObject);
    procedure lblLocClientePSCloseUp(Sender: TObject);
    procedure lblLocHospitalPSCloseUp(Sender: TObject);
    procedure lblLocMedicoPSCloseUp(Sender: TObject);
    procedure lblLocEnfermeiroPSCloseUp(Sender: TObject);
    procedure lblLocClientePSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocHospitalPSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocMedicoPSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocEnfermeiroPSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmpDataPSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabOrdemProcessoChange(Sender: TObject);
    procedure lblLocCodigoChange(Sender: TObject);
    procedure cmpDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocEnfermeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocHospitalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblLocMedicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsAtendimentoPSDataChange(Sender: TObject; Field: TField);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbClienteCalcFields(DataSet: TDataSet);
    procedure cmdCalcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkCabClick(Sender: TObject);
    procedure dbItemCalcFields(DataSet: TDataSet);
    procedure grdItemDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdItemDblClick(Sender: TObject);
    procedure dbItemPSCalcFields(DataSet: TDataSet);
    procedure grdGlosaDblClick(Sender: TObject);
    procedure grdGlosaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbPacienteBeforeDelete(DataSet: TDataSet);
    procedure BitBtn11Click(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure cmdFicha1Click(Sender: TObject);
    procedure cmdLista1Click(Sender: TObject);
    procedure lblLocClienteClick(Sender: TObject);
    procedure lblLocEnfermeiroClick(Sender: TObject);
    procedure lblLocHospitalClick(Sender: TObject);
    procedure lblLocPacienteClick(Sender: TObject);
    procedure lblLocMedicoClick(Sender: TObject);
    procedure lblLocClientePSClick(Sender: TObject);
    procedure lblLocEnfermeiroPSClick(Sender: TObject);
    procedure lblLocHospitalPSClick(Sender: TObject);
    procedure lblLocMedicoPSClick(Sender: TObject);
    procedure dbProcessoBeforeEdit(DataSet: TDataSet);
    procedure dbProcessoPSBeforeEdit(DataSet: TDataSet);
    procedure dbProcessoConclusaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProcessoConclusaoSetText(Sender: TField;
      const Text: String);
    procedure dbProcessoInternacaoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProcessoInternacaoSetText(Sender: TField;
      const Text: String);
    procedure dbProcessoTratamentoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProcessoTratamentoSetText(Sender: TField;
      const Text: String);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure cmpDiariaDCExit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure Label27Click(Sender: TObject);
    procedure Label27MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit21MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grdPacienteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grdTerceiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdDiagnosticoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbItemDiagnosticoCalcFields(DataSet: TDataSet);
    procedure cmdPrincipalDClick(Sender: TObject);
    procedure dbItemDiagnosticoBeforeInsert(DataSet: TDataSet);
    procedure dbItemDiagnosticoBeforePost(DataSet: TDataSet);
    procedure dbProcessoDataInternacaoChange(Sender: TField);
    procedure dbProcessoDataAltaChange(Sender: TField);
    procedure dbProcessoBeforeDelete(DataSet: TDataSet);
    procedure dbItemDiagnosticoBeforeDelete(DataSet: TDataSet);
    procedure Label19MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure cmdAlteraPClick(Sender: TObject);
    procedure chkDayClinicClick(Sender: TObject);
    procedure dbProcessoAcidenteGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProcessoAcidenteSetText(Sender: TField;
      const Text: String);
    procedure dbProcessoObitoGravidaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbProcessoObitoGravidaSetText(Sender: TField;
      const Text: String);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbEnfermeiroFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbProcessoPAbertoMotivoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbProcessoPAbertoMotivoSetText(Sender: TField;
      const Text: String);
    procedure chkPacoteExit(Sender: TObject);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tabCompetenciaChange(Sender: TObject);
    procedure dbPacienteAfterPost(DataSet: TDataSet);
    procedure tabPacienteChange(Sender: TObject);
    procedure dbProcessoAfterScroll(DataSet: TDataSet);
    procedure dbProcessoAfterOpen(DataSet: TDataSet);
    procedure dsPacienteStateChange(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure dbProcessoAfterEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure cmdFiltroClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure dbProcessoCodAmbChange(Sender: TField);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreAnalise: TfrmPreAnalise;
  iUltimoProcesso,iAtendHProd:int64;
  iUltimoPaciente,iDias:integer;
  iCliente,iHospital,iAuditor,iEnfermeiro,iMesC,iAnoC:integer;
  iFechamento:TDate;
  iValor,iValorGlosa,iValorGlosaM,iValorGlosaE: Currency;
  iValorNA,iValorNAM,iValorNAE: Currency;
  iQtdDiag:integer;
  iCliProd,iStatus:integer;
implementation

uses frmPrincipal, frmComplementos, frmCadastros;

{$R *.DFM}


procedure TfrmPreAnalise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if dbItemDiagnostico.State in [dsInsert,dsEdit] then
        dbItemDiagnostico.Post;
    dbItem.First;
    if (dbItemDiagnostico.RecordCount=0) and
       (dbProcessoValorPago.Value>=dbProcessoValorMaximo.Value) and
       (dbProcessoValorPago.Value>0) and
       (grdProcesso.Tag=0)  then
    begin
        ShowMessage('Valor Pago exige cadastro de Diagnósticos');
    end;

{    if not dbItemDiagBusca.Locate('Cliente;AtendimentoHI',VarArrayof([dbProcessoCliente.value,dbProcessoAtendimentoHI.value]),[]) and
       (dbProcessoValorPago.Value>=dbProcessoValorMaximo.Value) and
       (dbProcessoValorPago.Value>0) and
       (dbItemDiagnostico.Active=true)then
            ShowMessage('Valor Pago exige cadastro de Diagnósticos');}

     if  frmCadastro<>nil then
         frmCadastro.Tag:=0;
     
     dbProcesso.Close;
     dbItem.Close;
     dbItemDiagnostico.Close;

     dbProcessoPS.Close;
     dbItemPS.Close;

     dbPaciente.Close;
     dbPacienteBusca.Close;
     dbCliente.Close;
     dbClienteID.Close;
     dbAuditor.Close;
     dbEnfermeiro.Close;
     dbHospital.Close;
     dbDiagnostico.Close;
     dbDiagnosticoC.Close;
     dbProcessoBusca.Close;
//     dbItemDiagBusca.Close;
     dbAMB.Close;
     dbRemessa.Close;
     dbServico.Close;
     dbProd.Close;
     dbProdCli.Close;
     dbEscala.Close;

     dbGlosaI.Close;
     dbGlosaPS.Close;
end;

procedure TfrmPreAnalise.FormShow(Sender: TObject);
var d,m,a: word;
var iGlosaPacote:boolean;
begin
   Screen.Cursor := crHourGlass;
   try
     dbPacienteBusca.Open;
     dbCliente.Open;
     dbClienteID.Open;
     dbAuditor.Open;
     dbEnfermeiro.Open;
     dbHospital.Open;
     dbProcessoBusca.Open;
//   dbItemDiagBusca.Open;
     dbAMB.Open;
     dbServico.Open;
     dbProd.Open;
     dbProdCli.Open;
     dbDiagnostico.Open;
     dbDiagnosticoC.Open;
     dbPaciente.Open;           //Nome;IDPaciente
     dbEscala.Open;

     dbGlosaI.Open;
     dbGlosaPS.Open;
     dbRemessa.Open;

     cmpCapeante.Enabled:=false;
     tabOrdemProcesso.TabIndex:=0;
     iUltimoProcesso:=0;
     iCliente:=0;
     iHospital:=0;
     iAuditor:=0;
     iEnfermeiro:=0;
     DecodeDate(date,a,m,d);
     iMesC:=m;
     iAnoC:=a;
     cmpAnoC.Text:=IntToStr(a);
     iFechamento:=date;
     dbProcesso.SQL.Text:='Select * from AtendHI '+
                          'where AnoCompetencia=:Ano and MesCompetencia=:Mes '+
                          'order by AtendimentoHI,Cliente';
     dbProcesso.ParamByName('Ano').AsInteger:=iAnoC;
     dbProcesso.ParamByName('Mes').AsInteger:=iMesC;
     dbProcesso.Open;
     tabCompetencia.TabIndex:=iMesC-1;

     dbItem.Open;
     dbItemDiagnostico.Open;

     dbProcessoPS.Open;
     tabOrdemProcessoPS.TabIndex:=0;
     iValorGlosa:=0;
     dbItemPS.Open;

     lblLocCliente.KeyValue:=dbClienteCliente.value;
     lblLocEnfermeiro.KeyValue:=dbEnfermeiroEnfermeiro.Value;
     lblLocHospital.KeyValue:=dbHospitalHospital.value;
     lblLocMedico.KeyValue:=dbAuditorAuditor.value;
     lblLocPaciente.KeyValue:=dbPacientePaciente.Value;

     cmpData.Visible:=false;
     lblLocCliente.Visible:=false;
     lblLocHospital.Visible:=false;
     lblLocMedico.Visible:=false;
     lblLocEnfermeiro.Visible:=false;
     lblLocPaciente.Visible:=false;
     lblLocCodigo.Visible:=true;

     lblLocClientePS.KeyValue:=dbClienteCliente.value;
     lblLocEnfermeiroPS.KeyValue:=dbEnfermeiroEnfermeiro.Value;
     lblLocHospitalPS.KeyValue:=dbHospitalHospital.value;
     lblLocMedicoPS.KeyValue:=dbAuditorAuditor.value;

     cmpDataPS.Visible:=false;
     lblLocClientePS.Visible:=false;
     lblLocHospitalPs.Visible:=false;
     lblLocMedicoPS.Visible:=false;
     lblLocEnfermeiroPS.Visible:=false;
     txtBuscaPS.Visible:=true;

     if frmPreAnalise.tag=10 then   //busca da produtividade
     begin
        pagHospital.ActivePage:=tabProntuario;
        dbProcesso.Locate('AtendimentoHI;Cliente',VarArrayof([iAtendHProd,iCliProd]),[]);
        frmPreAnalise.Tag:=0;
     end;

   finally
     top:=0;
     pagHospital.ActivePage:=tabProntuario;
     pagEstat.ActivePageIndex:=0;
     tabPaciente.TabIndex:=0;
     frmPreAnalise.Tag:=0;
     Screen.Cursor := crDefault;
     cmdFiltroClick(sender);
     if chkCab.Checked=true then
        chkCab.Color:=clMoneyGreen
     else
        chkCab.Color:=clBtnFace;

    iGlosaPacote:=false;
    if dbItem.Active then
    if dbItem.Locate('GlosaI','PT',[]) then
        iGlosaPacote:=true;

     if (dbProcessoBradesco.value=true) and (iGlosaPacote=true) then
     begin
        rdgPacoteS.Visible:=true;
        rdgPacoteN.Visible:=false;
     end
     else
     begin
        rdgPacoteS.Visible:=false;
        rdgPacoteN.Visible:=true;
     end;


   end;
   // mascara internacao/alta - !99/99/00;1;_
end;

procedure TfrmPreAnalise.dsProcessoStateChange(Sender: TObject);
begin
     cmdNovo.Default:=dbProcesso.State in [dsBrowse];
     cmdGrava.Default:=dbProcesso.State in [dsEdit,dsInsert];

     cmdExclui.Enabled:=(dbProcesso.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProcesso.RecordCount<>0);
     cmdGrava.Enabled:=dbProcesso.State in [dsEdit,dsInsert];
     cmdAltera.Enabled:=(dbProcesso.State=dsBrowse)
                         and (dbProcesso.RecordCount<>0);
     cmdCancela.Enabled:=dbProcesso.State in [dsEdit,dsInsert];
end;

procedure TfrmPreAnalise.dbProcessoAfterPost(DataSet: TDataSet);
begin
    lblPacienteAtivo.Caption:='Paciente:['+InttoStr(dbProcessoPaciente.value)+'] - '+dbProcessoPacienteNome.value;
    if istatus=1 then
         frmMenu.Log('Estatísticas',dbProcessoCliente.value,'Capeante',dbProcessoAtendimentoHI.value,0,'','I');

     cmpCapeante.Enabled:=false;
     cmpCliente.Enabled:=false;
     cmpHospital.Enabled:=false;
     cmpMedico.Enabled:=false;
     cmpEnfermeiro.Enabled:=false;
     cmpMes.Enabled:=false;
     cmpAno.Enabled:=false;
     cmpServico.Enabled:=false;
end;

procedure TfrmPreAnalise.dbProcessoAfterInsert(DataSet: TDataSet);
begin
     dbProcesso.tag:=0;
     cmpCliente.Enabled:=true;
     cmpHospital.Enabled:=true;
     cmpMedico.Enabled:=true;
     cmpEnfermeiro.Enabled:=true;
     cmpMes.Enabled:=true;
     cmpAno.Enabled:=true;
     cmpServico.Enabled:=true;

     dbProcessoDataInclusao.Value:=date;
     dbProcessoUsuarioI.value:=iUsuario;
     dbProcessoDataInternacao.clear;
     dbProcessoDiarias.Value:=0;
     dbProcessoDiariasGlosadas.Value:=0;
     dbProcessoDiasUti.Value:=0;
     dbProcessoValor.Value:=0;
     dbProcessoValorGlosadoM.Value:=0;
     dbProcessoValorGlosadoE.Value:=0;
     dbProcessoValorNaoAcordadoM.Value:=0;
     dbProcessoValorNaoAcordadoE.Value:=0;
     dbProcessoApto.Value:=0;
     dbProcessoEnfermaria.Value:=0;
     dbProcessoSemi.Value:=0;
     dbProcessoBercario.Value:=0;
     dbProcessoDayClinicQtd.Value:=0;
     dbProcessoIsolamento.Value:=0;
     dbProcessoComplemento.value:=false;
     dbProcessoComplementoF.value:=false;
     dbProcessoDayClinic.value:=false;
     dbProcessoIntercambio.value:=false;
     dbProcessoPosAnalise.value:=false;
     dbProcessoParcial.value:=0;
     dbProcessoPacote.value:=false;
     dbProcessoVisita.value:=0;
     dbProcessoRemessa.Value:=0;
     dbProcessoProdutividade.value:=0;
     dbProcessoServico.value:='';
     dbProcessoPExcedente.value:=0;
     dbProcessoPAberto.value:=0;
     dbProcessoNABradesco.value:='N'; //nenhum

     dbProcessoCliente.Value:=iCliente;
     dbProcessoHospital.Value:=iHospital;
     dbProcessoMedico.Value:=iAuditor;
     dbProcessoEnfermeiro.Value:=iEnfermeiro;
     dbProcessoMesCompetencia.Value:=iMesC;
     dbProcessoAnoCompetencia.Value:=iAnoC;
     if chkCab.Checked=true then
         dbProcessoDataFechamento.Value:=iFechamento
     else
         dbProcessoDataFechamento.clear;

     dbProcessoObitoGravida.value:='';
     dbProcessoQtdRNVivo.value:=0;
     dbProcessoQtdRNMorto.value:=0;
     dbProcessoQtdRNPrematuro.value:=0;

     dbProcessoExtraAmb.Value:=false;
     dbProcessoExtraAmb1.value:=false;
     dbProcessoGemelar.value:=0;
     dbProcessoRN.value:='N';

     if chkCab.Checked=true then
        cmpClienteExit(DataSet);
end;

procedure TfrmPreAnalise.dbProcessoBeforeInsert(DataSet: TDataSet);
var a,m,d:word;
begin
    if cmdFiltro.Checked=false then
        ShowMessage('O Filtro de Médicos/Enfermeiro inativos está desligado');

    cmdFichaClick(DataSet);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;

    iCliente:=0;
    iHospital:=0;
    iAuditor:=0;
    iEnfermeiro:=0;

    DecodeDate(date,a,m,d);
    iMesC:=m;
    iAnoC:=a;
    if chkCab.Checked=true then
    begin
         iCliente:=dbProcessoCliente.Value;
         iHospital:=dbProcessoHospital.Value;
//       iAuditor:=dbProcessoMedico.Value;
//       iEnfermeiro:=dbProcessoEnfermeiro.Value;
         iMesC:=dbProcessoMesCompetencia.Value;
         iAnoC:=dbProcessoAnoCompetencia.Value;
         iFechamento:=dbProcessoDataFechamento.Value;
    end;
end;

procedure TfrmPreAnalise.dbProcessoBeforePost(DataSet: TDataSet);
var idiarias:variant;
var ivalorpago:currency;
begin
    if iUsuario='MANUT' then
    begin
        ShowMessage('Usuario Manutenção. Alteração aceita sem nenhuma validação efetuada');
        dbProcessoUsuario.Value:=iUsuario;
        dbProcessoDataAlteracao.value:=date;
    end
    else
    begin

        if dbProcesso.tag=1 then  //atualização vinda da glosa nao valida estatistica
            dbProcesso.tag:=0
        else
        begin
            dbProcessoUsuario.Value:=iUsuario;
            dbProcessoDataAlteracao.value:=date;

            if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
            begin
                ShowMessage('Capeante remetido ao cliente e fechado. Impossível alterar');
                dbProcesso.Cancel;
                abort;
            end;

            if dbProcessoAtendimentoHI.Value<=0 then
            begin
                ShowMessage('Código Capeante inválido');
                abort;
            end;

     if (dbProcesso.State=dsInsert) and
        (dbProcessoAtendimentoHI.Value>iUltimoProcesso+1) and
        (dbClienteCapeante.Value=false) then
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

     if dbProcessoServico.Value='' then
     begin
        ShowMessage('Serviço inválido');
        abort;
     end;

     if dbProcessoPaciente.Value=0 then
     begin
        ShowMessage('Paciente inválido');
        abort;
     end;

     if (dbProcessoDataInternacao.IsNull) and
        (dbProcessoComplemento.Value=false) then
     begin
        ShowMessage('Data Internação inválida. Valido somente como complemento');
        abort;
     end;

     if (dbProcessoMesCompetencia.Value<1) or
        (dbProcessoMesCompetencia.Value>12) then
     begin
        ShowMessage('Meses de Competência validos: de 1 a 12');
        abort;
     end;

     if (dbProcessoDataAlta.IsNull) and
        (dbProcessoComplemento.Value=false) then
     begin
        ShowMessage('Data da Alta inválida. Valido somente como complemento');
        abort;
     end;

     if (dbProcessoPAberto.value=1) and
        ((dbProcessoPAbertoMotivo.value='') or (dbProcessoPAbertoMotivo.value=' ')) then
     begin
        ShowMessage('Selecione um motivo para Pacote Aberto');
        abort;
     end;

     if (dbProcessoDiarias.value>1) and
        (dbProcessoDayClinic.Value=true) then
     begin
        ShowMessage('DayClinic deve ter apenas 1 Diária');
        abort;
     end;

     if dbProcessoValorPago.Value<0 then
     begin
        ShowMessage('Valor pago inválido');
        abort;
     end;

     if dbProcessoValor.Value< dbProcessoValorNaoAcordado.Value then
     begin
        ShowMessage('Valor não acordado maior que valor original da conta');
        abort;
     end;

     if dbProcessoObitoGravida.value<>'' then
     begin
        if dbPacienteSexo.value<>'F' then
        begin
            ShowMessage('Sexo inválido para Óbito grávida');
            abort;
        end;
        if dbProcessoConclusao.value<>'O' then
        begin
            ShowMessage('Conclusão deve ser [Obito] para Òbito Grávida');
            abort;
        end;
        if (dbProcessoQtdRNMorto.value+dbProcessoQtdRNVivo.value+dbProcessoQtdRNPrematuro.value)<=0 then
        begin
            ShowMessage('Para obito grávida, informe o tipo de RN');
            abort;
        end;
     end;

     if (dbProcessoParcial.value=0) and (not dbProcessoDataInicioP.IsNull) then
     begin
        ShowMessage('Data de Inicio de Parcial inválida ou indicação de Parcial faltante');
        abort;
     end;

     if (dbProcessoParcial.value=1) and (dbProcessoDataInicioP.IsNull) then
     begin
        ShowMessage('Informe a data de Inicio da Parcial');
        abort;
     end;

     if (dbProcessoDataFimP.value<dbProcessoDataInicioP.value) and
        (not dbProcessoDataFimP.isnull) then
     begin
        ShowMessage('Data Final de Parcial menor que inicial');
        abort;
     end;

     if (dbProcessoDiarias.value<dbProcessoDiariasCalculadas.value) then
        ShowMessage('Diarias Calculadas maiores que Diarias totais. Verifique');

     if (dbProcessoGemelar.value>9) then
         ShowMessage('Quantidade de gemeos inválida');

     if (dbProcessoPAmb1.value>100) then
         ShowMessage('% Honorarios Médicos da 1a.AMB inválida');

     if (dbProcessoPAmb2.value>100) then
         ShowMessage('% Honorarios Médicos da 2a.AMB inválida');

     if (dbProcessoPAmb3.value>100) then
         ShowMessage('% Honorarios Médicos da 3a.AMB inválida');

     if (dbProcessoMedico.value=0) then
     begin
        dbProcessoMedico.value:=0;
        ShowMessage('Médico não cadastrado. Verifique');
     end;

     if (dbProcessoEnfermeiro.value=0) then
     begin
        dbProcessoEnfermeiro.value:=0;
        ShowMessage('Enfermeiro não cadastrado. Verifique');
     end;

     if (dbProcessoParcial.value=0) and (dbProcessoServico.value<>'P') then
         ShowMessage('Servico sugerido [P]-Pré Análise');

     if (dbProcessoComplemento.value=true) and (dbProcessoServico.value<>'CO') then
        ShowMessage('Servico sugerido [CO]-Complemento')
     else
        if dbProcessoParcial.value<>0 then
        begin
            if (dbProcessoDataInternacao.Value=dbProcessoDataInicioP.value) then
            begin
                if (dbProcessoServico.value<>'PP1') then
                    ShowMessage('Servico sugerido [PP1]-Pre Parcial 1a.');
            end
            else
            begin
                if (dbProcessoDayClinic.value=true) and (dbProcessoServico.value<>'DAY') then
                    ShowMessage('Servico sugerido [DAY]-Day Clinic')
                else
                    if dbProcessoServico.value<>'PPD' then
                        ShowMessage('Servico sugerido [PPD]-Pre Parcial Demais');
            end;
        end;

     if dbProcessoServico.value='PNP' then
        ShowMessage('Servico selecionado [PNP]- Parcial não paga. Verifique.');

     if (not dbProcessoDataAlta.IsNull) and
        (dbProcessoDataExclusao.IsNull) then
        dbProcessoDataExclusao.Value:=date;

     if (dbProcessoDataAlta.IsNull) and
        (not dbProcessoDataExclusao.IsNull) then
        dbProcessoDataExclusao.Clear;

     if dbProcessoPAberto.value=0 then
        dbProcessoPAbertoMotivo.value:='';

     if dbProcessoCliente.value=28 then //Bradesco
     begin
        if (dbProcessoBradesco.value=true) and (dbProcessoNABradesco.value='N') then
        begin
            ShowMessage('Procedimento não auditável Bradesco. Necessita Justificativa');
            pagEstat.ActivePageIndex:=5;
            abort;
        end;
     end
     else
        dbProcessoNABradesco.value:='N';


        if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoAnoCompetencia.value,
                                                                     dbProcessoMesCompetencia.value]),[]) then
        begin
            if dbProdStatus.value='F' then
            begin
                ShowMessage('Atenção! Produtividade fechada para esta competencia');
                if not iMaster then abort;
            end
            else
            begin
                if dbProdCli.Locate('Cliente',dbProcessoCliente.value,[]) then
                begin
                    ShowMessage('Atenção! Produtividade fechada para este Cliente/Competencia');
                    if not iMaster then abort;
                end;
            end;
        end;

        dbProcessoBusca.sql.Clear;
        dbProcessoBusca.sql.text:='Select * from AtendHI '+
                                  'where AtendimentoHI=:iAtend and '+
                                  '      Cliente=:iCli and '+
                                  '      Sequencial<>:iSeq ';
        dbProcessoBusca.ParamByName('iAtend').Value:=dbProcessoAtendimentoHI.Value;
        dbProcessoBusca.ParamByName('iCli').Value:=dbProcessoCliente.Value;
        dbProcessoBusca.ParamByName('iSeq').Value:=dbProcessoSequencial.Value;
        dbProcessoBusca.Open;

        if (dbProcessoBusca.RecordCount>0) then
        begin
            ShowMessage('Capeante já cadastrado');
            abort;
        end;

     dbProcessoBusca.sql.Clear;
     dbProcessoBusca.sql.text:='Select * from AtendHI '+
                               'where Paciente=:iPac and '+
                               '      DataInternacao=:iInt and  '+
                               '      DataAlta=:iAlta   '+
                               'order by Paciente,DataInternacao,DataAlta,AtendimentoHI';
     dbProcessoBusca.ParamByName('iPac').Value:=dbProcessoPaciente.Value;
     dbProcessoBusca.ParamByName('iInt').Value:=dbProcessoDataInternacao.Value;
     dbProcessoBusca.ParamByName('iAlta').Value:=dbProcessoDataAlta.Value;
     dbProcessoBusca.Open;
     dbProcessoBusca.First;
     while (dbProcessoBuscaPaciente.Value=dbProcessoPaciente.Value) and
           (dbProcessoBuscaDataInternacao.Value=dbProcessoDataInternacao.Value) and
           (dbProcessoBuscaDataAlta.Value=dbProcessoDataAlta.Value) and
           (not dbProcessoBusca.eof)do
     begin
        if (dbProcessoAtendimentoHI.Value<>dbProcessoBuscaAtendimentoHI.Value) and
           (dbProcessoComplemento.Value=false) {and (dbProcessoServico.value<>'P')} then     //solicitado Danieli
        begin                                                                                //retirado Eulalia 23/09/2016
             ShowMessage('Paciente/Periodo ja cadastrado. Informação so pode ser cadastrada como complemento');
             abort;
        end
        else dbProcessoBusca.Next;
     end;

     dbProcessoBusca.sql.Clear;
     dbProcessoBusca.sql.text:='Select * from AtendHI '+
                               'where Paciente=:iPac and '+
                               '      Cliente=:iCli and  '+
                               '      Hospital=:iHosp and  '+
                               '      AtendimentoHI=:iAtend   '+
                               'order by Cliente,Hospital,Paciente,AtendimentoHI';
     dbProcessoBusca.ParamByName('iAtend').Value:=dbProcessoAtendimentoHI.Value;
     dbProcessoBusca.ParamByName('iCli').Value:=dbProcessoCliente.Value;
     dbProcessoBusca.ParamByName('iHosp').Value:=dbProcessoHospital.Value;
     dbProcessoBusca.ParamByName('iPac').Value:=dbProcessoPaciente.Value;
     dbProcessoBusca.Open;
     dbProcessoBusca.First;
     while (dbProcessoBuscaCliente.Value=dbProcessoCliente.Value) and
           (dbProcessoBuscaHospital.Value=dbProcessoHospital.Value) and
           (dbProcessoBuscaPaciente.Value=dbProcessoPaciente.Value) and
           (not dbProcessoBusca.eof)do
     begin
        if (dbProcessoAtendimentoHI.Value<>dbProcessoBuscaAtendimentoHI.Value) and
           (dbProcessoParcial.Value=0) then
        begin
             ShowMessage('Cliente/Hospital/Paciente ja cadastrado. Verifique se não se trata de parcial');
             break;
        end
        else dbProcessoBusca.Next;
     end;
     end;
//**** Calc

    iValorGlosaM:=0;
    iValorGlosaE:=0;
    iValorNAM:=0;
    iValorNAE:=0;
    iValor:=0;

    qryCalc.SQL.Text:='SELECT Tipo, Responsavel, sum(Valor) as Valor, sum(ValorApresentado) as ValorA '+
                       'FROM AtendHIGlosa '+
                       'inner join GlosaI on AtendHIGlosa.GlosaI=GlosaI.GlosaI '+
                       'where Cliente=:xCliente and AtendimentoHI=:xAtendHI '+
                       'group by Tipo, Responsavel ';
    qryCalc.ParamByName('xCliente').Value:=dbProcessoCliente.value;
    qryCalc.ParamByName('xAtendHI').Value:=dbProcessoAtendimentoHI.value;
    qryCalc.Open;
    qryCalc.First;

    while not qryCalc.eof do
    begin
        iValor:=iVAlor+qryCalcValorA.value;
        if qryCalcResponsavel.value='M' then
        begin
            if qryCalcTipo.value='G' then
                iValorGlosaM:=iValorGlosaM+qryCalcValor.Value;
            if qryCalcTipo.value='N' then
                iValorNAM:=iValorNAM+qryCalcValor.Value;
        end;
        if qryCalcResponsavel.value='E' then
        begin
            if qryCalcTipo.value='G' then
                iValorGlosaE:=iValorGlosaE+qryCalcValor.Value;
            if qryCalcTipo.value='N' then
                iValorNAE:=iValorNAE+qryCalcValor.Value;
        end;
        qryCalc.Next;
    end;
    idiarias:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                             dbProcessoSemi.value+dbProcessoDiasUTI.value+
                             dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                             dbProcessoBercario.value;

    ivalorpago:=ivalor-iValorGlosaM-ivalorGlosaE;

    dbProcessoValorGlosadoM.Value:=iValorGlosaM;
    dbProcessoValorGlosadoE.Value:=iValorGlosaE;
    dbProcessoValorNaoAcordadoM.Value:=iValorNAM;
    dbProcessoValorNaoAcordadoE.Value:=iValorNAE;
    dbProcessoDiarias.value:=idiarias;
    dbProcessoValor.value:=iValor;
    dbProcessoValorPago.Value:=ivalorpago;

//****
     dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                dbProcessoValorGlosadoM.Value-
                                dbProcessoValorGlosadoE.Value;
     dbProcessoRemessa.value:=0;
     dbProcessoServicoC.value:=dbProcessoServico.value;
//*** Diarias Longa
    if (not dbProcessoDataInicioP.IsNull) and (not dbProcessoDataFimP.isnull) then
        dbProcessoDiariasLonga.value:=trunc(dbProcessoDataFimP.value)-trunc(dbProcessoDataInicioP.value)
    else
        if (not dbProcessoDataInicioP.IsNull) and (dbProcessoDataFimP.isnull) then
            dbProcessoDiariasLonga.value:=trunc(dbProcessoDataAlta.value)-trunc(dbProcessoDataInicioP.value)
        else
            dbProcessoDiariasLonga.value:=dbProcessoDiarias.asinteger;
//*****
    if (dbProcesso.State=dsInsert) then
        istatus:=1
    else istatus:=2;

end;
end;

procedure TfrmPreAnalise.FormCreate(Sender: TObject);
begin
    cmpData.date:=date;
    cmpDataPS.date:=date;
    pagHospital.ActivePage:=tabProntuario;
end;

procedure TfrmPreAnalise.cmdNovoDClick(Sender: TObject);
begin
    dbItemDiagnostico.Insert;
    grdDiagnostico.SetFocus;
end;

procedure TfrmPreAnalise.cmdGravaDClick(Sender: TObject);
begin
    dbItemDiagnostico.Post;
end;

procedure TfrmPreAnalise.cmdExcluiDClick(Sender: TObject);
begin
    dbItemDiagnostico.Delete;
end;

procedure TfrmPreAnalise.cmdCancelaDClick(Sender: TObject);
begin
    dbItemDiagnostico.Cancel;
end;

procedure TfrmPreAnalise.dsItemDiagnosticoStateChange(Sender: TObject);
begin
     cmdNovoD.Enabled:=dbItemDiagnostico.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiD.Enabled:=(dbItemDiagnostico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbItemDiagnostico.RecordCount<>0);
     cmdGravaD.Enabled:=dbItemDiagnostico.State in [dsEdit,dsInsert];
end;

procedure TfrmPreAnalise.dbPacienteBeforeInsert(DataSet: TDataSet);
begin
    dbCodigo.Open;
    dbCodigo.Refresh;
    dbCodigo.Locate('Campo','Paciente',[]);
    iUltimoPaciente:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
    dbCodigo.Close;
end;

procedure TfrmPreAnalise.dbPacienteBeforePost(DataSet: TDataSet);
var dia,mes,ano:word;
begin
     if dbPacientePaciente.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;
     if dbPacienteNome.Value='' then
     begin
        ShowMessage('Nome inválido');
        abort;
     end;
     if (dbPacienteSexo.Value<>'F') and (dbPacienteSexo.value<>'M') then
     begin
        ShowMessage('Sexo inválido');
        abort;
     end;
     if (dbPaciente.State in [dsInsert]) then
     begin
        dbPacienteBusca.sql.Clear;
        dbPacienteBusca.sql.text:='Select * from Pacientes '+
                                  'where Nome=:iNome and '+
                                  '      IDPaciente=:iID ';
        dbPacienteBusca.ParamByName('iNome').Value:=dbPacienteNome.Value;
        dbPacienteBusca.ParamByName('iID').Value:=dbPacienteIDPaciente.Value;
        dbPacienteBusca.Open;
        if dbPacienteBusca.RecordCount>0 then
        begin
            ShowMessage('Nome já cadastrado para este cliente.');
            abort;
        end;
     end;
     if dbPacienteCliente.value<>dbProcessoCliente.value then
     begin
        ShowMessage('Paciente cadastrado não se refere ao Cliente do Capeante. Verifique');
        abort;
     end;
     dbPacienteUsuario.Value:=iUsuario;
end;

procedure TfrmPreAnalise.dbPacienteAfterInsert(DataSet: TDataSet);
begin
   dbPacienteIdPaciente.Value:=dbClienteIDID.value;
   dbPacienteDataNascimento.clear;
   dbPacientePaciente.Value:=iUltimoPaciente+1;
   dbPacienteDataInclusao.Value:=date;
   dbPacienteCliente.value:=dbProcessoCliente.value;
end;

procedure TfrmPreAnalise.lblLocPacienteCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Paciente',lblLocPaciente.KeyValue,[]);
end;

procedure TfrmPreAnalise.cmpDataCloseUp(Sender: TObject);
begin
     case tabOrdemProcesso.TabIndex of
     4: dbProcesso.Locate('DataInternacao',cmpData.date,[]);
     5: dbProcesso.Locate('DataAlta',cmpData.date,[]);
     6: dbProcesso.Locate('DataFechamento',cmpData.date,[]);
     end;
end;

procedure TfrmPreAnalise.lblLocClienteCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Cliente',lblLocCliente.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocHospitalCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Hospital',lblLocHospital.KeyValue,[]);
end;

procedure TfrmPreAnalise.dbItemDiagnosticoAfterPost(DataSet: TDataSet);
begin
    if istatus=1 then
        frmMenu.Log('Estatísticas',dbItemDiagnosticoCliente.value,'Capeante-Diagnostico',
                                   dbItemDiagnosticoAtendimentoHI.value,
                                   dbItemDiagnosticoDiagnostico.value,'','I');

     dbProcesso.Edit;
     dbProcessoRemessa.value:=0;
     dbProcesso.Post;
end;

procedure TfrmPreAnalise.cmdNovoClick(Sender: TObject);
begin
    dbProcesso.Insert;
    if chkCab.Checked=true then
        cmpMedico.SetFocus
    else
        cmpCliente.SetFocus;
end;

procedure TfrmPreAnalise.cmdAlteraClick(Sender: TObject);
begin
    dbProcesso.Edit;
    grdPaciente.SetFocus;
end;

procedure TfrmPreAnalise.cmdGravaClick(Sender: TObject);
begin
    if dbProcesso.state in [dsinsert,dsedit] then
       dbProcesso.Post;
    if dbItem.state in [dsinsert,dsedit] then
       dbItem.Post;
end;

procedure TfrmPreAnalise.cmdCancelaClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme o cancelamento da Inclusão/Alteração!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
    dbProcesso.Cancel;
end;

procedure TfrmPreAnalise.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para usuários Master');
        abort;
    end;
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!'+#13+'Atenção serão exclusos também todos os itens.',
     'Aviso', mb_yesno+ mb_iconExclamation);

      if(iResultado=id_no) then abort;

     while dbItem.RecordCount>0 do
        dbItem.Delete;
     while dbItemDiagnostico.RecordCount>0 do
        dbItemDiagnostico.Delete;
     frmMenu.Log('Estatísticas',dbProcessoCliente.value,'Capeante',dbProcessoAtendimentoHI.value,0,'','E');
     dbProcesso.Delete;
end;

procedure TfrmPreAnalise.cmdAnteriorPClick(Sender: TObject);
begin
    dbProcesso.Prior;
end;

procedure TfrmPreAnalise.cmdProximoPClick(Sender: TObject);
begin
    dbProcesso.Next;
end;

procedure TfrmPreAnalise.DBEdit10Exit(Sender: TObject);
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
    if dbProcesso.State=dsInsert then
    begin
        dbProcessoDiarias.Value:=trunc(dbProcessoDataAlta.Value)-
                                 trunc(dbProcessoDataInternacao.Value);
        if dbProcessoDiarias.Value=0 then
           dbProcessoDiarias.Value:=1;
    end;

    if (dbProcessoDiarias.value>=2) and
       (dbProcessoInternacao.value='C') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
    if (dbProcessoDiarias.value>=4) and
       (dbProcessoInternacao.value='R') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
end;

procedure TfrmPreAnalise.lblPacienteChange(Sender: TObject);
begin
    case tabPaciente.TabIndex of
    0:dbPaciente.Locate('Nome',Trim(lblPaciente.text),[loCaseInsensitive,loPartialKey]);
    1:dbPaciente.Locate('CodigoPaciente',Trim(lblPaciente.text),[loCaseInsensitive,loPartialKey]);
    2:dbPaciente.Locate('Paciente',Trim(lblPaciente.text),[loCaseInsensitive,loPartialKey]);
    end;
end;

procedure TfrmPreAnalise.cmdNovoPClick(Sender: TObject);
var idata:TDate;
begin
    dbPaciente.Insert;
    grdPaciente.SetFocus;
end;

procedure TfrmPreAnalise.dbProcessoCalcFields(DataSet: TDataSet);
begin
    dbProcessoDiariasPagas.Value:=dbProcessoDiarias.Value-
                                  dbProcessoDiariasGlosadas.Value;
    dbProcessoValorNaoAcordado.Value:=dbProcessoVAlorNaoAcordadoE.Value+
                                      dbProcessoVAlorNaoAcordadoM.Value;
    dbProcessoBradesco.value:=false;
    if dbAmb.Active then
        if dbAmb.Locate('CodAMB',dbProcessoCodAmb.value,[]) then
            dbProcessoBradesco.value:=dbAmbBradesco.value;

    if dbProcessoNABradesco.value='E' then
        dbProcessoNABradescoTexto.value:='Material Excedente';
    if dbProcessoNABradesco.value='I' then
        dbProcessoNABradescoTexto.value:='Cobrança Indevida';
    if dbProcessoNABradesco.value='A' then
        dbProcessoNABradescoTexto.value:='Internação Complicada';
    if dbProcessoNABradesco.value='C' then
        dbProcessoNABradescoTexto.value:='Procedimentos combinados';
    if dbProcessoNABradesco.value='N' then
        dbProcessoNABradescoTexto.value:='Sem Justificativa';
    if dbProcessoNABradesco.value='O' then
        dbProcessoNABradescoTexto.value:='OPMR';
    if dbProcessoNABradesco.value='P' then
        dbProcessoNABradescoTexto.value:='Prorrogação';
    if dbProcessoNABradesco.value='R' then
        dbProcessoNABradescoTexto.value:='Rede Perfil';
end;

procedure TfrmPreAnalise.cmpClienteExit(Sender: TObject);
var icampo:string;
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
    if (dbProcesso.State=dsinsert) and
       (dbClienteCapeante.Value=false) then
    begin
       icampo:='CLI'+IntToStr(dbProcessoCliente.asinteger);
       dbCodigo.Open;
       dbCodigo.Refresh;
       if dbCodigo.Locate('Campo',icampo,[]) then
       begin
          iUltimoProcesso:=dbCodigoUltimo.Value+1;
          dbCodigo.Edit;
       end
       else
       begin
          dbCodigo.Insert;
          dbCodigoCampo.Value:=iCampo;
          dbCodigoUltimo.Value:=0;
          iUltimoProcesso:=1;
       end;
       dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
       dbCodigo.Post;
       dbCodigo.Close;
       dbProcessoAtendimentoHI.Value:=iUltimoProcesso;
    end
    else
    begin
       dbProcessoAtendimentoHI.Value:=0;
       cmpCapeante.Enabled:=true;
    end;
end;

procedure TfrmPreAnalise.dbProcessoAfterCancel(DataSet: TDataSet);
begin
     cmpCapeante.Enabled:=false;
     cmpCliente.Enabled:=false;
     cmpHospital.Enabled:=false;
     cmpMedico.Enabled:=false;
     cmpEnfermeiro.Enabled:=false;
     cmpMes.Enabled:=false;
     cmpAno.Enabled:=false;
     cmpServico.Enabled:=false;
end;

procedure TfrmPreAnalise.grdPacienteCellClick(Column: TColumn);
begin
    if dbProcesso.State in [dsBrowse] then
       dbProcesso.Edit;
    dbProcessoPaciente.Value:=dbPacientePaciente.Value;
end;

procedure TfrmPreAnalise.lblPacienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_F3 then
        cmdNovoPClick(Sender);
end;

procedure TfrmPreAnalise.dbItemDiagnosticoAfterInsert(DataSet: TDataSet);
begin
    dbItemDiagnosticoAtendimentoHI.Value:=dbProcessoAtendimentoHI.Value;
    dbItemDiagnosticoAtendimentoHC.Value:=0;
    if iQtdDiag=0 then
        dbItemDiagnosticoPrincipal.value:=true
    else
        dbItemDiagnosticoPrincipal.value:=false;
end;

procedure TfrmPreAnalise.dbProcessoBeforeScroll(DataSet: TDataSet);
begin
    if dbItemDiagnostico.State in [dsInsert,dsEdit] then
        dbItemDiagnostico.Post;
    dbItem.First;
    if (dbItemDiagnostico.RecordCount=0) and
       (dbProcessoValorPago.Value>=dbProcessoValorMaximo.Value) and
       (dbProcessoValorPago.Value>0) and
       (grdProcesso.Tag=0)  then
    begin
        ShowMessage('Valor Pago exige cadastro de Diagnósticos');
    end;

{    if dbItemDiagBusca.active=false then
        dbItemDiagBusca.Open;
    if not dbItemDiagBusca.Locate('Cliente;AtendimentoHI',VarArrayof([dbProcessoCliente.value,dbProcessoAtendimentoHI.value]),[]) and
       (dbProcessoValorPago.Value>=dbProcessoValorMaximo.Value) and
       (dbProcessoValorPago.Value>0) and
       (grdProcesso.Tag=0)  then
    begin
        ShowMessage('Valor Pago exige cadastro de Diagnósticos');
    end;}
end;

procedure TfrmPreAnalise.cmdNovoPSClick(Sender: TObject);
begin
    dbProcessoPS.Insert;
    cmpClientePS.SetFocus;
end;

procedure TfrmPreAnalise.cmdAlteraPSClick(Sender: TObject);
begin
    dbProcessoPS.Edit;
    grdGlosa.SetFocus;

end;

procedure TfrmPreAnalise.cmdGravaPSClick(Sender: TObject);
begin
    if dbProcessoPS.State in [dsEdit,dsInsert] then
       dbProcessoPS.Post;
    if dbItemPS.State in [dsEdit,dsInsert] then
       dbItemPS.Post;
end;

procedure TfrmPreAnalise.cmdCancelaPSClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme o cancelamento da Inclusão/Alteração!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;
    dbProcessoPS.Cancel;
end;

procedure TfrmPreAnalise.cmdExcluiPSClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!'+#13+'Atenção serão exclusos também todos os itens.',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     while not dbItemPS.Eof do
        dbItemPS.Delete;
     dbProcessoPS.Delete;

end;

procedure TfrmPreAnalise.dsAtendimentoPSStateChange(Sender: TObject);
begin
     cmdNovoPS.Default:=dbProcessoPS.State in [dsBrowse];
     cmdGravaPS.Default:=dbProcessoPS.State in [dsEdit,dsInsert];

     cmdExcluiPS.Enabled:=(dbProcessoPS.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProcessoPS.RecordCount<>0);
     cmdGravaPS.Enabled:=dbProcessoPS.State in [dsEdit,dsInsert];
     cmdAlteraPS.Enabled:=(dbProcessoPS.State=dsBrowse)
                         and (dbProcessoPS.RecordCount<>0);
     cmdCancelaPS.Enabled:=dbProcessoPS.State in [dsEdit,dsInsert];
end;

procedure TfrmPreAnalise.dbItemPSAfterInsert(DataSet: TDataSet);
begin
    dbItemPSAtendimentoPS.Value:=dbProcessoPSAtendimentoPS.Value;
    dbItemPSTipo.value:='G';
    dbItemPSGlosa1.value:=0;
    dbItemPSGlosa2.value:=0;
    dbItemPSDataInclusao.Value:=date;
    dbItemPSUsuarioI.value:=iUsuario;
    iValorGlosa:=0;
    iValorNA:=0;
end;

procedure TfrmPreAnalise.dbProcessoPSCalcFields(DataSet: TDataSet);
begin
    dbProcessoPSValorPago.Value:=dbProcessoPSValor.Value-dbProcessoPSValorGlosado.Value;
end;

procedure TfrmPreAnalise.dbItemPSAfterPost(DataSet: TDataSet);
begin
    dbProcessoPS.Edit;
    if dbItemPSTipo.Value='G' then
        dbProcessoPSValorGlosado.Value:=dbProcessoPSValorGlosado.Value-iValorGlosa+
                                    dbItemPSValorGlosadoM.Value+
                                    dbItemPSValorGlosadoE.Value;
    if dbItemPSTipo.Value='N' then
        dbProcessoPSValorNaoAcordado.Value:=dbProcessoPSValorNaoAcordado.Value-iValorNA+
                                    dbItemPSValorGlosadoM.Value+
                                    dbItemPSValorGlosadoE.Value;
    dbProcessoPS.Post;
end;

procedure TfrmPreAnalise.dbItemPSBeforeDelete(DataSet: TDataSet);
begin
    iValorGlosa:=dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
    iValorNA:=dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
end;

procedure TfrmPreAnalise.dbItemPSAfterDelete(DataSet: TDataSet);
begin
    dbProcessoPS.Edit;
    dbProcessoPSValorGlosado.Value:=dbProcessoPSValorGlosado.Value-iValorGlosa;
    dbProcessoPS.Post;
end;

procedure TfrmPreAnalise.dbItemPSBeforePost(DataSet: TDataSet);
begin
    if dbItemPSTipo.value='' then
    begin
        ShowMessage('Tipo inválido');
        abort;
    end;

    if dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value=0 then
    begin
        ShowMessage('Valor Glosado inválido');
        abort;
    end;
    dbItemPSUsuario.Value:=iUsuario;
    dbItemPSDataAlteracao.value:=date;
end;

procedure TfrmPreAnalise.dbItemPSBeforeEdit(DataSet: TDataSet);
begin
    iValorGlosa:=dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
    iValorNA:=dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
end;

procedure TfrmPreAnalise.cmdTotalPSClick(Sender: TObject);
begin
    iValorGlosa:=0;
    iValorNA:=0;
    dbItemPS.DisableControls;
    dbItemPS.First;
    while not dbItemPS.eof do
    begin
        if dbItemPSTipo.Value='G' then
            iValorGlosa:=iValorGlosa+dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
        if dbItemPSTipo.Value='N' then
            iValorNA:=iValorNA+dbItemPSValorGlosadoM.Value+dbItemPSValorGlosadoE.Value;
        dbItemPS.Next;
    end;
    dbProcessoPS.Edit;
    dbProcessoPSValorGlosado.Value:=iValorGlosa;
    dbProcessoPSVAlorNaoAcordado.Value:=iValorNA;
    dbProcessoPS.Post;
    dbItemPS.EnableControls;
end;

procedure TfrmPreAnalise.dbProcessoPSBeforeInsert(DataSet: TDataSet);
begin
    cmdFicha1Click(DataSet);
    cmdFicha1.Down:=true;
    cmdLista1.Down:=false;

    dbCodigo.Open;
    dbCodigo.Refresh;
    dbCodigo.Locate('Campo','ProntoSocorro',[]);
    iUltimoProcesso:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
    dbCodigo.Close;
end;

procedure TfrmPreAnalise.dbProcessoPSAfterInsert(DataSet: TDataSet);
begin
    dbProcessoPSAtendimentoPS.Value:=iUltimoProcesso;
    dbProcessoPSDataInclusao.Value:=date;
    dbProcessoPSUsuarioI.value:=iUsuario;
    dbProcessoPSPosAnalise.value:=false;
    dbProcessoPSRetorno.value:=0;
    if tabPS.TabIndex=0 then
       dbProcessoPSTipo.Value:='A'
    else
       dbProcessoPSTipo.Value:='P';   
end;

procedure TfrmPreAnalise.BitBtn7Click(Sender: TObject);
begin
    dbProcessoPS.Prior;
end;

procedure TfrmPreAnalise.BitBtn8Click(Sender: TObject);
begin
    dbProcessoPS.Next;
end;

procedure TfrmPreAnalise.dbProcessoPSBeforePost(DataSet: TDataSet);
begin
     dbProcessoPSUsuario.Value:=iUsuario;
     dbProcessoPSDataAlteracao.value:=date;

     if dbProcessoPS.state=dsInsert then
     begin

        if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoPSAnoCompetencia.value,
                                                                     dbProcessoPSMesCompetencia.value]),[]) then
        begin
            if dbProdStatus.value='F' then
            begin
                ShowMessage('Atenção! Produtividade fechada para esta competencia');
                if not iMaster then abort;
            end
            else
            begin
                if dbProdCli.Locate('Cliente',dbProcessoPSCliente.value,[]) then
                begin
                    ShowMessage('Atenção! Produtividade fechada para este Cliente/Competencia');
                    if not iMaster then abort;
                end;
            end;
        end;
     end;

end;

procedure TfrmPreAnalise.BitBtn5Click(Sender: TObject);
begin
    dbItemPS.Insert;
    grdGlosa.SetFocus;
end;

procedure TfrmPreAnalise.BitBtn1Click(Sender: TObject);
begin
    dbItemPS.Post;
end;

procedure TfrmPreAnalise.BitBtn3Click(Sender: TObject);
begin
    dbItemPS.Delete;
end;

procedure TfrmPreAnalise.BitBtn4Click(Sender: TObject);
begin
    dbItemDiagnostico.Cancel;
end;

procedure TfrmPreAnalise.dbItemAfterInsert(DataSet: TDataSet);
begin
    dbItemAtendimentoHI.Value:=dbProcessoAtendimentoHI.value;
    dbItemTipo.Value:='G';
    iValorGlosaM:=0;
    iValorGlosaE:=0;
    iValorNAM:=0;
    iValorNAE:=0;
    iValor:=0;
end;

procedure TfrmPreAnalise.dbItemAfterPost(DataSet: TDataSet);
begin
    if istatus=1 then
        frmMenu.Log('Estatísticas',dbItemCliente.value,'Capeante-Glosa',dbItemAtendimentoHI.value,0,dbItemGlosaI.value,'I');

{    dbProcesso.Edit;
    if dbItemResponsavel.Value='M' then
        if dbItemTipo.Value='G' then
            dbProcessoValorGlosadoM.Value:=dbProcessoValorGlosadoM.Value-iValorGlosaM+
                                           dbItemValor.Value
        else
            dbProcessoValorNaoAcordadoM.Value:=dbProcessoValorNaoAcordadoM.Value-iValorNAM+
                                               dbItemValor.Value;

    if dbItemResponsavel.Value='E' then
        if dbItemTipo.Value='G' then
            dbProcessoValorGlosadoE.Value:=dbProcessoValorGlosadoE.Value-iValorGlosaE+
                                           dbItemValor.Value
        else
            dbProcessoValorNaoAcordadoE.Value:=dbProcessoValorNaoAcordadoE.Value-iValorNAE+
                                               dbItemValor.Value;

    dbProcessoValor.value:=dbProcessoValor.value-iValor+dbItemValorApresentado.value;
    dbProcessoValorPago.Value:=dbProcessoValor.Value-
                               dbProcessoValorGlosadoM.Value-
                               dbProcessoValorGlosadoE.Value;
    dbProcesso.tag:=1;
    dbProcesso.Post;}
//    cmdCalcClick(qryCalc);
end;

procedure TfrmPreAnalise.dbItemAfterDelete(DataSet: TDataSet);
begin
{    dbProcesso.Edit;
    dbProcessoValorGlosadoM.Value:=dbProcessoValorGlosadoM.Value-iValorGlosaM;
    dbProcessoValorNaoAcordadoM.Value:=dbProcessoValorNaoAcordadoM.Value-iValorNAM;
    dbProcessoValorGlosadoE.Value:=dbProcessoValorGlosadoE.Value-iValorGlosaE;
    dbProcessoValorNaoAcordadoE.Value:=dbProcessoValorNaoAcordadoE.Value-iValorNAE;
    dbProcessoVAlor.value:=dbProcessoValor.value-iValor;
    dbProcesso.Post;}
//    cmdCalcClick(qryCalc);
end;

procedure TfrmPreAnalise.dbItemBeforeDelete(DataSet: TDataSet);
begin
    if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
    begin
        ShowMessage('Capeante remetido ao cliente e fechado. Impossível excluir');
        abort;
    end;

{    iValorGlosaM:=0;
    iValorGlosaE:=0;
    iValorNAM:=0;
    iValorNAE:=0;
    iValor:=dbItemValorApresentado.value;
    if dbItemResponsavel.value='M' then
        if dbItemTipo.Value='G' then
            iValorGlosaM:=dbItemValor.Value
        else
            iValorNAM:=dbItemValor.Value;
    if dbItemResponsavel.value='E' then
        if dbItemTipo.Value='G' then
            iValorGlosaE:=dbItemValor.Value
        else
            iValorNAE:=dbItemValor.Value;}

    frmMenu.Log('Estatísticas',dbItemCliente.value,'Capeante-Glosa',dbItemAtendimentoHI.value,0,dbItemGlosaI.value,'E');
end;

procedure TfrmPreAnalise.dbItemBeforeEdit(DataSet: TDataSet);
begin
{       iValorGlosaM:=dbProcessoValorGlosadoM.Value;
       iValorGlosaE:=dbProcessoValorGlosadoE.Value;
       iValor:=dbItemValorApresentado.value;}
end;

procedure TfrmPreAnalise.dbItemBeforePost(DataSet: TDataSet);
begin
    if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
    begin
        ShowMessage('Capeante remetido ao cliente e fechado. Impossível alterar');
        dbProcesso.Cancel;
        abort;
    end;

    if dbItemGlosaI.Value='' then
    begin
        ShowMessage('Glosa inválida');
        abort;
    end;
    if (dbItem.State=dsInsert) then
        istatus:=1
    else istatus:=2;
end;

procedure TfrmPreAnalise.cmdCalcClick(Sender: TObject);
var idiarias,ivalorpago:variant;
begin
    dbProcesso.Edit;
    dbProcesso.Post;


{    istatus:=2;
    iValorGlosaM:=0;
    iValorGlosaE:=0;
    iValorNAM:=0;
    iValorNAE:=0;
    iValor:=0;

    dbItem.First;
    while not dbItem.eof do
    begin
        if dbItemTipo.Value='G' then
        begin
            if dbItemResponsavel.Value='M' then
                iValorGlosaM:=iValorGlosaM+dbItemValor.Value;
            if dbItemResponsavel.Value='E' then
                iValorGlosaE:=iValorGlosaE+dbItemValor.Value;
        end;
        if dbItemTipo.Value='N' then
        begin
            if dbItemResponsavel.Value='M' then
                iValorNAM:=iValorNAM+dbItemValor.Value;
            if dbItemResponsavel.Value='E' then
                iValorNAE:=iValorNAE+dbItemValor.Value;
        end;
        iValor:=iVAlor+dbItemValorApresentado.value;
        dbItem.Next;
    end;
    idiarias:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                             dbProcessoSemi.value+dbProcessoDiasUTI.value+
                             dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                             dbProcessoBercario.value;

    ivalorpago:=ivalor-iValorGlosaM-ivalorGlosaE;

    dbProcesso.Edit;
    dbProcessoValorGlosadoM.Value:=iValorGlosaM;
    dbProcessoValorGlosadoE.Value:=iValorGlosaE;
    dbProcessoValorNaoAcordadoM.Value:=iValorNAM;
    dbProcessoValorNaoAcordadoE.Value:=iValorNAE;
    dbProcessoDiarias.value:=idiarias;
    dbProcessoValor.value:=iValor;
    dbProcessoValorPago.Value:=ivalorpago;
    dbProcesso.tag:=1;

    dbProcesso.Post;
    istatus:=1;}
end;

procedure TfrmPreAnalise.rdgOrdemProcessoPSClick(Sender: TObject);
begin
     case tabOrdemProcessoPS.TabIndex of
     0: dbProcessoPS.IndexFieldNames:='AtendimentoPS';
     1: dbProcessoPS.IndexFieldNames:='Cliente;DataFechamento';
     2: dbProcessoPS.IndexFieldNames:='Hospital;DataFechamento';
     3: dbProcessoPS.IndexFieldNames:='DataFechamento';
     4: dbProcessoPS.IndexFieldNames:='Enfermeiro;DataFechamento';
     5: dbProcessoPS.IndexFieldNames:='Medico;DataFechamento';
     end;
end;

procedure TfrmPreAnalise.lblLocEnfermeiroCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Enfermeiro',lblLocEnfermeiro.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocMedicoCloseUp(Sender: TObject);
begin
    dbProcesso.Locate('Medico',lblLocMedico.KeyValue,[]);
end;

procedure TfrmPreAnalise.tabOrdemProcessoPSChange(Sender: TObject);
begin
     case tabOrdemProcessoPS.TabIndex of
     0: begin
        cmpDataPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        txtBuscaPS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='AtendimentoPS';
        txtBuscaPS.SetFocus;
        end;
     1: begin
        txtBuscaPS.Visible:=false;
        cmpDataPS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        lblLocClientePS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='Cliente;DataFechamento';
        lblLocClientePS.SetFocus;
        end;
     2: begin
        txtBuscaPS.Visible:=false;
        cmpDataPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        lblLocHospitalPs.Visible:=true;
        dbProcessoPS.IndexFieldNames:='Hospital;DataFechamento';
        lblLocHospitalPS.SetFocus;
        end;
     3:begin
        txtBuscaPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        cmpDataPS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='DataFechamento';
        cmpDataPS.SetFocus;
       end;
     4:begin
        txtBuscaPS.Visible:=false;
        cmpDataPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='Enfermeiro;DataFechamento';
        lblLocEnfermeiroPS.SetFocus;
       end;
     5:begin
        txtBuscaPS.Visible:=false;
        cmpDataPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        lblLocMedicoPS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='Medico;DataFechamento';
        lblLocMedicoPS.SetFocus;
       end;
     6:begin
        cmpDataPS.Visible:=false;
        lblLocClientePS.Visible:=false;
        lblLocHospitalPs.Visible:=false;
        lblLocMedicoPS.Visible:=false;
        lblLocEnfermeiroPS.Visible:=false;
        txtBuscaPS.Visible:=true;
        dbProcessoPS.IndexFieldNames:='Retorno desc;AtendimentoPS ';
        txtBuscaPS.SetFocus;
       end;
     end;
end;

procedure TfrmPreAnalise.txtBuscaPSChange(Sender: TObject);
begin
    if txtBuscaPS.text<>'' then
        case tabOrdemProcessoPS.TabIndex of
        0: dbProcessoPS.Locate('AtendimentoPS',StrToInt(txtBuscaPS.Text),[loPartialKey]);
        6: dbProcessoPS.Locate('Retorno',StrToInt(txtBuscaPS.Text),[loPartialKey]);
        end;
end;

procedure TfrmPreAnalise.cmpDataPSCloseUp(Sender: TObject);
begin
    dbProcessoPS.Locate('DataFechamento',cmpDataPS.date,[]);
end;

procedure TfrmPreAnalise.lblLocClientePSCloseUp(Sender: TObject);
begin
    dbProcessoPS.Locate('Cliente',lblLocClientePS.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocHospitalPSCloseUp(Sender: TObject);
begin
    dbProcessoPS.Locate('Hospital',lblLocHospitalPS.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocMedicoPSCloseUp(Sender: TObject);
begin
    dbProcessoPS.Locate('Medico',lblLocMedicoPS.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocEnfermeiroPSCloseUp(Sender: TObject);
begin
    dbProcessoPS.Locate('Enfermeiro',lblLocEnfermeiroPS.KeyValue,[]);
end;

procedure TfrmPreAnalise.lblLocClientePSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocClientePSCloseUp(Sender);
        dsAtendimentoPS.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocHospitalPSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocHospitalPSCloseUp(Sender);
        dsAtendimentoPS.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocMedicoPSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocMedicoPSCloseUp(Sender);
        dsAtendimentoPS.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocEnfermeiroPSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocEnfermeiroPSCloseUp(Sender);
        dsAtendimentoPS.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.cmpDataPSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
        cmpDataPSCloseUp(Sender);
end;

procedure TfrmPreAnalise.tabOrdemProcessoChange(Sender: TObject);
begin
      lblLocCodigo.Visible:=false;
      lblLocCliente.Visible:=false;
      lblLocPaciente.Visible:=false;
      lblLocHospital.Visible:=false;
      cmpData.Visible:=false;
      lblLocEnfermeiro.Visible:=false;
      lblLocMedico.Visible:=false;

     case tabOrdemProcesso.TabIndex of
     0: begin
        lblLocCodigo.Visible:=true;
        dbProcesso.IndexFieldNames:='AtendimentoHI;Cliente';
        lblLocCodigo.SetFocus;
        end;
     1: begin
        lblLocCliente.Visible:=true;
        dbProcesso.IndexFieldNames:='Cliente;AtendimentoHI';
        lblLocCliente.SetFocus;
        end;
     2: begin
        lblLocPaciente.Visible:=true;
        dbProcesso.IndexFieldNames:='Paciente;DataInternacao;DataAlta;AtendimentoHI';
        lblLocPaciente.SetFocus;
        end;
     3: begin
        lblLocHospital.Visible:=true;
        dbProcesso.IndexFieldNames:='Hospital;DataInternacao';
        lblLocHospital.SetFocus;
        end;
     4: begin
        cmpData.Visible:=true;
        dbProcesso.IndexFieldNames:='DataInternacao;Paciente';
        cmpData.SetFocus;
        end;
     5: begin
        cmpData.Visible:=true;
        dbProcesso.IndexFieldNames:='DataAlta;Paciente';
        cmpData.SetFocus;
        end;
     6: begin
        cmpData.Visible:=true;
        dbProcesso.IndexFieldNames:='DataFechamento';
        cmpData.SetFocus;
        end;
     7: begin
        lblLocEnfermeiro.Visible:=true;
        dbProcesso.IndexFieldNames:='Enfermeiro;DataInternacao';
        lblLocEnfermeiro.SetFocus;
        end;
     8: begin
        lblLocMedico.Visible:=true;
        dbProcesso.IndexFieldNames:='Medico;DataInternacao';
        lblLocMedico.SetFocus;
        end;
     9: begin
        lblLocCodigo.Visible:=true;
        dbProcesso.IndexFieldNames:='Remessa';
        lblLocCodigo.SetFocus;
        end;
     10:begin
        lblLocCodigo.Visible:=true;
        dbProcesso.IndexFieldNames:='Senha;DataInternacao;Cliente;Hospital';
        lblLocCodigo.SetFocus;
        end;
     11:begin
        lblLocCodigo.Visible:=true;
        dbProcesso.IndexFieldNames:='Retorno;Cliente;Hospital';
        lblLocCodigo.SetFocus;
        end;
     end;
end;

procedure TfrmPreAnalise.lblLocCodigoChange(Sender: TObject);
begin
    if lblLocCodigo.Text<>'' then
    begin
        case tabOrdemProcesso.TabIndex of
        0:dbProcesso.Locate('AtendimentoHI',Trim(lblLocCodigo.Text),[loPartialKey]);
        9:dbProcesso.Locate('Remessa',Trim(lblLocCodigo.Text),[loPartialKey]);
        10:dbProcesso.Locate('Senha',Trim(lblLocCodigo.Text),[loPartialKey]);
        11:dbProcesso.Locate('Retorno',Trim(lblLocCodigo.Text),[loPartialKey]);
        end;
    end;
end;

procedure TfrmPreAnalise.cmpDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_Return then
        cmpDataCloseUp(Sender);
end;

procedure TfrmPreAnalise.lblLocEnfermeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocEnfermeiroCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;
end;

procedure TfrmPreAnalise.lblLocClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocClienteCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocPacienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocPacienteCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocHospitalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocHospitalCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.lblLocMedicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        lblLocMedicoCloseUp(Sender);
        dsProcesso.OnStateChange(sender);
    end;    
end;

procedure TfrmPreAnalise.grdItemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if dbProcesso.State in [dsInsert,dsEdit] then
        dbProcesso.Post;
    if Key=VK_F2 then
        cmdNovoClick(Sender);
end;

procedure TfrmPreAnalise.dsAtendimentoPSDataChange(Sender: TObject;
  Field: TField);
begin
    if dbProcessoPSTipo.Value='A' then
    begin
        lblTipo.Color:=clTeal;
        lblTipo.Caption:='Ambulatório';
        tabPS.TabIndex:=0;
    end
    else
    begin
        lblTipo.Color:=clRed;
        lblTipo.Caption:='Pronto-Socorro';
        tabPS.TabIndex:=1;
    end;
end;

procedure TfrmPreAnalise.BitBtn9Click(Sender: TObject);
begin
    dbProcessoPS.Edit;
    if dbProcessoPSTipo.Value='A' then
       dbProcessoPSTipo.Value:='P'
    else
       dbProcessoPSTipo.Value:='A';
    dbProcessoPS.Post;
end;

procedure TfrmPreAnalise.dbClienteCalcFields(DataSet: TDataSet);
var iMax: Currency;
begin
    iMax:=99999999;
    if (dbClienteMaximoCobrado1.Value>0) and
       (dbClienteDiagnostico1.Value=true) and
       (dbClienteMaximoCobrado1.Value<iMax) and
       (iMax>0) then
       iMax:=dbClienteMaximoCobrado1.Value;
    if (dbClienteMaximoCobrado2.Value>0) and
       (dbClienteDiagnostico2.Value=true) and
       (dbClienteMaximoCobrado2.Value<iMax) and
       (iMax>0) then
       iMax:=dbClienteMaximoCobrado2.Value;
    if (dbClienteMaximoCobrado3.Value>0) and
       (dbClienteDiagnostico3.Value=true) and
       (dbClienteMaximoCobrado3.Value<iMax) and
       (iMax>0) then
       iMax:=dbClienteMaximoCobrado3.Value;

       dbClienteMaximoCobrado.Value:=iMax;
end;

procedure TfrmPreAnalise.cmdCalcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_F9 then
//        cmdCalcClick(Sender);
end;

procedure TfrmPreAnalise.chkCabClick(Sender: TObject);
begin
    if chkCab.Checked=true then
       chkCab.Color:=clMoneyGreen
    else
       chkCab.Color:=clBtnFace;    
end;

procedure TfrmPreAnalise.dbItemCalcFields(DataSet: TDataSet);
begin
    if dbItemTipo.Value='G' then
       dbItemTipoNome.Value:='Glosa';
    if dbItemTipo.Value='N' then
       dbItemTipoNome.Value:='NA';
end;

procedure TfrmPreAnalise.grdItemDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbItemTipo.Value='N' then
        grdItem.Canvas.Font.Color:=clGreen;
     if dbItemTipo.Value='G' then
        grdItem.Canvas.Font.Color:=clRed;

     grdItem.DefaultDrawDataCell(Rect,grdItem.Columns[DataCol].field,State);
end;

procedure TfrmPreAnalise.grdItemDblClick(Sender: TObject);
begin
    dbItem.Edit;
    if dbItemTipo.Value='G' then
       dbItemTipo.Value:='N'
    else
       dbItemTipo.Value:='G';
    dbItem.Post;
end;

procedure TfrmPreAnalise.dbItemPSCalcFields(DataSet: TDataSet);
begin
    if dbItemPSTipo.Value='G' then
       dbItemPSTipoNome.Value:='Glosa';
    if dbItemPSTipo.Value='N' then
       dbItemPSTipoNome.Value:='NA';
end;

procedure TfrmPreAnalise.grdGlosaDblClick(Sender: TObject);
begin
    dbItemPS.Edit;
    if dbItemPSTipo.Value='G' then
       dbItemPSTipo.Value:='N'
    else
       dbItemPSTipo.Value:='G';
    dbItemPS.Post;
end;

procedure TfrmPreAnalise.grdGlosaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbItemPSTipo.Value='N' then
        grdGlosa.Canvas.Font.Color:=clGreen;
     if dbItemPSTipo.Value='G' then
        grdGlosa.Canvas.Font.Color:=clRed;

     grdGlosa.DefaultDrawDataCell(Rect,grdGlosa.Columns[DataCol].field,State);
end;

procedure TfrmPreAnalise.dbPacienteBeforeDelete(DataSet: TDataSet);
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para usuários Master');
        abort;
    end;
end;

procedure TfrmPreAnalise.BitBtn11Click(Sender: TObject);
begin
    tabOrdemProcesso.TabIndex:=0;
    tabOrdemProcessoChange(Sender); //index cliente+capeante

    if frmComplemento=nil then
       Application.CreateForm(TfrmComplemento, frmComplemento);
    with frmComplemento do
    begin
        qryComp.sql.Clear;
        qryComp.sql.text:='Select * from AtendHI '+
                          'where Paciente=:iPac and '+
                          '      DataInternacao=:iDati and '+
                          '      DataAlta=:iData '+
                          'order by AtendimentoHI';
        qryComp.ParamByName('iPac').Value:=dbProcessoPaciente.Value;
        qryComp.ParamByName('iDatI').Value:=dbProcessoDataInternacao.Value;
        qryComp.ParamByName('iDatA').Value:=dbProcessoDataAlta.Value;
        qryComp.Open;

        if qryComp.RecordCount<2 then
        begin
            ShowMessage('Lançamento não possui complementares');
            qryComp.Close;
            abort;
        end;
    end;
    frmComplemento.ShowModal;
end;

procedure TfrmPreAnalise.cmdFichaClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
    grdProcesso.Tag:=0;
end;

procedure TfrmPreAnalise.cmdListaClick(Sender: TObject);
begin
    grdProcesso.BringToFront;
    grdProcesso.tag:=1;
end;

procedure TfrmPreAnalise.cmdFicha1Click(Sender: TObject);
begin
    pnlFicha1.BringToFront;
end;

procedure TfrmPreAnalise.cmdLista1Click(Sender: TObject);
begin
    grdPS.BringToFront;
end;

procedure TfrmPreAnalise.lblLocClienteClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmPreAnalise.lblLocEnfermeiroClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmPreAnalise.lblLocHospitalClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmPreAnalise.lblLocPacienteClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmPreAnalise.lblLocMedicoClick(Sender: TObject);
begin
    cmdNovo.Default:=false;
    cmdGrava.Default:=false;
end;

procedure TfrmPreAnalise.lblLocClientePSClick(Sender: TObject);
begin
    cmdNovoPS.Default:=false;
    cmdGravaPS.Default:=false;
end;

procedure TfrmPreAnalise.lblLocEnfermeiroPSClick(Sender: TObject);
begin
    cmdNovoPS.Default:=false;
    cmdGravaPS.Default:=false;
end;

procedure TfrmPreAnalise.lblLocHospitalPSClick(Sender: TObject);
begin
    cmdNovoPS.Default:=false;
    cmdGravaPS.Default:=false;
end;

procedure TfrmPreAnalise.lblLocMedicoPSClick(Sender: TObject);
begin
    cmdNovoPS.Default:=false;
    cmdGravaPS.Default:=false;
end;

procedure TfrmPreAnalise.dbProcessoBeforeEdit(DataSet: TDataSet);
begin
    if cmdFiltro.Checked=false then
        ShowMessage('O Filtro de Médicos/Enfermeiro inativos está desligado');
    cmdFichaClick(DataSet);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;

    if (dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoAnoCompetencia.value,dbProcessoMesCompetencia.value]),[]) and
       (dbProdStatus.value='F') and (dbProcessoProdutividade.value<>0)) then
    begin
        cmpCliente.Enabled:=false;
        cmpHospital.Enabled:=false;
        cmpMedico.Enabled:=false;
        cmpEnfermeiro.Enabled:=false;
        cmpMes.Enabled:=false;
        cmpAno.Enabled:=false;
        cmpServico.Enabled:=false;
    end
    else
    begin
        cmpCliente.Enabled:=true;
        cmpHospital.Enabled:=true;
        cmpMedico.Enabled:=true;
        cmpEnfermeiro.Enabled:=true;
        cmpMes.Enabled:=true;
        cmpAno.Enabled:=true;
        cmpServico.Enabled:=true;
    end;
end;

procedure TfrmPreAnalise.dbProcessoPSBeforeEdit(DataSet: TDataSet);
begin
    cmdFicha1Click(DataSet);
    cmdFicha1.Down:=true;
    cmdLista1.Down:=false;
end;

procedure TfrmPreAnalise.dbProcessoConclusaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoConclusao.value=' ' then
       text:='';
    if dbProcessoConclusao.value='A' then
       text:='Alta Normal';
    if dbProcessoConclusao.value='O' then
        text:='Óbito';
    if dbProcessoConclusao.value='T' then
       text:='Transferência';
    if dbProcessoConclusao.value='H' then
        text:='Home Care';
    if dbProcessoConclusao.value='C' then
       text:='Curado';
    if dbProcessoConclusao.value='M' then
        text:='Melhorado';
    if dbProcessoConclusao.value='P' then
       text:='Pedido';
end;

procedure TfrmPreAnalise.dbProcessoConclusaoSetText(Sender: TField;
  const Text: String);
begin
    if text='' then
       dbProcessoConclusao.value:='';
    if text='Alta Normal' then
       dbProcessoConclusao.value:='A';
    if text='Óbito' then
       dbProcessoConclusao.value:='O';
    if text='Transferência' then
       dbProcessoConclusao.value:='T';
    if text='Home Care' then
       dbProcessoConclusao.value:='H';
    if text='Curado' then
       dbProcessoConclusao.value:='C';
    if text='Melhorado' then
       dbProcessoConclusao.value:='M';
    if text='Pedido' then
       dbProcessoConclusao.value:='P';
end;

procedure TfrmPreAnalise.dbProcessoInternacaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoInternacao.value='' then
       text:='';
    if dbProcessoInternacao.value='C' then
       text:='Clínica';
    if dbProcessoInternacao.value='R' then
        text:='Cirúrgica';
end;

procedure TfrmPreAnalise.dbProcessoInternacaoSetText(Sender: TField;
  const Text: String);
begin
    if text='' then
       dbProcessoInternacao.value:='';
    if text='Clínica' then
       dbProcessoInternacao.value:='C';
    if text='Cirúrgica' then
       dbProcessoInternacao.value:='R';
end;

procedure TfrmPreAnalise.dbProcessoTratamentoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoTratamento.value='' then
       text:='';
    if dbProcessoTratamento.value='E' then
       text:='Eletivo';
    if dbProcessoTratamento.value='R' then
        text:='Urgência';
    if dbProcessoTratamento.value='A' then
       text:='Acidente Pessoal';
end;

procedure TfrmPreAnalise.dbProcessoTratamentoSetText(Sender: TField;
  const Text: String);
begin
    if text='' then
       dbProcessoTratamento.value:='';
    if text='Eletivo' then
       dbProcessoTratamento.value:='E';
    if text='Urgência' then
       dbProcessoTratamento.value:='R';
    if text='Acidente Pessoal' then
       dbProcessoTratamento.value:='A';
end;

procedure TfrmPreAnalise.DBEdit22Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.DBEdit23Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.DBEdit24Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.DBEdit25Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.DBEdit26Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.cmpDiariaDCExit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.DBEdit28Exit(Sender: TObject);
begin
    if dbProcesso.State in [dsEdit, dsInsert] then
       dbProcessoDiarias.value:=dbProcessoApto.value+dbProcessoEnfermaria.value+
                                dbProcessoSemi.value+dbProcessoDiasUTI.value+
                                dbProcessoDayClinicQtd.value+dbProcessoIsolamento.value+
                                dbProcessoBercario.value;
end;

procedure TfrmPreAnalise.Label27Click(Sender: TObject);
begin
    if frmCadastro=nil then
       Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.Tag:=1;
    frmCadastro.Show;
end;

procedure TfrmPreAnalise.Label27MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmPreAnalise.Panel4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPreAnalise.DBEdit21MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPreAnalise.grdPacienteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPreAnalise.grdTerceiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_F2 then
        cmdNovoClick(Sender);
end;

procedure TfrmPreAnalise.grdDiagnosticoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbItemDiagnosticoPrincipal.Value=true then
        grdDiagnostico.Canvas.Font.Color:=clRed;
     grdDiagnostico.DefaultDrawDataCell(Rect,grdDiagnostico.Columns[DataCol].field,State);
end;

procedure TfrmPreAnalise.dbItemDiagnosticoCalcFields(DataSet: TDataSet);
begin
    if dbItemDiagnosticoPrincipal.value=true then
       dbItemDiagnosticoPrincipalTexto.value:='Sim'
    else
       dbItemDiagnosticoPrincipalTexto.value:='Não';
end;

procedure TfrmPreAnalise.cmdPrincipalDClick(Sender: TObject);
var iDiag:integer;
begin
    if (dbItemDiagnostico.RecordCount=0) and
       (dbItemDiagnosticoPrincipal.value=true)  then
    begin
        ShowMessage('Um diagnóstico deve ser o principal');
        abort;
    end;
    if (dbItemDiagnostico.RecordCount=0) and
       (dbItemDiagnosticoPrincipal.value=false)  then
    begin
        if dbItemDiagnostico.State=dsbrowse then
           dbItemDiagnostico.Edit;
        if dbItemDiagnosticoPrincipal.Value=true then
            dbItemDiagnosticoPrincipal.Value:=false
        else
            dbItemDiagnosticoPrincipal.Value:=true;
        dbItemDiagnostico.Post;
    end;
    if (dbItemDiagnostico.RecordCount>0) then
    begin
        iDiag:=dbItemDiagnosticoDiagnostico.value;
        dbItemDiagnostico.First;
        while not dbItemDiagnostico.Eof do
        begin
           dbItemDiagnostico.Edit;
           if dbItemDiagnosticoDiagnostico.value=iDiag then
                dbItemDiagnosticoPrincipal.Value:=true
           else
                dbItemDiagnosticoPrincipal.Value:=false;
           dbItemDiagnostico.Post;
           dbItemDiagnostico.Next;
        end;
    end;
end;

procedure TfrmPreAnalise.dbItemDiagnosticoBeforeInsert(DataSet: TDataSet);
begin
    iQtdDiag:=dbItemDiagnostico.RecordCount;
end;

procedure TfrmPreAnalise.dbItemDiagnosticoBeforePost(DataSet: TDataSet);
begin
     if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
     begin
        ShowMessage('Capeante remetido ao cliente e fechado. Impossível alterar');
        dbProcesso.Cancel;
        abort;
     end;

    if dbItemDiagnosticoDiagnostico.value=0 then
    begin
        ShowMessage('CID inválido');
        abort;
    end;
    dbItemDiagnosticoCodCid.value:=dbItemDiagnosticoCodCid1.value;
    dbItemDiagnosticoGrupoCid.value:=dbItemDiagnosticoCodCid1.value;

    if (dbItemDiagnostico.State=dsInsert) then
        istatus:=1
    else istatus:=2;
end;

procedure TfrmPreAnalise.dbProcessoDataInternacaoChange(Sender: TField);
var iDias:variant;
begin
    if (not dbProcessoDataInternacao.IsNull) and
       (not dbProcessoDataAlta.IsNull) then
    begin
        iDias:=DateOf(dbProcessoDataAlta.value)-DateOf(dbProcessoDataInternacao.value);
        if iDias=0 then iDias:=1;
        if dbProcesso.State in [dsEdit,dsInsert] then
            dbProcessoDiariasCalculadas.asinteger:=iDias;
    end;
end;

procedure TfrmPreAnalise.dbProcessoDataAltaChange(Sender: TField);
var iDias:variant;
begin
    if (not dbProcessoDataInternacao.IsNull) and
       (not dbProcessoDataAlta.IsNull) then
    begin
        iDias:=DateOf(dbProcessoDataAlta.value)-DateOf(dbProcessoDataInternacao.value);
        if iDias=0 then iDias:=1;
        if dbProcesso.State in [dsEdit,dsInsert] then
            dbProcessoDiariasCalculadas.asinteger:=iDias;
    end;            
end;

procedure TfrmPreAnalise.dbProcessoBeforeDelete(DataSet: TDataSet);
begin
    if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
    begin
        ShowMessage('Capeante remetido ao cliente e fechado. Impossível excluir');
        abort;
    end;
end;

procedure TfrmPreAnalise.dbItemDiagnosticoBeforeDelete(DataSet: TDataSet);
begin
    if (dbProcessoRemessa.value>0) and (not dbRemessaDataFechamento.isnull) then
    begin
        ShowMessage('Capeante remetido ao cliente e fechado. Impossível excluir');
        abort;
    end;
    frmMenu.Log('Estatísticas',dbItemDiagnosticoCliente.value,'Capeante-Diagnostico',
                               dbItemDiagnosticoAtendimentoHI.value,
                               dbItemDiagnosticoDiagnostico.value,'','E');
end;


procedure TfrmPreAnalise.Label19MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmPreAnalise.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPreAnalise.DBEdit11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPreAnalise.DBEdit8Exit(Sender: TObject);
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
     dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                dbProcessoValorGlosadoM.Value-
                                dbProcessoValorGlosadoE.Value;

end;

procedure TfrmPreAnalise.DBComboBox2Exit(Sender: TObject);
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
    if (dbProcessoDiarias.value>=2) and
       (dbProcessoInternacao.value='C') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
end;

procedure TfrmPreAnalise.DBEdit6Exit(Sender: TObject);
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
    if (dbProcessoDiarias.value>=2) and
       (dbProcessoInternacao.value='C') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
    if (dbProcessoDiarias.value>=4) and
       (dbProcessoInternacao.value='R') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;

end;

procedure TfrmPreAnalise.DBEdit3Exit(Sender: TObject);
begin
    if (dbProcesso.State=dsbrowse) then
        abort;
    if (dbProcessoDiarias.value>=2) and
       (dbProcessoInternacao.value='C') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
    if (dbProcessoDiarias.value>=4) and
       (dbProcessoInternacao.value='R') then
       dbProcessoVisita.value:=1
    else
       dbProcessoVisita.value:=0;
end;

procedure TfrmPreAnalise.cmdAlteraPClick(Sender: TObject);
var idata:Tdate;
begin
    dbPaciente.Edit;
    grdPaciente.SetFocus;    
end;

procedure TfrmPreAnalise.cmdGravaPClick(Sender: TObject);
begin
    dbPaciente.Post;
end;

procedure TfrmPreAnalise.chkDayClinicClick(Sender: TObject);
begin
    if dbProcesso.state in [dsEdit,dsInsert] then
    begin
        pagEstat.ActivePageIndex:=1;
        if chkDayClinic.Checked then
        begin
            dbProcessoDayClinicQtd.value:=1;
            dbProcessoDiarias.value:=0;
            dbProcessoApto.value:=0;
            dbProcessoEnfermaria.value:=0;
            dbProcessoSemi.value:=0;
            dbProcessoDiasUTI.value:=0;
            dbProcessoBercario.value:=0;
            dbProcessoIsolamento.value:=0;
        end
        else
            dbProcessoDayClinicQtd.value:=0;
        cmpDiariaDC.SetFocus;
        chkDayClinic.SetFocus;
    end;        
end;

procedure TfrmPreAnalise.dbProcessoAcidenteGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoAcidente.value='' then
       text:='Não acidente';
    if dbProcessoAcidente.value='R' then
        text:='Relacionado ao Trabalho';
    if dbProcessoAcidente.value='T' then
       text:='Trabalho';
    if dbProcessoAcidente.value='O' then
        text:='Outros';
end;

procedure TfrmPreAnalise.dbProcessoAcidenteSetText(Sender: TField;
  const Text: String);
begin
    if text='Não acidente' then
       dbProcessoAcidente.value:='';
    if text='Relacionado ao Trabalho' then
       dbProcessoAcidente.value:='R';
    if text='Trabalho' then
       dbProcessoAcidente.value:='T';
    if text='Outros' then
       dbProcessoAcidente.value:='O';
end;

procedure TfrmPreAnalise.dbProcessoObitoGravidaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoObitoGravida.value='' then
       text:='Sem óbito';
    if dbProcessoObitoGravida.value='G' then
        text:='Grávida';
    if dbProcessoObitoGravida.value='I' then //inferior 42
       text:='até 42 dias após gestação';
    if dbProcessoObitoGravida.value='S' then //superior 42
        text:='de 42 dias até 12 meses após gestação';
end;

procedure TfrmPreAnalise.dbProcessoObitoGravidaSetText(Sender: TField;
  const Text: String);
begin
    if text='Sem óbito' then
       dbProcessoObitoGravida.value:='';
    if text='Grávida' then
       dbProcessoObitoGravida.value:='G';
    if text='até 42 dias após gestação' then
       dbProcessoObitoGravida.value:='I';
    if text='de 42 dias até 12 meses após gestação' then
       dbProcessoObitoGravida.value:='S';

end;

procedure TfrmPreAnalise.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAuditorDataFim.IsNull
end;

procedure TfrmPreAnalise.dbEnfermeiroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbEnfermeiroDataFim.IsNull
end;

procedure TfrmPreAnalise.dbProcessoPAbertoMotivoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoPAbertoMotivo.value='' then
       text:='';
    if dbProcessoPAbertoMotivo.value='C' then
       text:='Complicação';
    if dbProcessoPAbertoMotivo.value='E' then
        text:='Excedente';
    if dbProcessoPAbertoMotivo.value='P' then
       text:='P.Combinado';
    if dbProcessoPAbertoMotivo.value='O' then
       text:='Outros';
end;

procedure TfrmPreAnalise.dbProcessoPAbertoMotivoSetText(Sender: TField;
  const Text: String);
begin
    if text='' then
       dbProcessoPAbertoMotivo.value:='';
    if text='Complicação' then
       dbProcessoPAbertoMotivo.value:='C';
    if text='Excedente' then
       dbProcessoPAbertoMotivo.value:='E';
    if text='P.Combinado' then
       dbProcessoPAbertoMotivo.value:='P';
    if text='Outros' then
       dbProcessoPAbertoMotivo.value:='O';
end;

procedure TfrmPreAnalise.chkPacoteExit(Sender: TObject);
begin
    if dbProcessoPacote.value=false then
    begin
        dbProcessoPAberto.value:=0;
        dbProcessoPExcedente.value:=0;
        dbProcessoPAbertoMotivo.Value:='';
    end;    
end;

procedure TfrmPreAnalise.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServicoValorizado.Value=true) and
            ((dbServicoVinculado.value='P') or (dbServicoVinculado.value='A'));
end;

procedure TfrmPreAnalise.tabCompetenciaChange(Sender: TObject);
var imes,iano:integer;
var ilinha:string;
begin

     if dbProcesso.Active=false then abort;

     iano:=StrToInt(cmpAnoC.text);
     ilinha:='where AnoCompetencia=:Ano and MesCompetencia=:Mes ';
     case tabCompetencia.TabIndex of
     12:ilinha:='where AnoCompetencia=:Ano ';
     13:ilinha:='';
     end;
     imes:=tabCompetencia.TabIndex+1;

     dbProcesso.Close;
     dbProcesso.SQL.Text:='Select * from AtendHI '+ilinha+
                          'order by AtendimentoHI,Cliente';
     if tabCompetencia.TabIndex<13 then
     begin
         dbProcesso.ParamByName('Ano').AsInteger:=iano;
         if tabCompetencia.TabIndex<12 then
             dbProcesso.ParamByName('Mes').AsInteger:=imes;
     end;
     dbProcesso.Open;
end;

procedure TfrmPreAnalise.dbPacienteAfterPost(DataSet: TDataSet);
begin
//    dbPaciente.Refresh;
    dbProcesso.edit;
    dbProcessoPaciente.value:=dbPacientePaciente.Value;
    dbProcessoIDPaciente.value:=dbPacienteIDPaciente.value;
    dbProcesso.Post;

   frmMenu.Log('Estatísticas-Paciente',dbPacienteCliente.value,'Paciente',
                              dbPacientePaciente.value,0,
                              dbPacienteNome.value,'I');
end;

procedure TfrmPreAnalise.tabPacienteChange(Sender: TObject);
begin
    case tabPaciente.TabIndex of
    0:dbPaciente.IndexFieldNames:='Nome';
    1:dbPaciente.IndexFieldNames:='CodigoPaciente';
    2:dbPaciente.IndexFieldNames:='Paciente';
    end;
end;

procedure TfrmPreAnalise.dbProcessoAfterScroll(DataSet: TDataSet);
var iGlosaPacote:boolean;
begin
    dbPaciente.Locate('Paciente',dbProcessoPaciente.value,[]);
    lblPacienteAtivo.Caption:='Paciente:['+InttoStr(dbProcessoPaciente.value)+'] - '+dbProcessoPacienteNome.value;

    iGlosaPacote:=false;
    if dbItem.Active then
    if dbItem.Locate('GlosaI','PT',[]) then
        iGlosaPacote:=true;

     if (dbProcessoBradesco.value=true) and (iGlosaPacote=true) then
     begin
        rdgPacoteS.Visible:=true;
        rdgPacoteN.Visible:=false;
     end
     else
     begin
        rdgPacoteS.Visible:=false;
        rdgPacoteN.Visible:=true;
     end;
    
end;

procedure TfrmPreAnalise.dbProcessoAfterOpen(DataSet: TDataSet);
begin
    dbPaciente.Locate('Paciente',dbProcessoPaciente.value,[]);
    lblPacienteAtivo.Caption:='Paciente:'+InttoStr(dbProcessoPaciente.value)+'-'+dbProcessoPacienteNome.value;
end;

procedure TfrmPreAnalise.dsPacienteStateChange(Sender: TObject);
begin
    if dbPaciente.State in [dsBrowse] then
        grdPaciente.Options:=[dgTitles,dgColLines,dgIndicator,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
    if dbPaciente.State in [dsInsert,dsEdit] then
        grdPaciente.Options:=[dgEditing,dgTitles,dgIndicator,dgColLines,dgRowLines,dgTabs,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
     cmdNovoP.Enabled:=dbPaciente.State in [dsBrowse];
     cmdAlteraP.Enabled:=dbPaciente.State in [dsBrowse];
     cmdGravaP.Enabled:=dbPaciente.State in [dsEdit,dsInsert];
end;


procedure TfrmPreAnalise.dbProcessoAfterEdit(DataSet: TDataSet);
begin
    dbProcesso.tag:=0;
end;

procedure TfrmPreAnalise.BitBtn2Click(Sender: TObject);
begin
    dbPaciente.refresh;
    dbPacienteBusca.refresh;
    dbProcesso.Refresh;
    dbItem.Refresh;
    dbItemDiagnostico.Refresh;
    ShowMessage('Estatisticas atualizadas com sucesso');
end;

procedure TfrmPreAnalise.cmdFiltroClick(Sender: TObject);
begin
    if not cmdFiltro.Checked then
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
    dbProcesso.Refresh;
end;

procedure TfrmPreAnalise.BitBtn10Click(Sender: TObject);
var qtd:integer;
var a:string;
begin
//*** Atualizar clinico cirurgico
    dbHI.Open;
    dbExcel.Open;
    while not dbHI.eof do
    begin
        if dbExcel.Locate('12;13;14', VarArrayof([dbHISenha.value,
                                                  dbHIDataInternacao.value,
                                                  dbHIDataAlta.value]),[]) then
       begin
       dbHI.Edit;
       a:=dbExcelDSDesigner24.value;
       if (a='Clínica') or (a='Clinica') or (Copy(a,1,2)='Cl')  then
           dbHIInternacao.value:='C';
       if (a='Cirúrgica') or (a='Cirurgica') or (Copy(a,1,3)='Cir') then
            dbHIInternacao.value:='R';

       if (Copy(a,1,3)='Ped') or (Copy(a,1,3)='Obs') then //pediatrica e obstetrica
            if (dbHICodAmb.value=10102019) or
               (dbHICodAmb.value=10104020) or
               (dbHICodAmb.value=20010) or
               (dbHICodAmb.value=20202016) or
               (dbHICodAmb.value=20202024) then
                dbHIInternacao.value:='C'
             else
                dbHIInternacao.value:='R';
         if dbHIInternacao.value='C' then
            dbHITratamento.value:='R';
         if dbHIInternacao.value='R' then
            dbHITratamento.value:='E';


        dbHI.Post;
        end;
        dbHI.Next;
    end;


//*** Apagar retorno
{
    dbHI.Open;
    dbI.Open;
    dbD.Open;
    qtd:=0;

    while  dbHI.RecordCount>0 do
    begin
     while dbI.RecordCount>0 do
          dbI.Delete;
     while dbD.RecordCount>0 do
        dbD.Delete;
     dbHI.Delete;
     qtd:=qtd+1;
    end;
    ShowMessage('Fim. Apagados '+IntToStr(qtd));
    dbHI.Close;
    dbI.Close;
    dbD.Close;}



end;

procedure TfrmPreAnalise.dbProcessoCodAmbChange(Sender: TField);
var iGlosaPacote:boolean;
begin
    iGlosaPacote:=false;
    if dbItem.Active then
    if dbItem.Locate('GlosaI','PT',[]) then
        iGlosaPacote:=true;

     if (dbProcessoBradesco.value=true) and (iGlosaPacote=true) then
     begin
        rdgPacoteS.Visible:=true;
        rdgPacoteN.Visible:=false;
     end
     else
     begin
        rdgPacoteS.Visible:=false;
        rdgPacoteN.Visible:=true;
     end;

end;

procedure TfrmPreAnalise.BitBtn6Click(Sender: TObject);
begin
    if dbProcessoPS.state in [dsBrowse] then
        dbProcessoPS.Edit;
    dbProcessoPSMedico.value:=0;
    dbProcessoPS.Post;
end;

procedure TfrmPreAnalise.BitBtn12Click(Sender: TObject);
begin
    if dbProcessoPS.state in [dsBrowse] then
        dbProcessoPS.Edit;
    dbProcessoPSEnfermeiro.value:=0;
    dbProcessoPS.Post;

end;

end.
