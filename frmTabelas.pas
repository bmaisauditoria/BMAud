unit frmTabelas;

interface

uses
  BDE, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls, Db, DBTables,
  ExtCtrls, DBImgAsp, ToolWin, Menus;

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
    Label35: TLabel;
    CRM: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBText3: TDBText;
    cmpAuditor: TDBEdit;
    cmpNomeAuditor: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Panel13: TPanel;
    Label42: TLabel;
    DBText13: TDBText;
    tabHospital: TTabSheet;
    Panel16: TPanel;
    Label30: TLabel;
    Label36: TLabel;
    cmpHospital: TDBEdit;
    cmpNomeHospital: TDBEdit;
    tabDiagnosticos: TTabSheet;
    tabLegendas: TTabSheet;
    tabErros: TTabSheet;
    tabMotivos: TTabSheet;
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
    dsCliente: TDataSource;
    dbEmpresa: TTable;
    dbEmpresaEmpresa: TIntegerField;
    dbEmpresaNome: TStringField;
    dbEmpresaFone1: TStringField;
    dbEmpresaFone2: TStringField;
    dbEmpresaFax: TStringField;
    dbEmpresaCGC: TStringField;
    dbEmpresaContato: TStringField;
    dbEmpresaEmail: TStringField;
    dbEmpresaHomePage: TStringField;
    dbEmpresaDataInicio: TDateField;
    dbEmpresaDataFim: TDateField;
    dbEmpresaUsuario: TStringField;
    dbEmpresaDataInclusao: TDateField;
    dbEmpresaDataExclusao: TDateField;
    dsEmpresa: TDataSource;
    dbAuditor: TTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorFone1: TStringField;
    dbAuditorFone2: TStringField;
    dbAuditorFax: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorContato: TStringField;
    dbAuditorEmail: TStringField;
    dbAuditorHomePage: TStringField;
    dbAuditorDataInicio: TDateField;
    dbAuditorDataFim: TDateField;
    dbAuditorUsuario: TStringField;
    dbAuditorDataInclusao: TDateField;
    dbAuditorDataExclusao: TDateField;
    dsAuditor: TDataSource;
    dbHospital: TTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dsHospital: TDataSource;
    dsDiagnostico: TDataSource;
    dbLegenda: TTable;
    dsLegenda: TDataSource;
    dsErro: TDataSource;
    dbErro: TTable;
    dbMotivo: TTable;
    dsMotivo: TDataSource;
    Panel2: TPanel;
    Panel21: TPanel;
    Panel23: TPanel;
    Panel25: TPanel;
    Label12: TLabel;
    cmpDiagnostico: TDBEdit;
    Label43: TLabel;
    cmpNomeDiagnostico: TDBEdit;
    Label44: TLabel;
    cmpLegenda: TDBEdit;
    Label45: TLabel;
    cmpNomeLegenda: TDBEdit;
    dbLegendaLegenda: TStringField;
    dbLegendaNome: TStringField;
    dbErroErro: TStringField;
    dbErroNome: TStringField;
    dbMotivoMotivo: TStringField;
    dbMotivoNome: TStringField;
    Label47: TLabel;
    cmpErro: TDBEdit;
    Label48: TLabel;
    cmpNomeErro: TDBEdit;
    Label49: TLabel;
    cmpMotivo: TDBEdit;
    Label50: TLabel;
    cmpNomeMotivo: TDBEdit;
    dbNivel: TTable;
    dbNivelDescricao: TMemoField;
    dsNivel: TDataSource;
    pagClientes: TPageControl;
    tabCliente1: TTabSheet;
    tabNivel: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label92: TLabel;
    Label81: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    DBText12: TDBText;
    cmpNomeCliente: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cmpCidade: TDBEdit;
    cmpUF: TDBEdit;
    cmpCep: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    cmpHomePage: TDBEdit;
    cmpCGC: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit67: TDBEdit;
    cmpCliente: TDBEdit;
    Panel10: TPanel;
    Label15: TLabel;
    DBText46: TDBText;
    Panel4: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel40: TPanel;
    Label46: TLabel;
    Label51: TLabel;
    cmpNivel: TDBEdit;
    cmpNivelDescricao: TDBRichEdit;
    DBGrid2: TDBGrid;
    dbNivelCliente: TIntegerField;
    dbNivelNivel: TStringField;
    Panel7: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    tabRegiao: TTabSheet;
    dbRegiao: TTable;
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
    DBLookupComboBox1: TDBLookupComboBox;
    Label56: TLabel;
    DBText6: TDBText;
    dbDiagnostico: TTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    Label57: TLabel;
    DBEdit8: TDBEdit;
    dbHospitalBusca: TTable;
    dbHospitalBuscaHospital: TIntegerField;
    dbHospitalBuscaNome: TStringField;
    dbHospitalBuscaRegiao: TIntegerField;
    dbClienteCapeante: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    CoolBar1: TCoolBar;
    txtCliente: TEdit;
    tabOrdemCliente: TTabControl;
    grdCliente: TDBGrid;
    ToolBar2: TToolBar;
    cmdNovoN: TBitBtn;
    cmdAlteraN: TBitBtn;
    cmdGravaN: TBitBtn;
    cmdCancelaN: TBitBtn;
    cmdExcluiN: TBitBtn;
    BitBtn7: TBitBtn;
    ToolButton2: TToolButton;
    tabEnfermeiro: TTabSheet;
    dbEnfermeiro: TTable;
    dsEnfermeiro: TDataSource;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroFone1: TStringField;
    dbEnfermeiroFone2: TStringField;
    dbEnfermeiroFax: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroContato: TStringField;
    dbEnfermeiroEmail: TStringField;
    dbEnfermeiroHomePage: TStringField;
    dbEnfermeiroDataInicio: TDateField;
    dbEnfermeiroDataFim: TDateField;
    dbEnfermeiroUsuario: TStringField;
    dbEnfermeiroDataInclusao: TDateField;
    dbEnfermeiroDataExclusao: TDateField;
    panel: TPanel;
    Panel3: TPanel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBText7: TDBText;
    cmpEnfermeiro: TDBEdit;
    cmpNomeEnfermeiro: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Panel5: TPanel;
    Label70: TLabel;
    DBText8: TDBText;
    Label71: TLabel;
    Label72: TLabel;
    tabGlosa: TTabSheet;
    pagGlosa: TPageControl;
    tabGInternacao: TTabSheet;
    tabGProntoSocorro: TTabSheet;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    cmdNovoP: TBitBtn;
    cmdAlteraP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdImprimirP: TBitBtn;
    Label73: TLabel;
    CoolBar2: TCoolBar;
    txtEmpresa: TEdit;
    tabOrdemEmpresa: TTabControl;
    grdEmpresa: TDBGrid;
    ToolBar4: TToolBar;
    ToolButton4: TToolButton;
    cmdImprimirT: TBitBtn;
    cmdExcluiT: TBitBtn;
    cmdCancelaT: TBitBtn;
    cmdGravaT: TBitBtn;
    cmdAlteraT: TBitBtn;
    cmdNovoT: TBitBtn;
    tabOrdemAuditor: TTabControl;
    grdAuditor: TDBGrid;
    Label74: TLabel;
    CoolBar3: TCoolBar;
    txtAuditor: TEdit;
    ToolBar5: TToolBar;
    ToolButton5: TToolButton;
    cmdExclui3: TBitBtn;
    cmdCancela3: TBitBtn;
    cmdGrava3: TBitBtn;
    cmdAltera3: TBitBtn;
    cmdNovo3: TBitBtn;
    CoolBar4: TCoolBar;
    txtDiagnostico: TEdit;
    Label75: TLabel;
    tabOrdemDiagnostico: TTabControl;
    DBGrid1: TDBGrid;
    ToolBar6: TToolBar;
    ToolButton6: TToolButton;
    BitBtn17: TBitBtn;
    cmdExcluiE: TBitBtn;
    cmdCancelaE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdAlteraE: TBitBtn;
    cmdNovoE: TBitBtn;
    tabOrdemEnfermeiro: TTabControl;
    DBGrid4: TDBGrid;
    CoolBar5: TCoolBar;
    txtEnfermeiro: TEdit;
    Label76: TLabel;
    ToolBar7: TToolBar;
    ToolButton7: TToolButton;
    cmdImprimirF: TBitBtn;
    cmdExcluiF: TBitBtn;
    cmdCancelaF: TBitBtn;
    cmdGravaF: TBitBtn;
    cmdAlteraF: TBitBtn;
    cmdNovoF: TBitBtn;
    tabOrdemErro: TTabControl;
    grdErro: TDBGrid;
    CoolBar6: TCoolBar;
    txtErro: TEdit;
    Label77: TLabel;
    dbGlosaI: TTable;
    dsGlosaI: TDataSource;
    ToolBar8: TToolBar;
    ToolButton8: TToolButton;
    cmdNovoGI: TBitBtn;
    cmdAlteraGI: TBitBtn;
    cmdGravaGI: TBitBtn;
    cmdCancelaGI: TBitBtn;
    cmdExcluiGI: TBitBtn;
    Panel9: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    cmpGlosaI: TDBEdit;
    cmpNomeGlosaI: TDBEdit;
    Label82: TLabel;
    tabOrdemGlosaI: TTabControl;
    DBGrid5: TDBGrid;
    ToolBar9: TToolBar;
    ToolButton9: TToolButton;
    cmdImprimirV: TBitBtn;
    cmdExcluiV: TBitBtn;
    cmdCancelaV: TBitBtn;
    cmdGravaV: TBitBtn;
    cmdAlteraV: TBitBtn;
    cmdNovoV: TBitBtn;
    CoolBar8: TCoolBar;
    txtGlosaI: TEdit;
    Label83: TLabel;
    CoolBar7: TCoolBar;
    txtHospital: TEdit;
    tabOrdemHospital: TTabControl;
    grdHospital: TDBGrid;
    ToolBar10: TToolBar;
    ToolButton10: TToolButton;
    Label84: TLabel;
    CoolBar9: TCoolBar;
    txtLegenda: TEdit;
    cmdImprimirS: TBitBtn;
    cmdExcluiS: TBitBtn;
    cmdCancelaS: TBitBtn;
    cmdGravaS: TBitBtn;
    cmdAlteraS: TBitBtn;
    cmdNovoS: TBitBtn;
    tabOrdemLegenda: TTabControl;
    grdLegenda: TDBGrid;
    ToolBar11: TToolBar;
    ToolButton11: TToolButton;
    ToolBar12: TToolBar;
    ToolButton12: TToolButton;
    CoolBar10: TCoolBar;
    txtMotivo: TEdit;
    Label85: TLabel;
    CoolBar11: TCoolBar;
    txtRegiao: TEdit;
    Label86: TLabel;
    BitBtn12: TBitBtn;
    cmdExcluiFo: TBitBtn;
    cmdCancelaFo: TBitBtn;
    cmdGravaFo: TBitBtn;
    cmdAlteraFo: TBitBtn;
    cmdNovoFo: TBitBtn;
    tabOrdemMotivo: TTabControl;
    grdMotivo: TDBGrid;
    cmdExcluiR: TBitBtn;
    cmdCancelaR: TBitBtn;
    cmdGravaR: TBitBtn;
    cmdAlteraR: TBitBtn;
    cmdNovoR: TBitBtn;
    tabOrdemRegiao: TTabControl;
    DBGrid3: TDBGrid;
    dbGlosaIGlosaI: TStringField;
    dbGlosaINome: TStringField;
    dbGlosaIResponsavel: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    dbGlosaIResponsavelTexto: TStringField;
    ToolBar13: TToolBar;
    ToolButton13: TToolButton;
    cmdNovoPS: TBitBtn;
    cmdAlteraPS: TBitBtn;
    cmdGravaPS: TBitBtn;
    cmdCancelaPS: TBitBtn;
    cmdExcluiPS: TBitBtn;
    Panel11: TPanel;
    Label80: TLabel;
    Label87: TLabel;
    cmpGlosa1: TDBEdit;
    cmpDescricaoPS: TDBEdit;
    dbGlosaPS: TTable;
    dsGlosaPS: TDataSource;
    cmpGlosa2: TDBEdit;
    dbGlosaPSGlosa1: TSmallintField;
    dbGlosaPSGlosa2: TSmallintField;
    dbGlosaPSDescricao: TStringField;
    grdGlosaPS: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFoto: TBitBtn;
    cmdLimpaFoto: TBitBtn;
    cmdImprimir: TBitBtn;
    pagLogo: TPageControl;
    tablogo: TTabSheet;
    TabSheet2: TTabSheet;
    Label89: TLabel;
    cmpLogo: TDBImageAspect;
    Label58: TLabel;
    DBEdit10: TDBEdit;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteMaximoCobrado3: TCurrencyField;
    DBEdit11: TDBEdit;
    DBEdit39: TDBEdit;
    ColorDialog1: TColorDialog;
    Panel14: TPanel;
    lblexemplo1: TLabel;
    lblexemplo2: TLabel;
    lblexemplo3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dbClienteCor2: TStringField;
    dbClienteCor3: TStringField;
    dbClienteCor1: TStringField;
    Label16: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    dbClienteDiagnostico1: TBooleanField;
    dbClienteDiagnostico2: TBooleanField;
    dbClienteDiagnostico3: TBooleanField;
    Label90: TLabel;
    Label91: TLabel;
    Label93: TLabel;
    TabSheet1: TTabSheet;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Panel15: TPanel;
    lblExemplo4: TLabel;
    lblExemplo5: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    dbClienteDiarias: TIntegerField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TIntegerField;
    dbClienteCorDiariaUTI: TStringField;
    TabSheet3: TTabSheet;
    ToolBar14: TToolBar;
    ToolButton14: TToolButton;
    cmdNovoPr: TBitBtn;
    cmdAlteraPr: TBitBtn;
    cmdGravaPr: TBitBtn;
    cmdCancelaPr: TBitBtn;
    cmdExcluiPR: TBitBtn;
    Panel17: TPanel;
    Label88: TLabel;
    Label97: TLabel;
    cmpProrroga: TDBEdit;
    Label98: TLabel;
    CoolBar13: TCoolBar;
    txtProrroga: TEdit;
    tabOrdemProrroga: TTabControl;
    DBGrid6: TDBGrid;
    dbProrroga: TTable;
    dsProrroga: TDataSource;
    dbProrrogaProrroga: TIntegerField;
    dbProrrogaDescricao: TStringField;
    cmpNomeProrroga: TDBMemo;
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
    procedure cmdNovoSClick(Sender: TObject);
    procedure cmdAlteraSClick(Sender: TObject);
    procedure cmdGravaSClick(Sender: TObject);
    procedure cmdCancelaSClick(Sender: TObject);
    procedure cmdExcluiSClick(Sender: TObject);
    procedure dsLegendaStateChange(Sender: TObject);
    procedure cmdImprimirClick(Sender: TObject);
    procedure cmdImprimirPClick(Sender: TObject);
    procedure cmdImprimirTClick(Sender: TObject);
    procedure cmdImprimirVClick(Sender: TObject);
    procedure dbClienteBeforePost(DataSet: TDataSet);
    procedure dbClienteAfterPost(DataSet: TDataSet);
    procedure cmdNovoFClick(Sender: TObject);
    procedure cmdAlteraFClick(Sender: TObject);
    procedure cmdGravaFClick(Sender: TObject);
    procedure cmdCancelaFClick(Sender: TObject);
    procedure cmdExcluiFClick(Sender: TObject);
    procedure cmdImprimirFClick(Sender: TObject);
    procedure cmdNovoFoClick(Sender: TObject);
    procedure cmdAlteraFoClick(Sender: TObject);
    procedure cmdGravaFoClick(Sender: TObject);
    procedure cmdCancelaFoClick(Sender: TObject);
    procedure cmdExcluiFoClick(Sender: TObject);
    procedure dsErroStateChange(Sender: TObject);
    procedure dsMotivoStateChange(Sender: TObject);
    procedure dbClienteBeforeInsert(DataSet: TDataSet);
    procedure dbClienteAfterCancel(DataSet: TDataSet);
    procedure cmdFotoClick(Sender: TObject);
    procedure cmdLimpaFotoClick(Sender: TObject);
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
    procedure dbLegendaAfterCancel(DataSet: TDataSet);
    procedure dbLegendaAfterInsert(DataSet: TDataSet);
    procedure dbLegendaAfterPost(DataSet: TDataSet);
    procedure dbLegendaBeforePost(DataSet: TDataSet);
    procedure dbErroAfterCancel(DataSet: TDataSet);
    procedure dbErroAfterInsert(DataSet: TDataSet);
    procedure dbErroAfterPost(DataSet: TDataSet);
    procedure dbErroBeforePost(DataSet: TDataSet);
    procedure dbMotivoAfterCancel(DataSet: TDataSet);
    procedure dbMotivoAfterPost(DataSet: TDataSet);
    procedure dbMotivoAfterInsert(DataSet: TDataSet);
    procedure dbMotivoBeforePost(DataSet: TDataSet);
    procedure cmdNovoNClick(Sender: TObject);
    procedure cmdAlteraNClick(Sender: TObject);
    procedure cmdGravaNClick(Sender: TObject);
    procedure cmdCancelaNClick(Sender: TObject);
    procedure cmdExcluiNClick(Sender: TObject);
    procedure dsNivelStateChange(Sender: TObject);
    procedure dbNivelAfterCancel(DataSet: TDataSet);
    procedure dbNivelAfterInsert(DataSet: TDataSet);
    procedure dbNivelBeforePost(DataSet: TDataSet);
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
    procedure dbAuditorAfterPost(DataSet: TDataSet);
    procedure dbNivelAfterPost(DataSet: TDataSet);
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
    procedure dbEnfermeiroAfterPost(DataSet: TDataSet);
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
    procedure txtErroChange(Sender: TObject);
    procedure tabOrdemErroChange(Sender: TObject);
    procedure txtHospitalChange(Sender: TObject);
    procedure tabOrdemHospitalChange(Sender: TObject);
    procedure txtLegendaChange(Sender: TObject);
    procedure tabOrdemLegendaChange(Sender: TObject);
    procedure txtMotivoChange(Sender: TObject);
    procedure tabOrdemMotivoChange(Sender: TObject);
    procedure txtRegiaoChange(Sender: TObject);
    procedure tabOrdemRegiaoChange(Sender: TObject);
    procedure dbGlosaICalcFields(DataSet: TDataSet);
    procedure tabOrdemGlosaIChange(Sender: TObject);
    procedure txtGlosaIChange(Sender: TObject);
    procedure dbGlosaIAfterInsert(DataSet: TDataSet);
    procedure dbGlosaIAfterCancel(DataSet: TDataSet);
    procedure dbGlosaIAfterPost(DataSet: TDataSet);
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
    procedure dbGlosaPSAfterPost(DataSet: TDataSet);
    procedure dbGlosaPSBeforePost(DataSet: TDataSet);
    procedure grdGlosaPSDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cmdNovoPrClick(Sender: TObject);
    procedure cmdAlteraPrClick(Sender: TObject);
    procedure cmdGravaPrClick(Sender: TObject);
    procedure cmdCancelaPrClick(Sender: TObject);
    procedure cmdExcluiPRClick(Sender: TObject);
    procedure tabOrdemProrrogaChange(Sender: TObject);
    procedure txtProrrogaChange(Sender: TObject);
    procedure dbProrrogaAfterCancel(DataSet: TDataSet);
    procedure dbProrrogaAfterInsert(DataSet: TDataSet);
    procedure dbProrrogaAfterPost(DataSet: TDataSet);
    procedure dbProrrogaBeforePost(DataSet: TDataSet);
    procedure dsProrrogaStateChange(Sender: TObject);
    procedure cmpNomeProrrogaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;
  iUltimoCliente,iUltimaEmpresa,iUltimoAuditor,iUltimaRegiao,
  iUltimoHospital,iUltimoDiagnostico,iUltimoEnfermeiro:integer;

