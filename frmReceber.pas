unit frmReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls,
  Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls, Buttons, ToolWin, Mask, Menus, Math, RpDefine, RpCon,
  RpConDS, RpConBDE, DBDateTimePicker;

type
  TfrmRec = class(TForm)
    pagReceber: TPageControl;
    tabReceber: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label3: TLabel;
    cmbFilial: TDBLookupComboBox;
    tabRec: TTabControl;
    pnlLista: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBMemo2: TDBMemo;
    grdRec: TDBGrid;
    pnlFicha: TPanel;
    Panel21: TPanel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    cmpDup: TDBEdit;
    cmpSeq: TDBEdit;
    DBDateTimePicker1: TDBDateTimePicker;
    DBDateTimePicker2: TDBDateTimePicker;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    pagCliente: TPageControl;
    TabSheet16: TTabSheet;
    cmpCliente: TDBLookupComboBox;
    TabSheet17: TTabSheet;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel1: TPanel;
    Label5: TLabel;
    DBMemo6: TDBMemo;
    CoolBar1: TCoolBar;
    cmbTexto: TComboBox;
    dbReceber: TMSTable;
    dbReceberFilial: TIntegerField;
    dbReceberDuplicata: TIntegerField;
    dbReceberSeq: TStringField;
    dbReceberSeqNum: TSmallintField;
    dbReceberCliente: TIntegerField;
    dbReceberValor: TCurrencyField;
    dbReceberAcrescimos: TCurrencyField;
    dbReceberDescontos: TCurrencyField;
    dbReceberBancoID: TIntegerField;
    dbReceberValorPago: TCurrencyField;
    dbReceberDocPagto: TStringField;
    dbReceberHistorico: TMemoField;
    dbReceberQuitado: TBooleanField;
    dbReceberUsuario: TStringField;
    dbReceberStatus: TStringField;
    dsReceber: TDataSource;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dsCliente: TDataSource;
    dbEndereco: TMSTable;
    dbEnderecoCliente: TIntegerField;
    dbEnderecoCep: TStringField;
    dbEnderecoEntrega: TBooleanField;
    dbEnderecoCobranca: TBooleanField;
    dbEnderecoFaturamento: TBooleanField;
    dbEnderecoEndereco: TStringField;
    dbEnderecoBairro: TStringField;
    dbEnderecoCidade: TStringField;
    dbEnderecoUF: TStringField;
    dbEnderecoContato: TStringField;
    dbEnderecoFone: TStringField;
    dbEnderecoFax: TStringField;
    dbEnderecoCGC: TStringField;
    dbEnderecoIE: TStringField;
    dsEndereco: TDataSource;
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    dbMovBanco: TMSTable;
    dsMovBanco: TDataSource;
    dbPlanoC: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dsPlanoC: TDataSource;
    dbPagar: TMSTable;
    popBusca: TPopupMenu;
    Selecionardesdeoinciodoano1: TMenuItem;
    SelecionarTudo1: TMenuItem;
    SelecionarTudo2: TMenuItem;
    SelecionardeHojeemDiante1: TMenuItem;
    BloquearDataInicial1: TMenuItem;
    tabNF: TTabControl;
    grdNF: TDBGrid;
    pnlNF: TPanel;
    Panel9: TPanel;
    CoolBar2: TCoolBar;
    cmbNome: TComboBox;
    dbPagarFilial: TIntegerField;
    dbPagarLancamento: TAutoIncField;
    dbPagarCliente: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    dbPagarHistorico: TStringField;
    dbPagarDoc: TStringField;
    dbPagarValor: TCurrencyField;
    dbPagarBancoID: TIntegerField;
    dbPagarCheque: TStringField;
    dbPagarValorPago: TCurrencyField;
    dbPagarPago: TBooleanField;
    dbPagarSelecionado: TBooleanField;
    dbPagarClienteDeb: TIntegerField;
    dbPagarStatus: TStringField;
    dbPagarPrevisao: TIntegerField;
    dbPagarUsuario: TStringField;
    dbFilialUltimaNF: TIntegerField;
    dbNF: TMSTable;
    dsNF: TDataSource;
    DBText5: TDBText;
    DBText6: TDBText;
    Label9: TLabel;
    Panel10: TPanel;
    Label11: TLabel;
    DBText46: TDBText;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel14: TPanel;
    dbPagarPrazo: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbReceberPrazo: TIntegerField;
    dbReceberPorcentagem: TFloatField;
    Label8: TLabel;
    Label14: TLabel;
    Label34: TLabel;
    dbReceberSelecionado: TBooleanField;
    dbCliente: TMSTable;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbClienteIE: TStringField;
    dbClienteStatusCli: TBooleanField;
    dbReceberNumero: TIntegerField;
    dbPagarMovBanco: TIntegerField;
    dbFilialCod1: TSmallintField;
    dbFilialCod2: TSmallintField;
    dbFilialCod3: TSmallintField;
    chkAberto: TCheckBox;
    chkPaga: TCheckBox;
    chkVencida: TCheckBox;
    DataIni: TDateTimePicker;
    DataFim: TDateTimePicker;
    cmbClienteF: TDBLookupComboBox;
    cmbBancoF: TDBLookupComboBox;
    Label35: TLabel;
    chkPeriodo: TCheckBox;
    chkPeriodo1: TRadioButton;
    chkPeriodo2: TRadioButton;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dbBancoEndereco: TMemoField;
    dbBancoGerente: TStringField;
    dbBancoFone: TStringField;
    dbBancoFax: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoUltimoCheque: TIntegerField;
    dbBancoDataFechamento: TDateTimeField;
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoLimiteCredito: TCurrencyField;
    dbBancoStatus: TStringField;
    dbBancoUsuario: TStringField;
    dbMovBancoMovBanco: TAutoIncField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoFundo: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
    dbNFClienteNome: TStringField;
    dbNFFilial: TSmallintField;
    dbNFNF: TIntegerField;
    dbNFFatura: TStringField;
    dbNFNatureza: TStringField;
    dbNFCliente: TIntegerField;
    dbNFDescricao: TMemoField;
    dbNFIRenda: TFloatField;
    dbNFImpostos: TFloatField;
    dbNFNFBruto: TCurrencyField;
    dbNFValorIRenda: TCurrencyField;
    dbNFValorImpostos: TCurrencyField;
    dbNFNFLiquida: TCurrencyField;
    dbNFObservacao: TMemoField;
    dbNFStatus: TBooleanField;
    dbNFUsuario: TStringField;
    dbNFBancoIDDep: TIntegerField;
    cmbData: TDateTimePicker;
    cmbCli: TDBLookupComboBox;
    chkCli: TCheckBox;
    chkBanco: TCheckBox;
    dbReceberContaNome: TStringField;
    dbReceberValorLiquido: TCurrencyField;
    cmbData1: TDateTimePicker;
    cmbCli1: TDBLookupComboBox;
    dbReceberBanco: TIntegerField;
    dbReceberAgencia: TStringField;
    dbReceberConta: TStringField;
    dbPagarTributo: TBooleanField;
    dbMovBancoCruzado: TBooleanField;
    dbFundos: TMSTable;
    dbFundosBancoID: TIntegerField;
    dbFundosFundo: TAutoIncField;
    dbFundosNome: TStringField;
    dbFundosSaldoFechamento: TCurrencyField;
    dbFundosUsuarioFechamento: TStringField;
    dbFundosSaldoAtual: TCurrencyField;
    dbFundosStatus: TStringField;
    dbFundosUsuario: TStringField;
    dsFundos: TDataSource;
    dbPagarSeq: TStringField;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    cmpCalculado: TDBText;
    dbReceberValorPagoCalculado: TCurrencyField;
    dbReceberClienteDeb: TIntegerField;
    dbNFClienteDeb: TIntegerField;
    dbClienteDeb: TMSTable;
    dsClienteDeb: TDataSource;
    dbClienteDebCliFor: TAutoIncField;
    dbClienteDebNome: TStringField;
    dbClienteDebCGC: TStringField;
    dbClienteDebIE: TStringField;
    dbClienteDebStatusCli: TBooleanField;
    pagClienteDeb: TPageControl;
    TabSheet1: TTabSheet;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    DBLookupComboBox4: TDBLookupComboBox;
    pagNF: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Panel12: TPanel;
    Label26: TLabel;
    DBMemo3: TDBMemo;
    Panel11: TPanel;
    Label21: TLabel;
    DBMemo1: TDBMemo;
    dbDuplicata: TMSTable;
    dsDuplicata: TDataSource;
    dbDuplicataFilial: TIntegerField;
    dbDuplicataDuplicata: TIntegerField;
    dbDuplicataSeq: TStringField;
    dbDuplicataSeqNum: TSmallintField;
    dbDuplicataPrazo: TIntegerField;
    dbDuplicataCliente: TIntegerField;
    dbDuplicataPraca: TStringField;
    dbDuplicataValor: TCurrencyField;
    dbDuplicataAcrescimos: TCurrencyField;
    dbDuplicataDescontos: TCurrencyField;
    dbDuplicataBancoID: TIntegerField;
    dbDuplicataValorPago: TCurrencyField;
    dbDuplicataDocPagto: TStringField;
    grdDuplicata: TDBGrid;
    dbMovBancoUsuarioI: TStringField;
    dbPagarUsuarioI: TStringField;
    dbPagarDup: TMSTable;
    dbPagarDupFilial: TIntegerField;
    dbPagarDupNF: TIntegerField;
    dbPagarDupSeq: TStringField;
    dbPagarContabilizado: TBooleanField;
    Panel7: TPanel;
    Panel15: TPanel;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    BitBtn6: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdRel1: TBitBtn;
    cmdRel2: TBitBtn;
    cmdNovo: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel8: TPanel;
    Panel16: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cmdNovoNF: TBitBtn;
    cmdAlteraNF: TBitBtn;
    cmdGravaNF: TBitBtn;
    cmdCancelaNF: TBitBtn;
    cmdExcluiNF: TBitBtn;
    cmdFichaNF: TSpeedButton;
    cmdListaNF: TSpeedButton;
    cmdRelNF: TBitBtn;
    dbNFPis: TFloatField;
    dbNFCofins: TFloatField;
    dbNFCSLL: TFloatField;
    dbNFValorPis: TCurrencyField;
    dbNFValorCofins: TCurrencyField;
    dbNFValorCSLL: TCurrencyField;
    dbNFMsg1: TStringField;
    dbNFMsg2: TStringField;
    dbNFMsg3: TStringField;
    dbNFMsg4: TStringField;
    dbMsg: TMSTable;
    dsMsg: TDataSource;
    dbMsgMsg: TStringField;
    Panel5: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    lblCancelada: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    cmpEmissao: TDBDateTimePicker;
    DBEdit3: TDBEdit;
    Panel13: TPanel;
    Label32: TLabel;
    DBText7: TDBText;
    DBDateTimePicker5: TDBDateTimePicker;
    DBEdit10: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel6: TPanel;
    Label13: TLabel;
    Label12: TLabel;
    Label38: TLabel;
    Label33: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    pagCliente1: TPageControl;
    TabSheet4: TTabSheet;
    DBLookupComboBox5: TDBLookupComboBox;
    TabSheet5: TTabSheet;
    DBLookupComboBox7: TDBLookupComboBox;
    pagClienteDeb1: TPageControl;
    TabSheet6: TTabSheet;
    DBLookupComboBox8: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    Label43: TLabel;
    DBLookupComboBox12: TDBLookupComboBox;
    Label44: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    cmdImpNF: TBitBtn;
    qryNF: TMSQuery;
    qryNFFilial: TSmallintField;
    qryNFNF: TIntegerField;
    qryNFFatura: TStringField;
    qryNFNatureza: TStringField;
    qryNFCliente: TIntegerField;
    qryNFDescricao: TMemoField;
    qryNFIRenda: TFloatField;
    qryNFPis: TFloatField;
    qryNFCofins: TFloatField;
    qryNFCSLL: TFloatField;
    qryNFImpostos: TFloatField;
    qryNFNFBruto: TCurrencyField;
    qryNFValorIRenda: TCurrencyField;
    qryNFValorPis: TCurrencyField;
    qryNFValorCofins: TCurrencyField;
    qryNFValorCSLL: TCurrencyField;
    qryNFValorImpostos: TCurrencyField;
    qryNFNFLiquida: TCurrencyField;
    qryNFObservacao: TMemoField;
    qryNFStatus: TBooleanField;
    qryNFBancoIDDep: TIntegerField;
    qryNFUsuario: TStringField;
    qryNFClienteDeb: TIntegerField;
    qryNFMsg1: TStringField;
    qryNFMsg2: TStringField;
    qryNFMsg3: TStringField;
    qryNFMsg4: TStringField;
    qryNFClienteNome: TStringField;
    dbMsgMsgTexto: TStringField;
    qryNFMsg1Texto: TStringField;
    qryNFMsg2Texto: TStringField;
    qryNFMsg3Texto: TStringField;
    qryNFMsg4Texto: TStringField;
    qryNFValorExtenso: TStringField;
    qryNFFilialNome: TStringField;
    qryNFFilialEndereco: TStringField;
    qryNFFilialCidade: TStringField;
    qryNFFilialUF: TStringField;
    qryNFFilialCep: TStringField;
    qryNFFilialFone: TStringField;
    qryNFFilialCGC: TStringField;
    qryNFBancoNome: TStringField;
    qryNFBancoCod: TIntegerField;
    qryNFBancoAgencia: TStringField;
    qryNFBancoConta: TStringField;
    dbFilialEndereco: TStringField;
    dbFilialCidade: TStringField;
    dbFilialUF: TStringField;
    dbFilialCep: TStringField;
    dbFilialFone: TStringField;
    dbFilialCGC: TStringField;
    dbFilialIE: TStringField;
    qryNFFilialIE: TStringField;
    qryNFClienteCGC: TStringField;
    qryNFClienteIE: TStringField;
    qryNFClienteEndereco: TStringField;
    qryNFClienteMunicipio: TStringField;
    qryNFClienteEstado: TStringField;
    qryNFClienteCep: TStringField;
    dbNFItens: TMSTable;
    dsNFItens: TDataSource;
    dbNFItensNF: TIntegerField;
    dbNFItensItem: TIntegerField;
    dbNFItensServico: TStringField;
    dbNFItensDescricao: TStringField;
    dbNFItensQtd: TIntegerField;
    dbNFItensValor: TCurrencyField;
    tabItens: TTabSheet;
    grdItens: TDBGrid;
    dbNFItensTotal: TCurrencyField;
    dbClienteCob: TMSTable;
    dsClienteCob: TDataSource;
    Panel17: TPanel;
    cmdNovoE: TBitBtn;
    cmdGravaE: TBitBtn;
    cmdExcluiE: TBitBtn;
    BitBtn7: TBitBtn;
    qryTotNF: TMSQuery;
    qryTotNFtotal: TCurrencyField;
    qryNFItens: TMSQuery;
    qryNFItensNF: TIntegerField;
    qryNFItensItem: TIntegerField;
    qryNFItensServico: TStringField;
    qryNFItensDescricao: TStringField;
    qryNFItensQtd: TIntegerField;
    qryNFItensValor: TCurrencyField;
    qryNFItensTotal: TCurrencyField;
    dbFilialRazao: TStringField;
    dbFilialCCM: TStringField;
    qryNFFilialCCM: TStringField;
    qryNFClienteBairro: TStringField;
    dbClienteCobCliente: TIntegerField;
    dbClienteCobServico: TStringField;
    dbClienteCobValor: TCurrencyField;
    qryNFTotalImpostos: TCurrencyField;
    dbBancoAgencia: TStringField;
    dbReceberDataEmissao: TDateTimeField;
    dbReceberPraca: TStringField;
    dbReceberDataPagto: TDateTimeField;
    dbReceberDataInclusao: TDateTimeField;
    dbReceberDataVencto: TDateTimeField;
    dbNFDataEmissao: TDateTimeField;
    dbNFDataVencto: TDateTimeField;
    dbNFDataInclusao: TDateTimeField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovBancoDataAlteracao: TDateTimeField;
    dbPagarDataEmissao: TDateTimeField;
    dbPagarDataVencto: TDateTimeField;
    dbPagarDataPagto: TDateTimeField;
    dbPagarDataInclusao: TDateTimeField;
    dbPagarDataAlteracao: TDateTimeField;
    dbFundosDataFechamento: TDateTimeField;
    dbFundosDataInclusao: TDateTimeField;
    dbDuplicataDataEmissao: TDateTimeField;
    dbDuplicataDataVencto: TDateTimeField;
    dbDuplicataDataPagto: TDateTimeField;
    dbDuplicataDataInclusao: TDateTimeField;
    qryNFDataEmissao: TDateTimeField;
    qryNFDataVencto: TDateTimeField;
    qryNFDataInclusao: TDateTimeField;
    dbReceberClienteNome: TStringField;
    qryTotDup: TMSQuery;
    qryTotDupvalor: TCurrencyField;
    qryTotDupvalorpago: TCurrencyField;
    qryTotDupvaloraberto: TCurrencyField;
    qryTotDupqtd: TIntegerField;
    DBText4: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    dsTotDup: TDataSource;
    rvImpNF: TRvDataSetConnection;
    rvImpNFItens: TRvDataSetConnection;
    dbNFItensServicoB: TStringField;
    dbBancoDataInclusao: TDateTimeField;
    TabSheet10: TTabSheet;
    DBGrid1: TDBGrid;
    dbLancamentos: TMSTable;
    dsLancamentos: TDataSource;
    dbLancamentosFilial: TSmallintField;
    dbLancamentosLancamento: TIntegerField;
    dbLancamentosTipoPag: TStringField;
    dbLancamentosCliente: TIntegerField;
    dbLancamentosClienteDeb: TIntegerField;
    dbLancamentosDataEmissao: TDateTimeField;
    dbLancamentosDataVencto: TDateTimeField;
    dbLancamentosPrazo: TIntegerField;
    dbLancamentosCod1: TSmallintField;
    dbLancamentosCod2: TSmallintField;
    dbLancamentosCod3: TSmallintField;
    dbLancamentosHistorico: TStringField;
    dbLancamentosDoc: TStringField;
    dbLancamentosValor: TCurrencyField;
    dbLancamentosTributo: TBooleanField;
    dbLancamentosBancoId: TSmallintField;
    dbLancamentosCheque: TStringField;
    dbLancamentosDataPagto: TDateTimeField;
    dbLancamentosValorPago: TCurrencyField;
    dbLancamentosValorBruto: TCurrencyField;
    dbLancamentosPago: TBooleanField;
    dbLancamentosSelecionado: TBooleanField;
    dbLancamentosStatus: TStringField;
    dbLancamentosPrevisao: TIntegerField;
    dbLancamentosMovBanco: TIntegerField;
    dbLancamentosNF: TIntegerField;
    dbLancamentosFuncionario: TIntegerField;
    dbLancamentosTipoAud: TStringField;
    dbLancamentosAuditor: TIntegerField;
    dbLancamentosSeq: TStringField;
    dbLancamentosPagtoPre: TIntegerField;
    dbLancamentosPorcentagem: TFloatField;
    dbLancamentosContabilizado: TBooleanField;
    dbLancamentosDataInclusao: TDateTimeField;
    dbLancamentosUsuarioI: TStringField;
    dbLancamentosDataAlteracao: TDateTimeField;
    dbLancamentosUsuario: TStringField;
    cmdRel3: TBitBtn;
    BitBtn5: TBitBtn;
    dbNFItensFilial: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbPlanoCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbEnderecoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure dbClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure FormShow(Sender: TObject);
    procedure dsNFDataChange(Sender: TObject; Field: TField);
    procedure cmdNovoNFClick(Sender: TObject);
    procedure cmdAlteraNFClick(Sender: TObject);
    procedure cmdGravaNFClick(Sender: TObject);
    procedure cmdCancelaNFClick(Sender: TObject);
    procedure cmdExcluiNFClick(Sender: TObject);
    procedure cmdFichaNFClick(Sender: TObject);
    procedure cmdListaNFClick(Sender: TObject);
    procedure dsReceberStateChange(Sender: TObject);
    procedure dsNFStateChange(Sender: TObject);
    procedure dbNFAfterInsert(DataSet: TDataSet);
    Function DupSeq(xSeq:string):string;
    procedure dbReceberCalcFields(DataSet: TDataSet);
    procedure grdRecDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbNFAfterPost(DataSet: TDataSet);
    procedure dbReceberBeforePost(DataSet: TDataSet);
    procedure chkPeriodoClick(Sender: TObject);
    procedure dbReceberFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbReceberAfterPost(DataSet: TDataSet);
    procedure dbNFBeforeEdit(DataSet: TDataSet);
    procedure grdNFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdNFDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbNFBeforePost(DataSet: TDataSet);
    procedure tabNFChange(Sender: TObject);
    procedure cmbNomeChange(Sender: TObject);
    procedure cmbDataChange(Sender: TObject);
    procedure cmbCliClick(Sender: TObject);
    procedure chkCliClick(Sender: TObject);
    procedure chkBancoClick(Sender: TObject);
    procedure TotalFiltro;
    procedure dbNFNFBrutoChange(Sender: TField);
    procedure dbNFIRendaChange(Sender: TField);
    procedure dbNFImpostosChange(Sender: TField);
    procedure dbNFValorIRendaChange(Sender: TField);
    procedure dbNFValorImpostosChange(Sender: TField);
    procedure tabRecChange(Sender: TObject);
    procedure cmbTextoChange(Sender: TObject);
    procedure cmbData1Change(Sender: TObject);
    procedure cmbCli1Click(Sender: TObject);
    procedure dbReceberAfterInsert(DataSet: TDataSet);
    procedure cmdRelNFClick(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure dbReceberBeforeEdit(DataSet: TDataSet);
    procedure dsReceberDataChange(Sender: TObject; Field: TField);
    procedure grdDuplicataDblClick(Sender: TObject);
    procedure cmpDupExit(Sender: TObject);
    procedure cmdRel2Click(Sender: TObject);
    procedure cmdRel1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure dbNFCofinsChange(Sender: TField);
    procedure dbNFCSLLChange(Sender: TField);
    procedure dbNFPisChange(Sender: TField);
    procedure cmdImpNFClick(Sender: TObject);
    procedure qryNFCalcFields(DataSet: TDataSet);
    procedure dbNFItensAfterInsert(DataSet: TDataSet);
    procedure dbNFItensBeforePost(DataSet: TDataSet);
    procedure dbNFItensCalcFields(DataSet: TDataSet);
    procedure cmdNovoEClick(Sender: TObject);
    procedure cmdGravaEClick(Sender: TObject);
    procedure cmdExcluiEClick(Sender: TObject);
    procedure dbNFItensServicoChange(Sender: TField);
    procedure BitBtn7Click(Sender: TObject);
    procedure qryNFItensCalcFields(DataSet: TDataSet);
    procedure dbReceberAfterDelete(DataSet: TDataSet);
    procedure qryTotDupCalcFields(DataSet: TDataSet);
    procedure chkAbertoClick(Sender: TObject);
    procedure dsNFItensStateChange(Sender: TObject);
    procedure dbPagarAfterPost(DataSet: TDataSet);
    procedure cmdRel3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure dbPagarAfterInsert(DataSet: TDataSet);
  private
    iSeq:string;
    iAberto,iPago:variant;
    iQtd:integer;
  public
  end;

var
  frmRec: TfrmRec;

implementation

uses frmPrincipal, frmRelNFs, dmRelatorios, frmRelDups;

{$R *.dfm}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

Function TfrmRec.DupSeq(xSeq:string):string;
var l:string;
var p:integer;
begin
    l:='ABCDEFGHIJKLMNOPQRSTUVXWZYZ';
    p:=pos(xseq,l);
    if p=0 then
        Result:='A'
    else
        Result:=copy(l,p+1,1);
end;

procedure TfrmRec.TotalFiltro;
var iQtd:integer;
var iValor,iPago:variant;
begin
    qryToTDup.Close;
    qryTotDup.SQL.Text:='Select sum(valor+acrescimos+descontos) as valor, '+
                        '       sum(valorPago) as valorpago, '+
                        '       count(duplicata) as qtd '+
                        'from Receber where Filial=:iFilial ';
    qryTotDup.ParamByName('iFilial').value:=dbFilialFilial.value;
    qryTotDup.Open;
    dbReceber.Refresh;
end;

procedure TfrmRec.FormShow(Sender: TObject);
begin
    screen.cursor:=crhourglass;
    try
        dbCliente.Open;
        dbClienteDeb.Open;
        dbClienteCob.Open;
        dbFilial.Open;
        dbEndereco.Open;
        dbBanco.Open;
        dbFundos.Open;
        dbPagar.Open;
        dbMovBanco.Open;
        dbPlanoC.Open;
        dbReceber.Open;
        dbReceber.IndexFieldNames:='Filial;Duplicata desc;Seq;SeqNum';
        dbReceber.First;
        
        dbNF.Open;
        dbNF.IndexFieldNames:='Filial;NF desc';
        dbNF.First;

        dbNFItens.Open;
        dbDuplicata.Open;
        dbLancamentos.Open;
        dbPagarDup.Open;
        dbMsg.Open;

        TotalFiltro;

        cmbFilial.keyvalue:=dbFilialFilial.value;
        iSeq:='';
        iQtd:=0;
        iAberto:=0;
        iPago:=0;
        dbReceber.First;
    finally
        cmbData.Date:=date;
        cmbData1.Date:=date;
        DataIni.Date:=date;
        DataFim.Date:=date;
        screen.cursor:=crdefault;
        pagReceber.ActivePageIndex:=0;
        pagCliente.ActivePageIndex:=0;
        pagClienteDeb.ActivePageIndex:=0;
        pnlLista.BringToFront;
        pagCliente1.ActivePageIndex:=0;
        pagClienteDeb1.ActivePageIndex:=0;
        pagNF.ActivePageIndex:=0;
        pnlNF.BringToFront;
        cmpDup.Enabled:=false;
        cmpSeq.Enabled:=false;
    end;
end;

procedure TfrmRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dbReceber.State in [dsInsert,dsEdit] then
    begin
        ShowMessage('Salve ou cancele o recebimento antes de sair');
        abort;
    end;
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        ShowMessage('Salve ou cancele a NF antes de sair');
        abort;
    end;

    dbReceber.Close;
    dbClienteCob.Close;
    dbCliente.Close;
    dbClienteDeb.Close;
    dbFilial.Close;
    dbEndereco.Close;
    dbBanco.Close;
    dbPagar.Close;
    dbMovBanco.Close;
    dbPlanoC.Close;
    dbFundos.Close;
    dbDuplicata.Close;
    dbPagarDup.Close;
    dbMsg.Close;
    dbNFItens.Close;
    dbNF.Close;
    dbLancamentos.Close;
end;

procedure TfrmRec.dbPlanoCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPlanoCCod1.value=1) and (dbPlanoCCod3.value>0);
end;

