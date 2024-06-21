unit frmCLTs;

interface

uses
  DateUtils, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Db, DBTables,
  MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, Variants,
  ExtCtrls, DBImgAsp, ToolWin, Menus, RpDefine, RpCon, RpConDS, RpConBDE,
  ExtDlgs, Clipbrd, DBDateTimePicker;

type
  TfrmCLT = class(TForm)
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbFuncionario: TMSTable;
    dsFuncionario: TDataSource;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbFuncionarioFuncionario: TIntegerField;
    dbFuncionarioNome: TStringField;
    dbFuncionarioEndereco: TStringField;
    dbFuncionarioBairro: TStringField;
    dbFuncionarioCidade: TStringField;
    dbFuncionarioUF: TStringField;
    dbFuncionarioCep: TStringField;
    dbFuncionarioFone: TStringField;
    dbFuncionarioCPF: TStringField;
    dbFuncionarioRG: TStringField;
    dbFuncionarioEmail: TStringField;
    dbFuncionarioBanco: TSmallintField;
    dbFuncionarioAgencia: TStringField;
    dbFuncionarioConta: TStringField;
    dbFuncionarioFilial: TIntegerField;
    dbFuncionarioSalarioBruto: TCurrencyField;
    dbFuncionarioObservacao: TMemoField;
    dbFuncionarioUsuario: TStringField;
    dbBanco: TMSTable;
    dbBancoBanco: TSmallintField;
    dbBancoNome: TStringField;
    dsBanco: TDataSource;
    dbFuncionarioFilialNome: TStringField;
    dbFuncionarioNacionalidade: TStringField;
    dbFuncionarioLocalNascimento: TStringField;
    dbFuncionarioUFNascimento: TStringField;
    dbFuncionarioNomePai: TStringField;
    dbFuncionarioNomeMae: TStringField;
    dbFuncionarioContatoUrgencia: TStringField;
    dbFuncionarioRGEmissor: TStringField;
    dbFuncionarioCT: TStringField;
    dbFuncionarioCTSerie: TStringField;
    dbFuncionarioPIS: TStringField;
    dbFuncionarioTituloEleitor: TStringField;
    dbFuncionarioReservista: TStringField;
    dbFuncionarioES: TMSTable;
    dsFuncionarioES: TDataSource;
    dbFuncionarioESFuncionario: TIntegerField;
    dbFuncionarioESSalario: TCurrencyField;
    dbFuncionarioINSS: TMSTable;
    dsFuncionarioINSS: TDataSource;
    dbFuncionarioINSSFuncionario: TIntegerField;
    dbFuncionarioIdade: TIntegerField;
    dbFuncionarioINSSDiasP: TIntegerField;
    dbFuncionarioINSSDiasR: TIntegerField;
    dbFuncionarioINSSMotivo: TStringField;
    dbFuncionarioEstadoCivil: TStringField;
    dbFuncionarioCliente: TIntegerField;
    dbFuncionarioStatus: TStringField;
    dbPagCLT: TMSTable;
    dsPagCLT: TDataSource;
    dbPagCLTFilial: TIntegerField;
    dbPagCLTLancamento: TAutoIncField;
    dbPagCLTTipoPag: TStringField;
    dbPagCLTCliente: TIntegerField;
    dbPagCLTClienteDeb: TIntegerField;
    dbPagCLTBancoID: TIntegerField;
    dbPagCLTCheque: TStringField;
    dbPagCLTValorPago: TCurrencyField;
    dbPagCLTValorBruto: TCurrencyField;
    dbPagCLTMovBanco: TIntegerField;
    dbPagCLTFuncionario: TIntegerField;
    dbCargo: TMSTable;
    dbCargoCargo: TAutoIncField;
    dbCargoDescricao: TStringField;
    dsCargo: TDataSource;
    dbFuncionarioESArea: TStringField;
    dbFuncionarioESCargo: TIntegerField;
    dbFuncionarioESCargoTexto: TStringField;
    dbPagCLTDataEmissao: TDateTimeField;
    dbPagCLTDataVencto: TDateTimeField;
    dbPagCLTDataPagto: TDateTimeField;
    dbFuncionarioDataInicio: TDateTimeField;
    dbFuncionarioDataFim: TDateTimeField;
    dbFuncionarioDataInclusao: TDateTimeField;
    dbFuncionarioESDataInicio: TDateTimeField;
    dbFuncionarioNascimento: TDateTimeField;
    dbFuncionarioINSSDataInicio: TDateTimeField;
    dbFuncionarioINSSPrevisao: TDateTimeField;
    dbFuncionarioINSSRetorno: TDateTimeField;
    dbFuncionarioLogin: TStringField;
    dbLogin: TMSQuery;
    dbLoginUsuario: TStringField;
    dbLoginNomeUsuario: TStringField;
    dbLoginSenha: TStringField;
    dbLoginBBAud: TBooleanField;
    dbLoginMasterAud: TBooleanField;
    dbLoginBBFin: TBooleanField;
    dbLoginMasterFin: TBooleanField;
    dbLoginBBAgenda: TBooleanField;
    dbLoginMasterAgenda: TBooleanField;
    dbLoginBBISO: TBooleanField;
    dbLoginMasterISO: TBooleanField;
    dbLoginTipo: TStringField;
    dbLoginDataInicio: TDateTimeField;
    dbLoginDataFim: TDateTimeField;
    dbLoginUsuarioI: TStringField;
    dbLoginDataInclusao: TDateTimeField;
    dbLoginUsuarioA: TStringField;
    dbLoginDataAlteracao: TDateTimeField;
    dbLoginUsuarioE: TStringField;
    dbLoginDataExclusao: TDateTimeField;
    dsLogin: TDataSource;
    Panel8: TPanel;
    cmdFichaF: TSpeedButton;
    cmdListaF: TSpeedButton;
    Panel9: TPanel;
    cmdAnterior: TBitBtn;
    cmdProximo: TBitBtn;
    cmdNovoF: TBitBtn;
    cmdAlteraF: TBitBtn;
    cmdGravaF: TBitBtn;
    cmdCancelaF: TBitBtn;
    cmdExcluiF: TBitBtn;
    BitBtn6: TBitBtn;
    tabOrdemFuncionario: TTabControl;
    grdFun: TDBGrid;
    pnlFicha2: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DBText4: TDBText;
    Label14: TLabel;
    Label38: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label8: TLabel;
    lblStatus: TLabel;
    cmpFuncionario: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel6: TPanel;
    Label53: TLabel;
    DBText5: TDBText;
    DBEdit33: TDBEdit;
    cmpNomeFuncionario: TDBEdit;
    cmbFilial: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    pagFun: TPageControl;
    TabSheet3: TTabSheet;
    Label34: TLabel;
    Label35: TLabel;
    Label48: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label87: TLabel;
    DBText9: TDBText;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit7: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit21: TDBEdit;
    DBComboBox1: TDBComboBox;
    TabSheet6: TTabSheet;
    Label9: TLabel;
    Label30: TLabel;
    Label60: TLabel;
    Label77: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit4: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit60: TDBEdit;
    TabSheet7: TTabSheet;
    grdFuncionarioES: TDBGrid;
    Panel5: TPanel;
    cmdNovoES: TBitBtn;
    cmdGravaES: TBitBtn;
    cmdExcluiES: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet8: TTabSheet;
    grdFuncionarioINSS: TDBGrid;
    Panel7: TPanel;
    cmdNovoI: TBitBtn;
    cmdGravaI: TBitBtn;
    cmdExcluiI: TBitBtn;
    TabSheet4: TTabSheet;
    DBMemo3: TDBMemo;
    CoolBar1: TCoolBar;
    txtFuncionario: TEdit;
    dbClienteStatusCli: TBooleanField;
    pagPro: TTabSheet;
    pagFerias: TTabSheet;
    pagAD: TTabSheet;
    pagUrgencia: TTabSheet;
    TabSheet2: TTabSheet;
    dbFuncionarioCelular: TStringField;
    dbFuncionarioEnderecoUrgencia: TStringField;
    dbFuncionarioParentescoUrgencia: TStringField;
    dbFuncionarioFoneUrgencia: TStringField;
    dbFuncionarioCelularUrgencia: TStringField;
    dbFuncionarioComercialUrgencia: TStringField;
    dbFuncionarioContatoMenor: TStringField;
    dbFuncionarioParentescoMenor: TStringField;
    dbFuncionarioCPFMenor: TStringField;
    dbFuncionarioRGEmissao: TDateTimeField;
    dbFuncionarioTicket: TStringField;
    dbFuncionarioFoto: TMemoField;
    dbFuncionarioTipoConta: TStringField;
    dbFuncionarioHorarioIni: TDateTimeField;
    dbFuncionarioHorarioFim: TDateTimeField;
    dbFuncionarioHorarioIni1: TDateTimeField;
    dbFuncionarioHorarioFim1: TDateTimeField;
    dbFuncionarioAlmocoIni: TDateTimeField;
    dbFuncionarioAlmocoFim: TDateTimeField;
    dbFuncionarioDataAlteracao: TDateTimeField;
    Label6: TLabel;
    DBEdit12: TDBEdit;
    Label49: TLabel;
    DBEdit38: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Panel1: TPanel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    Label74: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBText8: TDBText;
    Label78: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    Label79: TLabel;
    Label4: TLabel;
    cmpLoginF: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    lblPendencia: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBComboBox3: TDBComboBox;
    pagBeneficio: TPageControl;
    tabTransporte: TTabSheet;
    tabPlanoSaude: TTabSheet;
    tabEducao: TTabSheet;
    dbPagCLTCod1: TSmallintField;
    dbPagCLTCod2: TSmallintField;
    dbPagCLTCod3: TSmallintField;
    dbPagCLTHistorico: TStringField;
    dbPlanoC: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dsPlanoC: TDataSource;
    dbPagCLTPlanoContas: TStringField;
    tabOrdemPag: TTabControl;
    DBGrid1: TDBGrid;
    Label31: TLabel;
    rdgStatus: TRadioGroup;
    rdgPendencia: TRadioGroup;
    dbFuncionarioPendenciaTexto: TMemoField;
    dbFuncionarioPendencia: TBooleanField;
    dbFuncionarioESDescricao: TStringField;
    dbFuncionarioESUsuario: TStringField;
    dbFuncionarioESDataUsuario: TDateTimeField;
    Label32: TLabel;
    DBEdit26: TDBEdit;
    Label33: TLabel;
    DBEdit27: TDBEdit;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    dbFuncionarioFerias: TMSTable;
    dsFuncionarioFerias: TDataSource;
    dbFuncionarioFeriasFuncionario: TIntegerField;
    dbFuncionarioFeriasPeriodoIni: TDateTimeField;
    dbFuncionarioFeriasPeriodoFim: TDateTimeField;
    dbFuncionarioFeriasLimite: TDateTimeField;
    dbFuncionarioFeriasGozoIni: TDateTimeField;
    dbFuncionarioFeriasGozoFim: TDateTimeField;
    grdFerias: TDBGrid;
    dbFuncionarioAD: TMSTable;
    dsFuncionarioAD: TDataSource;
    dbFuncionarioADFuncionario: TIntegerField;
    dbFuncionarioADDataAvaliacao: TDateTimeField;
    dbFuncionarioADAvaliacao: TFloatField;
    dbFuncionarioADPlanoAcao: TBooleanField;
    grdAD: TDBGrid;
    Panel10: TPanel;
    cmdNovoAD: TBitBtn;
    cmdGravaAD: TBitBtn;
    cmdExcluirAD: TBitBtn;
    grdPS: TDBGrid;
    Panel12: TPanel;
    cmdNovoPS: TBitBtn;
    cmdGravaPS: TBitBtn;
    cmdExcluiPS: TBitBtn;
    grdFuncionarioBE: TDBGrid;
    Panel13: TPanel;
    cmdNovoBE: TBitBtn;
    cmdGravarBE: TBitBtn;
    cmdExcluirBE: TBitBtn;
    Panel14: TPanel;
    DBComboBox4: TDBComboBox;
    Label37: TLabel;
    dbFuncionarioGrauEscolariedade: TSmallintField;
    Label39: TLabel;
    DBComboBox5: TDBComboBox;
    dbFuncionarioBE: TMSTable;
    dsFuncionarioBE: TDataSource;
    dbFuncionarioBEFuncionario: TIntegerField;
    dbFuncionarioBEDataInicio: TDateTimeField;
    dbFuncionarioBECurso: TStringField;
    dbFuncionarioBEValor: TCurrencyField;
    dbFuncionarioBEUsuario: TStringField;
    dbFuncionarioBEDataUsuario: TDateTimeField;
    dbFuncionarioPS: TMSTable;
    dsFuncionarioPS: TDataSource;
    dsFuncionarioTR: TDataSource;
    dbFuncionarioTR: TMSTable;
    dbFuncionarioTRFuncionario: TIntegerField;
    dbFuncionarioTRTransporte: TStringField;
    dbFuncionarioTRQtd: TIntegerField;
    dbFuncionarioTRUsuario: TStringField;
    dbFuncionarioTRDataUsuario: TDateTimeField;
    dlgInserirFoto: TOpenPictureDialog;
    cmdPendencias: TSpeedButton;
    MonthCalendar1: TMonthCalendar;
    BitBtn19: TBitBtn;
    Panel15: TPanel;
    rdgVT: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    dbFuncionarioBolsaEducacao: TWordField;
    dbFuncionarioValeTransporte: TWordField;
    dbFuncionarioSexo: TStringField;
    DBComboBox6: TDBComboBox;
    Label1: TLabel;
    PB: TProgressBar;
    Panel11: TPanel;
    Panel16: TPanel;
    cmdNovoTR: TBitBtn;
    cmdGravaTR: TBitBtn;
    cmdExcluiTR: TBitBtn;
    grdFuncionarioTR: TDBGrid;
    Label40: TLabel;
    cmdTabela: TSpeedButton;
    dbTransporte: TMSTable;
    dbTransporteTransporte: TStringField;
    dsTransporte: TDataSource;
    dbFuncionarioTRTransporteB: TStringField;
    grdPSMes: TDBGrid;
    Label42: TLabel;
    Label43: TLabel;
    grdBEMes: TDBGrid;
    Label44: TLabel;
    Label45: TLabel;
    BitBtn3: TBitBtn;
    dbFuncionarioFeriasQtdDias: TIntegerField;
    qryFuncionario: TMSTable;
    qryFuncionarioFuncionario: TIntegerField;
    qryFuncionarioNome: TStringField;
    qryFuncionarioCPF: TStringField;
    qryFuncionarioRG: TStringField;
    Panel18: TPanel;
    cmdGeraPS: TSpeedButton;
    Label47: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Panel19: TPanel;
    cmdPrevAD: TSpeedButton;
    Label50: TLabel;
    Edit5: TEdit;
    UpDown5: TUpDown;
    Label54: TLabel;
    Edit6: TEdit;
    UpDown6: TUpDown;
    Label59: TLabel;
    dbFuncionarioADStatus: TStringField;
    Label61: TLabel;
    Edit7: TEdit;
    UpDown7: TUpDown;
    dbFuncionarioADUsuario: TStringField;
    dbFuncionarioADDataUsuario: TDateTimeField;
    Panel20: TPanel;
    Label58: TLabel;
    DBEdit42: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Panel21: TPanel;
    cmpFoto: TDBImageAspect;
    Label62: TLabel;
    Panel22: TPanel;
    cmdFoto: TSpeedButton;
    cmdFotoExcluir: TSpeedButton;
    dbFuncionarioBEMes: TMSTable;
    dsFuncionarioBEMes: TDataSource;
    dbFuncionarioBEMesFuncionario: TIntegerField;
    dbFuncionarioBEMesAno: TSmallintField;
    dbFuncionarioBEMesMes: TSmallintField;
    dbFuncionarioBEMesCurso: TStringField;
    dbFuncionarioBEMesValor: TCurrencyField;
    dbFuncionarioBEMesUsuario: TStringField;
    dbFuncionarioBEMesDataUsuario: TDateTimeField;
    Label63: TLabel;
    Edit8: TEdit;
    UpDown8: TUpDown;
    Edit9: TEdit;
    UpDown9: TUpDown;
    cmdGeraBolsa: TSpeedButton;
    dbPSaude: TMSTable;
    dsPSaude: TDataSource;
    dbPSaudeContrato: TStringField;
    dbPSaudeTipo: TStringField;
    dbPSaudeDataInicio: TDateTimeField;
    dbPSaudeDataFim: TDateTimeField;
    dbValorM: TMSTable;
    dsValorM: TDataSource;
    dbPlanoM: TMSTable;
    dsPlanoM: TDataSource;
    dsPOdonto: TDataSource;
    dbPOdonto: TMSTable;
    dbPOdontoContrato: TStringField;
    dbPOdontoTipo: TStringField;
    dbPOdontoDataInicio: TDateTimeField;
    dbPOdontoDataFim: TDateTimeField;
    dbPlanoMContrato: TStringField;
    dbPlanoMTipo: TStringField;
    dbPlanoMPlano: TStringField;
    dbPlanoO: TMSTable;
    dsPlanoO: TDataSource;
    dbPlanoOContrato: TStringField;
    dbPlanoOTipo: TStringField;
    dbPlanoOPlano: TStringField;
    dbValorMContrato: TStringField;
    dbValorMTipo: TStringField;
    dbValorMPlano: TStringField;
    dbValorMIdade: TSmallintField;
    dbValorMValor: TCurrencyField;
    dbValorO: TMSTable;
    dsValorO: TDataSource;
    dbValorOContrato: TStringField;
    dbValorOTipo: TStringField;
    dbValorOPlano: TStringField;
    dbValorOIdade: TSmallintField;
    dbValorOValor: TCurrencyField;
    dbFilialContratoSaude: TStringField;
    dbFilialPSaude: TStringField;
    dbFilialContratoOdonto: TStringField;
    dbFilialPOdonto: TStringField;
    dbFuncionarioPSMes: TMSTable;
    dsFuncionarioPSMes: TDataSource;
    dbFuncionarioPSFuncionario: TIntegerField;
    dbFuncionarioPSDependente: TIntegerField;
    dbFuncionarioPSNome: TStringField;
    dbFuncionarioPSNascimento: TDateTimeField;
    dbFuncionarioPSContratoSaude: TStringField;
    dbFuncionarioPSPlanoSaude: TStringField;
    dbFuncionarioPSContratoOdonto: TStringField;
    dbFuncionarioPSPlanoOdonto: TStringField;
    dbFuncionarioPSPlanoAdicionalO: TStringField;
    dbFuncionarioPSUsuario: TStringField;
    dbFuncionarioPSDataUsuario: TDateTimeField;
    dbFuncionarioPSMesFuncionario: TIntegerField;
    dbFuncionarioPSMesDependente: TIntegerField;
    dbFuncionarioPSMesMes: TSmallintField;
    dbFuncionarioPSMesAno: TSmallintField;
    dbFuncionarioPSMesIdade: TSmallintField;
    dbFuncionarioPSMesPlanoSaudeEmp: TStringField;
    dbFuncionarioPSMesPlanoSaudeDep: TStringField;
    dbFuncionarioPSMesValorMEmp: TCurrencyField;
    dbFuncionarioPSMesValorMDep: TCurrencyField;
    dbFuncionarioPSMesPlanoOdontoEmp: TStringField;
    dbFuncionarioPSMesPlanoOdontoDep: TStringField;
    dbFuncionarioPSMesValorOEmp: TCurrencyField;
    dbFuncionarioPSMesValorODep: TCurrencyField;
    dbFuncionarioPSMesPlanoOdontoA: TStringField;
    dbFuncionarioPSMesValorOA: TCurrencyField;
    dbFuncionarioPSIdade: TIntegerField;
    dbFuncionarioPSPlanoSaudeB: TStringField;
    dbFuncionarioPSPlanoOdontoB: TStringField;
    dbFuncionarioPSPlanoAdiconalB: TStringField;
    cmdLoginF: TBitBtn;
    cmdSenhaF: TBitBtn;
    dbFuncionarioDataAtualizacao: TDateTimeField;
    Label41: TLabel;
    DBEdit31: TDBEdit;
    Panel23: TPanel;
    dbFunFilial: TMSTable;
    dsFunFilial: TDataSource;
    dbFunFilialFilial: TSmallintField;
    dbFunFilialNome: TStringField;
    dbFunFilialContratoSaude: TStringField;
    dbFunFilialPSaude: TStringField;
    dbFunFilialContratoOdonto: TStringField;
    dbFunFilialPOdonto: TStringField;
    Label46: TLabel;
    cmpPSaude: TDBText;
    cmpPlanoSaude: TDBText;
    Label64: TLabel;
    cmpPOdonto: TDBText;
    cmpPlanoOdonto: TDBText;
    dbFuncionarioPSMesDiferencaM: TCurrencyField;
    dbFuncionarioPSMesDiferencaT: TCurrencyField;
    dbFuncionarioPSMesDiferencaO: TCurrencyField;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label65: TLabel;
    Panel24: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    IndiceAumento: TEdit;
    DataAumento: TDateTimePicker;
    BitBtn9: TBitBtn;
    Label68: TLabel;
    lblAumento: TEdit;
    dbFunES: TMSTable;
    dbFunESFuncionario: TIntegerField;
    dbFunESDataInicio: TDateTimeField;
    cmdAumento: TBitBtn;
    dbDependente: TMSTable;
    dsDependente: TDataSource;
    dbDependenteFuncionario: TIntegerField;
    dbDependenteDependente: TIntegerField;
    dbDependenteNascimento: TDateTimeField;
    dbDependenteIdade: TIntegerField;
    dbDependenteNome: TStringField;
    Panel25: TPanel;
    Label69: TLabel;
    grdDep: TDBGrid;
    Panel4: TPanel;
    cmdNovoA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdExcluirA: TBitBtn;
    Panel26: TPanel;
    cmdNovoD: TBitBtn;
    cmdGravaD: TBitBtn;
    cmdExcluiD: TBitBtn;
    dbFuncionarioDiaAniversario: TSmallintField;
    dbFuncionarioMesAniversario: TSmallintField;
    qryPSMes: TMSQuery;
    qryPSMesFuncionario: TIntegerField;
    qryPSMesDependente: TIntegerField;
    qryPSMesMes: TSmallintField;
    qryPSMesAno: TSmallintField;
    qryPSMesIdade: TSmallintField;
    qryPSMesPlanoSaudeEmp: TStringField;
    qryPSMesPlanoSaudeDep: TStringField;
    qryPSMesValorMEmp: TCurrencyField;
    qryPSMesValorMDep: TCurrencyField;
    qryPSMesPlanoOdontoEmp: TStringField;
    qryPSMesPlanoOdontoDep: TStringField;
    qryPSMesValorOEmp: TCurrencyField;
    qryPSMesValorODep: TCurrencyField;
    qryPSMesPlanoOdontoA: TStringField;
    qryPSMesValorOA: TCurrencyField;
    Label70: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    dbFuncionarioCargo: TIntegerField;
    Label71: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dbTransporteValor: TCurrencyField;
    dbFuncionarioTRValorAtual: TCurrencyField;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    rvRelPS: TRvDataSetConnection;
    qryPSMesNome: TStringField;
    qryPSMesDiferencaM: TCurrencyField;
    qryPSMesDiferencaT: TCurrencyField;
    qryPSMesDiferencaO: TCurrencyField;
    qryPSMesNomeDep: TStringField;
    dbFunPSBusca: TMSTable;
    dbFunPSBuscaFuncionario: TIntegerField;
    dbFunPSBuscaDependente: TIntegerField;
    dbFunPSBuscaNome: TStringField;
    dbFuncionarioCursando: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdFichaFClick(Sender: TObject);
    procedure cmdListaFClick(Sender: TObject);
    procedure cmdNovoFClick(Sender: TObject);
    procedure cmdAlteraFClick(Sender: TObject);
    procedure cmdGravaFClick(Sender: TObject);
    procedure cmdCancelaFClick(Sender: TObject);
    procedure cmdExcluiFClick(Sender: TObject);
    procedure dsFuncionarioStateChange(Sender: TObject);
    procedure dbFuncionarioAfterCancel(DataSet: TDataSet);
    procedure dbFuncionarioAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioBeforeInsert(DataSet: TDataSet);
    procedure dbFuncionarioBeforePost(DataSet: TDataSet);
    procedure cmdAnteriorClick(Sender: TObject);
    procedure cmdProximoClick(Sender: TObject);
    procedure rdgTipoClick(Sender: TObject);
    procedure dbFuncionarioBeforeEdit(DataSet: TDataSet);
    procedure tabOrdemFuncionarioChange(Sender: TObject);
    procedure txtFuncionarioChange(Sender: TObject);
    procedure Label74MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBLookupComboBox3MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure Label74Click(Sender: TObject);
    procedure grdFunDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbFuncionarioFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure BitBtn6Click(Sender: TObject);
    procedure dbFuncionarioCalcFields(DataSet: TDataSet);
    procedure cmdNovoESClick(Sender: TObject);
    procedure cmdGravaESClick(Sender: TObject);
    procedure cmdExcluiESClick(Sender: TObject);
    procedure dsFuncionarioESStateChange(Sender: TObject);
    procedure dbFuncionarioESAfterInsert(DataSet: TDataSet);
    procedure cmdNovoIClick(Sender: TObject);
    procedure cmdGravaIClick(Sender: TObject);
    procedure cmdExcluiIClick(Sender: TObject);
    procedure dsFuncionarioINSSStateChange(Sender: TObject);
    procedure dbFuncionarioINSSAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioINSSCalcFields(DataSet: TDataSet);
    procedure dbFuncionarioINSSBeforePost(DataSet: TDataSet);
    procedure dbFuncionarioEstadoCivilGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbFuncionarioEstadoCivilSetText(Sender: TField;
      const Text: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbFuncionarioStatusGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbFuncionarioStatusSetText(Sender: TField;
      const Text: String);
    procedure dbFuncionarioINSSAfterPost(DataSet: TDataSet);
    procedure dbFuncionarioESAreaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbFuncionarioESAreaSetText(Sender: TField;
      const Text: String);
    procedure cmdLoginFClick(Sender: TObject);
    procedure cmdSenhaFClick(Sender: TObject);
    procedure dbFuncionarioAfterPost(DataSet: TDataSet);
    procedure dbLoginAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioTipoContaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbFuncionarioTipoContaSetText(Sender: TField;
      const Text: String);
    procedure rdgStatusClick(Sender: TObject);
    procedure dbFuncionarioESBeforePost(DataSet: TDataSet);
    procedure cmdFotoClick(Sender: TObject);
    procedure cmdFotoExcluirClick(Sender: TObject);
    procedure dbFuncionarioGrauEscolariedadeGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbFuncionarioGrauEscolariedadeSetText(Sender: TField;
      const Text: String);
    procedure dbFuncionarioAfterScroll(DataSet: TDataSet);
    procedure cmdPendenciasClick(Sender: TObject);
    procedure rdgPendenciaClick(Sender: TObject);
    procedure dbFuncionarioPendenciaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cmdTabelaClick(Sender: TObject);
    procedure cmdNovoTRClick(Sender: TObject);
    procedure cmdGravaTRClick(Sender: TObject);
    procedure cmdExcluiTRClick(Sender: TObject);
    procedure dbFuncionarioTRAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioTRBeforePost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbFuncionarioFeriasCalcFields(DataSet: TDataSet);
    procedure grdFeriasCellClick(Column: TColumn);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcluirAClick(Sender: TObject);
    procedure dsFuncionarioFeriasStateChange(Sender: TObject);
    procedure dbFuncionarioFeriasAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioAfterRefresh(DataSet: TDataSet);
    procedure dbFuncionarioFeriasBeforePost(DataSet: TDataSet);
    procedure dbFuncionarioTRBeforeInsert(DataSet: TDataSet);
    procedure tabOrdemPagChange(Sender: TObject);
    procedure dsFuncionarioTRStateChange(Sender: TObject);
    procedure dbFuncionarioADAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioBEAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioPSAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioPSCalcFields(DataSet: TDataSet);
    procedure cmdNovoADClick(Sender: TObject);
    procedure cmdGravaADClick(Sender: TObject);
    procedure cmdExcluirADClick(Sender: TObject);
    procedure dbFuncionarioADPlanoAcaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbFuncionarioADPlanoAcaoSetText(Sender: TField;
      const Text: String);
    procedure dbFuncionarioADStatusSetText(Sender: TField;
      const Text: String);
    procedure dbFuncionarioADStatusGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dsFuncionarioADStateChange(Sender: TObject);
    procedure cmdPrevADClick(Sender: TObject);
    procedure cmdNovoBEClick(Sender: TObject);
    procedure cmdGravarBEClick(Sender: TObject);
    procedure cmdExcluirBEClick(Sender: TObject);
    procedure dsFuncionarioBEStateChange(Sender: TObject);
    procedure dbFuncionarioADBeforePost(DataSet: TDataSet);
    procedure dbFuncionarioBEBeforePost(DataSet: TDataSet);
    procedure dbFuncionarioBEBeforeInsert(DataSet: TDataSet);
    procedure dbFuncionarioTRAfterEdit(DataSet: TDataSet);
    procedure cmdGeraBolsaClick(Sender: TObject);
    procedure grdBEMesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbFuncionarioBEMesAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioBEMesBeforePost(DataSet: TDataSet);
    procedure dbPSaudeFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPOdontoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbFuncionarioPSBeforeEdit(DataSet: TDataSet);
    procedure dbFuncionarioPSBeforePost(DataSet: TDataSet);
    procedure cmdNovoPSClick(Sender: TObject);
    procedure cmdGravaPSClick(Sender: TObject);
    procedure cmdExcluiPSClick(Sender: TObject);
    procedure dsFuncionarioPSStateChange(Sender: TObject);
    procedure dbFuncionarioPSBeforeInsert(DataSet: TDataSet);
    procedure grdPSMesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdGeraPSClick(Sender: TObject);
    procedure dbFuncionarioPSMesAfterInsert(DataSet: TDataSet);
    procedure dbFuncionarioPSMesCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure cmdAumentoClick(Sender: TObject);
    procedure dbDependenteCalcFields(DataSet: TDataSet);
    procedure dbDependenteAfterInsert(DataSet: TDataSet);
    procedure cmdNovoDClick(Sender: TObject);
    procedure cmdGravaDClick(Sender: TObject);
    procedure cmdExcluiDClick(Sender: TObject);
    procedure dsDependenteStateChange(Sender: TObject);
    procedure dbDependenteBeforeInsert(DataSet: TDataSet);
    procedure dbFuncionarioESAfterPost(DataSet: TDataSet);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure dbFuncionarioSexoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbFuncionarioSexoSetText(Sender: TField; const Text: String);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure qryPSMesCalcFields(DataSet: TDataSet);
  private
  public
    iSenhaNova:string;
  end;

var
  frmCLT: TfrmCLT;
  iUltimoFuncionario,iUltimaEmpresa,iUltimoMedico,
  iUltimoEnfermeiro,iUltimoTerceiro,iDep,iAtual:integer;
  iSenhaNova:string;
  iPS,iPO,iPlanoM,iPlanoO:string;

implementation

uses frmPrincipal, frmCadastros, frmSenhasAltera,
  frmCadastrosCLT, dmRelatorios, frmRelIndicadores;

{$R *.DFM}

function Encrypt( Senha:String ): String;
Const
    Chave : String = 'Jesus';
Var
    x,y : Integer;
    NovaSenha : String;
begin
   for x := 1 to Length( Chave ) do begin
      NovaSenha := '';
      for y := 1 to Length( Senha ) do
         NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
      Senha := NovaSenha;
   end;
   result := Senha;
end;

procedure TfrmCLT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbCliente.Close;
     dbFuncionarioES.Close;
     dbFunES.Close;
     dbFuncionarioINSS.Close;
     dbFuncionarioFerias.Close;
     dbFuncionarioAD.Close;
     dbFuncionarioTR.Close;
     dbFuncionarioPS.Close;
     dbFuncionarioPSMes.Close;
     dbFuncionarioBE.Close;
     dbFuncionarioBEMes.Close;
     dbFunPSBusca.Close;
     dbFunFilial.Close;
     dbDependente.Close;
     dbFuncionario.Close;
     dbBanco.Close;
     dbCargo.Close;
     dbTransporte.Close;
     dbPlanoC.Close;
     dbPlanoM.Close;
     dbPlanoO.Close;
     dbPSaude.Close;
     dbPOdonto.Close;
     dbValorM.Close;
     dbValorO.Close;
     dbLogin.Close;
     dbPagCLT.Close;
end;

procedure TfrmCLT.FormShow(Sender: TObject);
var d,m,a: word;
begin
   Screen.Cursor := crHourGlass;
   try
     dbCargo.Open;
     dbCliente.Open;
     dbFilial.OPen;
     dbBanco.Open;
     dbTransporte.Open;
     dbPSaude.Open;
     dbPOdonto.Open;
     dbPlanoC.Open;
     dbPlanoO.Open;
     dbPlanoM.Open;
     dbValorM.Open;
     dbValorO.Open;

     dbPagCLT.Open;
     dbPagCLT.IndexFieldNames:='Funcionario;DataVencto desc ';

     dbFuncionario.Open;
     dbFuncionario.IndexFieldNames:='Nome';
     dbFuncionario.tag:=0;
     tabOrdemFuncionario.TabIndex:=0;
     cmpFuncionario.Enabled:=false;
     dbFuncionarioAfterScroll(dbFuncionario);
     qryFuncionario.Open;

     dbDependente.Open;
     dbDependente.IndexFieldNames:='Funcionario;Dependente';

     dbFuncionarioES.Open;
     dbFuncionarioES.IndexFieldNames:='Funcionario;DataInicio desc';
     dbFuncionarioES.First;
     dbFunES.Open;
     dbFuncionarioINSS.OPen;


     dbFuncionarioFerias.Open;
     dbFuncionarioFerias.IndexFieldNames:='Funcionario;PeriodoIni desc';
     dbFuncionarioFerias.First;

     dbFuncionarioAD.Open;
     dbFuncionarioAD.IndexFieldNames:='Funcionario;DataAvaliacao desc';
     dbFuncionarioAD.First;

     dbFuncionarioTR.OPen;
     dbFuncionarioTR.IndexFieldNames:='Funcionario;Transporte';
     dbFuncionarioTR.First;

     dbFuncionarioPS.Open;
     dbFuncionarioPSMes.Open;
     dbFuncionarioPSMes.IndexFieldNames:='Funcionario;Ano desc;Mes desc; Dependente';
     dbFuncionarioPSMes.First;
     dbFunPSBusca.Open;

     dbFuncionarioBE.Open;
     dbFuncionarioBEMes.Open;
     dbFuncionarioBEMes.IndexFieldNames:='Funcionario;Ano desc;Mes desc; Curso';
     
     dbFunFilial.Open;

     dbLogin.Open;
   finally
     MonthCalendar1.Date:=date;
     pagFun.ActivePageIndex:=0;
     pagBeneficio.ActivePageIndex:=0;
     Screen.Cursor := crDefault;

    DecodeDate(date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        a:=a-1;
        m:=12;
    end;

    Edit3.Text:=IntToStr(m);
    Edit4.Text:=IntToStr(a);

    Edit7.Text:=IntToStr(60);

    Edit8.Text:=IntToStr(m);
    Edit9.Text:=IntToStr(a);

    DataAumento.Date:=date;

   end;
end;

procedure TfrmCLT.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteStatusCli.value=true;
end;

procedure TfrmCLT.cmdFichaFClick(Sender: TObject);
begin
    pnlFicha2.BringToFront;
end;

procedure TfrmCLT.cmdListaFClick(Sender: TObject);
begin
    pnlFicha2.SendToBack;
end;

procedure TfrmCLT.cmdNovoFClick(Sender: TObject);
begin
     dbFuncionario.Insert;
     cmpFuncionario.SetFocus;
end;

procedure TfrmCLT.cmdAlteraFClick(Sender: TObject);
begin
     dbFuncionario.Edit;
     cmpNomeFuncionario.SetFocus;
end;

procedure TfrmCLT.cmdGravaFClick(Sender: TObject);
begin
     dbFuncionario.Post;
end;

procedure TfrmCLT.cmdCancelaFClick(Sender: TObject);
begin
     dbFuncionario.Cancel;
end;

procedure TfrmCLT.cmdExcluiFClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbFuncionario.Delete;
end;

procedure TfrmCLT.dsFuncionarioStateChange(Sender: TObject);
begin
     cmdNovoF.Enabled:=dbFuncionario.State in [dsBrowse];
     cmdExcluiF.Enabled:=(dbFuncionario.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFuncionario.RecordCount<>0);
     cmdGravaF.Enabled:=dbFuncionario.State in [dsEdit,dsInsert];
     cmdAlteraF.Enabled:=(dbFuncionario.State=dsBrowse)
                         and (dbFuncionario.RecordCount<>0);
     cmdCancelaF.Enabled:=dbFuncionario.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioAfterCancel(DataSet: TDataSet);
begin
     cmpFuncionario.Enabled:=false;
     cmpLoginF.Enabled:=false;
     dbFuncionario.Tag:=0;
end;

procedure TfrmCLT.dbFuncionarioAfterInsert(DataSet: TDataSet);
begin
    cmpFuncionario.Enabled:=true;
    cmpLoginF.Enabled:=false;
    dbFuncionario.Tag:=0;
    dbFuncionarioLogin.value:='';
    dbFuncionarioFuncionario.Value:=iUltimoFuncionario+1;
    dbFuncionarioFilial.value:=0;
    dbFuncionarioDataInclusao.Value:=date;
    dbFuncionarioDataInicio.Value:=date;
    dbFuncionarioUF.value:='SP';
    dbFuncionarioStatus.value:='A';
    dbFuncionarioGrauEscolariedade.value:=0;
    dbFuncionarioBolsaEducacao.value:=0;
    dbFuncionarioValeTransporte.value:=0;
    dbFuncionarioPendencia.value:=false;
    dbFuncionarioSalarioBruto.value:=0;
    dbFuncionarioRGEmissor.value:='SSP/SP';
    dbFuncionarioHorarioIni.Value:=StrToTime('08:00');
    dbFuncionarioHorarioFim.Value:=StrToTime('18:00');
    dbFuncionarioHorarioIni1.Value:=StrToTime('08:00');
    dbFuncionarioHorarioFim1.Value:=StrToTime('17:00');
    dbFuncionarioAlmocoIni.Value:=StrToTime('12:00');
    dbFuncionarioAlmocoFim.Value:=StrToTime('13:00');
    dbFuncionarioCursando.value:=false;
end;

procedure TfrmCLT.dbFuncionarioAfterPost(DataSet: TDataSet);
var d,m,a,d1,m1,a1,aini:word;
var i,m2,a2:integer;
var iData:Tdate;
begin
    if dbFuncionario.Tag=1 then
    begin
        if dbLogin.Locate('Usuario',dbFuncionarioLogin.value,[loCaseInsensitive]) then
        begin
            ShowMessage('Login em uso, selecione outro.');
            cmpLoginF.Enabled:=true;
            cmpLoginF.SetFocus;
            abort;
        end;
        dbLogin.Insert;
        dbLoginUsuario.value:=dbFuncionarioLogin.value;
        dbLoginNomeUsuario.value:=dbFuncionarioNome.value;
        dbLoginTipo.value:='A';
        dbLoginDataInicio.value:=dbFuncionarioDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
        ShowMessage('Usuário cadastrado com sucesso. A senha provisória é [0000]');
        dbFuncionario.Tag:=0;
        cmpLoginF.Enabled:=false;
    end;
    if not dbFuncionarioDataFim.isnull then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['A',dbFuncionarioLogin.value]),[loCaseInsensitive]) then
        begin
            dbLogin.Edit;
            dbLoginDataFim.value:=dbFuncionarioDataFim.value;
            dbLoginUsuarioE.value:=iUsuario;
            dbLoginDataExclusao.value:=date;
            dbLogin.Post;
        end;
    end
    else
    begin
        DecodeDate(dbFuncionarioDataInicio.value,a,m,d);
        aini:=2013;  //ano inicial das ferias - somente a partir de 2013
        if a>2013 then
            aini:=a;
        DecodeDate(date,a1,m1,d1);
        for i:=aini to a1 do
        begin
            iData:=EncodeDate(i,m,d);
            if not dbFuncionarioFerias.Locate('PeriodoIni',iData,[]) then
            begin
                dbFuncionarioFerias.Insert;
                dbFuncionarioFeriasPeriodoIni.value:=iData;
                if d>1 then
                    iData:=EncodeDate(i+1,m,d-1)
                else
                begin
                    iData:=EncodeDate(i+1,m,1);
                    iData:=iData-1;
                end;
                dbFuncionarioFeriasPeriodoFim.value:=iData;
                m2:=m-2;
                a2:=i;
                if m2<=0 then
                begin
                    m2:=m2+12;
                    a2:=a2-1;
                end;
                iData:=EncodeDate(a2+2,m2,d);
                dbFuncionarioFeriasLimite.value:=iData;
                dbFuncionarioFerias.Post;
            end;
        end;

        if not dbFuncionarioPS.Locate('Dependente',0,[]) then
        begin
            if dbFilial.Locate('Filial',dbFuncionarioFilial.value,[]) then
            begin
                iPS:=dbFilialContratoSaude.value;
                iPO:=dbFilialContratoOdonto.value;
                iPlanoM:=dbFilialPSaude.value;
                iPlanoO:=dbFilialPOdonto.value;
            end;
            dbFuncionarioPS.Insert;
            dbFuncionarioPSDependente.value:=0;
            dbFuncionarioPSNome.value:=dbFuncionarioNome.value;
            dbFuncionarioPSNascimento.value:=dbFuncionarioNascimento.value;
            dbFuncionarioPSContratoSaude.value:=iPS;
            dbFuncionarioPSPlanoSaude.value:=iPlanoM;
            dbFuncionarioPSContratoOdonto.value:=iPO;
            dbFuncionarioPSPlanoOdonto.value:=iPlanoO;
            dbFuncionarioPS.Post;
        end
        else
        begin
            dbFuncionarioPS.Edit;
            dbFuncionarioPSNascimento.value:=dbFuncionarioNascimento.value;
            dbFuncionarioPS.Post;
        end;    

    end;