implementation

uses frmPrincipal, frmRelClientes, relClientes, frmRelEmpresas, relEmpresas,
  frmRelAuditores, relAuditores, frmRelHospitais, relHospitais,
  frmRelEnfermeiros, relEnfermeiros;

{$R *.DFM}

procedure TfrmCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dbCliente.Close;
     dbEmpresa.Close;
     dbAuditor.Close;
     dbEnfermeiro.Close;
     dbHospital.Close;
     dbHospitalBusca.Close;
     dbDiagnostico.Close;
     dbRegiao.close;
     dbLegenda.Close;
     dbErro.Close;
     dbMotivo.Close;
     dbNivel.Close;
     dbGlosaI.Close;
     dbGlosaPS.Close;
     dbProrroga.Close;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
     dbCliente.Open;
     dbCliente.IndexFieldNames:='Cliente';
     tabOrdemCliente.TabIndex:=0;
     cmpCliente.Enabled:=false;

     dbEmpresa.Open;
     tabOrdemEmpresa.TabIndex:=0;
     cmpEmpresa.Enabled:=false;

     dbAuditor.Open;
     tabOrdemAuditor.TabIndex:=0;
     cmpAuditor.Enabled:=false;

     dbEnfermeiro.Open;
     tabOrdemEnfermeiro.TabIndex:=0;
     cmpEnfermeiro.Enabled:=false;

     dbHospital.Open;
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

     dbLegenda.Open;
     tabOrdemLegenda.TabIndex:=0;
     cmpLegenda.Enabled:=false;

     dbErro.Open;
     tabOrdemErro.TabIndex:=0;
     cmpErro.Enabled:=false;

     dbMotivo.Open;
     tabOrdemMotivo.TabIndex:=0;
     cmpMotivo.Enabled:=false;

     dbProrroga.Open;
     tabOrdemProrroga.TabIndex:=0;
     cmpProrroga.Enabled:=false;

     dbNivel.Open;
   finally
     pagCadastro.ActivePage:=tabAuditor;
     pagClientes.ActivePage:=tabCliente1;
     pagGlosa.ActivePage:=tabGInternacao;
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

     if(iResultado=id_yes) then
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
    dbClienteCidade.Value:='São Paulo';
    dbClienteUF.Value:='SP';
    dbClienteCliente.Value:=iUltimoCliente+1;
    dbClienteDataInicio.Value:=date;
    dbClienteDataInclusao.Value:=date;
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
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
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

     if(iResultado=id_yes) then
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