procedure TfrmRec.dbEnderecoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbEnderecoCobranca.value=true;
end;

procedure TfrmRec.cmdNovoClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbReceber.Insert;
    cmpDup.SetFocus;
end;

procedure TfrmRec.cmdAlteraClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbReceber.Edit;
    cmpCliente.SetFocus;
end;

procedure TfrmRec.cmdGravaClick(Sender: TObject);
var ds,inf:integer;
var iCli,iseq:string;
var ipago:variant;
begin
    if dbRecebervalorPago.ascurrency<>0 then
    begin
        if dbReceberDataPagto.isnull then
        begin
            ShowMessage('Data do Pagamento inválida');
            abort;
        end;
        if dbReceberBancoId.value=0 then
        begin
            ShowMessage('Selecione o banco');
            abort;
        end;
    end;

    dbReceber.Post;
    inf:=dbReceberDuplicata.value;
    iseq:=dbReceberSeq.value;
    ipago:=dbReceberValorPago.value;

    if dbCliente.Locate('CliFor',dbReceberCliente.value,[]) then
        iCli:=dbClienteNome.value
    else
        iCli:='Cliente '+dbReceberCliente.asstring+' não cadastrado';
    dbPagar.IndexFieldNames:='Filial;NF;Seq';
    if dbPagar.Locate('Filial;NF;Seq',VarArrayof([dbReceberFilial.value,
                                                         dbReceberDuplicata.value,
                                                         dbReceberSeq.value]),[]) then
    begin
        dbPagar.edit;
        dbPagarUsuario.value:=iUsuario;
        dbPagarDataAlteracao.value:=date;
    end
    else
    begin
        dbPagar.insert;
        dbPagarUsuarioI.value:=iUsuario;
        dbPagarDataInclusao.value:=date;
    end;
    dbPagarDataVencto.asdatetime:=dbReceberDataVencto.asdatetime;
    dbPagarCod1.value:=1;
    dbPagarCod2.value:=1;
    dbPagarCod3.value:=1;
    dbPagarFilial.value:=dbFilialfilial.value;
    dbPagarNF.value:=dbReceberDuplicata.value;
    dbPagarSeq.Value:=dbReceberSeq.value;
    dbPagarPrazo.value:=Round(dbReceberDataVencto.value-dbReceberDataEmissao.value);
    dbPagarPorcentagem.asfloat:=dbReceberPorcentagem.asfloat;
    dbPagarValor.value:=dbReceberValor.value;
    if dbPagarhistorico.isnull then
        dbPagarHistorico.value:='NF'+ZeroEsq(dbReceberDuplicata.Value,5)+' ao cliente '+iCli;
    if dbPagarDoc.value='' then
        dbPagarDoc.value:='NF'+ZeroEsq(dbReceberDuplicata.Value,5)+dbReceberSeq.value;
    dbPagarcliente.value:=dbReceberCliente.value;
    dbPagarclienteDeb.value:=dbReceberCliente.value;
    dbPagarTributo.value:=false;
    dbPagarStatus.value:='A';
    dbPagarMovBanco.value:=0;
    dbPagar.post;

    if ipago<>0 then
    begin
        if (dbReceberDuplicata.value<>inf) or
           (dbReceberSeq.value<>iseq) then
        begin
            dbReceber.IndexFieldNames:='Filial;Duplicata desc;Seq;SeqNum';
            dbReceber.Locate('Filial;Duplicata',VarArrayof([inf,iseq]),[]);
        end;            
        dbMovBanco.Insert;
        dbMovBancoFilial.value:=dbReceberFilial.value;
        dbMovBancoDataEntrada.value:=dbReceberDataPagto.value;
        dbMovBancoBancoId.value:=dbReceberBancoId.value;
        dbMovBancoFundo.value:=0;
        dbMovBancoTipo.value:='C';
        dbMovBancoDoc.value:='NF'+ZeroEsq(dbReceberDuplicata.Value,5)+dbReceberSeq.value;
        dbMovBancoValor.value:=dbReceberValorPago.value;
        dbMovBancoCruzado.value:=false;
        dbMovBAncoHistorico.value:='NF'+ZeroEsq(dbReceberDuplicata.Value,5)+' ao cliente '+iCli;;
        dbMovBancoStatus.value:='A';
        dbMovBancoDataInclusao.value:=date;
        dbMovBancoUsuarioI.value:=iUsuario;
        dbMovBanco.Post;

        dbPagar.Edit;
        dbPagarStatus.value:='P';
        dbPagardatapagto.asdatetime:=dbReceberdatapagto.asdatetime;
        dbPagarvalorpago.value:=dbRecebervalorpago.value;
        dbPagarBancoID.value:=dbReceberbancoID.value;
        dbPagarCheque.asinteger:=dbReceberNumero.asinteger;
        dbPagarMovBanco.value:=dbMovBancoMovBanco.value;
        dbPagar.Post;

        dbBanco.Locate('BancoId',dbMovBAncoBancoId.value,[]);
        dbBanco.Edit;
        dbBancoSaldoAtual.value:=dbBancoSaldoAtual.value+dbMovBancoValor.value;
        dbBanco.post;

        dbFundos.Locate('BancoId;Fundo',VarArrayof([dbMovBAncoBancoId.value,0]),[]);
        dbFundos.Edit;
        dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
        dbFundos.post;
    end