end;

procedure TfrmCLT.dbFuncionarioBeforeInsert(DataSet: TDataSet);
begin
    cmdFichaFClick(dbFuncionario);
    cmdFichaF.Down:=true;
    cmdListaF.Down:=false;
    qryFuncionario.Refresh;
    qryFuncionario.Last;
    iUltimoFuncionario:=qryFuncionarioFuncionario.Value;
end;

procedure TfrmCLT.dbFuncionarioBeforePost(DataSet: TDataSet);
var d,m,a:word;
begin
    if dbFuncionario.Tag=0 then
    begin
        if dbFuncionarioFuncionario.Value<=0 then
        begin
            ShowMessage('Código inválido');
            abort;
        end;
        if dbFuncionarioNome.Value='' then
        begin
            ShowMessage('Nome inválido');
            abort;
        end;
        if dbFuncionarioFilial.Value=0 then
        begin
            ShowMessage('Filial inválida');
            abort;
        end;
        if dbFuncionarioDataInicio.isnull then
        begin
            ShowMessage('Admissão inválida');
            abort;
        end;
        if not dbFuncionarioDataFim.IsNull then
            if (dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E') or (dbFuncionarioStatus.value='I') then
               dbFuncionarioStatus.value:='D';

        dbFuncionarioUF.value:=UpperCase(dbFuncionarioUF.value);
        dbFuncionarioUFNascimento.value:=UpperCase(dbFuncionarioUFNascimento.value);
        dbFuncionarioUsuario.Value:=iUsuario;
        dbFuncionarioDataAlteracao.value:=date;
    end;
    if dbFuncionarioDataAtualizacao.isnull then
        dbFuncionarioDataAtualizacao.value:=dbFuncionarioDataInicio.value;

    if not dbFuncionarioNascimento.isnull then
    begin
        DecodeDate(dbFuncionarioNascimento.value,a,m,d);
        dbFuncionarioDiaAniversario.value:=d;
        dbFuncionarioMesAniversario.value:=m;
    end;
    if dbFuncionario.Tag=1 then
    begin
        if dbFuncionarioLogin.value='' then
        begin
            ShowMessage('Login inválido');
            abort;
        end;
    end;

end;

procedure TfrmCLT.cmdAnteriorClick(Sender: TObject);
begin
    dbFuncionario.Prior;
end;

procedure TfrmCLT.cmdProximoClick(Sender: TObject);
begin
    dbFuncionario.Next;
end;

procedure TfrmCLT.rdgTipoClick(Sender: TObject);
begin
    dbFuncionario.Refresh;
end;

procedure TfrmCLT.dbFuncionarioBeforeEdit(DataSet: TDataSet);
begin
    cmdFichaFClick(dbFuncionario);
    cmdFichaF.Down:=true;
    cmdListaF.Down:=false;
end;

procedure TfrmCLT.tabOrdemFuncionarioChange(Sender: TObject);
begin
     case tabOrdemFuncionario.TabIndex of
     0:dbFuncionario.IndexFieldNames:='Nome';
     1:dbFuncionario.IndexFieldNames:='Funcionario';
     end;
end;

procedure TfrmCLT.txtFuncionarioChange(Sender: TObject);
begin
    if txtFuncionario.text<>'' then
        case TabOrdemFuncionario.TabIndex of
        0:dbFuncionario.Locate('Nome',Trim(TxtFuncionario.Text),[loPartialKey,loCaseInsensitive]);
        1:dbFuncionario.Locate('Funcionario',StrtoInt(Trim(TxtFuncionario.Text)),[loPartialKey,loCaseInsensitive]);
        end;
end;


procedure TfrmCLT.Label74MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmCLT.Panel3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCLT.DBLookupComboBox3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmCLT.Label74Click(Sender: TObject);
begin
    if not frmMenu.Acesso('Tabelas') then
       abort;
    if frmCadastro=nil then
        Application.CreateForm(TfrmCadastro, frmCadastro);
    frmCadastro.tag:=2;
    frmCadastro.Show;
end;

procedure TfrmCLT.grdFunDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if not dbFuncionarioDataFim.IsNull then
        grdFun.Canvas.font.Color:=clRed;

     grdFun.DefaultDrawDataCell(Rect,grdFun.Columns[DataCol].field,State);
end;

procedure TfrmCLT.dbFuncionarioFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var istatus, ipendencia:boolean;
begin
    case rdgStatus.ItemIndex of
    0:istatus:=(dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E');
    1:istatus:=(dbFuncionarioStatus.value='D') or (dbFuncionarioStatus.value='S');
    2:istatus:=dbFuncionarioStatus.value='I';
    3:istatus:=true;
    end;

    case rdgPendencia.ItemIndex of
    0:iPendencia:=dbFuncionarioPendencia.value=false;
    1:iPendencia:=dbFuncionarioPendencia.value=true;
    2:iPendencia:=true;
    end;


    accept:=istatus and ipendencia;
end;

procedure TfrmCLT.BitBtn6Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by Status, Nome ';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;
    if qryFuncionario.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.rvFin.SelectReport('RelFuncionarios',true);

    frmMenu.rvFin.Execute;
end;
end;

procedure TfrmCLT.dbFuncionarioCalcFields(DataSet: TDataSet);
var a,m,d,an,mn,dn:word;
var iData:Tdate;
var idade:integer;
begin
    if dbFuncionarioNascimento.isnull then
        idade:=0
    else
    begin
        DecodeDate(dbFuncionarioNascimento.value,an,mn,dn);
        DecodeDate(date,a,m,d);
        iData:=EncodeDate(a,mn,dn);
        Idade:=a-an;
        if date<iData then
            Idade:=Idade-1;
    end;
    dbFuncionarioIdade.value:=idade;
end;

procedure TfrmCLT.cmdNovoESClick(Sender: TObject);
begin
    dbFuncionarioES.Insert;
    grdFuncionarioES.SetFocus;
end;

procedure TfrmCLT.cmdGravaESClick(Sender: TObject);
begin
    dbFuncionarioES.Post;
end;

procedure TfrmCLT.cmdExcluiESClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioES.Delete;
end;

procedure TfrmCLT.dsFuncionarioESStateChange(Sender: TObject);
begin
     cmdNovoES.Enabled:=dbFuncionarioES.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiES.Enabled:=(dbFuncionarioES.Active=true) and
                         (dbFuncionarioES.RecordCount<>0);
     cmdGravaES.Enabled:=dbFuncionarioES.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioESAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioESFuncionario.value:=dbFuncionarioFuncionario.value;
    dbFuncionarioESCargo.value:=dbFuncionarioCargo.value;
    dbFuncionarioESDataInicio.value:=date;
end;

procedure TfrmCLT.cmdNovoIClick(Sender: TObject);
begin
    dbFuncionarioINSS.Insert;
    grdFuncionarioINSS.setFocus;
end;

procedure TfrmCLT.cmdGravaIClick(Sender: TObject);
begin
    dbFuncionarioINSS.Post;
end;

procedure TfrmCLT.cmdExcluiIClick(Sender: TObject);
var i:integer;
begin
    i:=application.Messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioINSS.Delete;
end;

procedure TfrmCLT.dsFuncionarioINSSStateChange(Sender: TObject);
begin
     cmdNovoI.Enabled:=dbFuncionarioINSS.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiI.Enabled:=(dbFuncionarioINSS.Active=true) and
                         (dbFuncionarioINSS.RecordCount<>0);
     cmdGravaI.Enabled:=dbFuncionarioINSS.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioINSSAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioINSSFuncionario.value:=dbFuncionarioFuncionario.value;
end;

procedure TfrmCLT.dbFuncionarioINSSCalcFields(DataSet: TDataSet);
begin
    if dbFuncionarioINSSPrevisao.isnull then
        dbFuncionarioINSSDiasP.value:=0
    else
        dbFuncionarioINSSDiasP.value:=DaysBetween(dbFuncionarioINSSDataInicio.value,dbFuncionarioINSSPrevisao.value);

    if dbFuncionarioINSSRetorno.isnull then
        dbFuncionarioINSSDiasR.value:=0
    else
        dbFuncionarioINSSDiasR.value:=DaysBetween(dbFuncionarioINSSDataInicio.value,dbFuncionarioINSSRetorno.value);
end;

procedure TfrmCLT.dbFuncionarioINSSBeforePost(DataSet: TDataSet);
begin
    if (dbFuncionarioINSSDataInicio.value>dbFuncionarioINSSPrevisao.value) and
       (not dbFuncionarioInssPrevisao.isnull)  then
    begin
        ShowMessage('Previsão menor que inicio');
        abort;
    end;
    if (dbFuncionarioINSSDataInicio.value>dbFuncionarioINSSRetorno.value) and
       (not dbFuncionarioINSSRetorno.isnull)  then
    begin
        ShowMessage('Retorno menor que inicio');
        abort;
    end;
end;

procedure TfrmCLT.dbFuncionarioEstadoCivilGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioEstadoCivil.value='' then
       text:='Não Informado';
    if dbFuncionarioEstadoCivil.value='S' then
       text:='Solteiro';
    if dbFuncionarioEstadoCivil.value='C' then
        text:='Casado';
    if dbFuncionarioEstadoCivil.value='D' then
       text:='Divorciado';
    if dbFuncionarioEstadoCivil.value='P' then
       text:='Separado';
    if dbFuncionarioEstadoCivil.value='V' then
       text:='Viúvo';
    if dbFuncionarioEstadoCivil.value='0' then
       text:='Outros';
end;

procedure TfrmCLT.dbFuncionarioEstadoCivilSetText(Sender: TField;
  const Text: String);
begin
    if text='Não Informado' then
        dbFuncionarioEstadoCivil.value:='';
    if text='Solteiro' then
        dbFuncionarioEstadoCivil.value:='S';
    if text='Casado' then
        dbFuncionarioEstadoCivil.value:='C';
    if text='Divorciado' then
        dbFuncionarioEstadoCivil.value:='D';
    if text='Separado' then
        dbFuncionarioEstadoCivil.value:='P';
    if text='Viúvo' then
        dbFuncionarioEstadoCivil.value:='V';
    if text='Outros' then
        dbFuncionarioEstadoCivil.value:='O';
end;

procedure TfrmCLT.BitBtn1Click(Sender: TObject);
begin
  dbFuncionario.Edit;
  dbFuncionarioCliente.value:=0;
  dbFuncionario.Post;
end;

procedure TfrmCLT.dbFuncionarioStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioStatus.value='A' then
       text:='Ativo';
    if dbFuncionarioStatus.value='E' then
       text:='Ativo-Transferido';
    if dbFuncionarioStatus.value='D' then
       text:='Demitido';
    if dbFuncionarioStatus.value='S' then
       text:='Demitido-Transferido';
    if dbFuncionarioStatus.value='I' then
        text:='Afastado';

end;

procedure TfrmCLT.dbFuncionarioStatusSetText(Sender: TField;
  const Text: String);
begin
    if text='Ativo' then
        dbFuncionarioStatus.value:='A';
    if text='Ativo-Transferido' then
        dbFuncionarioStatus.value:='E';
    if text='Demitido' then
        dbFuncionarioStatus.value:='D';
    if text='Demitido-Transferido' then
        dbFuncionarioStatus.value:='S';
    if text='Afastado' then
        dbFuncionarioStatus.value:='I';
end;

procedure TfrmCLT.dbFuncionarioINSSAfterPost(DataSet: TDataSet);
begin
  ShowMessage('Atualize o Status do funcionário');
end;

procedure TfrmCLT.dbFuncionarioESAreaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioESArea.value='A' then
       text:='Administrativo';
    if dbFuncionarioESArea.value='O' then
       text:='Operacional';
    if dbFuncionarioESArea.value='E' then
       text:='OP.Externo';
end;

procedure TfrmCLT.dbFuncionarioESAreaSetText(Sender: TField;
  const Text: String);
begin
    if text='Administrativo' then
        dbFuncionarioESArea.value:='A';
    if text='Operacional' then
        dbFuncionarioESArea.value:='O';
    if text='OP.Externo' then
        dbFuncionarioESArea.value:='E';
end;

procedure TfrmCLT.cmdLoginFClick(Sender: TObject);
begin
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if not dbFuncionarioDataFim.IsNull then
    begin
        ShowMessage('Senha permitida apenas para usuários ativos');
        abort;
    end;
    if dbFuncionarioLogin.value<>'' then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['A',dbFuncionarioLogin.value]),[loCaseInsensitive]) then
        begin
            ShowMessage('Login ja cadastrado');
            abort;
        end;
    end;
    dbFuncionario.Edit;
    dbFuncionario.Tag:=1;
    cmpLoginF.Enabled:=true;
    cmpLoginF.SetFocus;