procedure TfrmCadastro.cmdNovoSClick(Sender: TObject);
begin
     dbLegenda.Insert;
     cmpLegenda.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraSClick(Sender: TObject);
begin
     dbLegenda.Edit;
     cmpNomeLegenda.SetFocus;
end;

procedure TfrmCadastro.cmdGravaSClick(Sender: TObject);
begin
     dbLegenda.Post;
end;

procedure TfrmCadastro.cmdCancelaSClick(Sender: TObject);
begin
     dbLegenda.Cancel;
end;

procedure TfrmCadastro.cmdExcluiSClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbLegenda.Delete;
end;

procedure TfrmCadastro.dsLegendaStateChange(Sender: TObject);
begin
     cmdNovoS.Default:=dbLegenda.State in [dsBrowse];
     cmdExcluiS.Enabled:=(dbLegenda.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbLegenda.RecordCount<>0);
     cmdGravaS.Enabled:=dbLegenda.State in [dsEdit,dsInsert];
     cmdGravaS.Default:=dbLegenda.State in [dsEdit,dsInsert];
     cmdAlteraS.Enabled:=(dbLegenda.State=dsBrowse)
                         and (dbLegenda.RecordCount<>0);
     cmdCancelaS.Enabled:=dbLegenda.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.cmdImprimirClick(Sender: TObject);