end;

procedure TfrmRec.cmdCancelaClick(Sender: TObject);
begin
    dbReceber.Cancel;
end;

procedure TfrmRec.cmdExcluiClick(Sender: TObject);
var i:Integer;
begin
    if dbRecebervalorpago.ascurrency<>0 then
    begin
        Showmessage('Você deve cancelar o pagamento antes de poder eliminar este título');
        abort;
    end;
    i:=application.messagebox('Você tem certeza de que deseja excluir esta duplicata?',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idyes then dbReceber.delete;
end;


procedure TfrmRec.cmdFichaClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmRec.cmdListaClick(Sender: TObject);
begin
    pnlLista.BringToFront;
end;

procedure TfrmRec.dbClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteStatusCli.value=true;
end;

procedure TfrmRec.dsNFDataChange(Sender: TObject; Field: TField);
begin
    if dbNFStatus.value=true then
        lblCancelada.Visible:=false
    else
        lblCancelada.Visible:=true;

end;

procedure TfrmRec.cmdNovoNFClick(Sender: TObject);
begin
    cmdFichaNFClick(sender);
    cmdFichaNF.Down:=true;
    cmdListaNF.Down:=false;
    dbNF.Insert;
    cmpEmissao.SetFocus;
end;

procedure TfrmRec.cmdAlteraNFClick(Sender: TObject);
begin
    cmdFichaNFClick(sender);
    cmdFichaNF.Down:=true;
    cmdListaNF.Down:=false;
    dbNF.Edit;
    cmpEmissao.SetFocus;
end;

procedure TfrmRec.cmdGravaNFClick(Sender: TObject);
begin
    dbNF.Post;
end;

procedure TfrmRec.cmdCancelaNFClick(Sender: TObject);
begin
    dbNF.Cancel;
end;

procedure TfrmRec.cmdExcluiNFClick(Sender: TObject);
var i:Integer;
begin
    cmbCli1.Visible:=false;
    cmbData1.Visible:=false;
    cmbTexto.Visible:=true;
    dbReceber.IndexFieldNames:='Filial;Duplicata desc;Seq;SeqNum';
    dbReceber.Refresh;
    dbDuplicata.refresh;
    dbPagarDup.Refresh;
    
    if dbReceber.Locate('Filial;Duplicata;Seq',VarArrayof([dbNFFilial.value,dbNFNF.value,'A']),[]) then
    begin
        if dbReceberBancoID.value>0 then
        begin
            ShowMessage('Nota Fiscal recebida. Impossivel cancelar');
            abort;
        end;
    end;
    i:=application.messagebox('Você tem certeza de que deseja cancelar esta NF?',
                              'Confirmação de Cancelamento',mb_YesNo);
    if i=idno then abort;

    while dbDuplicata.RecordCount>0 do
        dbDuplicata.Delete;

    while dbPagarDup.RecordCount>0  do
        dbPagarDup.Delete;

    dbNF.Edit;
    dbNFStatus.value:=false;
    dbNF.Post;

    dbDuplicata.Refresh;
    dbPagarDup.Refresh;
end;

procedure TfrmRec.cmdFichaNFClick(Sender: TObject);
begin
    pnlNF.BringToFront;    
end;

procedure TfrmRec.cmdListaNFClick(Sender: TObject);
begin
    pnlNF.SendToBack;
end;

procedure TfrmRec.dsReceberStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbReceber.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbReceber.Active=true) and
                         (dbReceber.RecordCount<>0);
     cmdGrava.Enabled:=dbReceber.State in [dsEdit,dsInsert];