end;

procedure TfrmCLT.cmdSenhaFClick(Sender: TObject);
begin
    dbLogin.refresh;
    if frmMenu.dbUsuarioMasterFin.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if dbFuncionarioLogin.value='' then
    begin
        ShowMessage('Usuário sem login. Cadastre primeiramente um login.');
        abort;
    end;
    if not dbLogin.Locate('Tipo;Usuario',VarArrayof(['A',dbFuncionarioLogin.value]),[loCaseInsensitive]) then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbFuncionarioLogin.value;
        dbLoginNomeUsuario.value:=dbFuncionarioNome.value;
        dbLoginTipo.value:='A';
        dbLoginDataInicio.value:=dbFuncionarioDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
    end;
    if frmSenhaAltera=nil then
       Application.CreateForm(TfrmSenhaAltera, frmSenhaAltera);
    frmSenhaAltera.ShowModal;
end;

procedure TfrmCLT.dbLoginAfterInsert(DataSet: TDataSet);
begin
    dbLoginBBFin.Value:=false;
    dbLoginMasterFin.value:=false;
    dbLoginBBAud.value:=false;
    dbLoginMasterAud.Value:=false;
    dbLoginBBAgenda.Value:=false;
    dbLoginMasterAgenda.value:=false;
    dbLoginBBISO.value:=false;
    dbLoginMasterISO.value:=false;
    dbLoginSenha.Text:=Encrypt('0000');