begin
     if frmRelCliente=nil then
        Application.CreateForm(TfrmRelCliente, frmRelCliente);
     if relCliente=nil then
        Application.CreateForm(TrelCliente, relCliente);
     frmRelCliente.ShowModal;
end;

procedure TfrmCadastro.cmdImprimirPClick(Sender: TObject);
begin
    if frmRelEmpresa=nil then
      Application.CreateForm(TfrmRelEmpresa, frmRelEmpresa);
    if relEmpresa=nil then
       Application.CreateForm(TrelEmpresa, relEmpresa);
    frmRelEmpresa.ShowModal;
end;

procedure TfrmCadastro.cmdImprimirTClick(Sender: TObject);
begin
    if frmRelAuditor=nil then
       Application.CreateForm(TfrmRelAuditor, frmRelAuditor);
    if relAuditor=nil then
       Application.CreateForm(TrelAuditor, relAuditor);
    frmRelAuditor.ShowModal;
end;

procedure TfrmCadastro.cmdImprimirVClick(Sender: TObject);
begin
     if frmRelHospital=nil then
        Application.CreateForm(TfrmRelHospital, frmRelHospital);
     if relHospital=nil then
        Application.CreateForm(TrelHospital, relHospital);
     frmRelHospital.ShowModal;
end;