end;

procedure TfrmRec.dsNFStateChange(Sender: TObject);
begin
     cmdNovoNF.Enabled:=dbNF.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiNF.Enabled:=(dbNF.Active=true) and
                         (dbNF.RecordCount<>0);
     cmdGravaNF.Enabled:=dbNF.State in [dsEdit,dsInsert];
end;

procedure TfrmRec.dbNFAfterInsert(DataSet: TDataSet);
begin
    dbNFFilial.value:=dbFilialFilial.value;
    dbNFNF.value:=dbFilialUltimaNF.value+1;
    dbNFDataEmissao.value:=date;
    dbNFDataVencto.value:=date;
    dbNFNatureza.value:='Auditoria';
    dbNFIRenda.Value:=1.5;
    dbNFPis.value:=0.65;
    dbNFCofins.value:=3;
    dbNFCSLL.value:=1;
    dbNFImpostos.value:=4.65;
    dbNFStatus.value:=true;
    dbNFDataInclusao.value:=date;
    dbNFMsg1.value:='Isento NF';
    dbNF.Tag:=1;   //inclusao NF - grava ult NF em filiais
end;

procedure TfrmRec.dbReceberCalcFields(DataSet: TDataSet);
begin
    dbReceberValorLiquido.value:=dbReceberValor.Value+dbReceberAcrescimos.value-
                                 dbReceberDescontos.value-dbReceberValorPago.value;
    dbReceberValorPagoCalculado.value:=dbReceberValor.Value+dbReceberAcrescimos.value-
                                       dbReceberDescontos.value;
    if dbReceberSelecionado.value=true then
       dbReceberStatus.value:='*'
    else dbReceberStatus.value:='';