end;

procedure TfrmCLT.dbFuncionarioTipoContaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioTipoConta.value='C' then
       text:='Corrente';
    if dbFuncionarioTipoConta.value='P' then
       text:='Poupança';
    if dbFuncionarioTipoConta.value='S' then
        text:='Salário';
end;

procedure TfrmCLT.dbFuncionarioTipoContaSetText(Sender: TField;
  const Text: String);
begin
    if text='Poupança' then
        dbFuncionarioTipoConta.value:='P';
    if text='Salário' then
        dbFuncionarioTipoConta.value:='S';
    if text='Corrente' then
        dbFuncionarioTipoConta.value:='C';
end;

procedure TfrmCLT.rdgStatusClick(Sender: TObject);
begin
    dbFuncionario.Refresh;
end;

procedure TfrmCLT.dbFuncionarioESBeforePost(DataSet: TDataSet);
begin
    dbFuncionarioESUsuario.value:=iUsuario;
    dbFuncionarioESDataUsuario.Value:=date;
end;

procedure TfrmCLT.cmdFotoClick(Sender: TObject);
var xarq: string;
var ximg: TPicture;
var figura: file of byte;
begin
    if dbFuncionario.State in [dsInsert,dsEdit] then
        dbFuncionario.Edit;

     if (dlgInserirFoto.Execute) then
     begin
        xarq:=dlgInserirFoto.FileName;
        xarq:=UpperCase(xarq);
        AssignFile(Figura, dlgInserirFoto.FileName);
        Reset(Figura);
        if FileSize(Figura) > 102400 then
        begin
            ShowMessage('Arquivo maior que 100kb!');
            CloseFile(Figura);
            abort;
        end;
        CloseFile(Figura);
        ximg:= TPicture.Create();
        ximg.LoadFromFile(xarq);
        ClipBoard.Assign(ximg);
        cmpFoto.PasteFromClipBoard;
        dbFuncionario.Post;
        ximg.Free;
    end;

