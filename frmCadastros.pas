unit frmCadastros;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ExtCtrls, DBImgAsp, ToolWin, Menus, RpDefine, RpBase, RpSystem, ImgList, Variants,
  ExtDlgs;

type
  TfrmCadastro = class(TForm)
    pagCadastro: TPageControl;
    tabCliente: TTabSheet;
    tabEmpresa: TTabSheet;
    Panel6: TPanel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;                                                                                             
    DBText1: TDBText;
    cmpEmpresa: TDBEdit;
    cmpNomeEmpresa: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Panel8: TPanel;
    Label29: TLabel;
    DBText2: TDBText;
    tabAuditor: TTabSheet;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBText3: TDBText;
    cmpAuditor: TDBEdit;
    cmpNomeAuditor: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel13: TPanel;
    Label42: TLabel;
    DBText13: TDBText;
    tabHospital: TTabSheet;
    pnlHospital: TPanel;
    tabDiagnosticos: TTabSheet;
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
    dbAuditor: TMSTable;
    dsAuditor: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dsDiagnostico: TDataSource;
    Panel2: TPanel;
    Label12: TLabel;
    cmpDiagnostico: TDBEdit;
    Label43: TLabel;
    cmpNomeDiagnostico: TDBEdit;
    tabRegiao: TTabSheet;
    dbRegiao: TMSTable;
    dsRegiao: TDataSource;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    Panel12: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    cmpRegiao: TDBEdit;
    cmpRegiaoNome: TDBEdit;
    dbHospitalRegiao: TIntegerField;
    dbHospitalRegiaoNome: TStringField;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    Label57: TLabel;
    DBEdit8: TDBEdit;
    dbHospitalBusca: TMSTable;
    dbHospitalBuscaHospital: TIntegerField;
    dbHospitalBuscaNome: TStringField;
    dbHospitalBuscaRegiao: TIntegerField;
    dbClienteCapeante: TBooleanField;
    tabEnfermeiro: TTabSheet;
    dbEnfermeiro: TMSTable;
    dsEnfermeiro: TDataSource;
    panel: TPanel;
    Panel3: TPanel;
    Label59: TLabel;
    Label60: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBText7: TDBText;
    cmpEnfermeiro: TDBEdit;
    cmpNomeEnfermeiro: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Panel5: TPanel;
    Label70: TLabel;
    DBText8: TDBText;
    tabGlosa: TTabSheet;
    pagGlosa: TPageControl;
    tabGInternacao: TTabSheet;
    tabGProntoSocorro: TTabSheet;
    Label73: TLabel;
    CoolBar2: TCoolBar;
    txtEmpresa: TEdit;
    tabOrdemEmpresa: TTabControl;
    grdEmpresa: TDBGrid;
    tabOrdemAuditor: TTabControl;
    grdAuditor: TDBGrid;
    CoolBar3: TCoolBar;
    txtAuditor: TEdit;
    CoolBar4: TCoolBar;
    txtDiagnostico: TEdit;
    Label75: TLabel;
    tabOrdemDiagnostico: TTabControl;
    DBGrid1: TDBGrid;
    tabOrdemEnfermeiro: TTabControl;
    DBGrid4: TDBGrid;
    CoolBar5: TCoolBar;
    txtEnfermeiro: TEdit;
    Label76: TLabel;
    dbGlosaI: TMSTable;
    dsGlosaI: TDataSource;
    Panel9: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    cmpGlosaI: TDBEdit;
    cmpNomeGlosaI: TDBEdit;
    Label82: TLabel;
    tabOrdemGlosaI: TTabControl;
    DBGrid5: TDBGrid;
    CoolBar8: TCoolBar;
    txtGlosaI: TEdit;
    CoolBar7: TCoolBar;
    txtHospital: TEdit;
    tabOrdemHospital: TTabControl;
    grdHospital: TDBGrid;
    CoolBar11: TCoolBar;
    txtRegiao: TEdit;
    Label86: TLabel;
    tabOrdemRegiao: TTabControl;
    DBGrid3: TDBGrid;
    dbGlosaIGlosaI: TStringField;
    dbGlosaINome: TStringField;
    dbGlosaIResponsavel: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    dbGlosaIResponsavelTexto: TStringField;
    Panel11: TPanel;
    Label80: TLabel;
    Label87: TLabel;
    cmpGlosa1: TDBEdit;
    cmpDescricaoPS: TDBEdit;
    dbGlosaPS: TMSTable;
    dsGlosaPS: TDataSource;
    cmpGlosa2: TDBEdit;
    dbGlosaPSGlosa1: TSmallintField;
    dbGlosaPSGlosa2: TSmallintField;
    dbGlosaPSDescricao: TStringField;
    grdGlosaPS: TDBGrid;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteMaximoCobrado3: TCurrencyField;
    ColorDialog1: TColorDialog;
    dbClienteCor2: TStringField;
    dbClienteCor3: TStringField;
    dbClienteCor1: TStringField;
    dbClienteDiagnostico1: TBooleanField;
    dbClienteDiagnostico2: TBooleanField;
    dbClienteDiagnostico3: TBooleanField;
    dbClienteDiarias: TIntegerField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TIntegerField;
    dbClienteCorDiariaUTI: TStringField;
    tabConclusaoHC: TTabSheet;
    dbConclusao: TMSTable;
    dsConclusao: TDataSource;
    dbConclusaoConclusao: TStringField;
    dbConclusaoNome: TStringField;
    tabOrdemConclusao: TTabControl;
    DBGrid7: TDBGrid;
    Panel18: TPanel;
    Label99: TLabel;
    Label100: TLabel;
    cmpConclusao: TDBEdit;
    cmpNomeConclusao: TDBEdit;
    Label101: TLabel;
    CoolBar12: TCoolBar;
    txtConclusao: TEdit;
    dbConclusaoClinica: TBooleanField;
    dbConclusaoDomiciliar: TBooleanField;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    dbConclusaoClinicaTexto: TStringField;
    dbConclusaoDomiciliarTexto: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    tabAMB: TTabSheet;
    dbAMB: TMSTable;
    dsAMB: TDataSource;
    dbAMBCodAMB: TIntegerField;
    dbAMBDescricaoAMB: TStringField;
    Panel19: TPanel;
    Label105: TLabel;
    Label106: TLabel;
    cmpAmb: TDBEdit;
    cmpNomeAmb: TDBEdit;
    Label107: TLabel;
    CoolBar14: TCoolBar;
    txtAMB: TEdit;
    tabOrdemAMB: TTabControl;
    grdAmb: TDBGrid;
    dbHospitalCNPJ: TStringField;
    dbHospitalBuscaCidade: TStringField;
    dbHospitalBuscaUF: TStringField;
    dbHospitalBuscaCNPJ: TStringField;
    rvRelAuditor: TRvSystem;
    rvRelCliente: TRvSystem;
    rvRelEmpresa: TRvSystem;
    rvRelEnfermeiro: TRvSystem;
    CoolBar1: TCoolBar;
    txtCliente: TEdit;
    tabOrdemCliente: TTabControl;
    grdCliente: TDBGrid;
    pnlCliente: TPanel;
    Label81: TLabel;
    pagLogo: TPageControl;
    TabSheet2: TTabSheet;
    rvRelHospital: TRvSystem;
    Label74: TLabel;
    TabSheet4: TTabSheet;
    grdID: TDBGrid;
    dbClienteID: TMSTable;
    dsClienteID: TDataSource;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipalTexto: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dbAMBTabela: TStringField;
    Label53: TLabel;
    DBComboBox1: TDBComboBox;
    dbAuditorBusca: TMSTable;
    dbAuditorBuscaAuditor: TIntegerField;
    dbAuditorBuscaNome: TStringField;
    dbAuditorBuscaCRM: TIntegerField;
    dbEnfermeiroBusca: TMSTable;
    dbEnfermeiroBuscaEnfermeiro: TIntegerField;
    dbEnfermeiroBuscaNome: TStringField;
    dbEnfermeiroBuscaCOREN: TIntegerField;
    TabSheet5: TTabSheet;
    dbServico: TMSTable;
    dsServico: TDataSource;
    grdServico: TDBGrid;
    dbHospitalCodBradesco: TIntegerField;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorFone: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorEmail: TStringField;
    dbAuditorUsuario: TStringField;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroFone: TStringField;
    dbEnfermeiroFone1: TStringField;
    dbEnfermeiroFone2: TStringField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroUsuario: TStringField;
    Label110: TLabel;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    DBEdit12: TDBEdit;
    Label61: TLabel;
    DBEdit13: TDBEdit;
    Label62: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label63: TLabel;
    DBEdit16: TDBEdit;
    Label64: TLabel;
    DBEdit17: TDBEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label38: TLabel;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoServico: TStringField;
    ImgOk: TImageList;
    dbServicoValorizadoTexto: TStringField;
    dbServicoVinculado: TStringField;
    Panel20: TPanel;
    cmdNovoAMB: TBitBtn;
    cmdAlteraAMB: TBitBtn;
    cmdGravaAMB: TBitBtn;
    cmdCancelaAMB: TBitBtn;
    cmdExcluiAMB: TBitBtn;
    BitBtn6: TBitBtn;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbEmpresaDataInicio: TDateTimeField;
    dbEmpresaDataFim: TDateTimeField;
    dbEmpresaDataInclusao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbEnfermeiroDataInicio: TDateTimeField;
    dbEnfermeiroDataFim: TDateTimeField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    Panel24: TPanel;
    cmdNovoT: TBitBtn;
    cmdAlteraT: TBitBtn;
    cmdGravaT: TBitBtn;
    cmdCancelaT: TBitBtn;
    cmdExcluiT: TBitBtn;
    cmdImprimirT: TBitBtn;
    Panel26: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdImprimir: TBitBtn;
    Panel27: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Panel29: TPanel;
    Panel30: TPanel;
    cmdNovoID: TBitBtn;
    cmdGravaID: TBitBtn;
    cmdCancelaID: TBitBtn;
    cmdExcluiID: TBitBtn;
    cmdPrincipalD: TBitBtn;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    cmdCancelaSv: TBitBtn;
    cmdExcluiSv: TBitBtn;
    cmdGravaSv: TBitBtn;
    cmdNovoSv: TBitBtn;
    cmdNovoR: TBitBtn;
    cmdAlteraR: TBitBtn;
    cmdGravaR: TBitBtn;
    cmdCancelaR: TBitBtn;
    cmdExcluiR: TBitBtn;
    cmdNovoV: TBitBtn;
    cmdAlteraV: TBitBtn;
    cmdGravaV: TBitBtn;
    cmdCancelaV: TBitBtn;
    cmdExcluiV: TBitBtn;
    cmdImprimirV: TBitBtn;
    cmdNovoPS: TBitBtn;
    cmdAlteraPS: TBitBtn;
    cmdGravaPS: TBitBtn;
    cmdCancelaPS: TBitBtn;
    cmdExcluiPS: TBitBtn;
    cmdNovoE: TBitBtn;
    cmdAlteraE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdCancelaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    BitBtn17: TBitBtn;
    cmdNovoP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdAlteraP: TBitBtn;
    cmdImprimirP: TBitBtn;
    cmdNovo3: TBitBtn;
    cmdAltera3: TBitBtn;
    cmdGrava3: TBitBtn;
    cmdCancela3: TBitBtn;
    cmdExclui3: TBitBtn;
    cmdNovoCl: TBitBtn;
    cmdAlteraCL: TBitBtn;
    cmdGravaCl: TBitBtn;
    cmdCancelaCl: TBitBtn;
    cmdExcluiCl: TBitBtn;
    Panel59: TPanel;
    Panel60: TPanel;
    cmdNovoGI: TBitBtn;
    cmdAlteraGI: TBitBtn;
    cmdGravaGI: TBitBtn;
    cmdCancelaGI: TBitBtn;
    cmdExcluiGI: TBitBtn;
    Panel1: TPanel;
    Panel4: TPanel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    DBEdit41: TDBEdit;
    DBEdit40: TDBEdit;
    Panel15: TPanel;
    lblExemplo4: TLabel;
    lblExemplo5: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Label46: TLabel;
    Label51: TLabel;
    dbEnfermeiroNascimento: TDateTimeField;
    Panel7: TPanel;
    Panel17: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    dbAmbNova: TMSTable;
    Button1: TButton;
    dbAmbNovaCodAmb: TIntegerField;
    dbAmbNovaDescricaoAmb: TStringField;
    dbAmbNovaTabela: TStringField;
    dbAuditorNascimento: TDateTimeField;
    Label44: TLabel;
    cmpLoginM: TDBEdit;
    dbAuditorLogin: TStringField;
    dbEnfermeiroLogin: TStringField;
    Label45: TLabel;
    cmpLoginE: TDBEdit;
    dbClienteClienteID: TStringField;
    cmdLoginM: TBitBtn;
    cmdSenhaM: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn10: TBitBtn;
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
    Memo2: TMemo;
    DBCheckBox7: TDBCheckBox;
    dbAMBBradesco: TBooleanField;
    cmdFiltroFn: TSpeedButton;
    dbHospitalAuditorado: TBooleanField;
    cmdFichaH: TSpeedButton;
    cmdListaH: TSpeedButton;
    Panel16: TPanel;
    Label16: TLabel;
    grdHospitalPre: TDBGrid;
    dbHospitalPre: TMSTable;
    dsHospitalPre: TDataSource;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    dbClienteCGCFin: TStringField;
    dlgInserirFoto: TOpenPictureDialog;
    Panel25: TPanel;
    Label49: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label93: TLabel;
    Label58: TLabel;
    Memo1: TMemo;
    DBEdit10: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit11: TDBEdit;
    Panel14: TPanel;
    lblexemplo1: TLabel;
    lblexemplo2: TLabel;
    lblexemplo3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Panel28: TPanel;
    DBEdit45: TDBEdit;
    Label71: TLabel;
    DBCheckBox8: TDBCheckBox;
    DBEdit42: TDBEdit;
    Label103: TLabel;
    DBEdit43: TDBEdit;
    Label104: TLabel;
    Label56: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText6: TDBText;
    DBEdit44: TDBEdit;
    Label108: TLabel;
    Label36: TLabel;
    cmpNomeHospital: TDBEdit;
    cmpHospital: TDBEdit;
    Label30: TLabel;
    dbHospitalDiariaGlobalizada: TBooleanField;
    dbHospitalDiariaGlobalizadaB: TBooleanField;
    pnlParametro: TPanel;
    Label50: TLabel;
    cmbCliente: TDBLookupComboBox;
    rdgMed: TRadioGroup;
    DBLookupComboBox3: TDBLookupComboBox;
    cmbMedico: TDBLookupComboBox;
    rdgEnf: TRadioGroup;
    cmbEnfermeiro: TDBLookupComboBox;
    DBCheckBox11: TDBCheckBox;
    BitBtn13: TBitBtn;
    qryHospital: TMSQuery;
    dbHospitalPreHospital: TIntegerField;
    dbHospitalPreCliente: TIntegerField;
    dbHospitalPreAuditor: TIntegerField;
    dbHospitalPreEnfermeiro: TIntegerField;
    dbHospitalPreZeraAuditor: TBooleanField;
    dbHospitalPreZeraEnfermeiro: TBooleanField;
    dbHospitalPreDG: TBooleanField;
    dbHospitalPreClienteNome: TStringField;
    dbHospitalPreAuditorNome: TStringField;
    dbHospitalPreEnfermeiroNome: TStringField;
    qryHospitalHospital: TIntegerField;
    qryHospitalCliente: TIntegerField;
    qryHospitalAuditor: TIntegerField;
    qryHospitalEnfermeiro: TIntegerField;
    qryHospitalZeraAuditor: TBooleanField;
    qryHospitalZeraEnfermeiro: TBooleanField;
    qryHospitalDG: TBooleanField;
    qryHospitalNome: TStringField;
    qryHospitalCodBradesco: TIntegerField;
    qryHospitalAuditorado: TBooleanField;
    qryHospitalClienteNome: TStringField;
    qryHospitalAuditorNome: TStringField;
    qryHospitalEnfermeiroNome: TStringField;
    Panel31: TPanel;
    Panel32: TPanel;
    cmdNovoHP: TBitBtn;
    cmdAlteraHP: TBitBtn;
    cmdGravaHP: TBitBtn;
    cmdCancelaHP: TBitBtn;
    cmdExcluiHP: TBitBtn;
    TabSheet1: TTabSheet;
    dbClienteAdm: TMSTable;
    dsClienteAdm: TDataSource;
    grdClienteAdm: TDBGrid;
    dbClienteAdmCliente: TIntegerField;
    dbClienteAdmHospital: TIntegerField;
    dbClienteAdmHospitalNome: TStringField;
    Panel23: TPanel;
    Panel33: TPanel;
    cmdCancelaCA: TBitBtn;
    cmdExcluiCA: TBitBtn;
    cmdGravaCA: TBitBtn;
    cmdNovoCA: TBitBtn;
    dbClienteAdmDataUsuario: TDateTimeField;
    dbClienteAdmUsuario: TStringField;
    dbEnfermeiroClienteCNPJ: TStringField;
    dbAuditorClienteCNPJ: TStringField;
    dbAMBGenerico: TBooleanField;
    DBCheckBox9: TDBCheckBox;
    dbClienteProrrogaV: TBooleanField;
    dbHospitalPreCodHospital: TStringField;
    Label52: TLabel;
    DBEdit36: TDBEdit;
    Button2: TButton;
    Panel34: TPanel;
    Label1: TLabel;
    cmpCliente: TDBEdit;
    Label2: TLabel;
    cmpNomeCliente: TDBEdit;
    Label47: TLabel;
    cmpID: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel10: TPanel;
    Label15: TLabel;
    DBText46: TDBText;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    cmpCidade: TDBEdit;
    Label13: TLabel;
    cmpUF: TDBEdit;
    Label6: TLabel;
    cmpCep: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    cmpCGC: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label92: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    cmpHomePage: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit67: TDBEdit;
    DBText12: TDBText;
    Label14: TLabel;
    DBCheckBox10: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dsClienteStateChange(Sender: TObject);
    procedure dbClienteAfterInsert(DataSet: TDataSet);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdAlteraPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdCancelaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dsEmpresaStateChange(Sender: TObject);
    procedure dbEmpresaAfterInsert(DataSet: TDataSet);
    procedure cmdNovoTClick(Sender: TObject);
    procedure cmdAlteraTClick(Sender: TObject);
    procedure cmdGravaTClick(Sender: TObject);
    procedure cmdCancelaTClick(Sender: TObject);
    procedure cmdExcluiTClick(Sender: TObject);
    procedure dsAuditorStateChange(Sender: TObject);
    procedure cmdNovoVClick(Sender: TObject);
    procedure cmdAlteraVClick(Sender: TObject);
    procedure cmdGravaVClick(Sender: TObject);
    procedure cmdCancelaVClick(Sender: TObject);
    procedure cmdExcluiVClick(Sender: TObject);
    procedure dsHospitalStateChange(Sender: TObject);
    procedure cmdLocalizarVClick(Sender: TObject);
    procedure dbHospitalAfterInsert(DataSet: TDataSet);
    procedure cmdNovo3Click(Sender: TObject);
    procedure cmdAltera3Click(Sender: TObject);
    procedure cmdGrava3Click(Sender: TObject);
    procedure cmdCancela3Click(Sender: TObject);
    procedure cmdExclui3Click(Sender: TObject);
    procedure dsDiagnosticoStateChange(Sender: TObject);
    procedure cmdImprimirClick(Sender: TObject);
    procedure cmdImprimirPClick(Sender: TObject);
    procedure cmdImprimirVClick(Sender: TObject);
    procedure dbClienteBeforePost(DataSet: TDataSet);
    procedure dbClienteAfterPost(DataSet: TDataSet);
    procedure dbClienteBeforeInsert(DataSet: TDataSet);
    procedure dbClienteAfterCancel(DataSet: TDataSet);
    procedure dbEmpresaAfterCancel(DataSet: TDataSet);
    procedure dbEmpresaAfterPost(DataSet: TDataSet);
    procedure dbEmpresaBeforeInsert(DataSet: TDataSet);
    procedure dbEmpresaBeforePost(DataSet: TDataSet);
    procedure dbAuditorAfterCancel(DataSet: TDataSet);
    procedure dbAuditorAfterInsert(DataSet: TDataSet);
    procedure dbAuditorBeforeInsert(DataSet: TDataSet);
    procedure dbAuditorBeforePost(DataSet: TDataSet);
    procedure dbHospitalAfterCancel(DataSet: TDataSet);
    procedure dbHospitalAfterPost(DataSet: TDataSet);
    procedure dbHospitalBeforeInsert(DataSet: TDataSet);
    procedure dbHospitalBeforePost(DataSet: TDataSet);
    procedure dbDiagnosticoAfterCancel(DataSet: TDataSet);
    procedure dbDiagnosticoAfterInsert(DataSet: TDataSet);
    procedure dbDiagnosticoAfterPost(DataSet: TDataSet);
    procedure dbDiagnosticoBeforeInsert(DataSet: TDataSet);
    procedure dbDiagnosticoBeforePost(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure cmdNovoRClick(Sender: TObject);
    procedure cmdAlteraRClick(Sender: TObject);
    procedure cmdGravaRClick(Sender: TObject);
    procedure cmdCancelaRClick(Sender: TObject);
    procedure cmdExcluiRClick(Sender: TObject);
    procedure dsRegiaoStateChange(Sender: TObject);
    procedure dbRegiaoAfterCancel(DataSet: TDataSet);
    procedure dbRegiaoAfterInsert(DataSet: TDataSet);
    procedure dbRegiaoAfterPost(DataSet: TDataSet);
    procedure dbRegiaoBeforeInsert(DataSet: TDataSet);
    procedure dbRegiaoBeforePost(DataSet: TDataSet);
    procedure pagCadastroChange(Sender: TObject);
    procedure dbHospitalAfterDelete(DataSet: TDataSet);
    procedure dbRegiaoBeforeEdit(DataSet: TDataSet);
    procedure dbRegiaoBeforeDelete(DataSet: TDataSet);
    procedure tabOrdemClienteChange(Sender: TObject);
    procedure txtClienteChange(Sender: TObject);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdAlteraEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdCancelaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure dbEnfermeiroAfterCancel(DataSet: TDataSet);
    procedure dbEnfermeiroAfterInsert(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeInsert(DataSet: TDataSet);
    procedure dbEnfermeiroBeforePost(DataSet: TDataSet);
    procedure dsEnfermeiroStateChange(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure txtEmpresaChange(Sender: TObject);
    procedure tabOrdemEmpresaChange(Sender: TObject);
    procedure txtAuditorChange(Sender: TObject);
    procedure tabOrdemAuditorChange(Sender: TObject);
    procedure txtDiagnosticoChange(Sender: TObject);
    procedure tabOrdemDiagnosticoChange(Sender: TObject);
    procedure tabOrdemEnfermeiroChange(Sender: TObject);
    procedure txtEnfermeiroChange(Sender: TObject);
    procedure txtHospitalChange(Sender: TObject);
    procedure tabOrdemHospitalChange(Sender: TObject);
    procedure txtRegiaoChange(Sender: TObject);
    procedure tabOrdemRegiaoChange(Sender: TObject);
    procedure dbGlosaICalcFields(DataSet: TDataSet);
    procedure tabOrdemGlosaIChange(Sender: TObject);
    procedure txtGlosaIChange(Sender: TObject);
    procedure dbGlosaIAfterInsert(DataSet: TDataSet);
    procedure dbGlosaIAfterCancel(DataSet: TDataSet);
    procedure dbGlosaIBeforePost(DataSet: TDataSet);
    procedure cmdNovoGIClick(Sender: TObject);
    procedure cmdAlteraGIClick(Sender: TObject);
    procedure cmdGravaGIClick(Sender: TObject);
    procedure cmdCancelaGIClick(Sender: TObject);
    procedure cmdExcluiGIClick(Sender: TObject);
    procedure dsGlosaIStateChange(Sender: TObject);
    procedure cmdNovoPSClick(Sender: TObject);
    procedure cmdAlteraPSClick(Sender: TObject);
    procedure cmdGravaPSClick(Sender: TObject);
    procedure cmdCancelaPSClick(Sender: TObject);
    procedure cmdExcluiPSClick(Sender: TObject);
    procedure dsGlosaPSStateChange(Sender: TObject);
    procedure dbGlosaPSAfterCancel(DataSet: TDataSet);
    procedure dbGlosaPSAfterInsert(DataSet: TDataSet);
    procedure dbGlosaPSBeforePost(DataSet: TDataSet);
    procedure grdGlosaPSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cmdNovoClClick(Sender: TObject);
    procedure cmdAlteraCLClick(Sender: TObject);
    procedure cmdGravaClClick(Sender: TObject);
    procedure cmdCancelaClClick(Sender: TObject);
    procedure cmdExcluiClClick(Sender: TObject);
    procedure dbConclusaoAfterCancel(DataSet: TDataSet);
    procedure dbConclusaoAfterInsert(DataSet: TDataSet);
    procedure dbConclusaoAfterPost(DataSet: TDataSet);
    procedure dbConclusaoBeforePost(DataSet: TDataSet);
    procedure dsConclusaoStateChange(Sender: TObject);
    procedure txtConclusaoChange(Sender: TObject);
    procedure tabOrdemConclusaoChange(Sender: TObject);
    procedure dbConclusaoCalcFields(DataSet: TDataSet);
    procedure cmdNovoAMBClick(Sender: TObject);
    procedure cmdAlteraAMBClick(Sender: TObject);
    procedure cmdGravaAMBClick(Sender: TObject);
    procedure cmdCancelaAMBClick(Sender: TObject);
    procedure cmdExcluiAMBClick(Sender: TObject);
    procedure dbAMBAfterCancel(DataSet: TDataSet);
    procedure dbAMBAfterInsert(DataSet: TDataSet);
    procedure dbAMBAfterPost(DataSet: TDataSet);
    procedure dbAMBBeforePost(DataSet: TDataSet);
    procedure txtAMBChange(Sender: TObject);
    procedure tabOrdemAMBChange(Sender: TObject);
    procedure rvRelAuditorBeforePrint(Sender: TObject);
    procedure rvRelAuditorPrintHeader(Sender: TObject);
    procedure rvRelAuditorPrint(Sender: TObject);
    procedure cmdImprimirTClick(Sender: TObject);
    procedure rvRelClienteBeforePrint(Sender: TObject);
    procedure rvRelClientePrint(Sender: TObject);
    procedure rvRelClientePrintHeader(Sender: TObject);
    procedure rvRelEmpresaBeforePrint(Sender: TObject);
    procedure rvRelEmpresaPrint(Sender: TObject);
    procedure rvRelEmpresaPrintHeader(Sender: TObject);
    procedure rvRelEnfermeiroBeforePrint(Sender: TObject);
    procedure rvRelEnfermeiroPrint(Sender: TObject);
    procedure rvRelEnfermeiroPrintHeader(Sender: TObject);
    procedure rvRelHospitalBeforePrint(Sender: TObject);
    procedure rvRelHospitalPrint(Sender: TObject);
    procedure rvRelHospitalPrintHeader(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure dbClienteIDAfterInsert(DataSet: TDataSet);
    procedure dbClienteIDCalcFields(DataSet: TDataSet);
    procedure dbClienteIDBeforePost(DataSet: TDataSet);
    procedure grdIDDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdPrincipalDClick(Sender: TObject);
    procedure cmdNovoIDClick(Sender: TObject);
    procedure cmdGravaIDClick(Sender: TObject);
    procedure cmdCancelaIDClick(Sender: TObject);
    procedure cmdExcluiIDClick(Sender: TObject);
    procedure dsClienteIDStateChange(Sender: TObject);
    procedure dbClienteIDAfterPost(DataSet: TDataSet);
    procedure dbClienteIDAfterCancel(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure dsServicoStateChange(Sender: TObject);
    procedure cmdNovoSvClick(Sender: TObject);
    procedure cmdGravaSvClick(Sender: TObject);
    procedure cmdCancelaSvClick(Sender: TObject);
    procedure cmdExcluiSvClick(Sender: TObject);
    procedure dbServicoAfterPost(DataSet: TDataSet);
    procedure dbServicoAfterCancel(DataSet: TDataSet);
    procedure dbServicoAfterInsert(DataSet: TDataSet);
    procedure grdServicoDblClick(Sender: TObject);
    procedure dbServicoCalcFields(DataSet: TDataSet);
    procedure grdServicoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbServicoVinculadoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbServicoVinculadoSetText(Sender: TField;
      const Text: String);
    procedure Button1Click(Sender: TObject);
    procedure dbAuditorBeforeEdit(DataSet: TDataSet);
    procedure dbAuditorBeforeDelete(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeEdit(DataSet: TDataSet);
    procedure dbEnfermeiroBeforeDelete(DataSet: TDataSet);
    procedure dbAuditorAfterPost(DataSet: TDataSet);
    procedure dbEnfermeiroAfterPost(DataSet: TDataSet);
    procedure cmdLoginMClick(Sender: TObject);
    procedure cmdSenhaMClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure dbLoginAfterInsert(DataSet: TDataSet);
    procedure dbAMBBeforeDelete(DataSet: TDataSet);
    procedure pagCadastroChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure dbAMBBeforeInsert(DataSet: TDataSet);
    procedure dbAMBBradescoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbAMBBradescoSetText(Sender: TField; const Text: String);
    procedure cmdFiltroFnClick(Sender: TObject);
    procedure dbAMBFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbClienteBeforeDelete(DataSet: TDataSet);
    procedure dbClienteBeforeEdit(DataSet: TDataSet);
    procedure dbHospitalBeforeEdit(DataSet: TDataSet);
    procedure dbHospitalBeforeDelete(DataSet: TDataSet);
    procedure cmdFichaHClick(Sender: TObject);
    procedure cmdListaHClick(Sender: TObject);
    procedure cmdNovoHPClick(Sender: TObject);
    procedure cmdGravaHPClick(Sender: TObject);
    procedure cmdCancelaHPClick(Sender: TObject);
    procedure cmdExcluiHPClick(Sender: TObject);
    procedure dbHospitalPreAfterInsert(DataSet: TDataSet);
    procedure dsHospitalPreStateChange(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure dbHospitalPreZeraAuditorGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbHospitalPreZeraAuditorSetText(Sender: TField;
      const Text: String);
    procedure dbHospitalPreZeraEnfermeiroGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure dbHospitalPreZeraEnfermeiroSetText(Sender: TField;
      const Text: String);
    procedure dbHospitalPreBeforePost(DataSet: TDataSet);
    procedure rdgMedClick(Sender: TObject);
    procedure rdgEnfClick(Sender: TObject);
    procedure dbHospitalPreAfterScroll(DataSet: TDataSet);
    procedure cmdAlteraHPClick(Sender: TObject);
    procedure dbHospitalPreAfterPost(DataSet: TDataSet);
    procedure dbHospitalPreAfterCancel(DataSet: TDataSet);
    procedure dbHospitalPreDGGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbHospitalPreDGSetText(Sender: TField; const Text: String);
    procedure BitBtn13Click(Sender: TObject);
    procedure dbClienteAdmAfterInsert(DataSet: TDataSet);
    procedure cmdNovoCAClick(Sender: TObject);
    procedure cmdGravaCAClick(Sender: TObject);
    procedure cmdCancelaCAClick(Sender: TObject);
    procedure cmdExcluiCAClick(Sender: TObject);
    procedure dsClienteAdmStateChange(Sender: TObject);
    procedure dbClienteAdmBeforePost(DataSet: TDataSet);
    procedure dbAMBGenericoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbAMBGenericoSetText(Sender: TField; const Text: String);
    procedure grdAmbDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;
  iUltimoCliente,iUltimaEmpresa,iUltimoAuditor,iUltimaRegiao,
  iUltimoHospital,iUltimoDiagnostico,iUltimoEnfermeiro,iStatus:integer;

implementation

uses frmPrincipal, frmSenhasAltera;

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

procedure TfrmCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbAMB.Close;
     dbCliente.Close;
     dbClienteID.close;
     dbClienteAdm.Close;
     dbEmpresa.Close;
     dbAuditor.Close;
     dbAuditorBusca.Close;
     dbEnfermeiro.Close;
     dbEnfermeiroBusca.Close;
     dbHospital.Close;
     dbHospitalPre.Close;
     dbHospitalBusca.Close;
     dbDiagnostico.Close;
     dbRegiao.close;
     dbConclusao.Close;
     dbGlosaI.Close;
     dbGlosaPS.Close;
     dbServico.Close;
     dbLogin.Close;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
     dbAMB.Open;
     dbAMB.IndexFieldNames:='CodAMB';
     tabOrdemAMB.TabIndex:=0;
     cmpAMB.Enabled:=false;

     dbCliente.Open;
     dbCliente.IndexFieldNames:='Nome';
     tabOrdemCliente.TabIndex:=0;
     cmpCliente.Enabled:=false;
     dbClienteID.Open;
     dbClienteAdm.Open; 

     dbEmpresa.Open;
     tabOrdemEmpresa.TabIndex:=0;
     cmpEmpresa.Enabled:=false;

     dbAuditor.Open;
     tabOrdemAuditor.TabIndex:=0;
     cmpAuditor.Enabled:=false;
     dbAuditorBusca.Open;

     dbEnfermeiro.Open;
     tabOrdemEnfermeiro.TabIndex:=0;
     cmpEnfermeiro.Enabled:=false;
     dbEnfermeiroBusca.Open;

     dbHospital.Open;
     dbHospitalPre.Open;
     dbHospitalBusca.Open;
     tabOrdemHospital.TabIndex:=0;
     cmpHospital.Enabled:=false;

     dbDiagnostico.Open;
     tabOrdemDiagnostico.TabIndex:=0;
     cmpDiagnostico.Enabled:=false;

     dbGlosaI.Open;
     tabOrdemGlosaI.TabIndex:=0;
     cmpGlosaI.Enabled:=false;

     dbGlosaPS.Open;
     cmpGlosa1.Enabled:=false;
     cmpGlosa2.Enabled:=false;

     dbRegiao.Open;
     tabOrdemRegiao.TabIndex:=0;
     cmpRegiao.Enabled:=false;
     dbRegiao.First;
     if dbRegiaoRegiao.Value<>0 then
     begin
        dbRegiao.Insert;
        dbRegiaoRegiao.Value:=0;
        dbRegiaoDescricao.Value:='Não informado';
        dbRegiao.Post;
     end;


     dbConclusao.Open;
     tabOrdemConclusao.TabIndex:=0;
     cmpConclusao.Enabled:=false;

     dbServico.Open;
     dbLogin.Open;
   finally
     pagCadastro.ActivePage:=tabAMB;
     pagLogo.ActivePageIndex:=0;
     pagGlosa.ActivePage:=tabGInternacao;
     grdID.Columns[0].ReadOnly:=true;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmCadastro.cmdNovoClick(Sender: TObject);
begin
     dbCliente.Insert;
     cmpCliente.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraClick(Sender: TObject);
begin
     dbCliente.Edit;
     cmpNomeCliente.SetFocus;
end;

procedure TfrmCadastro.cmdGravaClick(Sender: TObject);
begin
     dbCliente.Post;
end;

procedure TfrmCadastro.cmdCancelaClick(Sender: TObject);
begin
     dbCliente.Cancel;
end;

procedure TfrmCadastro.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then abort;

     while dbClienteID.RecordCount>0 do
        dbClienteID.Delete;
     dbCliente.Delete;
end;

procedure TfrmCadastro.BitBtn8Click(Sender: TObject);
begin
    dbCliente.Prior;
end;

procedure TfrmCadastro.BitBtn9Click(Sender: TObject);
begin
    dbCliente.Next;
end;

procedure TfrmCadastro.dsClienteStateChange(Sender: TObject);
begin
     cmdNovo.Default:=dbCliente.State in [dsBrowse];
     cmdExclui.Enabled:=(dbCliente.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbCliente.RecordCount<>0);
     cmdGrava.Enabled:=dbCliente.State in [dsEdit,dsInsert];
     cmdGrava.Default:=dbCliente.State in [dsEdit,dsInsert];
     cmdAltera.Enabled:=(dbCliente.State=dsBrowse)
                         and (dbCliente.RecordCount<>0);
     cmdCancela.Enabled:=dbCliente.State in [dsEdit,dsInsert];
end;


procedure TfrmCadastro.dbClienteAfterInsert(DataSet: TDataSet);
begin
    cmpCliente.Enabled:=true;
    cmpID.Enabled:=true;
    dbClienteCidade.Value:='São Paulo';
    dbClienteUF.Value:='SP';
    dbClienteCliente.Value:=iUltimoCliente+1;
    dbClienteDataInicio.Value:=date;
    dbClienteDataInclusao.Value:=date;
    dbClienteDiarias.value:=7;
    dbClienteDiariasUTI.value:=0;
end;

procedure TfrmCadastro.cmdNovoPClick(Sender: TObject);
begin
     dbEmpresa.Insert;
     cmpEmpresa.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraPClick(Sender: TObject);
begin
     dbEmpresa.Edit;
     cmpNomeEmpresa.SetFocus;
end;

procedure TfrmCadastro.cmdGravaPClick(Sender: TObject);
begin
     dbEmpresa.Post;
end;

procedure TfrmCadastro.cmdCancelaPClick(Sender: TObject);
begin
     dbEmpresa.Cancel;
end;

procedure TfrmCadastro.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbEmpresa.Delete;
end;

procedure TfrmCadastro.dsEmpresaStateChange(Sender: TObject);
begin
     cmdNovoP.Default:=dbEmpresa.State in [dsBrowse];
     cmdExcluiP.Enabled:=(dbEmpresa.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEmpresa.RecordCount<>0);
     cmdGravaP.Enabled:=dbEmpresa.State in [dsEdit,dsInsert];
     cmdGravaP.Default:=dbEmpresa.State in [dsEdit,dsInsert];
     cmdAlteraP.Enabled:=(dbEmpresa.State=dsBrowse)
                         and (dbEmpresa.RecordCount<>0);
     cmdCancelaP.Enabled:=dbEmpresa.State in [dsEdit,dsInsert];
end;


procedure TfrmCadastro.dbEmpresaAfterInsert(DataSet: TDataSet);
begin
    cmpEmpresa.Enabled:=true;
    dbEmpresaEmpresa.Value:=iUltimaEmpresa+1;
    dbEmpresaDataInclusao.Value:=date;
    dbEmpresaDataInicio.Value:=date;
end;

procedure TfrmCadastro.cmdNovoTClick(Sender: TObject);
begin
     dbAuditor.Insert;
     cmpAuditor.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraTClick(Sender: TObject);
begin
     dbAuditor.Edit;
     cmpNomeAuditor.SetFocus;
end;

procedure TfrmCadastro.cmdGravaTClick(Sender: TObject);
begin
     dbAuditor.Post;
end;

procedure TfrmCadastro.cmdCancelaTClick(Sender: TObject);
begin
     dbAuditor.Cancel;
end;

procedure TfrmCadastro.cmdExcluiTClick(Sender: TObject);
var iResultado:integer;
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para Usuários Master');
        abort;
    end;
    iResultado:=Application.MessageBox('Atenção! Dado compartilhado com o Sistema Financeiro'+#13+
                                       'Tem cereteza que deseja excluir o Registro?',
    'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
    dbAuditor.Delete;
end;

procedure TfrmCadastro.dsAuditorStateChange(Sender: TObject);
begin
     cmdNovoT.Default:=dbAuditor.State in [dsBrowse];
     cmdExcluiT.Enabled:=(dbAuditor.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbAuditor.RecordCount<>0);
     cmdGravaT.Enabled:=dbAuditor.State in [dsEdit,dsInsert];
     cmdGravaT.Default:=dbAuditor.State in [dsEdit,dsInsert];
     cmdAlteraT.Enabled:=(dbAuditor.State=dsBrowse)
                         and (dbAuditor.RecordCount<>0);
     cmdCancelaT.Enabled:=dbAuditor.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdNovoVClick(Sender: TObject);
begin
     dbHospital.Insert;
     cmpHospital.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraVClick(Sender: TObject);
begin
     dbHospital.Edit;
     cmpNomeHospital.SetFocus;
end;

procedure TfrmCadastro.cmdGravaVClick(Sender: TObject);
begin
     dbHospital.Post;
end;

procedure TfrmCadastro.cmdCancelaVClick(Sender: TObject);
begin
     dbHospital.Cancel;
end;

procedure TfrmCadastro.cmdExcluiVClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_no) then
        abort;

     while not dbHospitalPre.RecordCount>0 do
        dbHospitalPre.Delete;

     dbHospital.Delete;
end;

procedure TfrmCadastro.dsHospitalStateChange(Sender: TObject);
begin
     cmdNovoV.Default:=dbHospital.State in [dsBrowse];
     cmdExcluiV.Enabled:=(dbHospital.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbHospital.RecordCount<>0);
     cmdGravaV.Enabled:=dbHospital.State in [dsEdit,dsInsert];
     cmdGravaV.Default:=dbHospital.State in [dsEdit,dsInsert];
     cmdAlteraV.Enabled:=(dbHospital.State=dsBrowse)
                         and (dbHospital.RecordCount<>0);
     cmdCancelaV.Enabled:=dbHospital.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdLocalizarVClick(Sender: TObject);
begin
     dbHospital.Locate('NomeHospital',Trim(TxtHospital.Text),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmCadastro.dbHospitalAfterInsert(DataSet: TDataSet);
begin
     cmpHospital.Enabled:=true;
     dbHospitalHospital.Value:=iUltimoHospital+1;
     dbHospitalCidade.value:='São Paulo';
     dbHospitalUF.value:='SP';
     dbHospitalRegiao.value:=0;
     dbHospitalAuditorado.value:=false;
     dbHospitalDiariaGlobalizada.value:=false;
     dbHospitalDiariaGlobalizadaB.value:=false;
end;

procedure TfrmCadastro.cmdNovo3Click(Sender: TObject);
begin
     dbDiagnostico.Insert;
     cmpDiagnostico.SetFocus;
end;

procedure TfrmCadastro.cmdAltera3Click(Sender: TObject);
begin
     dbDiagnostico.Edit;
     cmpNomeDiagnostico.SetFocus;
end;

procedure TfrmCadastro.cmdGrava3Click(Sender: TObject);
begin
     dbDiagnostico.Post;
end;

procedure TfrmCadastro.cmdCancela3Click(Sender: TObject);
begin
     dbDiagnostico.Cancel;
end;

procedure TfrmCadastro.cmdExclui3Click(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
                'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
        dbDiagnostico.Delete;
end;

procedure TfrmCadastro.dsDiagnosticoStateChange(Sender: TObject);
begin
     cmdNovo3.Default:=dbDiagnostico.State in [dsBrowse];
     cmdExclui3.Enabled:=(dbDiagnostico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbDiagnostico.RecordCount<>0);
     cmdGrava3.Enabled:=dbDiagnostico.State in [dsEdit,dsInsert];
     cmdGrava3.Default:=dbDiagnostico.State in [dsEdit,dsInsert];
     cmdAltera3.Enabled:=(dbDiagnostico.State=dsBrowse)
                         and (dbDiagnostico.RecordCount<>0);
     cmdCancela3.Enabled:=dbDiagnostico.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdImprimirClick(Sender: TObject);
begin
//    rvRelCliente.SystemPreview.RulerType:=rtBothCm;
    rvRelCliente.DefaultDest:=rdPreview;
    rvRelCliente.SystemPrinter.Units:=unCm;
    rvRelCliente.Execute;
end;

procedure TfrmCadastro.cmdImprimirPClick(Sender: TObject);
begin
//    rvRelEmpresa.SystemPreview.RulerType:=rtBothCm;
    rvRelEmpresa.DefaultDest:=rdPreview;
    rvRelEmpresa.SystemPrinter.Units:=unCm;
    rvRelEmpresa.Execute;
end;

procedure TfrmCadastro.cmdImprimirVClick(Sender: TObject);
begin
    rvRelHospital.DefaultDest:=rdPreview;
    rvRelHospital.SystemPrinter.Units:=unCm;
    rvRelHospital.Execute;
end;

procedure TfrmCadastro.dbClienteBeforePost(DataSet: TDataSet);
begin
     if dbClienteCliente.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbClienteClienteID.Value='' then
     begin
        ShowMessage('Identificador inválido');
        abort;
     end;

     if dbClienteNome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;

     if (dbClienteMaximoCobrado2.Value>0) and
        (dbClienteMaximoCobrado2.Value<dbClienteMaximoCobrado1.Value) then
     begin
        ShowMessage('Nivel 2 de limite deve ser maior que Nivel 1');
        abort;
     end;

     if (dbClienteMaximoCobrado3.Value>0) and
        (dbClienteMaximoCobrado3.Value<dbClienteMaximoCobrado2.Value) then
     begin
        ShowMessage('Nivel 3 de limite deve ser maior que Nivel 2');
        abort;
     end;

     if dbClienteMaximoCobrado1.Value=0 then
        dbClienteCor1.Value:=ColortoString(clWhite);
     if dbClienteMaximoCobrado2.Value=0 then
        dbClienteCor2.Value:=ColortoString(clWhite);
     if dbClienteMaximoCobrado3.Value=0 then
        dbClienteCor3.Value:=ColortoString(clWhite);

     dbClienteClienteID.Value:=UpperCase(dbClienteClienteID.value);
     dbClienteUsuario.Value:=iUsuario;
end;

procedure TfrmCadastro.dbClienteAfterPost(DataSet: TDataSet);
begin
    cmpCliente.Enabled:=false;
    cmpID.Enabled:=false;

    if not dbClienteID.Locate('ID',dbClienteClienteID.value,[]) then
    begin
        dbClienteID.Insert;
        dbClienteIDID.value:=dbClienteClienteID.value;
        dbClienteID.Post;
    end;
    if istatus=1 then
       frmMenu.Log('Cadastro-Clientes',dbClienteCliente.value,'Cliente',
                                   dbClienteCliente.value,0,
                                   dbClienteNome.value,'I');


end;

procedure TfrmCadastro.dbClienteBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemCliente.TabIndex:=0;
    dbCliente.Last;
    iUltimoCliente:=dbClienteCliente.Value;
    iStatus:=1;
end;

procedure TfrmCadastro.dbClienteAfterCancel(DataSet: TDataSet);
begin
    cmpCliente.Enabled:=false;
    cmpID.Enabled:=false;
end;

procedure TfrmCadastro.dbEmpresaAfterCancel(DataSet: TDataSet);
begin
     cmpEmpresa.Enabled:=false;
end;

procedure TfrmCadastro.dbEmpresaAfterPost(DataSet: TDataSet);
begin
     cmpEmpresa.Enabled:=false;
end;

procedure TfrmCadastro.dbEmpresaBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemEmpresa.TabIndex:=0;
    dbEmpresa.Last;
    iUltimaEmpresa:=dbEmpresaEmpresa.Value;
end;

procedure TfrmCadastro.dbEmpresaBeforePost(DataSet: TDataSet);
begin
     if dbEmpresaEmpresa.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbEmpresaNome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;
     dbEmpresaUsuario.Value:=iUsuario;
end;

procedure TfrmCadastro.dbAuditorAfterCancel(DataSet: TDataSet);
begin
    cmpAuditor.Enabled:=false;
    cmpLoginM.Enabled:=false;
    dbAuditor.tag:=0;
end;

procedure TfrmCadastro.dbAuditorAfterInsert(DataSet: TDataSet);
begin
    cmpLoginM.Enabled:=false;
    dbAuditor.Tag:=0;
    dbAuditorLogin.value:='';
    cmpAuditor.Enabled:=true;
    dbAuditorAuditor.Value:=iUltimoAuditor+1;
    dbAuditorDataInclusao.Value:=date;
    dbAuditorDataInicio.Value:=date;
    dbAuditorClienteCNPJ.value:='99999999999999'
end;

procedure TfrmCadastro.dbAuditorBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemAuditor.TabIndex:=0;
    dbAuditor.Last;
    if dbAuditorAuditor.value=999999 then
        dbAuditor.Prior;
    iUltimoAuditor:=dbAuditorAuditor.Value;
    iStatus:=1;
end;

procedure TfrmCadastro.dbAuditorBeforePost(DataSet: TDataSet);
begin
    if dbAuditor.Tag=0 then
    begin
        if dbAuditorAuditor.Value<=0 then
        begin
            ShowMessage('Código inválido');
            abort;
        end;

        if dbAuditorNome.Value='' then
        begin
            ShowMessage('Auditor inválido');
            abort;
        end;

        if dbAuditorCRM.Value=0 then
        begin
            ShowMessage('CRM inválido');
            abort;
        end;

        if (dbAuditorBusca.Locate('CRM',dbAuditorCRM.value,[])) and
           (dbAuditorBuscaAuditor.value<>dbAuditorAuditor.value) then
        begin
            ShowMessage('CRM já cadastrado');
            abort;
        end;

        if (dbAuditorBusca.Locate('Nome',dbAuditorNome.value,[])) and
            (dbAuditorBuscaAuditor.value<>dbAuditorAuditor.value) then
            ShowMessage('Atenção! Nome já cadastrado, por favor verifique');

        if not dbLogin.Locate('Usuario',dbAuditorLogin.value,[loCaseInsensitive]) then
            dbAuditorLogin.value:='';           

        dbAuditorUsuario.Value:=iUsuario;
    end;
    if dbAuditor.Tag=1 then
    begin
        if dbAuditorLogin.value='' then
        begin
            ShowMessage('Login inválido');
            dbAuditor.Cancel;
            abort;
        end;
        if dbLogin.Locate('Usuario',dbAuditorLogin.value,[loCaseInsensitive]) then
        begin
            ShowMessage('Login em uso, selecione outro.');
            dbAuditorLogin.value:='';
            dbAuditor.Cancel;
            abort;
        end;
    end;
end;

procedure TfrmCadastro.dbHospitalAfterCancel(DataSet: TDataSet);
begin
     cmpHospital.Enabled:=false;
end;

procedure TfrmCadastro.dbHospitalAfterPost(DataSet: TDataSet);
begin
     cmpHospital.Enabled:=false;
     dbHospitalBusca.Refresh;
end;

procedure TfrmCadastro.dbHospitalAfterDelete(DataSet: TDataSet);
begin
    dbHospitalBusca.Refresh;
end;

procedure TfrmCadastro.dbHospitalBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemHospital.TabIndex:=0;
    dbHospital.Last;
    iUltimoHospital:=dbHospitalHospital.Value;
end;

procedure TfrmCadastro.dbHospitalBeforePost(DataSet: TDataSet);
begin
     if dbHospitalHospital.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbHospitalNome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;
     dbHospitalBusca.IndexFieldNames:='Nome';
     if (dbHospitalBusca.Locate('Nome',Trim(dbHospitalNome.Value),[])) and
        (dbHospitalHospital.Value<>dbHospitalBuscaHospital.Value) then
     begin
        ShowMessage('Atenção! Nome de Hospital já cadastrado');
        abort;
     end;
     dbHospitalBusca.IndexFieldNames:='CNPJ';
     if (dbHospitalBusca.Locate('CNPJ',Trim(dbHospitalCNPJ.Value),[])) and
        (dbHospitalHospital.Value<>dbHospitalBuscaHospital.Value) and
        (dbHospitalCNPJ.value<>'')  then
     begin
        ShowMessage('Atenção! CNPJ já cadastrado');
        abort;
     end;
end;

procedure TfrmCadastro.dbDiagnosticoAfterCancel(DataSet: TDataSet);
begin
     cmpDiagnostico.Enabled:=false;
end;

procedure TfrmCadastro.dbDiagnosticoAfterInsert(DataSet: TDataSet);
begin
     cmpDiagnostico.Enabled:=true;
     dbDiagnosticoDiagnostico.Value:=iUltimoDiagnostico+1;
end;

procedure TfrmCadastro.dbDiagnosticoAfterPost(DataSet: TDataSet);
begin
    cmpDiagnostico.Enabled:=false;
end;

procedure TfrmCadastro.dbDiagnosticoBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemDiagnostico.TabIndex:=0;
    dbDiagnostico.Last;
    iUltimoDiagnostico:=dbDiagnosticoDiagnostico.Value;
end;

procedure TfrmCadastro.dbDiagnosticoBeforePost(DataSet: TDataSet);
begin
     if dbDiagnosticoDiagnostico.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbDiagnosticoNome.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;
end;


procedure TfrmCadastro.cmdNovoRClick(Sender: TObject);
begin
    dbRegiao.Insert;
    cmpRegiao.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraRClick(Sender: TObject);
begin
    dbRegiao.Edit;
    cmpRegiaoNome.SetFocus;
end;

procedure TfrmCadastro.cmdGravaRClick(Sender: TObject);
begin
    dbRegiao.Post;
end;

procedure TfrmCadastro.cmdCancelaRClick(Sender: TObject);
begin
    dbRegiao.Cancel;
end;

procedure TfrmCadastro.cmdExcluiRClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbRegiao.Delete;
end;

procedure TfrmCadastro.dsRegiaoStateChange(Sender: TObject);
begin
     cmdNovoR.Default:=dbRegiao.State in [dsBrowse];
     cmdExcluiR.Enabled:=(dbRegiao.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbRegiao.RecordCount<>0);
     cmdGravaR.Enabled:=dbRegiao.State in [dsEdit,dsInsert];
     cmdGravaR.Default:=dbRegiao.State in [dsEdit,dsInsert];
     cmdAlteraR.Enabled:=(dbRegiao.State=dsBrowse)
                         and (dbRegiao.RecordCount<>0);
     cmdCancelaR.Enabled:=dbRegiao.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbRegiaoAfterCancel(DataSet: TDataSet);
begin
     cmpRegiao.Enabled:=false;
end;

procedure TfrmCadastro.dbRegiaoAfterInsert(DataSet: TDataSet);
begin
     cmpRegiao.Enabled:=true;
     dbRegiaoRegiao.Value:=iUltimaRegiao+1;
end;

procedure TfrmCadastro.dbRegiaoAfterPost(DataSet: TDataSet);
begin
    cmpRegiao.Enabled:=false;
end;

procedure TfrmCadastro.dbRegiaoBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemRegiao.TabIndex:=0;
    dbRegiao.Last;
    iUltimaRegiao:=dbRegiaoRegiao.Value;
end;

procedure TfrmCadastro.dbRegiaoBeforePost(DataSet: TDataSet);
begin
     if dbRegiaoRegiao.Value<0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbRegiaoDescricao.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;

end;

procedure TfrmCadastro.pagCadastroChange(Sender: TObject);
begin
    if pagCadastro.ActivePage=tabHospital then
    begin
       tabOrdemRegiao.TabIndex:=0;
       dbHospital.IndexFieldNames:='Hospital';
       dbHospital.refresh;
    end;
    if pagCadastro.ActivePage=tabAuditor then
    begin
       tabOrdemRegiao.TabIndex:=0;
       dbAuditor.IndexFieldNames:='Auditor';
       dbAuditor.refresh;
    end;
    if pagCadastro.ActivePage=tabRegiao then
    begin
       tabOrdemRegiao.TabIndex:=0;
       dbRegiao.IndexFieldNames:='Regiao';
       dbRegiao.Refresh;
    end;
    if pagCadastro.ActivePage=tabCliente then
    begin
       dbHospital.IndexFieldNames:='Nome';
       dbHospital.refresh;
       dbAuditor.IndexFieldNames:='Nome';
       dbAuditor.refresh;
    end;
end;


procedure TfrmCadastro.dbRegiaoBeforeEdit(DataSet: TDataSet);
begin
    if dbRegiaoRegiao.Value=0 then
    begin
        showmessage('Registro de controle. Impossivel alterar');
        abort;
    end;
end;
procedure TfrmCadastro.dbRegiaoBeforeDelete(DataSet: TDataSet);
begin
    if dbRegiaoRegiao.Value=0 then
    begin
        showmessage('Registro de controle. Impossivel excluir');
        abort;
    end;
end;

procedure TfrmCadastro.tabOrdemClienteChange(Sender: TObject);
begin
     case tabOrdemCliente.TabIndex of
     0: dbCliente.IndexFieldNames:='Nome';
     1: dbCliente.IndexFieldNames:='Cliente';
     2: dbCliente.IndexFieldNames:='CGC';
     end;
end;

procedure TfrmCadastro.txtClienteChange(Sender: TObject);
begin
    if txtCliente.text<>'' then
        case tabOrdemCliente.TabIndex of
        0:dbCliente.Locate('Nome',Trim(TxtCliente.Text),[loCaseInsensitive,loPartialKey]);
        1:dbCliente.Locate('Cliente',StrtoInt(Trim(TxtCliente.Text)),[loCaseInsensitive,loPartialKey]);
        2:dbCliente.Locate('CGC',Trim(TxtCliente.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.cmdNovoEClick(Sender: TObject);
begin
     dbEnfermeiro.Insert;
     cmpEnfermeiro.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraEClick(Sender: TObject);
begin
     dbEnfermeiro.Edit;
     cmpNomeEnfermeiro.SetFocus;
end;

procedure TfrmCadastro.cmdGravaEClick(Sender: TObject);
begin
     dbEnfermeiro.Post;
end;

procedure TfrmCadastro.cmdCancelaEClick(Sender: TObject);
begin
     dbEnfermeiro.Cancel;
end;

procedure TfrmCadastro.cmdExcluiEClick(Sender: TObject);
var iResultado:integer;
begin
    if not imaster then
    begin
        ShowMessage('Exclusão permitida apenas para Usuários Master');
        abort;
    end;
    iResultado:=Application.MessageBox('Atenção! Dado compartilhado com o Sistema Financeiro'+#13+
                                       'Tem cereteza que deseja excluir o Registro?',
    'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_yes) then
     dbEnfermeiro.Delete;
end;

procedure TfrmCadastro.dbEnfermeiroAfterCancel(DataSet: TDataSet);
begin
     cmpEnfermeiro.Enabled:=false;
     cmpLoginE.Enabled:=false;
     dbEnfermeiro.Tag:=0;
end;

procedure TfrmCadastro.dbEnfermeiroAfterInsert(DataSet: TDataSet);
begin
    cmpEnfermeiro.Enabled:=true;
    cmpLoginE.Enabled:=false;
    dbEnfermeiro.Tag:=0;
    dbEnfermeiroLogin.value:='';
    dbEnfermeiroEnfermeiro.Value:=iUltimoEnfermeiro+1;
    dbEnfermeiroDataInclusao.Value:=date;
    dbEnfermeiroDataInicio.Value:=date;
    dbEnfermeiroClienteCNPJ.value:='99999999999999'
end;

procedure TfrmCadastro.dbEnfermeiroBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemEnfermeiro.TabIndex:=0;
    dbEnfermeiro.Last;
    if dbEnfermeiroEnfermeiro.value=999999 then
        dbEnfermeiro.Prior;
    iUltimoEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
    iStatus:=1;
end;

procedure TfrmCadastro.dbEnfermeiroBeforePost(DataSet: TDataSet);
begin
    if dbEnfermeiro.Tag=0 then
    begin
     if dbEnfermeiroEnfermeiro.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbEnfermeiroNome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;

     if dbEnfermeiroCoren.Value=0 then
     begin
        ShowMessage('Coren inválido');
        abort;
     end;

     if (dbEnfermeiroBusca.Locate('Coren',dbEnfermeiroCoren.value,[])) and
        (dbEnfermeiroBuscaEnfermeiro.value<>dbEnfermeiroEnfermeiro.value) then
     begin
        ShowMessage('Coren já cadastrado');
        abort;
     end;

     if (dbEnfermeiroBusca.Locate('Nome',dbEnfermeiroNome.value,[])) and
        (dbEnfermeiroBuscaEnfermeiro.value<>dbEnfermeiroEnfermeiro.value) then
        ShowMessage('Atenção! Nome já cadastrado, por favor verifique');

     dbEnfermeiroUsuario.Value:=iUsuario;
    end;

    if dbEnfermeiro.Tag=1 then
    begin
        if dbEnfermeiroLogin.value='' then
        begin
            ShowMessage('Login inválido');
            dbEnfermeiro.Cancel;
            abort;
        end;
        if dbLogin.Locate('Usuario',dbEnfermeiroLogin.value,[loCaseInsensitive]) then
        begin
            ShowMessage('Login em uso, selecione outro.');
            dbEnfermeiroLogin.value:='';
            dbEnfermeiro.Cancel;
            abort;
        end;
    end;
end;

procedure TfrmCadastro.dsEnfermeiroStateChange(Sender: TObject);
begin
     cmdNovoE.Default:=dbEnfermeiro.State in [dsBrowse];
     cmdExcluiE.Enabled:=(dbEnfermeiro.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbEnfermeiro.RecordCount<>0);
     cmdGravaE.Enabled:=dbEnfermeiro.State in [dsEdit,dsInsert];
     cmdGravaE.Default:=dbEnfermeiro.State in [dsEdit,dsInsert];
     cmdAlteraE.Enabled:=(dbEnfermeiro.State=dsBrowse)
                         and (dbEnfermeiro.RecordCount<>0);
     cmdCancelaE.Enabled:=dbEnfermeiro.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.BitBtn17Click(Sender: TObject);
begin
//    rvRelEnfermeiro.SystemPreview.RulerType:=rtBothCm;
    rvRelEnfermeiro.DefaultDest:=rdPreview;
    rvRelEnfermeiro.SystemPrinter.Units:=unCm;
    rvRelEnfermeiro.Execute;
end;

procedure TfrmCadastro.txtEmpresaChange(Sender: TObject);
begin
    if txtEmpresa.text<>'' then
        case tabOrdemEmpresa.TabIndex of
        0:dbEmpresa.Locate('Empresa',StrtoInt(Trim(TxtEmpresa.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbEmpresa.Locate('Nome',Trim(TxtEmpresa.Text),[loCaseInsensitive,loPartialKey]);
        2:dbEmpresa.Locate('CGC',Trim(TxtEmpresa.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemEmpresaChange(Sender: TObject);
begin
     case tabOrdemEmpresa.TabIndex of
     0:dbEmpresa.IndexFieldNames:='Empresa';
     1:dbEmpresa.IndexFieldNames:='Nome';
     2:dbEmpresa.IndexFieldNames:='CGC';
     end;
end;

procedure TfrmCadastro.txtAuditorChange(Sender: TObject);
begin
    if txtAuditor.Text<>'' then
        case TabOrdemAuditor.TabIndex of
        0:dbAuditor.Locate('Auditor',StrtoInt(Trim(TxtAuditor.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbAuditor.Locate('Nome',Trim(TxtAuditor.Text),[loCaseInsensitive,loPartialKey]);
        2:dbAuditor.Locate('CRM',StrToInt(Trim(TxtAuditor.Text)),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemAuditorChange(Sender: TObject);
begin
     case tabOrdemAuditor.TabIndex of
     0:dbAuditor.IndexFieldNames:='Auditor';
     1:dbAuditor.IndexFieldNames:='Nome';
     2:dbAuditor.IndexFieldNames:='CRM';
     end;
end;

procedure TfrmCadastro.txtDiagnosticoChange(Sender: TObject);
begin
    if txtDiagnostico.text<>'' then
        case tabOrdemDiagnostico.TabIndex of
        0:dbDiagnostico.Locate('Diagnostico',StrtoInt(Trim(TxtDiagnostico.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbDiagnostico.Locate('Nome',Trim(TxtDiagnostico.Text),[loCaseInsensitive,loPartialKey]);
        2:dbDiagnostico.Locate('CodCid',Trim(TxtDiagnostico.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemDiagnosticoChange(Sender: TObject);
begin
    case tabOrdemDiagnostico.TabIndex of
     0:dbDiagnostico.IndexFieldNames:='Diagnostico';
     1:dbDiagnostico.IndexFieldNames:='Nome';
     2:dbDiagnostico.IndexFieldNames:='CodCid';
     end;
end;

procedure TfrmCadastro.tabOrdemEnfermeiroChange(Sender: TObject);
begin
     case tabOrdemEnfermeiro.TabIndex of
     0:dbEnfermeiro.IndexFieldNames:='Enfermeiro';
     1:dbEnfermeiro.IndexFieldNames:='Nome';
     2:dbEnfermeiro.IndexFieldNames:='COREN';
     end;
end;

procedure TfrmCadastro.txtEnfermeiroChange(Sender: TObject);
begin
    if txtEnfermeiro.text<>'' then
        case TabOrdemEnfermeiro.TabIndex of
        0:dbEnfermeiro.Locate('Enfermeiro',StrtoInt(Trim(TxtEnfermeiro.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbEnfermeiro.Locate('Nome',Trim(TxtEnfermeiro.Text),[loCaseInsensitive,loPartialKey]);
        2:dbEnfermeiro.Locate('Coren',StrToInt(Trim(TxtEnfermeiro.Text)),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.txtHospitalChange(Sender: TObject);
begin
    if txtHospital.text<>'' then
        case tabOrdemHospital.TabIndex of
        0:dbHospital.Locate('Hospital',StrtoInt(Trim(TxtHospital.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbHospital.Locate('Nome',Trim(TxtHospital.Text),[loCaseInsensitive,loPartialKey]);
        3:dbHospital.Locate('CNPJ',Trim(TxtHospital.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemHospitalChange(Sender: TObject);
begin
    case tabOrdemHospital.TabIndex of
     0:begin
       dbHospital.IndexFieldNames:='Hospital';
       txtHospital.Enabled:=true;
       end;
     1: begin
        dbHospital.IndexFieldNames:='Nome';
        txtHospital.Enabled:=true;
        end;
     2: begin
        dbHospital.IndexFieldNames:='Regiao;Nome';
        txtHospital.Enabled:=false;
        end;
     3: begin
        dbHospital.IndexFieldNames:='CNPJ';
        txtHospital.Enabled:=false;
        end;
     end;
end;

procedure TfrmCadastro.txtRegiaoChange(Sender: TObject);
begin
    if txtRegiao.text<>'' then
        case tabOrdemRegiao.TabIndex of
        0:dbRegiao.Locate('Regiao',StrtoInt(Trim(TxtRegiao.Text)),[loCaseInsensitive,loPartialKey]);
        1:dbRegiao.Locate('Descricao',Trim(TxtRegiao.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemRegiaoChange(Sender: TObject);
begin
    case tabOrdemRegiao.TabIndex of
     0:dbRegiao.IndexFieldNames:='Regiao';
     1:dbRegiao.IndexFieldNames:='Descricao';
     end;
end;

procedure TfrmCadastro.dbGlosaICalcFields(DataSet: TDataSet);
begin
    if dbGlosaIResponsavel.Value='M' then
       dbGlosaIResponsavelTexto.Value:='Médico'
    else
       dbGlosaIResponsavelTexto.Value:='Enfermeiro';   
end;

procedure TfrmCadastro.tabOrdemGlosaIChange(Sender: TObject);
begin
    txtGlosaI.Enabled:=true;
    case tabOrdemGlosaI.TabIndex of
     0:dbGlosaI.IndexFieldNames:='GlosaI';
     1:dbGlosaI.IndexFieldNames:='Nome';
     2:begin
        dbGlosaI.IndexFieldNames:='Responsavel';
        txtGlosaI.Enabled:=false;
        end;
     end;
end;

procedure TfrmCadastro.txtGlosaIChange(Sender: TObject);
begin
    if txtGlosaI.text<>'' then
        dbGlosaI.Locate('GlosaI',Trim(TxtGlosaI.Text),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmCadastro.dbGlosaIAfterInsert(DataSet: TDataSet);
begin
    cmpGlosaI.Enabled:=true;
    dbGlosaIResponsavel.Value:='M';
end;

procedure TfrmCadastro.dbGlosaIAfterCancel(DataSet: TDataSet);
begin
     cmpGlosaI.Enabled:=false;
end;

procedure TfrmCadastro.dbGlosaIBeforePost(DataSet: TDataSet);
begin
     if dbGlosaIGlosaI.Value='' then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbGlosaINome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;
end;

procedure TfrmCadastro.cmdNovoGIClick(Sender: TObject);
begin
     dbGlosaI.Insert;
     cmpGlosaI.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraGIClick(Sender: TObject);
begin
     dbGlosaI.Edit;
     cmpNomeGlosaI.SetFocus;
end;

procedure TfrmCadastro.cmdGravaGIClick(Sender: TObject);
begin
     dbGlosaI.Post;
end;

procedure TfrmCadastro.cmdCancelaGIClick(Sender: TObject);
begin
     dbGlosaI.Cancel;
end;

procedure TfrmCadastro.cmdExcluiGIClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
                'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
        dbGlosaI.Delete;
end;

procedure TfrmCadastro.dsGlosaIStateChange(Sender: TObject);
begin
     cmdNovoGI.Default:=dbGlosaI.State in [dsBrowse];
     cmdExcluiGI.Enabled:=(dbGlosaI.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbGlosaI.RecordCount<>0);
     cmdGravaGI.Enabled:=dbGlosaI.State in [dsEdit,dsInsert];
     cmdGravaGI.Default:=dbGlosaI.State in [dsEdit,dsInsert];
     cmdAlteraGI.Enabled:=(dbGlosaI.State=dsBrowse)
                         and (dbGlosaI.RecordCount<>0);
     cmdCancelaGI.Enabled:=dbGlosaI.State in [dsEdit,dsInsert];
end;


procedure TfrmCadastro.cmdNovoPSClick(Sender: TObject);
begin
     dbGlosaPS.Insert;
     cmpGlosa1.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraPSClick(Sender: TObject);
begin
     dbGlosaPS.Edit;
     cmpDescricaoPS.SetFocus;
end;

procedure TfrmCadastro.cmdGravaPSClick(Sender: TObject);
begin
     dbGlosaPS.Post;
end;

procedure TfrmCadastro.cmdCancelaPSClick(Sender: TObject);
begin
     dbGlosaPS.Cancel;
end;

procedure TfrmCadastro.cmdExcluiPSClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
                'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_yes) then
        dbGlosaPS.Delete;
end;

procedure TfrmCadastro.dsGlosaPSStateChange(Sender: TObject);
begin
     cmdNovoPS.Default:=dbGlosaPS.State in [dsBrowse];
     cmdExcluiPS.Enabled:=(dbGlosaPS.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbGlosaPS.RecordCount<>0);
     cmdGravaPS.Enabled:=dbGlosaPS.State in [dsEdit,dsInsert];
     cmdGravaPS.Default:=dbGlosaPS.State in [dsEdit,dsInsert];
     cmdAlteraPS.Enabled:=(dbGlosaPS.State=dsBrowse)
                         and (dbGlosaPS.RecordCount<>0);
     cmdCancelaPS.Enabled:=dbGlosaPS.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbGlosaPSAfterCancel(DataSet: TDataSet);
begin
     cmpGlosa1.Enabled:=false;
     cmpGlosa2.Enabled:=false;
end;

procedure TfrmCadastro.dbGlosaPSAfterInsert(DataSet: TDataSet);
begin
    cmpGlosa1.Enabled:=true;
    cmpGlosa2.Enabled:=true;
end;

procedure TfrmCadastro.dbGlosaPSBeforePost(DataSet: TDataSet);
begin
     if dbGlosaPSGlosa1.Value=0 then
     begin
        ShowMessage('Código Inicial inválido');
        abort;
     end;

     if dbGlosaPSDescricao.Value='' then
     begin
        ShowMessage('Descrição Social inválida');
        abort;
     end;
end;

procedure TfrmCadastro.grdGlosaPSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dbGlosaPSGlosa2.Value=0 then
        grdGlosaPS.Canvas.Font.Color:=clRed;

     grdGlosaPS.DefaultDrawDataCell(Rect,grdGlosaPS.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.BitBtn1Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
    begin
        if dbClienteMaximoCobrado1.Value<>0 then
            dbCliente.edit
        else
        begin
            ShowMessage('Valor maximo deve ser maior que zero');
            abort
        end;
        lblExemplo1.Color:=ColorDialog1.Color;
        dbClienteCor1.asString:=ColorToString(ColorDialog1.Color);
        dbCliente.Post;
    end;
end;

procedure TfrmCadastro.BitBtn2Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
    begin
        if dbClienteMaximoCobrado2.Value<>0 then
            dbCliente.edit
        else
        begin
            ShowMessage('Valor maximo deve ser maior que zero');
            abort
        end;
        lblExemplo2.Color:=ColorDialog1.Color;
        dbClienteCor2.asString:=ColorToString(ColorDialog1.Color);
        dbCliente.Post;
    end;
end;

procedure TfrmCadastro.BitBtn3Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
    begin
        if dbClienteMaximoCobrado3.Value<>0 then
            dbCliente.edit
        else
        begin
            ShowMessage('Valor maximo deve ser maior que zero');
            abort
        end;
        lblExemplo3.Color:=ColorDialog1.Color;
        dbClienteCor3.asString:=ColorToString(ColorDialog1.Color);
        dbCliente.Post;
    end;

end;

procedure TfrmCadastro.dsClienteDataChange(Sender: TObject; Field: TField);
begin
    if dbClienteCor1.Value='' then
       lblExemplo1.Color:=clWhite
    else
        lblExemplo1.Color:=StringtoColor(dbClienteCor1.Value);

    if dbClienteCor2.Value='' then
       lblExemplo2.Color:=clWhite
    else
        lblExemplo2.Color:=StringtoColor(dbClienteCor2.Value);
        
    if dbClienteCor3.Value='' then
       lblExemplo3.Color:=clWhite
    else
        lblExemplo3.Color:=StringtoColor(dbClienteCor3.Value);
end;

procedure TfrmCadastro.BitBtn4Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
    begin
        if dbClienteDiarias.Value<>0 then
            dbCliente.edit
        else
        begin
            ShowMessage('Quantidade de diárias deve ser maior que zero');
            abort
        end;
        lblExemplo4.Color:=ColorDialog1.Color;
        dbClienteCorDiaria.asString:=ColorToString(ColorDialog1.Color);
        dbCliente.Post;
    end;

end;

procedure TfrmCadastro.BitBtn5Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
    begin
        if dbClienteDiariasUTI.Value<>0 then
            dbCliente.edit
        else
        begin
            ShowMessage('Quantidade de diárias de UTI deve ser maior que zero');
            abort
        end;
        lblExemplo5.Color:=ColorDialog1.Color;
        dbClienteCorDiariaUTI.asString:=ColorToString(ColorDialog1.Color);
        dbCliente.Post;
    end;

end;

procedure TfrmCadastro.cmdNovoClClick(Sender: TObject);
begin
     dbConclusao.Insert;
     cmpConclusao.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraCLClick(Sender: TObject);
begin
     dbConclusao.Edit;
     cmpNomeConclusao.SetFocus;
end;

procedure TfrmCadastro.cmdGravaClClick(Sender: TObject);
begin
     dbConclusao.Post;
end;

procedure TfrmCadastro.cmdCancelaClClick(Sender: TObject);
begin
     dbConclusao.Cancel;
end;

procedure TfrmCadastro.cmdExcluiClClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbConclusao.Delete;
end;

procedure TfrmCadastro.dbConclusaoAfterCancel(DataSet: TDataSet);
begin
     cmpConclusao.Enabled:=false;
end;

procedure TfrmCadastro.dbConclusaoAfterInsert(DataSet: TDataSet);
begin
     cmpConclusao.Enabled:=true;
end;

procedure TfrmCadastro.dbConclusaoAfterPost(DataSet: TDataSet);
begin
     cmpConclusao.Enabled:=false;
end;

procedure TfrmCadastro.dbConclusaoBeforePost(DataSet: TDataSet);
begin
     if dbConclusaoConclusao.Value='' then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbConclusaoNome.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;
end;

procedure TfrmCadastro.dsConclusaoStateChange(Sender: TObject);
begin
     cmdNovoCl.Default:=dbConclusao.State in [dsBrowse];
     cmdExcluiCl.Enabled:=(dbConclusao.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbConclusao.RecordCount<>0);
     cmdGravaCl.Enabled:=dbConclusao.State in [dsEdit,dsInsert];
     cmdGravaCl.Default:=dbConclusao.State in [dsEdit,dsInsert];
     cmdAlteraCl.Enabled:=(dbConclusao.State=dsBrowse)
                         and (dbConclusao.RecordCount<>0);
     cmdCancelaCl.Enabled:=dbConclusao.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.txtConclusaoChange(Sender: TObject);
begin
    if txtConclusao.text<>'' then
        case tabOrdemConclusao.TabIndex of
        0:dbConclusao.Locate('Conclusao',Trim(TxtConclusao.Text),[loCaseInsensitive,loPartialKey]);
        1:dbConclusao.Locate('Nome',Trim(TxtConclusao.Text),[loCaseInsensitive,loPartialKey]);
        end;
end;

procedure TfrmCadastro.tabOrdemConclusaoChange(Sender: TObject);
begin
    case tabOrdemConclusao.TabIndex of
     0:dbConclusao.IndexFieldNames:='Conclusao';
     1:dbConclusao.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.dbConclusaoCalcFields(DataSet: TDataSet);
begin
    if dbConclusaoClinica.value=true then
       dbConclusaoClinicaTexto.value:='Sim'
    else
       dbConclusaoClinicaTexto.value:='Não';
    if dbConclusaoDomiciliar.value=true then
       dbConclusaoDomiciliarTexto.value:='Sim'
    else
       dbConclusaoDomiciliarTexto.value:='Não';
end;

procedure TfrmCadastro.cmdNovoAMBClick(Sender: TObject);
begin
     dbAMB.Insert;
     cmpAMB.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraAMBClick(Sender: TObject);
begin
     dbAMB.Edit;
     cmpNomeAMB.SetFocus;
end;

procedure TfrmCadastro.cmdGravaAMBClick(Sender: TObject);
begin
     dbAMB.Post;
end;

procedure TfrmCadastro.cmdCancelaAMBClick(Sender: TObject);
begin
     dbAMB.Cancel;
end;

procedure TfrmCadastro.cmdExcluiAMBClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
        dbAMB.Delete;
end;

procedure TfrmCadastro.dbAMBAfterCancel(DataSet: TDataSet);
begin
     cmpAMB.Enabled:=false;
end;

procedure TfrmCadastro.dbAMBAfterInsert(DataSet: TDataSet);
begin
     cmpAMB.Enabled:=true;
     dbAmbBradesco.value:=false;
end;

procedure TfrmCadastro.dbAMBAfterPost(DataSet: TDataSet);
begin
     cmpAMB.Enabled:=false;
end;

procedure TfrmCadastro.dbAMBBeforePost(DataSet: TDataSet);
begin
    if frmCadastro.tag=1 then
     begin
        ShowMessage('Informações disponiveis apenas para consulta');
        dbAmb.Cancel;
        abort;
     end;

     if dbAMBCodAMB.Value=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbAMBDescricaoAMB.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;

end;

procedure TfrmCadastro.dbAMBBeforeDelete(DataSet: TDataSet);
begin
    if frmCadastro.tag=1 then
     begin
        ShowMessage('Informações disponiveis apenas para consulta');
        dbAmb.Cancel;
        abort;
     end;
end;


procedure TfrmCadastro.txtAMBChange(Sender: TObject);
begin
    if txtAMB.text<>'' then
        case tabOrdemAMB.TabIndex of
        0:dbAMB.Locate('CodAmb',StrToInt(TxtAMB.Text),[loCaseInsensitive,loPartialKey]);
        1:dbAMB.Locate('DescricaoAmb',Trim(TxtAMB.Text),[loCaseInsensitive,loPartialKey]);
        2:txtAmb.Visible:=false;
        end;
end;

procedure TfrmCadastro.tabOrdemAMBChange(Sender: TObject);
begin
     txtAmb.Visible:=true;
     case tabOrdemAMB.TabIndex of
     0:dbAMB.IndexFieldNames:='CodAMB';
     1:dbAMB.IndexFieldNames:='DescricaoAMB';
     2:dbAMB.IndexFieldNames:='Tabela;CodAmb';
     3:dbAMB.IndexFieldNames:='Generico desc;CodAmb;Tabela;';
     end;
end;

procedure TfrmCadastro.rvRelAuditorBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do begin
    SetPaperSize(DMPAPER_A4,0,0);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 2.5, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 4.0, pjRight,0.5,0,BOXLINENONE,0);
    SetTab( 4.5, pjLeft, 6.0,0,BOXLINENONE,0);
    SetTab(10.5,pjLeft,  9.5,0,BOXLINENONE,0);
    SaveTabs(1);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 2.5, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 4.0, pjRight,0.5,0,BOXLINEBOTTOM,0);
    SetTab( 4.5, pjLeft, 6.0,0,BOXLINEBOTTOM,0);
    SetTab(10.5,pjLeft,  9.5,0,BOXLINEBOTTOM,0);
    SaveTabs(2);
//    SetTab(3.0, pjLeft, 8.0,0,BOXLINETOPBOTTOM,0);
//    SetTab(11.0,pjLeft, 4.5,0,BOXLINEALL,0);
  end;

end;

procedure TfrmCadastro.rvRelAuditorPrintHeader(Sender: TObject);
var Data, Hora: string;
  Bitmap: TBitmap;
  i:integer;
begin
with Sender as TBaseReport do begin
    Data := FormatDateTime('DD/MM/YYYY',date);
    Hora := FormatDateTime('HH:NN',time);
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(idir+'logotipo.bmp');
    PrintBitmapRect(1.0,0.5,4.5,2.0,Bitmap);
    Bitmap.Free;
    SetFont('Arial',12);
    Bold := True;
    NewLine;
    PrintCenter('Relatório de Médicos Auditores',PageWidth/2);
    NewLine;
    SetFont('Arial',10);
    case tabOrdemAuditor.TabIndex of
    0:PrintCenter('Por Ordem de Código',PageWidth/2);
    1:PrintCenter('Por Ordem de Nome',PageWidth/2);
    2:PrintCenter('Por Ordem de CRM',PageWidth/2);
    end;
    SetFont('ARIAL',8);
    Bold := false;
    PrintRight(Data+'  '+Hora,PageWidth-1);
    NewLine;
    PrintRight('Pag.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages),PageWidth-1);
    NewLine;
    NewLine;
    canvas.Brush.Color:=clsilver;
    canvas.Pen.Style:=psclear;
    TabRectangle(1,2.0,20,2.4);
    canvas.brush.Color:=clwhite;
    canvas.Pen.Style:=psSolid;
    RestoreTabs(1);
    Bold := True;
    SetFont('ARIAL',9);
    PrintTab('Auditor');
    PrintTab('CRM');
    PrintTab('');
    PrintTab('Nome');
    PrintTab('Telefones');
  end;
end;

procedure TfrmCadastro.rvRelAuditorPrint(Sender: TObject);
var lin,col:integer;
begin
    dbAuditor.DisableControls;
    with Sender as TBaseReport do begin
        dbAuditor.First;
        while not dbAuditor.Eof do
        begin
            NewLine;
            SetFont('Arial',9);
            Bold := False;
            RestoreTabs(1);
            PrintTab(IntToStr(dbAuditorAuditor.value));
            PrintTab(IntToStr(dbAuditorCRM.value));
            PrintTab('');
            PrintTab(dbAuditorNome.value);
            PrintTab(dbAuditorFone1.value);
            NewLine;
            RestoreTabs(2);
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab(dbAuditorFone2.value);
            dbAuditor.Next;
            if linenum>70 then newpage;
        end;
    end;
    dbAuditor.EnableControls;
end;

procedure TfrmCadastro.cmdImprimirTClick(Sender: TObject);
begin
//    rvRelAuditor.SystemPreview.RulerType:=rtBothCm;
    rvRelAuditor.DefaultDest:=rdPreview;
    rvRelAuditor.SystemPrinter.Units:=unCm;
    rvRelAuditor.Execute;
end;

procedure TfrmCadastro.rvRelClienteBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do begin
    SetPaperSize(DMPAPER_A4,0,0);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 2.5, pjRight,0.5,0,BOXLINENONE,0);
    SetTab( 3.0, pjLeft, 6.0,0,BOXLINENONE,0);
    SetTab( 9.0, pjLeft, 8.0,0,BOXLINENONE,0);
    SetTab(17.0, pjLeft, 3.0,0,BOXLINENONE,0);
    SaveTabs(1);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 2.5, pjRight,0.5,0,BOXLINEBOTTOM,0);
    SetTab( 3.0, pjLeft, 6.0,0,BOXLINEBOTTOM,0);
    SetTab( 9.0, pjLeft, 8.0,0,BOXLINEBOTTOM,0);
    SetTab(17.0, pjLeft, 3.0,0,BOXLINEBOTTOM,0);
    SaveTabs(2);
  end;
end;

procedure TfrmCadastro.rvRelClientePrint(Sender: TObject);
begin
    dbCliente.DisableControls;
    with Sender as TBaseReport do begin
        dbCliente.First;
        while not dbCliente.Eof do
        begin
            NewLine;
            SetFont('Arial',9);
            Bold := False;
            RestoreTabs(1);
            PrintTab(IntToStr(dbClienteCliente.value));
            PrintTab('');
            PrintTab(dbClienteNome.value);
            PrintTab(dbClienteFone1.value);
            PrintTab(copy(dbClienteCGC.value,1,2)+'.'+
                     copy(dbClienteCGC.value,3,3)+'.'+
                     copy(dbClienteCGC.value,6,3)+'/'+
                     copy(dbClienteCGC.value,9,4)+'-'+
                     copy(dbClienteCGC.value,13,2));
            NewLine;
            RestoreTabs(2);
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab(dbClienteFone2.value);
            PrintTab('');
            dbCliente.Next;
            if linenum>70 then newpage;
        end;
    end;
    dbCliente.EnableControls;
end;

procedure TfrmCadastro.rvRelClientePrintHeader(Sender: TObject);
var Data, Hora: string;
  Bitmap: TBitmap;
  i:integer;
begin
with Sender as TBaseReport do begin
    Data := FormatDateTime('DD/MM/YYYY',date);
    Hora := FormatDateTime('HH:NN',time);
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(idir+'logotipo.bmp');
    PrintBitmapRect(1.0,0.5,4.5,2.0,Bitmap);
    Bitmap.Free;
    SetFont('Arial',12);
    Bold := True;
    NewLine;
    PrintCenter('Relatório de Clientes',PageWidth/2);
    NewLine;
    SetFont('Arial',10);
    case tabOrdemCliente.TabIndex of
    0:PrintCenter('Por Ordem de Código',PageWidth/2);
    1:PrintCenter('Por Ordem de Nome',PageWidth/2);
    2:PrintCenter('Por Ordem de CNPJ',PageWidth/2);
    end;
    SetFont('ARIAL',8);
    Bold := false;
    PrintRight(Data+'  '+Hora,PageWidth-1);
    NewLine;
    PrintRight('Pag.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages),PageWidth-1);
    NewLine;
    NewLine;
    canvas.Brush.Color:=clsilver;
    canvas.Pen.Style:=psclear;
    TabRectangle(1,2.0,20,2.4);
    canvas.brush.Color:=clwhite;
    canvas.Pen.Style:=psSolid;
    RestoreTabs(1);
    Bold := True;
    SetFont('ARIAL',9);
    PrintTab('Cliente');
    PrintTab('');
    PrintTab('Nome');
    PrintTab('Telefones');
    PrintTab('CNPJ');
  end;
end;

procedure TfrmCadastro.rvRelEmpresaBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do begin
    SetPaperSize(DMPAPER_A4,0,0);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 2.5, pjRight,0.5,0,BOXLINENONE,0);
    SetTab( 3.0, pjLeft, 6.0,0,BOXLINENONE,0);
    SetTab( 9.0, pjLeft, 8.0,0,BOXLINENONE,0);
    SetTab(17.0, pjLeft, 3.0,0,BOXLINENONE,0);
    SaveTabs(1);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 2.5, pjRight,0.5,0,BOXLINEBOTTOM,0);
    SetTab( 3.0, pjLeft, 6.0,0,BOXLINEBOTTOM,0);
    SetTab( 9.0, pjLeft, 8.0,0,BOXLINEBOTTOM,0);
    SetTab(17.0, pjLeft, 3.0,0,BOXLINEBOTTOM,0);
    SaveTabs(2);
  end;
end;

procedure TfrmCadastro.rvRelEmpresaPrint(Sender: TObject);
begin
    dbEmpresa.DisableControls;
    with Sender as TBaseReport do begin
        dbEmpresa.First;
        while not dbEmpresa.Eof do
        begin
            NewLine;
            SetFont('Arial',9);
            Bold := False;
            RestoreTabs(1);
            PrintTab(IntToStr(dbEmpresaEmpresa.value));
            PrintTab('');
            PrintTab(dbEmpresaNome.value);
            PrintTab(dbEmpresaFone1.value);
            PrintTab(copy(dbEmpresaCGC.value,1,2)+'.'+
                     copy(dbEmpresaCGC.value,3,3)+'.'+
                     copy(dbEmpresaCGC.value,6,3)+'/'+
                     copy(dbEmpresaCGC.value,9,4)+'-'+
                     copy(dbEmpresaCGC.value,13,2));
            NewLine;
            RestoreTabs(2);
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab(dbEmpresaFone2.value);
            PrintTab('');
            dbEmpresa.Next;
            if linenum>70 then newpage;
        end;
    end;
    dbEmpresa.EnableControls;
end;

procedure TfrmCadastro.rvRelEmpresaPrintHeader(Sender: TObject);
var Data, Hora: string;
  Bitmap: TBitmap;
  i:integer;
begin
with Sender as TBaseReport do begin
    Data := FormatDateTime('DD/MM/YYYY',date);
    Hora := FormatDateTime('HH:NN',time);
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(idir+'logotipo.bmp');
    PrintBitmapRect(1.0,0.5,4.5,2.0,Bitmap);
    Bitmap.Free;
    SetFont('Arial',12);
    Bold := True;
    NewLine;
    PrintCenter('Relatório de Empresas',PageWidth/2);
    NewLine;
    SetFont('Arial',10);
    case tabOrdemEmpresa.TabIndex of
    0:PrintCenter('Por Ordem de Código',PageWidth/2);
    1:PrintCenter('Por Ordem de Nome',PageWidth/2);
    2:PrintCenter('Por Ordem de CNPJ',PageWidth/2);
    end;
    SetFont('ARIAL',8);
    Bold := false;
    PrintRight(Data+'  '+Hora,PageWidth-1);
    NewLine;
    PrintRight('Pag.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages),PageWidth-1);
    NewLine;
    NewLine;
    canvas.Brush.Color:=clsilver;
    canvas.Pen.Style:=psclear;
    TabRectangle(1,2.0,20,2.4);
    canvas.brush.Color:=clwhite;
    canvas.Pen.Style:=psSolid;
    RestoreTabs(1);
    Bold := True;
    SetFont('ARIAL',9);
    PrintTab('Empresa');
    PrintTab('');
    PrintTab('Nome');
    PrintTab('Telefones');
    PrintTab('CNPJ');
  end;
end;

procedure TfrmCadastro.rvRelEnfermeiroBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do begin
    SetPaperSize(DMPAPER_A4,0,0);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 2.5, pjRight,1.5,0,BOXLINENONE,0);
    SetTab( 4.0, pjRight,0.5,0,BOXLINENONE,0);
    SetTab( 4.5, pjLeft, 6.0,0,BOXLINENONE,0);
    SetTab(10.5,pjLeft,  9.5,0,BOXLINENONE,0);
    SaveTabs(1);
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 2.5, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 4.0, pjRight,0.5,0,BOXLINEBOTTOM,0);
    SetTab( 4.5, pjLeft, 6.0,0,BOXLINEBOTTOM,0);
    SetTab(10.5,pjLeft,  9.5,0,BOXLINEBOTTOM,0);
    SaveTabs(2);
  end;
end;

procedure TfrmCadastro.rvRelEnfermeiroPrint(Sender: TObject);
var lin,col:integer;
begin
    dbEnfermeiro.DisableControls;
    with Sender as TBaseReport do begin
        dbEnfermeiro.First;
        while not dbEnfermeiro.Eof do
        begin
            NewLine;
            SetFont('Arial',9);
            Bold := False;
            RestoreTabs(1);
            PrintTab(IntToStr(dbEnfermeiroEnfermeiro.value));
            PrintTab(IntToStr(dbEnfermeiroCoren.value));
            PrintTab('');
            PrintTab(dbEnfermeiroNome.value);
            PrintTab(dbEnfermeiroFone1.value);
            NewLine;
            RestoreTabs(2);
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab('');
            PrintTab(dbEnfermeiroFone2.value);
            dbEnfermeiro.Next;
            if linenum>70 then newpage;
        end;
    end;
    dbEnfermeiro.EnableControls;
end;

procedure TfrmCadastro.rvRelEnfermeiroPrintHeader(Sender: TObject);
var Data, Hora: string;
  Bitmap: TBitmap;
  i:integer;
begin
with Sender as TBaseReport do begin
    Data := FormatDateTime('DD/MM/YYYY',date);
    Hora := FormatDateTime('HH:NN',time);
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(idir+'logotipo.bmp');
    PrintBitmapRect(1.0,0.5,4.5,2.0,Bitmap);
    Bitmap.Free;
    SetFont('Arial',12);
    Bold := True;
    NewLine;
    PrintCenter('Relatório de Médicos Enfermeiroes',PageWidth/2);
    NewLine;
    SetFont('Arial',10);
    case tabOrdemEnfermeiro.TabIndex of
    0:PrintCenter('Por Ordem de Código',PageWidth/2);
    1:PrintCenter('Por Ordem de Nome',PageWidth/2);
    2:PrintCenter('Por Ordem de CRM',PageWidth/2);
    end;
    SetFont('ARIAL',8);
    Bold := false;
    PrintRight(Data+'  '+Hora,PageWidth-1);
    NewLine;
    PrintRight('Pag.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages),PageWidth-1);
    NewLine;
    NewLine;
    canvas.Brush.Color:=clsilver;
    canvas.Pen.Style:=psclear;
    TabRectangle(1,2.0,20,2.4);
    canvas.brush.Color:=clwhite;
    canvas.Pen.Style:=psSolid;
    RestoreTabs(1);
    Bold := True;
    SetFont('ARIAL',9);
    PrintTab('Enfermeiro');
    PrintTab('COREN');
    PrintTab('');
    PrintTab('Nome');
    PrintTab('Telefones');
  end;
end;

procedure TfrmCadastro.rvRelHospitalBeforePrint(Sender: TObject);
begin
  with Sender as TBaseReport do begin
    SetPaperSize(DMPAPER_A4,0,0);
    ClearTabs;
    ClearTabs;
    SetTab( 1.0, pjRight,1.5,0,BOXLINEBOTTOM,0);
    SetTab( 2.5, pjRight,0.5,0,BOXLINEBOTTOM,0);
    SetTab( 3.0, pjLeft, 6.0,0,BOXLINEBOTTOM,0);
    SetTab( 9.0, pjLeft, 8.0,0,BOXLINEBOTTOM,0);
    SetTab(17.0, pjLeft, 3.0,0,BOXLINEBOTTOM,0);
    SaveTabs(1);
  end;
end;

procedure TfrmCadastro.rvRelHospitalPrint(Sender: TObject);
begin
    dbHospital.DisableControls;
    with Sender as TBaseReport do begin
        dbHospital.First;
        while not dbHospital.Eof do
        begin
            NewLine;
            SetFont('Arial',9);
            Bold := False;
            RestoreTabs(1);
            PrintTab(IntToStr(dbHospitalHospital.value));
            PrintTab('');
            PrintTab(dbHospitalNome.value);
            PrintTab('');
            PrintTab(copy(dbHospitalCNPJ.value,1,2)+'.'+
                     copy(dbHospitalCNPJ.value,3,3)+'.'+
                     copy(dbHospitalCNPJ.value,6,3)+'/'+
                     copy(dbHospitalCNPJ.value,9,4)+'-'+
                     copy(dbHospitalCNPJ.value,13,2));
            dbHospital.Next;
            if linenum>70 then newpage;
        end;
    end;
    dbHospital.EnableControls;
end;

procedure TfrmCadastro.rvRelHospitalPrintHeader(Sender: TObject);
var Data, Hora: string;
  Bitmap: TBitmap;
  i:integer;
begin
with Sender as TBaseReport do begin
    Data := FormatDateTime('DD/MM/YYYY',date);
    Hora := FormatDateTime('HH:NN',time);
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(idir+'logotipo.bmp');
    PrintBitmapRect(1.0,0.5,4.5,2.0,Bitmap);
    Bitmap.Free;
    SetFont('Arial',12);
    Bold := True;
    NewLine;
    PrintCenter('Relatório de Hospitals',PageWidth/2);
    NewLine;
    SetFont('Arial',10);
    case tabOrdemHospital.TabIndex of
    0:PrintCenter('Por Ordem de Código',PageWidth/2);
    1:PrintCenter('Por Ordem de Nome',PageWidth/2);
    2:PrintCenter('Por Ordem de CNPJ',PageWidth/2);
    end;
    SetFont('ARIAL',8);
    Bold := false;
    PrintRight(Data+'  '+Hora,PageWidth-1);
    NewLine;
    PrintRight('Pag.:'+Macro(midCurrentPage)+'/'+Macro(midTotalPages),PageWidth-1);
    NewLine;
    NewLine;
    canvas.Brush.Color:=clsilver;
    canvas.Pen.Style:=psclear;
    TabRectangle(1,2.0,20,2.4);
    canvas.brush.Color:=clwhite;
    canvas.Pen.Style:=psSolid;
    RestoreTabs(1);
    Bold := True;
    SetFont('ARIAL',9);
    PrintTab('Hospital');
    PrintTab('');
    PrintTab('Nome');
    PrintTab('');
    PrintTab('CNPJ');
  end;
end;

procedure TfrmCadastro.cmdFichaClick(Sender: TObject);
begin
    pnlCliente.BringToFront;
end;

procedure TfrmCadastro.cmdListaClick(Sender: TObject);
begin
    grdCliente.BringToFront;
end;

procedure TfrmCadastro.dbClienteIDAfterInsert(DataSet: TDataSet);
begin
    grdID.Columns[0].ReadOnly:=false;
    dbClienteIDCliente.value:=dbClienteCliente.value;
    if dbClienteID.RecordCount=0 then
        dbClienteIDPrincipal.value:=0
    else
        dbClienteIDPrincipal.value:=1;
end;

procedure TfrmCadastro.dbClienteIDCalcFields(DataSet: TDataSet);
begin
    if dbClienteIDPrincipal.value=0 then //(zero=true  -> para ser o primeiro da lista)
        dbClienteIDPrincipalTexto.value:='Sim'
    else
        dbClienteIDPrincipalTexto.value:='Não';
end;

procedure TfrmCadastro.dbClienteIDBeforePost(DataSet: TDataSet);
begin
    dbClienteIDID.value:=UpperCase(dbClienteIDID.value);
end;

procedure TfrmCadastro.grdIDDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbClienteIDPrincipal.Value=0 then
        grdID.Canvas.Font.Color:=clRed;
     grdID.DefaultDrawDataCell(Rect,grdID.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.cmdPrincipalDClick(Sender: TObject);
var iID:string;
begin
    if (dbClienteID.RecordCount=0) and
       (dbClienteIDPrincipal.value=0)  then
    begin
        ShowMessage('Um identificador deve ser o principal');
        abort;
    end;
    if (dbClienteID.RecordCount=0) and
       (dbClienteIDPrincipal.value=1)  then
    begin
        if dbClienteID.State=dsbrowse then
           dbClienteID.Edit;
        if dbClienteIDPrincipal.Value=0 then
            dbClienteIDPrincipal.Value:=1
        else
            dbClienteIDPrincipal.Value:=0;
        dbClienteID.Post;
    end;
    if (dbClienteID.RecordCount>0) then
    begin
        iID:=dbClienteIDID.value;
        dbClienteID.First;
        while not dbClienteID.Eof do
        begin
           dbClienteID.Edit;
           if dbClienteIDID.value=iID then
                dbClienteIDPrincipal.Value:=0
           else
                dbClienteIDPrincipal.Value:=1;
           dbClienteID.Post;
           dbClienteID.Next;
        end;
    end;
end;

procedure TfrmCadastro.cmdNovoIDClick(Sender: TObject);
begin
    dbClienteID.Insert;
    grdID.SetFocus;
end;

procedure TfrmCadastro.cmdGravaIDClick(Sender: TObject);
begin
    dbClienteID.Post;
end;

procedure TfrmCadastro.cmdCancelaIDClick(Sender: TObject);
begin
    dbClienteID.Cancel;
end;

procedure TfrmCadastro.cmdExcluiIDClick(Sender: TObject);
begin
    dbClienteID.Delete;
end;

procedure TfrmCadastro.dsClienteIDStateChange(Sender: TObject);
begin
     cmdNovoID.Default:=dbClienteID.State in [dsBrowse];
     cmdExcluiID.Enabled:=(dbClienteID.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbClienteID.RecordCount<>0);
     cmdGravaID.Enabled:=dbClienteID.State in [dsEdit,dsInsert];
     cmdGravaID.Default:=dbClienteID.State in [dsEdit,dsInsert];
     cmdCancelaID.Enabled:=dbClienteID.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbClienteIDAfterPost(DataSet: TDataSet);
begin
     grdID.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbClienteIDAfterCancel(DataSet: TDataSet);
begin
     grdID.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.BitBtn6Click(Sender: TObject);
begin
with frmMenu do
begin 
    ExcelExport.Dataset:=dbAmb;
    ExcelExport.ExcelVisible:=true;
    ExcelExport.ExportDataset;
    ExcelExport.Disconnect;
end;
end;

procedure TfrmCadastro.dsServicoStateChange(Sender: TObject);
begin
     cmdNovoSv.Default:=dbServico.State in [dsBrowse];
     cmdExcluiSv.Enabled:=(dbServico.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbServico.RecordCount<>0);
     cmdGravaSv.Enabled:=dbServico.State in [dsEdit,dsInsert];
     cmdGravaSv.Default:=dbServico.State in [dsEdit,dsInsert];
     cmdCancelaSv.Enabled:=dbServico.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdNovoSvClick(Sender: TObject);
begin
    dbServico.Insert;
    grdServico.SetFocus;
end;

procedure TfrmCadastro.cmdGravaSvClick(Sender: TObject);
begin
    dbServico.Post;
end;

procedure TfrmCadastro.cmdCancelaSvClick(Sender: TObject);
begin
    dbServico.Cancel;
end;

procedure TfrmCadastro.cmdExcluiSvClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbServico.Delete;
end;

procedure TfrmCadastro.dbServicoAfterPost(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoAfterCancel(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=true;
end;

procedure TfrmCadastro.dbServicoAfterInsert(DataSet: TDataSet);
begin
    grdServico.Columns[0].ReadOnly:=false;
    dbServicoValorizado.value:=true;
    dbServicoVinculado.value:='N';
end;

procedure TfrmCadastro.grdServicoDblClick(Sender: TObject);
begin
    dbServico.Edit;
    if dbServicoValorizado.value=true then
       dbServicoValorizado.value:=false
    else
       dbServicoValorizado.value:=true;
    dbServico.Post;
end;

procedure TfrmCadastro.dbServicoCalcFields(DataSet: TDataSet);
begin
    if dbServicoValorizado.value=true then
        dbServicoValorizadoTexto.value:='Sim'
    else
        dbServicoValorizadoTexto.value:='Não';
end;

procedure TfrmCadastro.grdServicoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbServicoValorizado.Value=true then
        grdServico.Canvas.Font.Color:=clBlue;
     grdServico.DefaultDrawDataCell(Rect,grdServico.Columns[DataCol].field,State);
end;

procedure TfrmCadastro.dbServicoVinculadoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbServicoVinculado.value='N' then
       text:='Nenhum (lançado)';
    if dbServicoVinculado.value='P' then
       text:='Pré-Análise';
    if dbServicoVinculado.value='A' then
       text:='Pré-Análise/Lançado';
    if dbServicoVinculado.value='H' then
        text:='Home Care';
    if dbServicoVinculado.value='S' then
       text:='Pronto Socorro';
end;

procedure TfrmCadastro.dbServicoVinculadoSetText(Sender: TField;
  const Text: String);
begin
    if text='Nenhum (lançado)' then
       dbServicoVinculado.value:='N';
    if text='Pré-Análise' then
       dbServicoVinculado.value:='P';
    if text='Pré-Análise/Lançado' then
       dbServicoVinculado.value:='A';
    if text='Home Care' then
       dbServicoVinculado.value:='H';
    if text='Pronto Socorro' then
       dbServicoVinculado.value:='S';

end;

procedure TfrmCadastro.Button1Click(Sender: TObject);
begin
    dbAmbNova.Open;
    dbAmbNova.First;
    while not dbAmbNova.eof do
    begin
        if dbAmb.Locate('CodAmb',dbAmbNovaCodAmb.value,[]) then
            dbAmb.Edit
        else
            dbAmb.Insert;
        dbAmbCodAmb.value:=dbAmbNovaCodAmb.value;
        dbAmbDescricaoAmb.value:=dbAmbNovaDescricaoAmb.value;
        dbAmbTabela.value:=dbAmbNovaTabela.value;
        dbAmb.Post;
        dbAmbNova.Next;
   end;
   ShowMessage('fim');
end;

procedure TfrmCadastro.dbAuditorBeforeEdit(DataSet: TDataSet);
begin
    if dbAuditorAuditor.value=999999 then
    begin
        ShowMessage('Auditor de controle do sistema. Impossivel alterar');
        dbAuditor.Cancel;
        abort;
    end;
    iStatus:=0; 
end;

procedure TfrmCadastro.dbAuditorBeforeDelete(DataSet: TDataSet);
begin
    if dbAuditorAuditor.value=999999 then
    begin
        ShowMessage('Auditor de controle do sistema. Impossivel excluir');
        abort;
    end;
       frmMenu.Log('Cadastro-Médicos',dbAuditorAuditor.value,'Médico',
                                   dbAuditorAuditor.value,0,
                                   dbAuditorNome.value,'E');


end;

procedure TfrmCadastro.dbEnfermeiroBeforeEdit(DataSet: TDataSet);
begin
    if dbEnfermeiroEnfermeiro.value=999999 then
    begin
        ShowMessage('Enfermeiro de controle do sistema. Impossivel alterar');
        dbEnfermeiro.Cancel;
        abort;
    end;
    iStatus:=0;
end;

procedure TfrmCadastro.dbEnfermeiroBeforeDelete(DataSet: TDataSet);
begin
    if dbEnfermeiroEnfermeiro.value=999999 then
    begin
        ShowMessage('Enfermeiro de controle do sistema. Impossivel excluir');
        abort;
    end;
           frmMenu.Log('Cadastro-Enfermeiros',dbEnfermeiroEnfermeiro.value,'Enfermeiro',
                                   dbEnfermeiroEnfermeiro.value,0,
                                   dbEnfermeiroNome.value,'E');

end;

procedure TfrmCadastro.dbAuditorAfterPost(DataSet: TDataSet);
begin
    if dbAuditor.Tag=0 then
        cmpAuditor.Enabled:=false;

    if dbAuditor.Tag=1 then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbAuditorLogin.value;
        dbLoginNomeUsuario.value:=dbAuditorNome.value;
        dbLoginTipo.value:='M';
        dbLoginDataInicio.value:=dbAuditorDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
        ShowMessage('Usuário cadastrado com sucesso. A senha provisória é [0000]');
        dbAuditor.Tag:=0;
        cmpLoginM.Enabled:=false;
    end;
    if not dbAuditorDataFim.isnull then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbAuditorLogin.value]),[loCaseInsensitive]) then
        begin
            dbLogin.Edit;
            dbLoginDataFim.value:=dbAuditorDataFim.value;
            dbLoginUsuarioE.value:=iUsuario;
            dbLoginDataExclusao.value:=date;
            dbLogin.Post;
        end;
    end;
    if iStatus=1 then
           frmMenu.Log('Cadastro-Médicos',dbAuditorAuditor.value,'Médico',
                                   dbAuditorAuditor.value,0,
                                   dbAuditorNome.value,'I');

end;

procedure TfrmCadastro.dbEnfermeiroAfterPost(DataSet: TDataSet);
begin
    if dbEnfermeiro.Tag=0 then
     cmpEnfermeiro.Enabled:=false;

    if dbEnfermeiro.Tag=1 then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbEnfermeiroLogin.value;
        dbLoginNomeUsuario.value:=dbEnfermeiroNome.value;
        dbLoginTipo.value:='E';
        dbLoginDataInicio.value:=dbEnfermeiroDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
        ShowMessage('Usuário cadastrado com sucesso. A senha provisória é [0000]');
        dbEnfermeiro.Tag:=0;
        cmpLoginE.Enabled:=false;
    end;
    if not dbEnfermeiroDataFim.isnull then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
        begin
            dbLogin.Edit;
            dbLoginDataFim.value:=dbEnfermeiroDataFim.value;
            dbLoginUsuarioE.value:=iUsuario;
            dbLoginDataExclusao.value:=date;
            dbLogin.Post;
        end;
    end;
    if iStatus=1 then
           frmMenu.Log('Cadastro-Enfermeiros',dbEnfermeiroEnfermeiro.value,'Enfermeiro',
                                   dbEnfermeiroEnfermeiro.value,0,
                                   dbEnfermeiroNome.value,'I');

end;

procedure TfrmCadastro.cmdLoginMClick(Sender: TObject);
begin
    if frmMenu.dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if not dbAuditorDataFim.IsNull then
    begin
        ShowMessage('Senha permitida apenas para usuários ativos');
        abort;
    end;
    if dbAuditorLogin.value<>'' then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbAuditorLogin.value]),[loCaseInsensitive]) then
        begin
            ShowMessage('Login ja cadastrado');
            abort;
        end;
    end;
    dbAuditor.Edit;
    dbAuditor.Tag:=1;
    cmpLoginM.Enabled:=true;
    cmpLoginM.SetFocus;
end;

procedure TfrmCadastro.cmdSenhaMClick(Sender: TObject);
begin
    dbLogin.refresh;
    if frmMenu.dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if dbAuditorLogin.value='' then
    begin
        ShowMessage('Usuário sem login. Cadastre primeiramente um login.');
        abort;
    end;
    if not dbLogin.Locate('Tipo;Usuario',VarArrayof(['M',dbAuditorLogin.value]),[loCaseInsensitive]) then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbAuditorLogin.value;
        dbLoginNomeUsuario.value:=dbAuditorNome.value;
        dbLoginTipo.value:='M';
        dbLoginDataInicio.value:=dbAuditorDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
    end;
    if frmSenhaAltera=nil then
       Application.CreateForm(TfrmSenhaAltera, frmSenhaAltera);
    frmSenhaAltera.ShowModal;
end;

procedure TfrmCadastro.BitBtn7Click(Sender: TObject);
begin
    if frmMenu.dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if not dbEnfermeiroDataFim.IsNull then
    begin
        ShowMessage('Senha permitida apenas para usuários ativos');
        abort;
    end;
    if dbEnfermeiroLogin.value<>'' then
    begin
        if dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
        begin
            ShowMessage('Login ja cadastrado');
            abort;
        end;
    end;
    dbEnfermeiro.Edit;
    dbEnfermeiro.Tag:=1;
    cmpLoginE.Enabled:=true;
    cmpLoginE.SetFocus;
end;

procedure TfrmCadastro.BitBtn10Click(Sender: TObject);
begin
    dbLogin.refresh;
    if frmMenu.dbUsuarioMasterAud.Value=false then
    begin
        ShowMessage('Acesso permitido apenas para Usuários Master!');
        abort;
    end;
    if dbEnfermeiroLogin.value='' then
    begin
        ShowMessage('Usuário sem login. Cadastre primeiramente um login.');
        abort;
    end;
    if not dbLogin.Locate('Tipo;Usuario',VarArrayof(['E',dbEnfermeiroLogin.value]),[loCaseInsensitive]) then
    begin
        dbLogin.Insert;
        dbLoginUsuario.value:=dbEnfermeiroLogin.value;
        dbLoginNomeUsuario.value:=dbEnfermeiroNome.value;
        dbLoginTipo.value:='E';
        dbLoginDataInicio.value:=dbEnfermeiroDataInicio.value;
        dbLoginUsuarioI.value:=iUsuario;
        dbLoginDataInclusao.value:=date;
        dbLogin.Post;
    end;
    if frmSenhaAltera=nil then
       Application.CreateForm(TfrmSenhaAltera, frmSenhaAltera);
    frmSenhaAltera.ShowModal;
end;

procedure TfrmCadastro.dbLoginAfterInsert(DataSet: TDataSet);
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


procedure TfrmCadastro.pagCadastroChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
    if frmCadastro.tag=1 then
     begin
        ShowMessage('Disponivel apenas a Consulta AMB');
        AllowChange:=false;
    end
    else
        AllowChange:=true;

end;

procedure TfrmCadastro.dbAMBBeforeInsert(DataSet: TDataSet);
begin
    if frmCadastro.tag=1 then
     begin
        ShowMessage('Informações disponiveis apenas para consulta');
        dbAmb.Cancel;
        abort;
     end;
end;

procedure TfrmCadastro.dbAMBBradescoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin

    if dbAMBBradesco.value=false then
        text:='Não';
    if dbAMBBradesco.value=true then
       text:='Sim';
end;

procedure TfrmCadastro.dbAMBBradescoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbAMBBradesco.value:=false;
    if text='Sim' then
       dbAMBBradesco.value:=true;
end;

procedure TfrmCadastro.cmdFiltroFnClick(Sender: TObject);
begin
    dbAmb.Refresh;
end;

procedure TfrmCadastro.dbAMBFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if (cmdFiltroFn.Down=false) then
       accept:=true
    else
       accept:=(dbAmbBradesco.value=true);
end;

procedure TfrmCadastro.dbClienteBeforeDelete(DataSet: TDataSet);
begin
    if dbClienteCliente.value=23 then
    begin
        ShowMessage('Registro de Controle do Sistema. Impossivel excluir');
        abort;
    end;
   frmMenu.Log('Cadastro-Clientes',dbClienteCliente.value,'Cliente',
                                   dbClienteCliente.value,0,
                                   dbClienteNome.value,'E');
end;

procedure TfrmCadastro.dbClienteBeforeEdit(DataSet: TDataSet);
begin
    if dbClienteCliente.value=23 then
    begin
        if frmMenu.dbUsuarioMasterAud.Value=false then
        begin
            ShowMessage('Acesso permitido apenas para Usuários Master!');
            abort;
        end;
        ShowMessage('Atenção! Registro de Controle do Sistema.');
    end;
    iStatus:=0;
end;

procedure TfrmCadastro.dbHospitalBeforeEdit(DataSet: TDataSet);
begin
    if dbHospitalHospital.value=335 then
    begin
        if frmMenu.dbUsuarioMasterAud.Value=false then
        begin
            ShowMessage('Acesso permitido apenas para Usuários Master!');
            abort;
        end;
        ShowMessage('Atenção! Registro de Controle do Sistema.');
    end;

end;

procedure TfrmCadastro.dbHospitalBeforeDelete(DataSet: TDataSet);
begin
    if dbHospitalHospital.value=335 then
    begin
        ShowMessage('Registro de Controle do Sistema. Impossivel excluir');
        abort;
    end;

end;

procedure TfrmCadastro.cmdFichaHClick(Sender: TObject);
begin
    pnlHospital.BringToFront;

end;

procedure TfrmCadastro.cmdListaHClick(Sender: TObject);
begin
    grdHospital.BringToFront;
end;

procedure TfrmCadastro.cmdNovoHPClick(Sender: TObject);
begin
    dbHospitalPre.Insert;
    pnlParametro.Enabled:=true;
    cmbCliente.SetFocus;
end;

procedure TfrmCadastro.cmdGravaHPClick(Sender: TObject);
begin
    dbHospitalPre.Post;
end;

procedure TfrmCadastro.cmdCancelaHPClick(Sender: TObject);
begin
    dbHospitalPre.Cancel;
end;

procedure TfrmCadastro.cmdExcluiHPClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbHospitalPre.Delete;

end;

procedure TfrmCadastro.dbHospitalPreAfterInsert(DataSet: TDataSet);
begin
    dbHospitalPreHospital.Value:=dbHospitalHospital.value;
    dbHospitalPreAuditor.Value:=0;
    dbHospitalPreEnfermeiro.Value:=0;
    dbHospitalPreZeraAuditor.Value:=false;
    dbHospitalPreZeraEnfermeiro.Value:=false;
    dbHospitalPreDG.value:=false;
    dbHospitalPreCodHospital.value:=dbHospitalCNPJ.value;
end;

procedure TfrmCadastro.dsHospitalPreStateChange(Sender: TObject);
begin
     cmdNovoHP.Default:=dbHospitalPre.State in [dsBrowse];
     cmdExcluiHP.Enabled:=(dbHospitalPre.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbHospitalPre.RecordCount<>0);
     cmdGravaHP.Enabled:=dbHospitalPre.State in [dsEdit,dsInsert];
     cmdGravaHP.Default:=dbHospitalPre.State in [dsEdit,dsInsert];
     cmdCancelaHP.Enabled:=dbHospitalPre.State in [dsEdit,dsInsert];

end;

procedure TfrmCadastro.BitBtn11Click(Sender: TObject);
begin
    dbHospital.Prior;
end;

procedure TfrmCadastro.BitBtn12Click(Sender: TObject);
begin
    dbHospital.Next;
end;

procedure TfrmCadastro.dbHospitalPreZeraAuditorGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbHospitalPreZeraAuditor.value=false then
        text:='Não';
    if dbHospitalPreZeraAuditor.value=true then
       text:='Sim';
end;

procedure TfrmCadastro.dbHospitalPreZeraAuditorSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbHospitalPreZeraAuditor.value:=false;
    if text='Sim' then
       dbHospitalPreZeraAuditor.value:=true;

end;

procedure TfrmCadastro.dbHospitalPreZeraEnfermeiroGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbHospitalPreZeraEnfermeiro.value=false then
        text:='Não';
    if dbHospitalPreZeraEnfermeiro.value=true then
       text:='Sim';

end;

procedure TfrmCadastro.dbHospitalPreZeraEnfermeiroSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbHospitalPreZeraEnfermeiro.value:=false;
    if text='Sim' then
       dbHospitalPreZeraEnfermeiro.value:=true;

end;

procedure TfrmCadastro.dbHospitalPreBeforePost(DataSet: TDataSet);
begin

    if dbHospitalPreCliente.value=0 then
    begin
        ShowMessage('Selecione um cliente');
        abort;
    end;
    if (rdgMed.Itemindex=1) and (dbHospitalPreAuditor.value=0) then
    begin
        ShowMessage('Selecione um médico para troca');
        abort;
    end;
    if (rdgEnf.Itemindex=1) and (dbHospitalPreEnfermeiro.value=0) then
    begin
        ShowMessage('Selecione um enfermeiro para troca');
        abort;
    end;
    if (rdgMed.Itemindex=0) and (rdgEnf.Itemindex=0) and (dbHospitalPreDG.value=false) and (dbHospitalPreCodHospital.value='') then
    begin
        ShowMessage('Nenhum alteração selecionada. Não ha necessidade de cadastro');
        abort;
    end;
end;

procedure TfrmCadastro.rdgMedClick(Sender: TObject);
begin
    if dbHospitalPre.state in [dsInsert,dsEdit] then
    begin
        dbHospitalPreAuditor.value:=0;
        dbHospitalPreZeraAuditor.value:=false;
        case rdgMed.ItemIndex of
        2:dbHospitalPreZeraAuditor.value:=true;
        end;
    end;
end;

procedure TfrmCadastro.rdgEnfClick(Sender: TObject);
begin
    if dbHospitalPre.state in [dsInsert,dsEdit] then
    begin
        dbHospitalPreEnfermeiro.value:=0;
        dbHospitalPreZeraEnfermeiro.value:=false;
        case rdgEnf.ItemIndex of
        2:dbHospitalPreZeraEnfermeiro.value:=true;
        end;
    end;
end;

procedure TfrmCadastro.dbHospitalPreAfterScroll(DataSet: TDataSet);
begin

    if dbHospitalPreZeraAuditor.value=true then
        rdgMed.ItemIndex:=2
    else
        if dbHospitalPreAuditor.value=0 then
            rdgMed.ItemIndex:=0
        else
            rdgMed.ItemIndex:=1;

    if dbHospitalPreZeraEnfermeiro.value=true then
        rdgEnf.ItemIndex:=2
    else
        if dbHospitalPreEnfermeiro.value=0 then
            rdgEnf.ItemIndex:=0
        else
            rdgEnf.ItemIndex:=1;

end;

procedure TfrmCadastro.cmdAlteraHPClick(Sender: TObject);
begin
    dbHospitalPre.Edit;
    pnlParametro.Enabled:=true;
    cmbCliente.SetFocus;
end;

procedure TfrmCadastro.dbHospitalPreAfterPost(DataSet: TDataSet);
begin
    pnlParametro.Enabled:=false;
end;

procedure TfrmCadastro.dbHospitalPreAfterCancel(DataSet: TDataSet);
begin
    pnlParametro.Enabled:=false;
end;

procedure TfrmCadastro.dbHospitalPreDGGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbHospitalPreDG.value=false then
        text:='Não';
    if dbHospitalPreDG.value=true then
       text:='Sim';
end;

procedure TfrmCadastro.dbHospitalPreDGSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
       dbHospitalPreDG.value:=false;
    if text='Sim' then
       dbHospitalPreDG.value:=true;
end;

procedure TfrmCadastro.BitBtn13Click(Sender: TObject);
begin
    qryHospital.Open;
    with frmMenu do
    begin
        ExcelExport.Dataset:=qryHospital;
        ExcelExport.ExcelVisible:=true;
        ExcelExport.ExportDataset;
        ExcelExport.Disconnect;
    end;        

end;

procedure TfrmCadastro.dbClienteAdmAfterInsert(DataSet: TDataSet);
begin
    dbClienteAdmCliente.value:=dbClienteCliente.value;
end;

procedure TfrmCadastro.cmdNovoCAClick(Sender: TObject);
begin
    dbClienteAdm.Insert;
    grdClienteAdm.SetFocus;

end;

procedure TfrmCadastro.cmdGravaCAClick(Sender: TObject);
begin
    dbClienteAdm.Post;
end;

procedure TfrmCadastro.cmdCancelaCAClick(Sender: TObject);
begin
    dbClienteAdm.Cancel;
end;

procedure TfrmCadastro.cmdExcluiCAClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbClienteAdm.Delete;

end;

procedure TfrmCadastro.dsClienteAdmStateChange(Sender: TObject);
begin
     cmdNovoCA.Default:=dbClienteAdm.State in [dsBrowse];
     cmdExcluiCA.Enabled:=(dbClienteAdm.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbClienteAdm.RecordCount<>0);
     cmdGravaCA.Enabled:=dbClienteAdm.State in [dsEdit,dsInsert];
     cmdGravaCA.Default:=dbClienteAdm.State in [dsEdit,dsInsert];
     cmdCancelaCA.Enabled:=dbClienteAdm.State in [dsEdit,dsInsert];

end;

procedure TfrmCadastro.dbClienteAdmBeforePost(DataSet: TDataSet);
begin
    if dbClienteAdmHospital.value=0 then
    begin
        ShowMessage('Selecione um hospital');
        abort;
    end;     
    dbClienteAdmUsuario.value:=iUsuario;
    dbClienteAdmDataUsuario.value:=date;
end;

procedure TfrmCadastro.dbAMBGenericoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbAmbGenerico.value=false then
        text:='Não';
    if dbAmbGenerico.value=true then
        text:='Sim';

end;

procedure TfrmCadastro.dbAMBGenericoSetText(Sender: TField;
  const Text: String);
begin
    if text='Não' then
        dbAmbGenerico.value:=false;
    if text='Sim' then
        dbAmbGenerico.value:=true;

end;

procedure TfrmCadastro.grdAmbDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbAmbGenerico.value=true then
        grdAmb.Canvas.Font.Color:=clRed;

     grdAmb.DefaultDrawDataCell(Rect,grdAmb.Columns[DataCol].field,State);

end;

procedure TfrmCadastro.Button2Click(Sender: TObject);
begin
    dbHospital.First;
    while not dbHospital.eof do
    begin
        if not dbHospitalCodBradesco.isnull then
        begin
            if dbHospitalPre.Locate('Cliente',28,[]) then
                dbHospitalPre.Edit
            else
            begin
                dbHospitalPre.Insert;
                dbHospitalPreCliente.value:=28;
            end;     
            dbHospitalPreCodHospital.value:=dbHospitalCodBradesco.asstring;
            dbHospitalPre.Post;
        end;
        dbHospital.Next;
    end;

end;

end.