end;

procedure TfrmRec.grdRecDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if dbReceberValorPago.Value>0 then
        grdRec.Canvas.Font.Color:=clBlue;
     grdRec.DefaultDrawDataCell(Rect,grdRec.Columns[DataCol].field,State);
end;

procedure TfrmRec.BitBtn1Click(Sender: TObject);
begin
    dbNF.Prior;
end;

procedure TfrmRec.BitBtn2Click(Sender: TObject);
begin
    dbNF.Next;
end;

procedure TfrmRec.BitBtn3Click(Sender: TObject);
begin
    dbREceber.Prior;
end;

procedure TfrmRec.BitBtn4Click(Sender: TObject);
begin
    dbReceber.Next;
end;

procedure TfrmRec.dbNFAfterPost(DataSet: TDataSet);
var iCliente:string;
begin
    if dbNFStatus.value=false then
        abort;

    if dbReceber.Locate('Filial;Duplicata;Seq',VarArrayof([dbNFFilial.value,dbNFNF.value,'A']),[])  then
    begin
        if dbReceberBancoID.value>0 then
        begin
            ShowMessage('Nota Fiscal ja recebida. Impossivel alterar');
            abort;
        end
        else
            dbReceber.Edit;
   end
   else
        dbReceber.Insert;

   dbReceberFilial.value:=dbNFFilial.value;
   dbReceberDuplicata.value:=dbNFNF.Value;
   dbReceberDataEmissao.value:=dbNFDataEmissao.value;
   dbReceberCliente.value:=dbNFCliente.value;
   dbReceberClienteDeb.value:=dbNFClienteDeb.value;
   dbReceberPraca.value:='São Paulo';
   dbReceberSeq.value:='A';
   dbReceberPorcentagem.value:=100;
   dbReceberHistorico.value:=dbNFDescricao.value;
   dbReceberDataVencto.value:=dbNFDataVencto.value;
   dbReceberValor.value:=dbNFNFLiquida.value;
   dbReceberHistorico.value:=dbNFDescricao.value;
   dbReceberStatus.value:='A';
   dbReceberPorcentagem.value:=100;
   dbReceberPrazo.asinteger:=Round(dbReceberDataVencto.value-dbReceberDataEmissao.value);
   dbReceber.Post;

   if dbNF.Tag=1 then
   begin
      dbFilial.Edit;
      dbFilialUltimaNF.value:=dbNFNF.value;
      dbFilial.Post;
      dbNF.Tag:=0;
   end;

   dbCliente.Locate('CliFor',dbNFCliente.value,[]);
   iCliente:=dbClienteNome.value;
   dbPagar.IndexFieldNames:='Filial;NF;Seq';
   if dbPagar.Locate('Filial;NF;Seq',VarArrayof([dbNFFilial.value,dbNFNF.value,'A']),[]) then
   begin
        if dbPagarMovBanco.value>0 then
        begin
            ShowMessage('Nota Fiscal ja recebida. Impossivel alterar');
            abort;
        end;
        dbPagar.Edit;
        dbPagarUsuario.value:=iUsuario;
        dbPagarDataAlteracao.value:=date;
        dbPagarValor.value:=dbNFNFLiquida.value;
   end
   else
   begin
        dbPagar.Insert;
        dbPagarUsuarioI.value:=iUsuario;
        dbPagarDataInclusao.value:=date;
   end;

   dbPagarFilial.value:=dbNFFilial.value;
   dbPagarNF.value:=dbNFNF.value;
   dbPagarSeq.value:='A';
   dbPagarPrazo.value:=Round(dbNFDataVencto.value-dbNFDataEmissao.value);
   dbPagarCliente.value:=dbNFCliente.value;
   dbPagarClienteDeb.value:=dbNFClienteDeb.value;
   dbPagarDataEmissao.value:=dbNFDataEmissao.value;
   dbPagarDataVencto.value:=dbNFDataVencto.value;
   dbPagarHistorico.value:='NF'+ZeroEsq(dbNFNF.Value,5)+' ao cliente '+iCliente;
   dbPagarDoc.value:='NF'+ZeroEsq(dbNFNF.Value,5)+'A';
   dbPagarValor.value:=dbNFNFLiquida.value;
   dbPagarCod1.value:=1;
   dbPagarCod2.value:=1;
   dbPagarCod3.value:=1;
   dbPagarContabilizado.value:=(dbBancoStatus.value<>'N');
   dbPagarTributo.value:=false;
   dbPagarPago.value:=false;
   dbPagarStatus.value:='A';
   dbPagar.Post;