end;

procedure TfrmCLT.cmdFotoExcluirClick(Sender: TObject);
var i:integer;
begin
    i:=Application.MessageBox('Confirma a exclusão da foto do Funcionário',
                               'Aviso',mb_yesno+mb_iconquestion);
    if (i=id_no) then abort;

    dbFuncionario.Edit;
    dbFuncionarioFoto.Clear;
    dbFuncionario.Post;
end;

procedure TfrmCLT.dbFuncionarioGrauEscolariedadeGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    case dbFuncionarioGrauEscolariedade.value of
    0:text:='0 - Não informado';
    1:text:='1 - 1o. grau Incompleto (Fundamental)';
    2:text:='2 - 1o. grau Completo (Fundamental)';
    3:text:='3 - 2o. grau Incompleto (Ensino Médio)';
    4:text:='4 - 2o. grau Completo (Ensino Médio)';
    5:text:='5 - Superior Incompleto';
    6:text:='6 - Superior Completo';
    7:text:='7 - Mestrado Completo';
    8:text:='8 - Doutorado Completo';
    end;
end;

procedure TfrmCLT.dbFuncionarioGrauEscolariedadeSetText(Sender: TField;
  const Text: String);
var txt:string;
begin
    txt:=Copy(text,1,1);
    dbFuncionarioGrauEscolariedade.value:=StrToInt(txt);
end;