procedure TfrmCadastro.dbClienteBeforePost(DataSet: TDataSet);
begin
     if dbClienteCliente.Value<=0 then
     begin
        ShowMessage('Código inválido');
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

     dbClienteUsuario.Value:=iUsuario;
end;

procedure TfrmCadastro.dbClienteAfterPost(DataSet: TDataSet);
begin
     cmpCliente.Enabled:=false;
     DbiSaveChanges(dbCliente.Handle);
end;

procedure TfrmCadastro.cmdNovoFClick(Sender: TObject);
begin
     dbErro.Insert;
     cmpErro.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraFClick(Sender: TObject);
begin
     dbErro.Edit;
     cmpNomeErro.SetFocus;
end;

procedure TfrmCadastro.cmdGravaFClick(Sender: TObject);
begin
     dbErro.Post;
end;

procedure TfrmCadastro.cmdCancelaFClick(Sender: TObject);
begin
     dbErro.Cancel;
end;

procedure TfrmCadastro.cmdExcluiFClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
        dbErro.Delete;
end;

procedure TfrmCadastro.cmdImprimirFClick(Sender: TObject);
begin
{     if frmRelErro=nil then
        Application.CreateForm(TfrmRelErro, frmRelErro);
     if relErro=nil then
        Application.CreateForm(TrelErro, relErro);
     frmRelErro.ShowModal;}
end;

procedure TfrmCadastro.cmdNovoFoClick(Sender: TObject);
begin
        dbMotivo.Insert;
        cmpMotivo.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraFoClick(Sender: TObject);
begin
        dbMotivo.Edit;
        cmpNomeMotivo.SetFocus;
end;

procedure TfrmCadastro.cmdGravaFoClick(Sender: TObject);
begin
        dbMotivo.Post;
end;

procedure TfrmCadastro.cmdCancelaFoClick(Sender: TObject);
begin
        dbMotivo.Cancel;
end;

procedure TfrmCadastro.cmdExcluiFoClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
        dbMotivo.Delete;
end;

procedure TfrmCadastro.dsErroStateChange(Sender: TObject);
begin
     cmdNovoF.Default:=dbErro.State in [dsBrowse];
     cmdExcluiF.Enabled:=(dbErro.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbErro.RecordCount<>0);
     cmdGravaF.Enabled:=dbErro.State in [dsEdit,dsInsert];
     cmdGravaF.Default:=dbErro.State in [dsEdit,dsInsert];
     cmdAlteraF.Enabled:=(dbErro.State=dsBrowse)
                         and (dbErro.RecordCount<>0);
     cmdCancelaF.Enabled:=dbErro.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dsMotivoStateChange(Sender: TObject);
begin
     cmdNovoFo.Default:=dbMotivo.State in [dsBrowse];
     cmdExcluiFo.Enabled:=(dbMotivo.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbMotivo.RecordCount<>0);
     cmdGravaFo.Enabled:=dbMotivo.State in [dsEdit,dsInsert];
     cmdGravaFo.Default:=dbMotivo.State in [dsEdit,dsInsert];
     cmdAlteraFo.Enabled:=(dbMotivo.State=dsBrowse)
                         and (dbMotivo.RecordCount<>0);
     cmdCancelaFo.Enabled:=dbMotivo.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbClienteBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemCliente.TabIndex:=0;
    dbCliente.Last;
    iUltimoCliente:=dbClienteCliente.Value;