end;

procedure TfrmRec.dbReceberBeforePost(DataSet: TDataSet);
var iRec:currency;
begin
    if dbBancoStatus.value='I' then
    begin
        ShowMessage('Conta inativa');
        abort;
    end;    
    iRec:=frmMenu.Arred(dbReceberValorPago.value)-frmMenu.Arred(dbReceberValor.value+dbReceberAcrescimos.value-dbReceberDescontos.value);
    if (iRec>0) and
       (dbReceberValorPago.value>0) then
    begin
        ShowMessage('Valor pago não confere com calculo de Acréscimos e Descontos');
        abort;
    end;
    if dbReceber.State=dsInsert then
        dbReceberDatainclusao.value:=date;
    dbReceberUsuario.value:=iUsuario;
end;

procedure TfrmRec.chkPeriodoClick(Sender: TObject);
begin
    chkPeriodo1.Visible:=chkPeriodo.Checked;
    chkPeriodo2.Visible:=chkPeriodo.Checked;
    DataIni.Visible:=chkPeriodo.Checked;
    DataFim.Visible:=chkPeriodo.Checked;
end;

procedure TfrmRec.dbReceberFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var l1,l2,l3,l4:boolean ;
begin
   l1:=true;
   l2:=true;
   l3:=true;
   l4:=true;

    if (chkAberto.checked) and (chkVencida.checked) and (not chkPaga.Checked) then
          l1:=(dbReceberDataPagto.isnull);

    if (chkAberto.checked) and (not chkVencida.checked) and (chkPaga.Checked) then
          l1:=true;

    if (not chkAberto.checked) and (chkVencida.checked) and (chkPaga.Checked) then
          l1:=(not dbReceberDataPagto.isnull);

    if (not chkAberto.checked) and (not chkVencida.checked) and (chkPaga.Checked) then
          l1:=(not dbReceberDataPagto.isnull);

    if (chkAberto.checked) and (not chkVencida.checked) and (not chkPaga.Checked) then
          l1:=(dbReceberDataPagto.isnull) and
              (dbReceberDataVencto.value<=date);

    if (not chkAberto.checked) and (chkVencida.checked) and (not chkPaga.Checked) then
          l1:=(not dbReceberDataPagto.isnull);

    if chkPeriodo.Checked=true then
        if chkPeriodo1.Checked then
        begin
            l2:=(dbReceberDataVencto.value>=DataIni.date) and
                (dbReceberDataVencto.value<=DataFim.date) ;
        end
        else
        begin
            l2:=(dbReceberDataEmissao.value>=DataIni.date) and
                (dbReceberDataEmissao.value<=DataFim.date)  ;
        end;

    if chkCli.Checked=false then
        l3:=dbReceberCliente.value=cmbClienteF.keyvalue;

    if chkBanco.Checked=false then
        l4:=dbReceberBancoID.value=cmbBancoF.keyvalue;

    accept:=(l1 and l2 and l3 and l4);
end;

procedure TfrmRec.dbReceberAfterPost(DataSet: TDataSet);
begin
    dbDuplicata.Refresh;
    cmpDup.Enabled:=false;
    cmpSeq.Enabled:=false;
    dbReceber.tag:=0;
end;

procedure TfrmRec.dbNFBeforeEdit(DataSet: TDataSet);
begin
    if dbReceber.Locate('Filial;Duplicata;Seq',VarArrayof([dbNFFilial.value,dbNFNF.value,'A']),[]) then
    begin
        if dbReceberBancoID.value>0 then
        begin
            ShowMessage('Nota Fiscal recebida. Impossivel alterar');
            abort;
        end;
    end;
end;

procedure TfrmRec.grdNFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

procedure TfrmRec.grdNFDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if dbNFStatus.Value=false then
        grdNF.Canvas.font.Color:=clRed;

     grdNF.DefaultDrawDataCell(Rect,grdNF.Columns[DataCol].field,State);

end;

procedure TfrmRec.dbNFBeforePost(DataSet: TDataSet);
begin
    if dbNFCliente.asinteger=0 then
    begin
        Showmessage('Cliente inválido');
        abort;
    end;
    dbNFUsuario.value:=iUsuario;
    dbNFValorIRenda.value:=frmMenu.Arred(dbNFValorIrenda.value);
    dbNFValorImpostos.value:=frmMenu.Arred(dbNFValorImpostos.value);
    dbNFNFLiquida.value:=frmMenu.Arred(dbNFNFLiquida.value);
end;

procedure TfrmRec.tabNFChange(Sender: TObject);
begin
    case TabNF.tabindex of
    0:begin
      cmbCli.Visible:=false;
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      dbNF.IndexFieldNames:='Filial;NF desc';
      end;
    1:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=false;
      cmbCli.Visible:=true;
      dbNF.IndexFieldNames:='Filial;Cliente;NF desc';
      end;
    2:begin
      cmbCli.Visible:=false;
      cmbNome.Visible:=false;
      cmbData.Visible:=true;
      dbNF.IndexFieldNames:='Filial;DataEmissao desc';
      end;
    end;

end;

procedure TfrmRec.cmbNomeChange(Sender: TObject);
begin
    dbNF.Locate('Filial;NF',VarArrayof([dbFilialFilial.value,trim(cmbNome.Text)]),[loCaseInsensitive,loPartialKey] );
end;

procedure TfrmRec.cmbDataChange(Sender: TObject);
begin
    dbNF.Locate('Filial;DataEmissao',VarArrayof([dbFilialFilial.value,DateToStr(cmbData.date)]),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRec.cmbCliClick(Sender: TObject);
begin
    dbNF.Locate('Filial;Cliente',VarArrayof([dbFilialFilial.value,cmbCli.KeyValue]),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRec.chkCliClick(Sender: TObject);
begin
    cmbClienteF.Visible:=not chkCli.Checked
end;

procedure TfrmRec.chkBancoClick(Sender: TObject);
begin
    cmbBancoF.Visible:=not chkBanco.Checked;
end;

procedure TfrmRec.dbNFNFBrutoChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorIRenda.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFIrenda.value/100);
        dbNFValorPis.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFPis.value/100);
        dbNFValorCofins.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFCofins.value/100);
        dbNFValorCSLL.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFCSLL.value/100);
        dbNFValorImpostos.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFImpostos.value/100);
        if dbNFValorIrenda.value<10 then
            dbNFValorIrenda.value:=0;
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorIrenda.value-dbNFValorImpostos.value;
    end;
end;