procedure TfrmCLT.dbFuncionarioAfterScroll(DataSet: TDataSet);
begin
     if (dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E') then
         lblStatus.Color:=clLime
     else
         lblStatus.Color:=clRed;

     if dbFuncionarioPendencia.value=false then
         lblPendencia.Color:=clLime
     else
         lblPendencia.Color:=clRed;
end;

procedure TfrmCLT.cmdPendenciasClick(Sender: TObject);
var iResultado, iqtd:integer;
var texto:string;
begin
     iResultado:=Application.MessageBox('Confirme a verificação de pendencias em todos os colaboradores!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     rdgPendencia.ItemIndex:=2;
     rdgStatus.ItemIndex:=0;
     dbFuncionario.Refresh;
     pb.Min:=0;
     pb.Max:=dbFuncionario.RecordCount;
     pb.Position:=0;
     iAtual:=dbFuncionarioFuncionario.value;

     dbFuncionario.First;
     while not dbFuncionario.Eof do
     begin
        texto:='';
        if dbFuncionarioFone.value='' then
            texto:=texto+'- Telefone não cadastrado'+#13;
        if dbFuncionarioCelular.value='' then
            texto:=texto+'- Celular não cadastrado'+#13;
        if dbFuncionarioEmail.value='' then
            texto:=texto+'- e-mail não cadastrado'+#13;

        if dbFuncionarioContatoUrgencia.value='' then
            texto:=texto+'- Contato em caso de urgência não cadastrado'+#13;
        if dbFuncionarioParentescoUrgencia.value='' then
            texto:=texto+'- Parentesco do contato em caso de urgência não cadastrado'+#13;
        if (dbFuncionarioFoneUrgencia.value='') and (dbFuncionarioCelularUrgencia.value='') then
            texto:=texto+'- Telefone ou Celular  de urgência não cadastrado'+#13;

        if dbFuncionarioEndereco.value='' then
            texto:=texto+'- Endereço não cadastrado'+#13;
        if dbFuncionarioBairro.value='' then
            texto:=texto+'- Bairro não cadastrado'+#13;
        if dbFuncionarioCidade.value='' then
            texto:=texto+'- Cidade não cadastrada'+#13;
        if dbFuncionarioCEP.value='' then
            texto:=texto+'- CEP não cadastrado'+#13;

        if dbFuncionarioNascimento.isnull then
            texto:=texto+'- Data de nascimento não cadastrada'+#13;
        if dbFuncionarioEstadoCivil.value='' then
            texto:=texto+'- Estado civil não cadastrado'+#13;
        if dbFuncionarioSexo.value='' then
            texto:=texto+'- Sexo não cadastrado'+#13;
        if dbFuncionarioNacionalidade.value='' then
            texto:=texto+'- Nacionalidade não cadastrada'+#13;
        if dbFuncionarioNomeMae.value='' then
            texto:=texto+'- Nome da mãe não cadastrado'+#13;
        if (dbFuncionarioIdade.value<18) and (dbFuncionarioContatoMenor.value='') then
            texto:=texto+'- Menor sem responsavel cadastrado'+#13;

        if dbFuncionarioRG.value='' then
            texto:=texto+'- RG não cadastrado'+#13;
        if dbFuncionarioCPF.value='' then
            texto:=texto+'- CPF não cadastrado'+#13;
        if dbFuncionarioCT.value='' then
            texto:=texto+'- Carteira de Trabalho não cadastrada'+#13;
        if dbFuncionarioTituloEleitor.value='' then
            texto:=texto+'- Titulo Eleitor não cadastrado'+#13;
        if dbFuncionarioPIS.value='' then
            texto:=texto+'- PIS não cadastrado'+#13;
        if (dbFuncionarioReservista.value='') and (dbFuncionarioSexo.value='M') then
            texto:=texto+'- Reservista não cadastrado'+#13;

        if dbFuncionarioConta.value='' then
            texto:=texto+'- Conta Corrente não cadastrada'+#13;
        if dbFuncionarioSalarioBruto.value=0 then
            texto:=texto+'- Salário não cadastrado'+#13;

        if dbFuncionarioGrauEscolariedade.value=0 then
            texto:=texto+'- Grau de escolariedade não cadastrado'+#13;

        if (dbFuncionarioDataAtualizacao.value+365)<date then
            texto:=texto+'- Ultima atualização cadastral há mais de um ano - '+DateToStr(dbFuncionarioDataAtualizacao.value)+#13;

        dbFuncionarioFerias.First;
        while (dbFuncionarioFeriasGozoIni.IsNull) and (not dbFuncionarioFerias.Eof) do
        begin
            if (dbFuncionarioFeriasLimite.value-60)<date then
                texto:=texto+'- Limite de ferias vencidas inferior a 60 dias - '+DateToStr(dbFuncionarioFeriasLimite.value)+#13;
            dbFuncionarioFerias.Next;
        end;

        if (dbFuncionarioValeTransporte.value=1) and (dbFuncionarioTR.RecordCount=0) then
                texto:=texto+'- Vale transporte não cadastrado'+#13;

        dbFuncionarioAD.First;
        while (not dbFuncionarioAD.Eof) do
        begin
            if (dbFuncionarioADStatus.value='A') and ((dbFuncionarioADDataAvaliacao.value-30)<date) then
                texto:=texto+'- Existe Avaliação de Desempenho em aberto - '+DateToStr(dbFuncionarioADDataAvaliacao.value)+#13;
            if (dbFuncionarioADStatus.value='P') and ((dbFuncionarioADDataAvaliacao.value-30)<date)  then
                texto:=texto+'- Existe Avaliação de Desempenho pendente - '+DateToStr(dbFuncionarioADDataAvaliacao.value)+#13;
            if (dbFuncionarioADDataAvaliacao.value)>date then
                texto:=texto+'- Avaliação de Desempenho vencida - '+DateToStr(dbFuncionarioADDataAvaliacao.value)+#13
            else
                if (dbFuncionarioADDataAvaliacao.value-30)>date then
                    texto:=texto+'- Proxima Avaliação de Desempenho em menos de 30 dias - '+DateToStr(dbFuncionarioADDataAvaliacao.value)+#13;
            dbFuncionarioAD.Next;
        end;

        dbDependente.First;
        while (not dbDependente.Eof) do
        begin
            if (dbDependenteNascimento.IsNull) then
                    texto:=texto+'- Dependente sem data de nascimento'+#13;
            dbDependente.Next;
        end;

        dbFuncionario.Edit;
        dbFuncionarioPendenciaTexto.clear;
        if texto<>'' then
        begin
            dbFuncionarioPendenciaTexto.Value:=texto;
            dbFuncionarioPendencia.value:=true;
        end
        else
            dbFuncionarioPendencia.value:=false;
        dbFuncionario.Post;
        dbFuncionario.Next;
        pb.Position:=pb.Position+1;
     end;
     pb.Position:=0;
     dbFuncionario.Locate('Funcionario',iAtual,[]);
     ShowMessage('Funcionarios conferidos com sucesso');
end;

procedure TfrmCLT.rdgPendenciaClick(Sender: TObject);
begin
    dbFuncionario.Refresh;
end;

procedure TfrmCLT.dbFuncionarioPendenciaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
{    if Tfield='0' then
       text:='Não';
    if Tfield=true then
       text:='Sim';}

end;

procedure TfrmCLT.cmdTabelaClick(Sender: TObject);
begin
    if frmCadastroCLT=nil then
        Application.CreateForm(TfrmCadastroCLT, frmCadastroCLT);
    frmCadastroCLT.ShowModal;
    dbTransporte.Refresh;
    dbPSaude.Refresh;
    dbPOdonto.Refresh;
    dbFilial.Refresh;
    dbFunFilial.Refresh;
    dbCargo.Refresh;
    dbPlanoM.Refresh;
    dbPlanoO.Refresh;
end;

procedure TfrmCLT.cmdNovoTRClick(Sender: TObject);
begin
    dbFuncionarioTR.Insert;
    grdFuncionarioTR.SetFocus;
end;

procedure TfrmCLT.cmdGravaTRClick(Sender: TObject);
begin
    dbFuncionarioTR.Post;
end;

procedure TfrmCLT.cmdExcluiTRClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioTR.Delete;

end;

procedure TfrmCLT.dbFuncionarioTRAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioTRFuncionario.value:=dbFuncionarioFuncionario.value;
end;

procedure TfrmCLT.dbFuncionarioTRBeforePost(DataSet: TDataSet);
begin
    dbFuncionarioTRUsuario.value:=iUsuario;
    dbFuncionarioTRDataUsuario.value:=date;
end;

procedure TfrmCLT.BitBtn3Click(Sender: TObject);
var i:integer;
var irg:string;
begin
    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        irg:=dbFuncionarioRG.value;
        while pos('.',irg)>0 do
        begin
            i:=pos('.',irg);
            delete(irg,i,1);
        end;
        while pos('-',irg)>0 do
        begin
            i:=pos('-',irg);
            delete(irg,i,1);
        end;

        dbFuncionario.Edit;
        dbFuncionarioRG.value:=irg;
        dbFuncionarioCargo.value:=dbFuncionarioESCargo.value;
        dbFuncionario.Post;
        dbFuncionario.Next;
    end;
end;

procedure TfrmCLT.dbFuncionarioFeriasCalcFields(DataSet: TDataSet);
begin
    if (not dbFuncionarioFeriasGozoIni.isnull) and (not dbFuncionarioFeriasGozoFim.IsNull) then
        dbFuncionarioFeriasQtdDias.value:=DaysBetween(dbFuncionarioFeriasGozoFim.value,dbFuncionarioFeriasGozoIni.value)+1
    else
        dbFuncionarioFeriasQtdDias.value:=0;        

end;

procedure TfrmCLT.grdFeriasCellClick(Column: TColumn);
begin
    if dbFuncionarioFeriasGozoIni.IsNull then
       MonthCalendar1.Date:=date
    else
        MonthCalendar1.Date:=dbFuncionarioFeriasGozoIni.value;
    MonthCalendar1.EndDate:=dbFuncionarioFeriasGozoFim.value;
end;

procedure TfrmCLT.cmdNovoAClick(Sender: TObject);
begin
    dbFuncionarioFerias.Insert;
    grdFerias.SetFocus;
end;

procedure TfrmCLT.cmdGravaAClick(Sender: TObject);
begin
    dbFuncionarioFerias.Post;
end;

procedure TfrmCLT.cmdExcluirAClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioFerias.Delete;
end;

procedure TfrmCLT.dsFuncionarioFeriasStateChange(Sender: TObject);
begin
     cmdNovoA.Enabled:=dbFuncionarioFerias.State in [dsBrowse];
     cmdExcluirA.Enabled:=(dbFuncionarioFerias.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFuncionarioFerias.RecordCount<>0);
     cmdGravaA.Enabled:=dbFuncionarioFerias.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioFeriasAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioFeriasFuncionario.value:=dbFuncionarioFuncionario.value;
end;

procedure TfrmCLT.dbFuncionarioAfterRefresh(DataSet: TDataSet);
begin
    dsFuncionarioFeriasStateChange(dbFuncionarioFerias);
end;

procedure TfrmCLT.dbFuncionarioFeriasBeforePost(DataSet: TDataSet);
begin
    if (not dbFuncionarioFeriasGozoIni.isnull) and
       (dbFuncionarioFeriasGozoFim.value<=dbFuncionarioFeriasGozoIni.value) then
    begin
        ShowMessage('Ferias final menor que inicial');
        abort;
    end;
end;

procedure TfrmCLT.dbFuncionarioTRBeforeInsert(DataSet: TDataSet);
begin
    if dbFuncionarioValeTransporte.value=0 then
    begin
        ShowMessage('Colaborador não utiliza vale transporte');
        abort;
    end;
    dbTransporte.Refresh;
end;

procedure TfrmCLT.tabOrdemPagChange(Sender: TObject);
begin
    case tabOrdemPag.TabIndex of
    0:dbPagCLT.IndexFieldNames:='Funcionario;DataVencto desc ';
    1:dbPagCLT.IndexFieldNames:='Funcionario;DataPagto desc ';
    2:dbPagCLT.IndexFieldNames:='Funcionario;Cod1;Cod2;Cod3;DataPagto desc  ';
    3:dbPagCLT.IndexFieldNames:='Funcionario;Historico;DataPagto desc ';
    end;
end;

procedure TfrmCLT.dsFuncionarioTRStateChange(Sender: TObject);
begin
     cmdNovoTR.Enabled:=dbFuncionarioTR.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiTR.Enabled:=(dbFuncionarioTR.Active=true) and
                         (dbFuncionarioTR.RecordCount<>0);
     cmdGravaTR.Enabled:=dbFuncionarioTR.State in [dsEdit,dsInsert];

end;

procedure TfrmCLT.dbFuncionarioADAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioADFuncionario.value:=dbFuncionarioFuncionario.value;
    dbFuncionarioADAvaliacao.value:=0;
    dbFuncionarioADPlanoAcao.value:=false;
    dbFuncionarioADStatus.value:='P';
end;

procedure TfrmCLT.dbFuncionarioBEAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioBEFuncionario.value:=dbFuncionarioFuncionario.value;
end;

procedure TfrmCLT.dbFuncionarioPSAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioPSFuncionario.value:=dbFuncionarioFuncionario.value;
    dbFuncionarioPSContratoSaude.value:=iPS;
    dbFuncionarioPSPlanoSaude.value:=iPlanoM;
    dbFuncionarioPSContratoOdonto.value:=iPO;
    dbFuncionarioPSPlanoOdonto.value:=iPlanoO;

    grdPS.Columns[1].ReadOnly:=false;
    grdPS.Columns[2].ReadOnly:=false;
end;

procedure TfrmCLT.dbFuncionarioPSCalcFields(DataSet: TDataSet);
var a,m,d,an,mn,dn:word;
var iData:Tdate;
var idade:integer;
begin
    if dbFuncionarioPSNascimento.isnull then
        idade:=0
    else
    begin
        DecodeDate(dbFuncionarioPSNascimento.value,an,mn,dn);
        DecodeDate(date,a,m,d);
        iData:=EncodeDate(a,mn,dn);
        Idade:=a-an;
        if date<iData then
            Idade:=Idade-1;
    end;
    dbFuncionarioPSIdade.value:=idade;

end;

procedure TfrmCLT.cmdNovoADClick(Sender: TObject);
begin
    dbFuncionarioAD.Insert;
    grdAD.SetFocus;
end;

procedure TfrmCLT.cmdGravaADClick(Sender: TObject);
begin
    dbFuncionarioAD.Post;
end;

procedure TfrmCLT.cmdExcluirADClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioAD.Delete;

end;

procedure TfrmCLT.dbFuncionarioADPlanoAcaoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioADPlanoAcao.value=false then
       text:='Não';
    if dbFuncionarioADPlanoAcao.value=true then
       text:='Sim';
end;


procedure TfrmCLT.dbFuncionarioADPlanoAcaoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbFuncionarioADPlanoAcao.value:=false;
    if text='Sim' then
        dbFuncionarioADPlanoAcao.value:=true;
end;

procedure TfrmCLT.dbFuncionarioADStatusGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioADStatus.value='N' then
       text:='NA';
    if dbFuncionarioADStatus.value='P' then
       text:='Pendente';
    if dbFuncionarioADStatus.value='A' then
       text:='Em andamento';
    if dbFuncionarioADStatus.value='F' then
       text:='Finalizado';
end;

procedure TfrmCLT.dbFuncionarioADStatusSetText(Sender: TField;
  const Text: String);
begin
    if text='NA' then
        dbFuncionarioADStatus.value:='N';
    if text='Em andamento' then
        dbFuncionarioADStatus.value:='A';
    if text='Pendente' then
        dbFuncionarioADStatus.value:='P';
    if text='Finalizado' then
        dbFuncionarioADStatus.value:='F';
end;


procedure TfrmCLT.dsFuncionarioADStateChange(Sender: TObject);
begin
     cmdNovoAD.Enabled:=dbFuncionarioAD.State in [dsBrowse];
     cmdExcluirAD.Enabled:=(dbFuncionarioAD.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFuncionarioAD.RecordCount<>0);
     cmdGravaAD.Enabled:=dbFuncionarioAD.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.cmdPrevADClick(Sender: TObject);
var i,m1,m2,idias:integer;
var d,m,a:word;
var idata:TDate;
begin
    i:=application.messagebox('Confirme o calculo das proximas Avaliações de Desempenho',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;

    m1:=StrToInt(Edit5.Text);
    m2:=StrToInt(Edit6.Text);

    PB.Min:=0;
    PB.Position:=0;
    PB.Max:=dbFuncionario.RecordCount;
    iAtual:=dbFuncionarioFuncionario.value;

    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        if (dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E') then
        begin
            if dbFuncionarioAD.RecordCount=0 then
            begin
                dbFuncionarioAD.Insert;
                dbFuncionarioADDataAvaliacao.value:=dbFuncionarioDataInicio.value+90;
                dbFuncionarioAD.Post;
            end
            else
            begin
                dbFuncionarioAD.First;
                iData:=dbFuncionarioADDataAvaliacao.value;
                if dbFuncionarioADStatus.value='F' then
                begin
                    dbFuncionarioAD.Insert;
                    dbFuncionarioADDataAvaliacao.value:=iData+365;
                    dbFuncionarioAD.Post;
                end;
            end;
        end;
        PB.Position:=PB.Position+1;
        dbFuncionario.Next;
    end;
    dbFuncionario.Locate('Funcionario',iAtual,[]);
    ShowMessage('Avaliações de desempenho atualizadas com sucesso');
    PB.Position:=0;

end;

procedure TfrmCLT.cmdNovoBEClick(Sender: TObject);
begin
    dbFuncionarioBE.Insert;
    grdFuncionarioBE.SetFocus;
end;

procedure TfrmCLT.cmdGravarBEClick(Sender: TObject);
begin
    dbFuncionarioBE.Post;
end;

procedure TfrmCLT.cmdExcluirBEClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioBE.Delete;
end;

procedure TfrmCLT.dsFuncionarioBEStateChange(Sender: TObject);
begin
     cmdNovoAD.Enabled:=dbFuncionarioBE.State in [dsBrowse];
     cmdExcluirAD.Enabled:=(dbFuncionarioBE.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFuncionarioBE.RecordCount<>0);
     cmdGravaAD.Enabled:=dbFuncionarioBE.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioADBeforePost(DataSet: TDataSet);
begin
    dbFuncionarioADUsuario.value:=iUsuario;
    dbFuncionarioADDataUsuario.value:=date;
end;

procedure TfrmCLT.dbFuncionarioBEBeforePost(DataSet: TDataSet);
begin
    dbFuncionarioBEUsuario.value:=iUsuario;
    dbFuncionarioBEDataUsuario.value:=date;
end;

procedure TfrmCLT.dbFuncionarioBEBeforeInsert(DataSet: TDataSet);
begin
    if dbFuncionarioBolsaEducacao.value=0 then
    begin
        ShowMessage('Colaborador não recebe Bolsa Educação');
        abort;
    end;

end;

procedure TfrmCLT.dbFuncionarioTRAfterEdit(DataSet: TDataSet);
begin
    dbTransporte.Refresh;
end;

procedure TfrmCLT.cmdGeraBolsaClick(Sender: TObject);
var i,m,a,idias:integer;
begin
    i:=application.messagebox('Confirme o calculo das Bolsas Educação para o mes selecionado para todos Funcionarios',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;

    m:=StrToInt(Edit8.Text);
    a:=StrToInt(Edit9.Text);
    PB.Min:=0;
    PB.Position:=0;
    PB.Max:=dbFuncionario.RecordCount;
    iAtual:=dbFuncionarioFuncionario.value;

    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        if ((dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E')) and
           (dbFuncionarioBolsaEducacao.value=1) then
        begin
            dbFuncionarioBE.First;
            while not dbFuncionarioBE.eof do
            begin
                if dbFuncionarioBEMes.Locate('Ano;Mes;Curso',VarArrayof([a,m,dbFuncionarioBECurso.value]),[]) then
                    dbFuncionarioBEMes.Edit
                else
                    dbFuncionarioBEMes.Insert;
                dbFuncionarioBEMesAno.value:=a;
                dbFuncionarioBEMesMes.value:=m;
                dbFuncionarioBEMesCurso.value:=dbFuncionarioBECurso.value;
                dbFuncionarioBEMesValor.value:=dbFuncionarioBEValor.value;
                dbFuncionarioBEMes.Post;

                dbFuncionarioBE.Next;
            end;
        end;
        dbFuncionario.Next;
        PB.Position:=PB.Position+1;
    end;
    dbFuncionario.Locate('Funcionario',iAtual,[]);
    ShowMessage('Bolsas Educação atualizadas com sucesso');
    PB.Position:=0;

end;

procedure TfrmCLT.grdBEMesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if Odd(dbFuncionarioBEMesMes.value) then
      grdBEMes.Canvas.Brush.Color := clskyBlue
    else
      grdBEMes.Canvas.Brush.Color := clWhite;

    grdBEMes.Canvas.FillRect(Rect);
    grdBEMes.Canvas.Font.Color:=clBlack;
    grdBEMes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TfrmCLT.dbFuncionarioBEMesAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioBEMesFuncionario.value:=dbFuncionarioFuncionario.value;
end;

procedure TfrmCLT.dbFuncionarioBEMesBeforePost(DataSet: TDataSet);
begin
    dbFuncionarioBEMesUsuario.value:=iUsuario;
    dbFuncionarioBEMesDataUsuario.value:=date;
end;

procedure TfrmCLT.dbPSaudeFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPSaudeTipo.value='M';
end;

procedure TfrmCLT.dbPOdontoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPOdontoTipo.value='O';
end;

procedure TfrmCLT.dbFuncionarioPSBeforeEdit(DataSet: TDataSet);
begin
     dbPSaude.Refresh;
     dbPOdonto.Refresh;
     dbPlanoC.Refresh;
     dbPlanoO.Refresh;
     dbPlanoM.Refresh;
     dbValorM.Refresh;
     dbValorO.Refresh;
end;

procedure TfrmCLT.dbFuncionarioPSBeforePost(DataSet: TDataSet);
begin
    if dbFuncionarioPSNome.value='' then
    begin
        ShowMessage('Nome do dependente inválido');
        abort;
    end;
    if dbFuncionarioPSNascimento.isnull then
    begin
        ShowMessage('Nascimento do dependente inválido');
        abort;
    end;
    dbFuncionarioPSUsuario.value:=iUsuario;
    dbFuncionarioPSDataUsuario.value:=date;
end;

procedure TfrmCLT.cmdNovoPSClick(Sender: TObject);
begin
    dbFuncionarioPS.Insert;
    grdPS.SetFocus;
end;

procedure TfrmCLT.cmdGravaPSClick(Sender: TObject);
begin
    dbFuncionarioPS.Post;
end;

procedure TfrmCLT.cmdExcluiPSClick(Sender: TObject);
var i:integer;
begin
    if dbFuncionarioPSDependente.value=0 then
    begin
        ShowMessage('Impossivel excluir Plano de Saude do proprio Funcionário');
        abort;
    end;
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
        dbFuncionarioPS.Delete;
end;

procedure TfrmCLT.dsFuncionarioPSStateChange(Sender: TObject);
begin
     cmdNovoPS.Enabled:=dbFuncionarioPS.State in [dsBrowse];
     cmdExcluiPS.Enabled:=(dbFuncionarioPS.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbFuncionarioPS.RecordCount<>0);
     cmdGravaPS.Enabled:=dbFuncionarioPS.State in [dsEdit,dsInsert];
end;

procedure TfrmCLT.dbFuncionarioPSBeforeInsert(DataSet: TDataSet);
begin
    if dbFilial.Locate('Filial',dbFuncionarioFilial.value,[]) then
    begin
        iPS:=dbFilialContratoSaude.value;
        iPO:=dbFilialContratoOdonto.value;
        iPlanoM:=dbFilialPSaude.value;
        iPlanoO:=dbFilialPOdonto.value;
    end;
    dbFuncionarioPS.Refresh;
end;

procedure TfrmCLT.grdPSMesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if Odd(dbFuncionarioPSMesMes.value) then
      grdPSMes.Canvas.Brush.Color := clskyBlue
    else
      grdPSMes.Canvas.Brush.Color := clWhite;

    grdPSMes.Columns[5].Font.Color:=clGreen;
    grdPSMes.Columns[6].Font.Color:=clGreen;
    grdPSMes.Columns[7].Font.Color:=clRed;
    grdPSMes.Columns[9].Font.Color:=clGreen;
    grdPSMes.Columns[10].Font.Color:=clGreen;
    grdPSMes.Columns[11].Font.Color:=clRed;
    grdPSMes.Columns[14].Font.Color:=clRed;
    grdPSMes.Columns[14].Font.Style:=[fsBold];


    grdPSMes.Canvas.FillRect(Rect);
    grdPSMes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TfrmCLT.cmdGeraPSClick(Sender: TObject);
var i:integer;
var a,m,d:word;
var ivalorM,ivalorO,ivalorA,iEmpM,iEmpO: currency;
begin
    i:=application.messagebox('Confirme o calculo dos Planos de Saude/Odonto para o mes selecionado para todos Funcionarios',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;

    m:=StrToInt(Edit3.Text);
    a:=StrToInt(Edit4.Text);

    PB.Min:=0;
    PB.Position:=0;
    PB.Max:=dbFuncionario.RecordCount;
    iAtual:=dbFuncionarioFuncionario.value;

    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        if (dbFuncionarioStatus.value='A') or (dbFuncionarioStatus.value='E') then
        begin
            dbFuncionarioPS.First;
            while not dbFuncionarioPS.eof do
            begin
                dbPSaude.Locate('Contrato',VarArrayof([dbFuncionarioPSContratoSaude.value]),[]);
                dbPlanoM.Locate('Contrato;Plano',VarArrayof([dbFuncionarioPSContratoSaude.value,
                                                             dbFuncionarioPSPlanoSaude.value]),[]);
                dbValorM.First;
                while (dbValorMIdade.value<dbFuncionarioPSIdade.value) and (not dbValorM.eof) do
                    dbValorM.Next;
                if (not dbValorM.eof) then
                    iValorM:=dbValorMValor.value
                else
                    iValorM:=0;

                dbPlanoM.Locate('Contrato;Plano',VarArrayof([dbFunFilialContratoSaude.value,
                                                             dbFunFilialPSaude.value]),[]);
                dbValorM.First;
                while (dbValorMIdade.value<dbFuncionarioPSIdade.value) and (not dbValorM.eof) do
                    dbValorM.Next;
                if (not dbValorM.eof) then
                    iEmpM:=dbValorMValor.value
                else
                    iEmpM:=0;

                dbPOdonto.Locate('Contrato',VarArrayof([dbFuncionarioPSContratoOdonto.value]),[]);
                dbPlanoO.Locate('Contrato;Plano',VarArrayof([dbFuncionarioPSContratoOdonto.value,
                                                             dbFuncionarioPSPlanoOdonto.value]),[]);
                dbValorO.First;
                while (dbValorOIdade.value<dbFuncionarioPSIdade.value) and (not dbValorO.eof) do
                    dbValorO.Next;
                if (not dbValorO.eof) then
                    iValorO:=dbValorOValor.value
                else
                    iValorO:=0;

                dbPlanoO.Locate('Contrato;Plano',VarArrayof([dbFunFilialContratoOdonto.value,
                                                             dbFunFilialPOdonto.value]),[]);
                dbValorO.First;
                while (dbValorOIdade.value<dbFuncionarioPSIdade.value) and (not dbValorO.eof) do
                    dbValorO.Next;
                if (not dbValorO.eof) then
                    iEmpO:=dbValorOValor.value
                else
                    iEmpO:=0;

                if dbFuncionarioPSPlanoAdicionalO.value='' then
                    iValorA:=0
                else
                begin
                    dbPlanoO.Locate('Contrato;Plano',VarArrayof([dbFuncionarioPSContratoOdonto.value,
                                                                 dbFuncionarioPSPlanoAdicionalO.value]),[]);
                    dbValorO.First;
                    while (dbValorOIdade.value<dbFuncionarioPSIdade.value) and (not dbValorO.eof) do
                        dbValorO.Next;
                    if (not dbValorO.eof) then
                        iValorA:=dbValorOValor.value
                    else
                        iValorA:=0;
                end;

                if dbFuncionarioPSMes.Locate('Ano;Mes;Dependente',VarArrayof([a,m,dbFuncionarioPSDependente.value]),[]) then
                    dbFuncionarioPSMes.Edit
                else
                    dbFuncionarioPSMes.Insert;
                dbFuncionarioPSMesAno.value:=a;
                dbFuncionarioPSMesMes.value:=m;
                dbFuncionarioPSMesIdade.value:=dbFuncionarioPSIdade.value;
                dbFuncionarioPSMesPlanoSaudeEmp.value:=dbFunFilialPSaude.value;
                dbFuncionarioPSMesPlanoOdontoEmp.value:=dbFunFilialPOdonto.value;
                dbFuncionarioPSMesPlanoSaudeDep.value:=dbFuncionarioPSPlanoSaude.value;
                dbFuncionarioPSMesPlanoOdontoDep.value:=dbFuncionarioPSPlanoOdonto.value;
                dbFuncionarioPSMesValorMDep.value:=ivalorM;
                dbFuncionarioPSMesValorODep.value:=ivalorO;
                dbFuncionarioPSMesValorOA.value:=ivalorA;

                if dbFuncionarioPSDependente.value=0 then
                    dbFuncionarioPSMesValorMEmp.value:=iEmpM
                else
                    dbFuncionarioPSMesValorMEmp.value:=0;

                if dbFuncionarioPSDependente.value=0 then
                    dbFuncionarioPSMesValorOEmp.value:=iEmpO
                else
                    dbFuncionarioPSMesValorOEmp.value:=0;

                dbFuncionarioPSMes.Post;

                dbFuncionarioPS.Next;
            end;
        end;
        dbFuncionario.Next;
        PB.Position:=PB.Position+1;
    end;
    dbFuncionario.Locate('Funcionario',iAtual,[]);
    ShowMessage('Beneficios Médico/Odontologicos atualizados com sucesso');
    PB.Position:=0;

end;

procedure TfrmCLT.dbFuncionarioPSMesAfterInsert(DataSet: TDataSet);
begin
    dbFuncionarioPSMesFuncionario.value:=dbFuncionarioFuncionario.value;
    dbFuncionarioPSMesDependente.value:=dbFuncionarioPSDependente.value;
end;

procedure TfrmCLT.dbFuncionarioPSMesCalcFields(DataSet: TDataSet);
begin
    dbFuncionarioPSMesDiferencaM.Value:=dbFuncionarioPSMesValorMDep.value-
                                        dbFuncionarioPSMesValorMEmp.value;
    dbFuncionarioPSMesDiferencaO.Value:=dbFuncionarioPSMesValorODep.value-
                                        dbFuncionarioPSMesValorOEmp.value;
    dbFuncionarioPSMesDiferencaT.value:=dbFuncionarioPSMesDiferencaM.value+
                                        dbFuncionarioPSMesDiferencaO.value+
                                        dbFuncionarioPSMesValorOA.value;
end;

procedure TfrmCLT.BitBtn2Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by Status, Nome ';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;

    frmMenu.ExcelExport.Dataset:=qryFuncionario;
    frmMenu.ExcelExport.ExportDataset;
    frmMenu.ExcelExport.Disconnect;
end;
end;

procedure TfrmCLT.BitBtn9Click(Sender: TObject);
var i:integer;
var iData:TDate;
begin
    dbFunES.Refresh;

    if not dbFunES.Locate('DataInicio',DataAumento.Date,[]) then
    begin
        ShowMessage('Não ha aumentos na data selecionada');
        abort;
    end;

    i:=application.messagebox('Confirme a exclusão dos aumentos da data selecionada para todos funcionarios',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;


    dbFunES.Locate('DataInicio',DataAumento.Date,[]);
    while (dbFunESDataInicio.value=DataAumento.date) and (not dbFunES.eof) do
        dbFunES.Delete;

    dbFuncionarioES.REfresh;
    ShowMessage('Aumentos excluidos com sucesso');

end;

procedure TfrmCLT.cmdAumentoClick(Sender: TObject);
var i,iCargo,idataini:integer;
var isalario:currency;
var indice:variant;
var iData:TDate;
var iarea:string;
begin
    dbFunES.Refresh;

    if dbFunES.Locate('DataInicio',DataAumento.Date,[]) then
    begin
        ShowMessage('Data selecionada ja possui informações. Exclua a data e reprocesse');
        abort;
    end;

    dbFunES.Last;
    if dbFunESDataInicio.value>DataAumento.Date then
    begin
        ShowMessage('Existem informações posteriores a data do aumento');
        abort;
    end;

    if lblAumento.text='' then
    begin
        ShowMessage('Descriçao inválida');
        abort;
    end;

    indice:=StrToFloat(IndiceAumento.Text);
    if indice=0 then
    begin
        ShowMessage('Indice inválido');
        abort;
    end;

    i:=application.messagebox('Confirme a atualização Salarial para todos Funcionarios',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;

    PB.Min:=0;
    PB.Position:=0;
    PB.Max:=dbFuncionario.RecordCount;
    indice:=StrToFloat(IndiceAumento.Text);
    indice:=(indice/100)+1;
    iData:=DataAumento.Date;
    iAtual:=dbFuncionarioFuncionario.value;

    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        if dbFuncionarioES.RecordCount>0 then
        begin
            dbFuncionarioES.First;
            iCargo:=dbFuncionarioESCargo.value;
            iSalario:=dbFuncionarioSalarioBruto.value;
            iarea:=dbFuncionarioESArea.value;

            dbFuncionarioES.Insert;
            dbFuncionarioESDataInicio.value:=iData;
            dbFuncionarioESCargo.value:=iCargo;
            dbFuncionarioESSalario.value:=iSalario*indice;
            dbFuncionarioESDescricao.value:=lblAumento.Text;
            dbFuncionarioESArea.value:=iArea;
            dbFuncionarioES.Post;
        end;
        dbFuncionario.Next;
        PB.Position:=PB.Position+1;
    end;
    dbFuncionario.Locate('Funcionario',iAtual,[]);
    ShowMessage('Atualização salarial processada com sucesso');
    PB.Position:=0;

end;

procedure TfrmCLT.dbDependenteCalcFields(DataSet: TDataSet);
var a,m,d,an,mn,dn:word;
var iData:Tdate;
var idade:integer;
begin
    if dbDependenteNascimento.isnull then
        idade:=0
    else
    begin
        DecodeDate(dbDependenteNascimento.value,an,mn,dn);
        DecodeDate(date,a,m,d);
        iData:=EncodeDate(a,mn,dn);
        Idade:=a-an;
        if date<iData then
            Idade:=Idade-1;
    end;
    dbDependenteIdade.value:=idade;
end;

procedure TfrmCLT.dbDependenteAfterInsert(DataSet: TDataSet);
begin
    dbDependenteFuncionario.value:=dbFuncionarioFuncionario.value;
    dbDependenteDependente.value:=iDep+1;
end;

procedure TfrmCLT.cmdNovoDClick(Sender: TObject);
begin
    dbDependente.Insert;
    grdDep.SetFocus;
end;

procedure TfrmCLT.cmdGravaDClick(Sender: TObject);
begin
    dbDependente.Post;
end;

procedure TfrmCLT.cmdExcluiDClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Confirme a exclusão do registro',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbDependente.Delete;
end;

procedure TfrmCLT.dsDependenteStateChange(Sender: TObject);
begin
     cmdNovoD.Enabled:=dbDependente.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiD.Enabled:=(dbDependente.Active=true) and
                         (dbDependente.RecordCount<>0);
     cmdGravaD.Enabled:=dbDependente.State in [dsEdit,dsInsert];

end;

procedure TfrmCLT.dbDependenteBeforeInsert(DataSet: TDataSet);
begin
    dbDependente.Last;
    iDep:=dbDependenteDependente.value;
end;

procedure TfrmCLT.dbFuncionarioESAfterPost(DataSet: TDataSet);
begin
    dbFuncionarioES.First;
    dbFuncionario.Edit;
    dbFuncionarioSalarioBruto.value:=dbFuncionarioESSalario.value;
    dbFuncionarioCargo.value:=dbFuncionarioESCargo.value;
    dbFuncionario.Post;
end;

procedure TfrmCLT.BitBtn19Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by Status, Nome ';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;
    if qryFuncionario.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    frmMenu.RvFin.SetParam('Titulo','** Salario Bruto Atual **');
    frmMenu.rvFin.SelectReport('RelFunSalario',true);

    frmMenu.rvFin.Execute;
end;

end;

procedure TfrmCLT.BitBtn4Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by MesAniversario,DiaAniversario,Nome';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;
    if qryFuncionario.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.rvFin.SelectReport('RelFunAniversario',true);
    frmMenu.rvFin.Execute;
end;

end;

procedure TfrmCLT.BitBtn7Click(Sender: TObject);
var a,m,d:word;
begin
    m:=StrToInt(Edit3.Text);
    a:=StrToInt(Edit4.Text);

    qryPSMes.close;
    qryPSMes.sql.clear;
    qryPSMes.sql.text:='select * from FuncionarioPSMes  '+
                       'where Mes=:iMes and Ano=:iAno and '+
                       '((ValorMEmp<>ValorMDep) or (ValorOEmp<>ValorODep) or (ValorOA>0)) '+
                       'order by Ano,Mes,Funcionario,Dependente';

    qryPSMes.ParamByName('iMes').value:=m;
    qryPSMes.ParamByName('iAno').value:=a;

    qryPSMes.Open;
    if qryPSMes.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.RvFin.SetParam('Titulo','Desconto Funcionarios Plano de Saude');
    frmMenu.RvFin.SetParam('Competencia','Competencia '+IntToStr(m)+'/'+IntToStr(a));

    frmMenu.rvFin.SelectReport('RelPSMes',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmCLT.BitBtn10Click(Sender: TObject);
var iFuncionario:integer;
begin
    iFuncionario:=dbFuncionarioFuncionario.value;
with dmRelatorio do
begin

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+
                             'where Funcionario=:iFun ';

    qryFuncionario.ParamByName('iFun').value:=iFuncionario;

    qryFuncionario.Open;
    qryFuncionario.First;

    frmMenu.rvFin.SelectReport('RelFichaFun',true);
    frmMenu.rvFin.Execute;

end;
end;

procedure TfrmCLT.dbFuncionarioSexoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbFuncionarioSexo.value='F' then
       text:='Feminino';
    if dbFuncionarioSexo.value='M' then
       text:='Masculino';
end;

procedure TfrmCLT.dbFuncionarioSexoSetText(Sender: TField;
  const Text: String);
begin
    if text='Feminino' then
        dbFuncionarioSexo.value:='F';
    if text='Masculino' then
        dbFuncionarioSexo.value:='M';
end;

procedure TfrmCLT.BitBtn5Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by Nome';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;
    if qryFuncionario.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.rvFin.SelectReport('RelFichaFun',true);
    frmMenu.rvFin.Execute;
end;
end;

procedure TfrmCLT.BitBtn11Click(Sender: TObject);
var iFuncionario:integer;
begin
    iFuncionario:=dbFuncionarioFuncionario.value;
with dmRelatorio do
begin

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+
                             'where Funcionario=:iFun ';

    qryFuncionario.ParamByName('iFun').value:=iFuncionario;

    qryFuncionario.Open;
    qryFuncionario.First;

    frmMenu.rvFin.SelectReport('RelAtualizaFun',true);
    frmMenu.rvFin.Execute;

end;

end;

procedure TfrmCLT.BitBtn13Click(Sender: TObject);
begin
    if frmRelIndicador=nil then
        Application.CreateForm(TfrmRelIndicador, frmRelIndicador);
    frmRelIndicador.ShowModal;
end;

procedure TfrmCLT.BitBtn12Click(Sender: TObject);
var ilinhaA:string;
begin
with dmRelatorio do
begin
    case rdgStatus.ItemIndex of
    0,1,2:ilinhaA:='where Status=:iStatus ';
    3:ilinhaA:='';
    end;

    qryFuncionario.close;
    qryFuncionario.sql.clear;
    qryFuncionario.sql.text:='select * from Funcionario  '+iLinhaA+
                             'order by Nome';

    case rdgStatus.ItemIndex of
    0:qryFuncionario.ParamByName('iStatus').asstring:='A';
    1:qryFuncionario.ParamByName('iStatus').asstring:='D';
    2:qryFuncionario.ParamByName('iStatus').asstring:='I';
    end;

    qryFuncionario.Open;
    if qryFuncionario.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.rvFin.SelectReport('RelAtualizaFun',true);
    frmMenu.rvFin.Execute;
end;
end;

procedure TfrmCLT.BitBtn14Click(Sender: TObject);
var i:integer;
begin
    if dbFuncionarioPSPlanoAdicionalO.value<>'' then
    begin
        i:=application.messagebox('Confirme a exclusão do Adiconal Odonto',
                                  'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbFuncionarioPS.Edit;
    dbFuncionarioPSPlanoAdicionalO.clear;
    dbFuncionarioPS.Post;
    end;

end;

procedure TfrmCLT.BitBtn15Click(Sender: TObject);
var i:integer;
var iData:TDate;
var a,m,d:word;
begin
    m:=StrToInt(Edit3.Text);
    a:=StrToInt(Edit4.Text);

    dbFuncionarioPSMes.Refresh;

    if not dbFuncionarioPSMes.Locate('Mes;Ano',VarArrayof([m,a]),[]) then
    begin
        ShowMessage('Não ha movimentos no mes selecionado');
        abort;
    end;

    i:=application.messagebox('Confirme a exclusão dos movimentos do mes selecionado para todos funcionarios',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;


    while (dbFuncionarioPSMes.Locate('Mes;Ano',VarArrayof([m,a]),[])) and (not dbFuncionarioPSMes.eof)  do
       dbFuncionarioPSMes.Delete;

    dbFuncionarioPSMes.REfresh;
    ShowMessage('Movimentos excluidos com sucesso');


end;

procedure TfrmCLT.qryPSMesCalcFields(DataSet: TDataSet);
begin
    qryPSMesDiferencaM.Value:=qryPSMesValorMDep.value-
                                        qryPSMesValorMEmp.value;
    qryPSMesDiferencaO.Value:=qryPSMesValorODep.value-
                                        qryPSMesValorOEmp.value;
    qryPSMesDiferencaT.value:=qryPSMesDiferencaM.value+
                                        qryPSMesDiferencaO.value+
                                        qryPSMesValorOA.value;

end;

end.