end;

procedure TfrmCadastro.dbClienteAfterCancel(DataSet: TDataSet);
begin
    cmpCliente.Enabled:=false;
end;

procedure TfrmCadastro.cmdFotoClick(Sender: TObject);
begin
    pagLogo.ActivePage:=tabLogo;
    dbCliente.Edit;
    cmpLogo.PasteFromClipboard;
    dbCliente.Post;
end;

procedure TfrmCadastro.cmdLimpaFotoClick(Sender: TObject);
var i:integer;
begin
    pagLogo.ActivePage:=tabLogo;
    i:=application.messagebox('Você tem certeza de que deseja excluir esta imagem?',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idyes then
    begin
        dbCliente.Edit;
        dbClienteLogotipo.Clear;
        dbCliente.Post;
    end;

end;

procedure TfrmCadastro.dbEmpresaAfterCancel(DataSet: TDataSet);
begin
     cmpEmpresa.Enabled:=false;
end;

procedure TfrmCadastro.dbEmpresaAfterPost(DataSet: TDataSet);
begin
     cmpEmpresa.Enabled:=false;
    DbiSaveChanges(dbEmpresa.Handle);
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
end;

procedure TfrmCadastro.dbAuditorAfterInsert(DataSet: TDataSet);
begin
    cmpAuditor.Enabled:=true;
    dbAuditorAuditor.Value:=iUltimoAuditor+1;
    dbAuditorDataInclusao.Value:=date;
    dbAuditorDataInicio.Value:=date;
end;

procedure TfrmCadastro.dbAuditorBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemAuditor.TabIndex:=0;
    dbAuditor.Last;
    iUltimoAuditor:=dbAuditorAuditor.Value;
end;

procedure TfrmCadastro.dbAuditorBeforePost(DataSet: TDataSet);
begin
     if dbAuditorAuditor.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbAuditorNome.Value='' then
     begin
        ShowMessage('Razão Social inválida');
        abort;
     end;
     dbAuditorUsuario.Value:=iUsuario;
end;

procedure TfrmCadastro.dbHospitalAfterCancel(DataSet: TDataSet);
begin
     cmpHospital.Enabled:=false;
end;

procedure TfrmCadastro.dbHospitalAfterPost(DataSet: TDataSet);
begin
     cmpHospital.Enabled:=false;
     dbHospitalBusca.Refresh;
     DbiSaveChanges(dbHospital.Handle);
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

     if (dbHospitalBusca.FindKey([Trim(dbHospitalNome.Value)])) and
        (dbHospitalHospital.Value<>dbHospitalBuscaHospital.Value) then
     begin
        ShowMessage('Atenção! Nome de Hospital já cadastrado');
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
    DbiSaveChanges(dbDiagnostico.Handle);
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


procedure TfrmCadastro.dbLegendaAfterCancel(DataSet: TDataSet);
begin
     cmpLegenda.Enabled:=false;
end;

procedure TfrmCadastro.dbLegendaAfterInsert(DataSet: TDataSet);
begin
     cmpLegenda.Enabled:=true;
end;

procedure TfrmCadastro.dbLegendaAfterPost(DataSet: TDataSet);
begin
     cmpLegenda.Enabled:=false;
     DbiSaveChanges(dbLegenda.Handle);
end;

procedure TfrmCadastro.dbLegendaBeforePost(DataSet: TDataSet);
begin
     if dbLegendaLegenda.Value='' then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbLegendaNome.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;

end;

procedure TfrmCadastro.dbErroAfterCancel(DataSet: TDataSet);
begin
     cmpErro.Enabled:=false;
end;

procedure TfrmCadastro.dbErroAfterInsert(DataSet: TDataSet);
begin
     cmpErro.Enabled:=true;
end;

procedure TfrmCadastro.dbErroAfterPost(DataSet: TDataSet);
begin
     cmpErro.Enabled:=false;
     DbiSaveChanges(dbErro.Handle);
end;

procedure TfrmCadastro.dbErroBeforePost(DataSet: TDataSet);
begin
     if dbErroErro.Value='' then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbErroNome.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;
end;

procedure TfrmCadastro.dbMotivoAfterCancel(DataSet: TDataSet);
begin
     cmpMotivo.Enabled:=false;
end;

procedure TfrmCadastro.dbMotivoAfterPost(DataSet: TDataSet);
begin
    cmpMotivo.Enabled:=false;
    DbiSaveChanges(dbMotivo.Handle);
end;

procedure TfrmCadastro.dbMotivoAfterInsert(DataSet: TDataSet);
begin
     cmpMotivo.Enabled:=true;
end;

procedure TfrmCadastro.dbMotivoBeforePost(DataSet: TDataSet);
begin
     if dbMotivoMotivo.Value='' then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbMotivoNome.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;
end;

procedure TfrmCadastro.cmdNovoNClick(Sender: TObject);
begin
        dbNivel.Insert;
        cmpNivel.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraNClick(Sender: TObject);
begin
     dbNivel.Edit;
     cmpNivelDescricao.SetFocus;
end;

procedure TfrmCadastro.cmdGravaNClick(Sender: TObject);
begin
        dbNivel.Post;
end;

procedure TfrmCadastro.cmdCancelaNClick(Sender: TObject);
begin
        dbNivel.Cancel;
end;

procedure TfrmCadastro.cmdExcluiNClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
        dbNivel.Delete;
end;

procedure TfrmCadastro.dsNivelStateChange(Sender: TObject);
begin
     cmdNovoN.Default:=dbNivel.State in [dsBrowse];
     cmdExcluiN.Enabled:=(dbNivel.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbNivel.RecordCount<>0);
     cmdGravaN.Enabled:=dbNivel.State in [dsEdit,dsInsert];
     cmdGravaN.Default:=dbNivel.State in [dsEdit,dsInsert];
     cmdAlteraN.Enabled:=(dbNivel.State=dsBrowse)
                         and (dbNivel.RecordCount<>0);
     cmdCancelaN.Enabled:=dbNivel.State in [dsEdit,dsInsert];
end;

procedure TfrmCadastro.dbNivelAfterCancel(DataSet: TDataSet);
begin
     cmpNivel.Enabled:=false;
end;

procedure TfrmCadastro.dbNivelAfterInsert(DataSet: TDataSet);
begin
     cmpNivel.Enabled:=true;
     dbNivelCliente.Value:=dbClienteCliente.Value;
end;

procedure TfrmCadastro.dbNivelBeforePost(DataSet: TDataSet);
begin
     if dbNivelNivel.Value='  ' then
     begin
        ShowMessage('Nível inválido');
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
    DbiSaveChanges(dbRegiao.Handle);
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
       tabOrdemRegiao.TabIndex:=1;
    if pagCadastro.ActivePage=tabRegiao then
       tabOrdemRegiao.TabIndex:=0;
end;


procedure TfrmCadastro.dbAuditorAfterPost(DataSet: TDataSet);
begin
    DbiSaveChanges(dbAuditor.Handle);
end;

procedure TfrmCadastro.dbNivelAfterPost(DataSet: TDataSet);
begin
    cmpNivel.Enabled:=false;
    DbiSaveChanges(dbNivel.Handle);
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
     0: dbCliente.IndexFieldNames:='Cliente';
     1: dbCliente.IndexFieldNames:='Nome';
     2: dbCliente.IndexFieldNames:='CGC';
     end;
end;

procedure TfrmCadastro.txtClienteChange(Sender: TObject);
begin
    if txtCliente.text<>'' then
        case tabOrdemCliente.TabIndex of
        0:dbCliente.FindNearest([StrtoInt(Trim(TxtCliente.Text))]);
        1:dbCliente.FindNearest([Trim(TxtCliente.Text)]);
        2:dbCliente.FindNearest([Trim(TxtCliente.Text)]);
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
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
     dbEnfermeiro.Delete;
end;

procedure TfrmCadastro.dbEnfermeiroAfterCancel(DataSet: TDataSet);
begin
     cmpEnfermeiro.Enabled:=false;
end;

procedure TfrmCadastro.dbEnfermeiroAfterInsert(DataSet: TDataSet);
begin
    cmpEnfermeiro.Enabled:=true;
    dbEnfermeiroEnfermeiro.Value:=iUltimoEnfermeiro+1;
    dbEnfermeiroDataInclusao.Value:=date;
    dbEnfermeiroDataInicio.Value:=date;
end;

procedure TfrmCadastro.dbEnfermeiroAfterPost(DataSet: TDataSet);
begin
    DbiSaveChanges(dbEnfermeiro.Handle);
end;

procedure TfrmCadastro.dbEnfermeiroBeforeInsert(DataSet: TDataSet);
begin
    tabOrdemEnfermeiro.TabIndex:=0;
    dbEnfermeiro.Last;
    iUltimoEnfermeiro:=dbEnfermeiroEnfermeiro.Value;
end;

procedure TfrmCadastro.dbEnfermeiroBeforePost(DataSet: TDataSet);
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
     dbEnfermeiroUsuario.Value:=iUsuario;

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
    if frmRelEnfermeiro=nil then
       Application.CreateForm(TfrmRelEnfermeiro, frmRelEnfermeiro);
    if relEnfermeiro=nil then
       Application.CreateForm(TrelEnfermeiro, relEnfermeiro);
    frmRelEnfermeiro.ShowModal;
end;

procedure TfrmCadastro.txtEmpresaChange(Sender: TObject);
begin
    if txtEmpresa.text<>'' then
        case tabOrdemEmpresa.TabIndex of
        0:dbEmpresa.FindNearest([StrtoInt(Trim(TxtEmpresa.Text))]);
        1:dbEmpresa.FindNearest([Trim(TxtEmpresa.Text)]);
        2:dbEmpresa.FindNearest([Trim(TxtEmpresa.Text)]);
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
        0:dbAuditor.FindNearest([StrtoInt(Trim(TxtAuditor.Text))]);
        1:dbAuditor.FindNearest([Trim(TxtAuditor.Text)]);
        2:dbAuditor.FindNearest([StrToInt(Trim(TxtAuditor.Text))]);
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
        0:dbDiagnostico.FindNearest([StrtoInt(Trim(TxtDiagnostico.Text))]);
        1:dbDiagnostico.FindNearest([Trim(TxtDiagnostico.Text)]);
        2:dbDiagnostico.FindNearest([Trim(TxtDiagnostico.Text)]);
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
        0:dbEnfermeiro.FindNearest([StrtoInt(Trim(TxtEnfermeiro.Text))]);
        1:dbEnfermeiro.FindNearest([Trim(TxtEnfermeiro.Text)]);
        2:dbEnfermeiro.FindNearest([StrToInt(Trim(TxtEnfermeiro.Text))]);
        end;
end;

procedure TfrmCadastro.txtErroChange(Sender: TObject);
begin
    if txtErro.text<>'' then
        case tabOrdemErro.TabIndex of
        0:dbErro.FindNearest([Trim(TxtErro.Text)]);
        1:dbErro.FindNearest([Trim(TxtErro.Text)]);
        end;
end;

procedure TfrmCadastro.tabOrdemErroChange(Sender: TObject);
begin
    case tabOrdemErro.TabIndex of
     0:dbErro.IndexFieldNames:='Erro';
     1:dbErro.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.txtHospitalChange(Sender: TObject);
begin
    if txtHospital.text<>'' then
        case tabOrdemHospital.TabIndex of
        0:dbHospital.FindNearest([StrtoInt(Trim(TxtHospital.Text))]);
        1:dbHospital.FindNearest([Trim(TxtHospital.Text)]);
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
     end;
end;

procedure TfrmCadastro.txtLegendaChange(Sender: TObject);
begin
    if txtLegenda.text<>'' then
        case tabOrdemLegenda.TabIndex of
        0:dbLegenda.FindNearest([Trim(TxtLegenda.Text)]);
        1:dbLegenda.FindNearest([Trim(TxtLegenda.Text)]);
        end;
end;

procedure TfrmCadastro.tabOrdemLegendaChange(Sender: TObject);
begin
    case tabOrdemLegenda.TabIndex of
     0:dbLegenda.IndexFieldNames:='Legenda';
     1:dbLegenda.IndexFieldNames:='Nome';
     end;

end;

procedure TfrmCadastro.txtMotivoChange(Sender: TObject);
begin
    if txtMotivo.text<>'' then
        case tabOrdemMotivo.TabIndex of
        0:dbMotivo.FindNearest([Trim(TxtMotivo.Text)]);
        1:dbMotivo.FindNearest([Trim(TxtMotivo.Text)]);
        end;
end;

procedure TfrmCadastro.tabOrdemMotivoChange(Sender: TObject);
begin
    case tabOrdemMotivo.TabIndex of
     0:dbMotivo.IndexFieldNames:='Motivo';
     1:dbMotivo.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.txtRegiaoChange(Sender: TObject);
begin
    if txtRegiao.text<>'' then
        case tabOrdemRegiao.TabIndex of
        0:dbRegiao.FindNearest([StrtoInt(Trim(TxtRegiao.Text))]);
        1:dbRegiao.FindNearest([Trim(TxtRegiao.Text)]);
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
        dbGlosaI.FindNearest([Trim(TxtGlosaI.Text)]);
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

procedure TfrmCadastro.dbGlosaIAfterPost(DataSet: TDataSet);
begin
    DbiSaveChanges(dbGlosaI.Handle);
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

procedure TfrmCadastro.dbGlosaPSAfterPost(DataSet: TDataSet);
begin
    DbiSaveChanges(dbGlosaPS.Handle);
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

procedure TfrmCadastro.cmdNovoPrClick(Sender: TObject);
begin
        dbProrroga.Insert;
        cmpProrroga.SetFocus;
end;

procedure TfrmCadastro.cmdAlteraPrClick(Sender: TObject);
begin
        dbProrroga.Edit;
        cmpNomeProrroga.SetFocus;
end;

procedure TfrmCadastro.cmdGravaPrClick(Sender: TObject);
begin
        dbProrroga.Post;
end;

procedure TfrmCadastro.cmdCancelaPrClick(Sender: TObject);
begin
        dbProrroga.Cancel;
end;

procedure TfrmCadastro.cmdExcluiPRClick(Sender: TObject);
var iResultado:integer;
begin
     iResultado:=Application.MessageBox('Confirme a Exclusão do Registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

     if(iResultado=id_yes) then
        dbProrroga.Delete;
end;

procedure TfrmCadastro.tabOrdemProrrogaChange(Sender: TObject);
begin
    case tabOrdemProrroga.TabIndex of
     0:dbProrroga.IndexFieldNames:='Prorroga';
     1:dbProrroga.IndexFieldNames:='Nome';
     end;
end;

procedure TfrmCadastro.txtProrrogaChange(Sender: TObject);
begin
    if txtProrroga.text<>'' then
        case tabOrdemProrroga.TabIndex of
        0:dbProrroga.FindNearest([Trim(TxtProrroga.Text)]);
        1:dbProrroga.FindNearest([Trim(TxtProrroga.Text)]);
        end;
end;

procedure TfrmCadastro.dbProrrogaAfterCancel(DataSet: TDataSet);
begin
     cmpProrroga.Enabled:=false;
end;

procedure TfrmCadastro.dbProrrogaAfterInsert(DataSet: TDataSet);
begin
     cmpProrroga.Enabled:=true;
end;

procedure TfrmCadastro.dbProrrogaAfterPost(DataSet: TDataSet);
begin
    cmpProrroga.Enabled:=false;
    DbiSaveChanges(dbProrroga.Handle);
end;

procedure TfrmCadastro.dbProrrogaBeforePost(DataSet: TDataSet);
begin
     if dbProrrogaProrroga.Value<=0 then
     begin
        ShowMessage('Código inválido');
        abort;
     end;

     if dbProrrogaDescricao.Value='' then
     begin
        ShowMessage('Descrição inválida');
        abort;
     end;
end;

procedure TfrmCadastro.dsProrrogaStateChange(Sender: TObject);
begin
     cmdNovoPr.Default:=dbProrroga.State in [dsBrowse];
     cmdExcluiPr.Enabled:=(dbProrroga.State in [dsEdit,dsBrowse,dsInsert])
                                       and (dbProrroga.RecordCount<>0);
     cmdGravaPr.Enabled:=dbProrroga.State in [dsEdit,dsInsert];
     cmdGravaPr.Default:=dbProrroga.State in [dsEdit,dsInsert];
     cmdAlteraPr.Enabled:=(dbProrroga.State=dsBrowse)
                         and (dbProrroga.RecordCount<>0);
     cmdCancelaPr.Enabled:=dbProrroga.State in [dsEdit,dsInsert];

end;

procedure TfrmCadastro.cmpNomeProrrogaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_Return then
    begin
        ShowMessage('Não é permitido [ENTER] no meio do texto');
        dbProrroga.Cancel;
    end;
end;

end.