procedure TfrmRec.dbNFIRendaChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorIRenda.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFIrenda.value/100);
        if dbNFValorIrenda.value<10 then
            dbNFValorIrenda.value:=0;
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorIrenda.value-dbNFValorImpostos.value;
    end;
end;

procedure TfrmRec.dbNFImpostosChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorImpostos.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFImpostos.value/100);
        if dbNFValorImpostos.value<10 then
            dbNFValorImpostos.value:=0;
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorIrenda.value-dbNFValorImpostos.value;
    end;
end;

procedure TfrmRec.dbNFValorIRendaChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorIrenda.value-dbNFValorImpostos.value;
end;

procedure TfrmRec.dbNFValorImpostosChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorIrenda.value-dbNFValorImpostos.value;
end;

procedure TfrmRec.tabRecChange(Sender: TObject);
begin
    case tabRec.TabIndex of
    0:begin
      cmbCli1.Visible:=false;
      cmbData1.Visible:=false;
      cmbTexto.Visible:=true;
      dbReceber.IndexFieldNames:='Filial;Duplicata desc;Seq;SeqNum';
      end;
    1:begin
      cmbData1.Visible:=false;
      cmbTexto.Visible:=false;
      cmbCli1.Visible:=true;
      dbReceber.IndexFieldNames:='Filial;Cliente;Duplicata desc';
      end;
    2:begin
      cmbCli1.Visible:=false;
      cmbTexto.Visible:=false;
      cmbData1.Visible:=true;
      dbReceber.IndexFieldNames:='Filial;DataVencto desc';
      end;
    3:begin
      cmbCli1.Visible:=false;
      cmbTexto.Visible:=false;
      cmbData1.Visible:=true;
      dbReceber.IndexFieldNames:='Filial;DataEmissao desc';
      end;
    end;
end;

procedure TfrmRec.cmbTextoChange(Sender: TObject);
begin
    dbReceber.Locate('Filial;Duplicata',VarArrayof([dbFilialFilial.value,trim(cmbTexto.Text)]),[loCaseInsensitive,loPartialKey] );
end;

procedure TfrmRec.cmbData1Change(Sender: TObject);
begin
    case tabRec.TabIndex of
    2:dbReceber.Locate('Filial;DataVencto',VarArrayof([dbFilialFilial.value,DateToStr(cmbData1.date)]),[loCaseInsensitive,loPartialKey]);
    3:dbReceber.Locate('Filial;DataEmissao',VarArrayof([dbFilialFilial.value,DateToStr(cmbData1.date)]),[loCaseInsensitive,loPartialKey]);
    end;
end;

procedure TfrmRec.cmbCli1Click(Sender: TObject);
begin
    dbReceber.Locate('Filial;Cliente',VarArrayof([dbFilialFilial.value,cmbCli1.KeyValue]),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRec.dbReceberAfterInsert(DataSet: TDataSet);
begin
    cmpDup.Enabled:=true;
    cmpSeq.Enabled:=true;
    dbReceberDataEmissao.value:=date;
    dbReceberDataVencto.value:=date;
    dbReceberSeqNum.value:=0;
end;

procedure TfrmRec.cmdRelNFClick(Sender: TObject);
begin
    if frmRelNF=nil then
       Application.CreateForm(TfrmRelNF, frmRelNF);
    frmRelNF.Show;
end;

procedure TfrmRec.DBLookupComboBox2CloseUp(Sender: TObject);
begin
    if (dbReceber.State in [dsInsert,dsEdit]) then
    begin
        dbReceberDataPagto.value:=dbReceberDataVencto.value;
        dbReceberValorPago.value:=dbReceberValor.value+dbReceberAcrescimos.value-dbReceberDescontos.value;
    end;        
end;

procedure TfrmRec.dbReceberBeforeEdit(DataSet: TDataSet);
begin
    if (dbRecebervalorpago.ascurrency<>0) and
       (dbReceber.tag=0) then
    begin
        Showmessage('Duplicata paga. Você deve cancelar o pagamento para poder alterar este título');
        abort;
    end;
end;

procedure TfrmRec.dsReceberDataChange(Sender: TObject; Field: TField);
begin
    if dbReceberValorPago.value>0 then
        if frmMenu.Arred(dbReceberValorPago.value)=frmMenu.Arred(dbReceberVAlorPagoCalculado.value) then
            cmpCalculado.Font.Color:=clBlack
        else
            cmpCalculado.Font.Color:=clRed
    else
        cmpCalculado.Font.Color:=clBlack
end;

procedure TfrmRec.grdDuplicataDblClick(Sender: TObject);
begin
      cmbCli1.Visible:=false;
      cmbData1.Visible:=false;
      cmbTexto.Visible:=true;
      dbReceber.IndexFieldNames:='Filial;Duplicata;Seq;SeqNum';
      dbReceber.Locate('Filial;Duplicata;Seq',VarArrayof([dbDuplicataFilial.Value,
                                                           dbDuplicataDuplicata.value,
                                                           dbDuplicataSeq.value]),[])
end;

procedure TfrmRec.cmpDupExit(Sender: TObject);
begin
    TabNF.TabIndex:=0;
    cmbCli.Visible:=false;
    cmbData.Visible:=false;
    cmbNome.Visible:=true;
    dbNF.IndexFieldNames:='Filial;NF';
    if dbNF.Locate('Filial;NF',VarArrayof([dbFilialFilial.value,StrtoInt(cmpDup.Text)]),[]) then
    begin
        dbReceberCliente.value:=dbNFCliente.value;
        dbReceberClienteDeb.value:=dbNFClienteDeb.value;
        dbReceberDataEmissao.value:=dbNFDataEmissao.value;
        dbReceberDataVencto.value:=dbNFDataVencto.value;
        dbReceberValor.value:=dbNFNFLiquida.value;
    end
    else
    begin
        dbReceberCliente.value:=0;
        dbReceberClienteDeb.value:=0;
        dbReceberDataEmissao.clear;
        dbReceberDataVencto.clear;
        dbReceberValor.value:=0;
    end;
end;

procedure TfrmRec.cmdRel2Click(Sender: TObject);
begin
with dmRelatorio do
begin
    qryDup.close;
    qryDup.sql.clear;
    qryDup.sql.text:='select * from Receber '+
                     'where  DataPagto is null  and DataVencto<:hoje '+
                     'order by Filial, Duplicata, Seq ';
    qryDup.ParamByName('hoje').asdate:=date;
    qryDup.Open;


    frmMenu.RvFin.SetParam('Titulo','Duplicatas vencidas e não recebidas');
    frmMenu.rvFin.SelectReport('relDupAberto',true);
    frmMenu.rvFin.Execute;
end;    
end;

procedure TfrmRec.cmdRel1Click(Sender: TObject);
begin
   if frmRelDup=nil then
        Application.CreateForm(TfrmRelDup, frmRelDup);
    frmRelDup.Tag:=0;    
    frmRelDup.Show;
end;

procedure TfrmRec.BitBtn6Click(Sender: TObject);
var i:integer;
begin
    if dbRecebervalorpago.ascurrency=0 then
    begin
        ShowMessage('Duplicata aberta');
        abort;
    end;
        
    if dbRecebervalorpago.ascurrency<>0 then
        if dbPagar.Locate('Filial;NF;Seq',VarArrayof([dbReceberFilial.value,
                                                      dbReceberDuplicata.value,
                                                      dbReceberSeq.value]),[]) then
           if dbPagarMovBanco.value>0 then
                if dbMovBanco.Locate('MovBanco',dbPagarMovBanco.value,[]) then
                begin
                    Showmessage('Movimento Bancário ok.'+#13+
                                'Você deve cancelar o pagamento antes de poder alterar/eliminar este título');
                    abort;
                end
                else
                begin
                    i:=application.messagebox('Movimento bancário não localizado. Reabrir esta duplicata?',
                                              'Confirmação',mb_YesNo);
                    if i=idno then abort;
                    dbPagar.Edit;
                    dbPagarStatus.value:='A';
                    dbPagardatapagto.clear;
                    dbPagarvalorpago.value:=0;
                    dbPagarBancoID.value:=0;
                    dbPagarCheque.asinteger:=0;
                    dbPagarMovBanco.value:=0;
                    dbPagarPago.value:=false;
                    dbPagar.Post;

                    dbReceber.Tag:=1;
                    dbReceber.Edit;
                    dbReceberBancoid.value:=0;
                    dbReceberDataPagto.Clear;
                    dbReceberDocPagto.Value:='';
                    dbReceberValorPago.value:=0;
                    dbReceber.Post;
                    dbReceber.tag:=0;
                end
            else
            begin
               i:=application.messagebox('Movimento bancário não localizado. Reabrir esta duplicata?',
                                         'Confirmação',mb_YesNo);
                if i=idno then abort;
                dbReceber.Tag:=1;
                dbReceber.Edit;
                dbReceberBancoid.value:=0;
                dbReceberDataPagto.Clear;
                dbReceberDocPagto.Value:='';
                dbReceberValorPago.value:=0;
                dbReceber.Post;
                dbReceber.tag:=0;
            end
        else
        begin
            dbReceber.tag:=1;
            dbReceber.Edit;
            cmdGravaClick(sender);
            dbReceber.tag:=0;
            ShowMessage('NF atualizada no Pagar');
        end;
end;
procedure TfrmRec.dbNFCofinsChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorCofins.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFCofins.value/100);
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorCofins.value-dbNFValorImpostos.value;
        dbNFImpostos.value:=dbNFPis.Value+dbNFCofins.value+dbNFCSLL.value;
    end;

end;

procedure TfrmRec.dbNFCSLLChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorCSLL.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFCSLL.value/100);
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorCSLL.value-dbNFValorImpostos.value;
        dbNFImpostos.value:=dbNFPis.Value+dbNFCofins.value+dbNFCSLL.value;
    end;

end;

procedure TfrmRec.dbNFPisChange(Sender: TField);
begin
    if dbNF.State in [dsInsert,dsEdit] then
    begin
        dbNFValorPis.value:=frmMenu.Arred(dbNFNFBruto.value*dbNFPis.value/100);
        dbNFNFLiquida.value:=dbNFNFBruto.value-dbNFValorPis.value-dbNFValorImpostos.value;
        dbNFImpostos.value:=dbNFPis.Value+dbNFCofins.value+dbNFCSLL.value;
    end;

end;

procedure TfrmRec.cmdImpNFClick(Sender: TObject);
begin
    qryNF.Close;
    qryNF.SQL.Clear;
    qryNF.SQL.Text:='Select * from NF '+
                    'where NF.NF=:iNF and NF.Filial=:iFilial ';

    qryNF.ParamByName('iNF').asinteger:=dbNFNF.value;
    qryNF.ParamByName('iFilial').asinteger:=dbNFFilial.value;
    qryNF.Open;

    qryNFItens.Close;
    qryNFItens.SQL.Clear;
    qryNFItens.SQL.Text:='Select * from NFItens '+
                    'where NF=:iNF '+
                    'order by NF,Item ';

    qryNFItens.ParamByName('iNF').asinteger:=dbNFNF.value;
    qryNFItens.Open;

    frmMenu.rvFin.SelectReport('ImpNF',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRec.qryNFCalcFields(DataSet: TDataSet);
begin
    frmMenu.extenso.valor:=qryNFNFLiquida.asstring;
    qryNFTotalImpostos.value:=qryNFValorImpostos.value+qryNFValorIRenda.value;
    qryNFValorExtenso.value:=frmMenu.extenso.Caption+
                           ' x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x';

end;

procedure TfrmRec.dbNFItensAfterInsert(DataSet: TDataSet);
begin
    dbNFItensNF.value:=dbNFNF.value;
    dbNFItensQtd.value:=0;
    dbNFItensValor.value:=0;
    dbNFItensItem.value:=dbNFItens.RecordCount+1;
    dbNFItensFilial.value:=dbNFFilial.value;
end;

procedure TfrmRec.dbNFItensBeforePost(DataSet: TDataSet);
begin
    if dbNFItensQtd.value=0 then
    begin
        Showmessage('Quantidade inválida');
        abort;
    end;
    if dbNFItensValor.value=0 then
    begin
        Showmessage('Valor inválido');
        abort;
    end;
end;

procedure TfrmRec.dbNFItensCalcFields(DataSet: TDataSet);
begin
    dbNFItensTotal.value:=dbNFItensQtd.value*dbNFItensValor.value;
end;

procedure TfrmRec.cmdNovoEClick(Sender: TObject);
begin
    dbNFItens.Insert;
    grdItens.SetFocus;
end;

procedure TfrmRec.cmdGravaEClick(Sender: TObject);
begin
    dbNFItens.Post;
end;

procedure TfrmRec.cmdExcluiEClick(Sender: TObject);
begin
    dbNFItens.Delete;
end;

procedure TfrmRec.dbNFItensServicoChange(Sender: TField);
begin
    if dbNFItens.State in [dsInsert,dsEdit] then
    begin
        dbNFItensDescricao.value:=dbClienteCobServico.value;
        dbNFItensValor.value:=dbClienteCobValor.value;
    end;
end;

procedure TfrmRec.BitBtn7Click(Sender: TObject);
begin
    qryTotNF.close;
    qryTotNF.sql.text:='Select sum(valor*qtd) as total from NFItens '+
                       'where NF=:iNF ';
    qryTotNF.ParamByName('iNF').AsInteger:=dbNFNF.value;
    qryTotNF.Open;
    qryTotNF.First;

    if dbNF.State in [dsBrowse] then
        dbNF.Edit;
    dbNFNFBruto.value:=qryTotNFtotal.value;
    dbNF.Post;

end;

procedure TfrmRec.qryNFItensCalcFields(DataSet: TDataSet);
begin
    qryNFItensTotal.value:=qryNFItensQtd.value*qryNFItensValor.value;
end;

procedure TfrmRec.dbReceberAfterDelete(DataSet: TDataSet);
begin
    dbDuplicata.Refresh;
end;

procedure TfrmRec.qryTotDupCalcFields(DataSet: TDataSet);
begin
    qryTotDupvaloraberto.value:=qryTotDupvalor.value-qryTotDupvalorpago.value;
end;

procedure TfrmRec.chkAbertoClick(Sender: TObject);
begin
    TotalFiltro;
end;

procedure TfrmRec.dsNFItensStateChange(Sender: TObject);
begin
     cmdNovoE.Enabled:=dbNFItens.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiE.Enabled:=(dbNFItens.Active=true) and
                         (dbNFItens.RecordCount<>0);
     cmdGravaE.Enabled:=dbNFItens.State in [dsEdit,dsInsert];

end;

procedure TfrmRec.dbPagarAfterPost(DataSet: TDataSet);
begin
    dbLancamentos.Refresh;
end;

procedure TfrmRec.cmdRel3Click(Sender: TObject);
begin
   if frmRelDup=nil then
        Application.CreateForm(TfrmRelDup, frmRelDup);
    frmRelDup.Tag:=1;
    frmRelDup.Show;
end;

procedure TfrmRec.BitBtn5Click(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Você tem certeza de que deseja cancelar o pagamento?',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    
    if dbRecebervalorpago.ascurrency<>0 then
        if dbPagar.Locate('Filial;NF;Seq',VarArrayof([dbReceberFilial.value,
                                                      dbReceberDuplicata.value,
                                                      dbReceberSeq.value]),[]) then
    begin
        if dbPagarMovBanco.value>0 then
            if dbMovBanco.Locate('MovBanco',dbPagarMovBanco.value,[]) then
                dbMovBanco.Delete;
        dbPagar.Edit;
        dbPagarMovBanco.value:=0;
        dbPagarStatus.value:='A';
        dbPagardatapagto.clear;
        dbPagarvalorpago.value:=0;
        dbPagarBancoID.value:=0;
        dbPagarCheque.clear;
        dbPagar.Post;

        dbReceber.tag:=1;
        dbReceber.Edit;
        dbReceberBancoId.value:=0;
        dbReceberDataPagto.clear;
        dbReceberValorPago.value:=0;
        dbReceber.Post;
        dbReceber.tag:=0;
    end;        



end;

procedure TfrmRec.dbPagarAfterInsert(DataSet: TDataSet);
begin
    dbPagarMovBanco.value:=0;
end;

end.
