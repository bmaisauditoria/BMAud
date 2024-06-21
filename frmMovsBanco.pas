unit frmMovsBanco;

interface

uses
  Windows, Variants, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Dateutils,
  ComCtrls, StdCtrls, Mask, DBCtrls, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf,
  DBAccess, MemDS, DB, ExtCtrls, Buttons,  Grids, DBGrids, Menus, ToolWin, OleCtrls,
  SHDocVw, ImgList, Aligrid, ScktComp, Sockets, RpDefine, RpCon, RpConDS, RpConBDE,
  DBDateTimePicker;

type
TMovimento = class
             Dat:tdatetime;
             Historico:string;
             Documento:string;
             Valor:currency;
             Achou:boolean;
             Codn1,Codn2,Codn3:integer;
             end;

  TfrmMovBanco = class(TForm)
    dsBanco: TDataSource;
    dsMovBanco: TDataSource;
    dbMovBanco: TMSTable;
    dbBanco1: TMSTable;
    dsBanco1: TDataSource;
    dsConciliado: TDataSource;
    dbPagar: TMSTable;
    SaveDialog1: TSaveDialog;
    dsPagar: TDataSource;
    tabMov: TTabSheet;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    tabBanco: TTabSheet;
    Panel2: TPanel;
    grdBanco: TDBGrid;
    pagBanco: TPageControl;
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    dbReceber: TMSTable;
    pnlFicha: TPanel;
    dbMovAplic: TMSTable;
    dsMovAplic: TDataSource;
    dbPlanoC: TMSTable;
    dsPlanoC: TDataSource;
    ImageList1: TImageList;
    tabConciliacao: TTabSheet;
    OpenDialog1: TOpenDialog;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
    dbBanco1BancoID: TAutoIncField;
    dbBanco1Banco: TSmallintField;
    dbBanco1Conta: TStringField;
    dbBanco1Nome: TStringField;
    dbBanco1Sigla: TStringField;
    dbBanco1Endereco: TMemoField;
    dbBanco1Gerente: TStringField;
    dbBanco1Fone: TStringField;
    dbBanco1Fax: TStringField;
    dbBanco1Site: TStringField;
    dbBanco1Filial: TSmallintField;
    dbBanco1UltimoCheque: TIntegerField;
    dbBanco1SaldoFechamento: TCurrencyField;
    dbBanco1UsuarioFechamento: TStringField;
    dbBanco1SaldoAtual: TCurrencyField;
    dbBanco1LimiteCredito: TCurrencyField;
    dbBanco1Status: TStringField;
    dbBanco1Usuario: TStringField;
    dbPagarFilial: TIntegerField;
    dbPagarCliente: TIntegerField;
    dbPagarPrazo: TIntegerField;
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
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbPagarUsuario: TStringField;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbReceberFilial: TIntegerField;
    dbReceberDuplicata: TIntegerField;
    dbReceberSeq: TStringField;
    dbReceberSeqNum: TSmallintField;
    dbReceberPrazo: TIntegerField;
    dbReceberCliente: TIntegerField;
    dbReceberPraca: TStringField;
    dbReceberValor: TCurrencyField;
    dbReceberAcrescimos: TCurrencyField;
    dbReceberDescontos: TCurrencyField;
    dbReceberBancoID: TIntegerField;
    dbReceberValorPago: TCurrencyField;
    dbReceberDocPagto: TStringField;
    dbReceberHistorico: TMemoField;
    dbReceberQuitado: TBooleanField;
    dbReceberPorcentagem: TFloatField;
    dbReceberSelecionado: TBooleanField;
    dbReceberUsuario: TStringField;
    Panel5: TPanel;
    tabMovBanco: TTabControl;
    grdMovBanco: TDBGrid;
    CoolBar1: TCoolBar;
    cmbBusca1: TDateTimePicker;
    Panel3: TPanel;
    Label36: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label52: TLabel;
    Label42: TLabel;
    cmpDisponivel: TDBText;
    DBText14: TDBText;
    DBText12: TDBText;
    cmpSaldo: TDBText;
    DBText9: TDBText;
    Panel4: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    cmpBanco: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit19: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    tabExtrato: TTabControl;
    StringAlignGrid1: TStringAlignGrid;
    cmpDataMov: TDateTimePicker;
    dbAplicacao: TMSTable;
    dsAplicacao: TDataSource;
    dbAplicacaoAplicacao: TIntegerField;
    dbAplicacaoNome: TStringField;
    dbAplicacaoBancoID: TIntegerField;
    dbMovBancoMovBanco: TAutoIncField;
    dbPagarLancamento: TAutoIncField;
    dbPagarMovBanco: TIntegerField;
    pagFundoAplic: TPageControl;
    tabAplicacao: TTabSheet;
    Splitter1: TSplitter;
    Panel8: TPanel;
    Label14: TLabel;
    grdAplicacao: TDBGrid;
    Panel7: TPanel;
    Label29: TLabel;
    grdMovAplic: TDBGrid;
    tabFundo: TTabSheet;
    dbFundos: TMSTable;
    dsFundos: TDataSource;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    Panel9: TPanel;
    Label19: TLabel;
    grdFundo: TDBGrid;
    Splitter2: TSplitter;
    Panel10: TPanel;
    Label23: TLabel;
    grdMovFundo: TDBGrid;
    dbFundosBancoID: TIntegerField;
    dbFundosNome: TStringField;
    dbFundosDataFechamento: TDateTimeField;
    dbFundosSaldoFechamento: TCurrencyField;
    dbFundosUsuarioFechamento: TStringField;
    dbFundosSaldoAtual: TCurrencyField;
    dbFundosStatus: TStringField;
    dbFundosUsuario: TStringField;
    dbMovBancoF: TMSTable;
    dsMovBancoF: TDataSource;
    dbMovBancoFMovBanco: TAutoIncField;
    dbMovBancoFBancoID: TIntegerField;
    dbMovBancoFTipo: TStringField;
    dbMovBancoFDoc: TStringField;
    dbMovBancoFValor: TCurrencyField;
    dbMovBancoFFavorecido: TStringField;
    dbMovBancoFHistorico: TMemoField;
    dbMovBancoFStatus: TStringField;
    dbMovBancoFFilial: TIntegerField;
    dbMovBancoFUsuario: TStringField;
    dbMovBancoFFundo: TIntegerField;
    dbMovBancoFundo: TIntegerField;
    dbMovBancoFundoNome: TStringField;
    dbFundosFundo: TIntegerField;
    Panel12: TPanel;
    cmdNovoF: TBitBtn;
    cmdGravaF: TBitBtn;
    cmdExcluiF: TBitBtn;
    Panel13: TPanel;
    cmdNovoA: TBitBtn;
    cmdGravaA: TBitBtn;
    cmdExcluiA: TBitBtn;
    Label33: TLabel;
    DBEdit1: TDBEdit;
    qrySaldo: TMSQuery;
    qrySaldoMovBanco: TIntegerField;
    qrySaldoBancoID: TIntegerField;
    qrySaldoFundo: TIntegerField;
    qrySaldoTipo: TStringField;
    qrySaldoDoc: TStringField;
    qrySaldoValor: TCurrencyField;
    qrySaldoFavorecido: TStringField;
    qrySaldoCruzado: TBooleanField;
    qrySaldoHistorico: TMemoField;
    qrySaldoStatus: TStringField;
    qrySaldoFilial: TIntegerField;
    qrySaldoUsuario: TStringField;
    Label8: TLabel;
    cmpHistorico: TDBMemo;
    dbPagarTributo: TBooleanField;
    dbBanco: TMSTable;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dbBancoEndereco: TMemoField;
    dbBancoGerente: TStringField;
    dbBancoFone: TStringField;
    dbBancoFax: TStringField;
    dbBancoSite: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoUltimoCheque: TIntegerField;
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoLimiteCredito: TCurrencyField;
    dbBancoStatus: TStringField;
    dbBancoUsuario: TStringField;
    dbBancoDisponivel: TCurrencyField;
    dbPagarSeq: TStringField;
    cmbBusca: TComboBox;
    dbMovAplicBancoID: TIntegerField;
    dbMovAplicAplicacao: TIntegerField;
    dbMovAplicTipo: TStringField;
    dbMovAplicMovBanco: TIntegerField;
    dbMovAplicValor: TCurrencyField;
    dbMovBancoAplicacao: TIntegerField;
    dbAplicacaoSaldo: TCurrencyField;
    dbMovBancoNomeAplicacao: TStringField;
    dbBancoFilial1: TIntegerField;
    dbBancoAplicacoes: TCurrencyField;
    dbBancoFundos: TCurrencyField;
    dbMovBancoFTipoTexto: TStringField;
    dbMovBancoUsuarioI: TStringField;
    dbPagarUsuarioI: TStringField;
    dbMovBancoFUsuarioI: TStringField;
    dbPagarContabilizado: TBooleanField;
    qryNC: TMSQuery;
    qryNCMovBanco: TIntegerField;
    qryNCBancoID: TIntegerField;
    qryNCFundo: TIntegerField;
    qryNCTipo: TStringField;
    qryNCDoc: TStringField;
    qryNCValor: TCurrencyField;
    qryNCFavorecido: TStringField;
    qryNCCruzado: TBooleanField;
    qryNCHistorico: TMemoField;
    qryNCStatus: TStringField;
    qryNCFilial: TIntegerField;
    qryNCUsuarioI: TStringField;
    qryNCUsuario: TStringField;
    qryNCSelecionado: TBooleanField;
    qryNCAplicacao: TIntegerField;
    dbMovBancoCruzado: TBooleanField;
    dbMovBancoSelecionado: TBooleanField;
    rdgStatus: TDBRadioGroup;
    dbSaldo: TMSTable;
    dbSaldoBancoID: TSmallintField;
    dbSaldoAno: TSmallintField;
    dbSaldoMes: TSmallintField;
    dbSaldoSaldoConciliado: TCurrencyField;
    dbSaldoDebitosPendentes: TCurrencyField;
    dbSaldoSaldoAplicacao: TCurrencyField;
    qryAplicacao: TMSQuery;
    qryAplicacaoBancoID: TIntegerField;
    qryAplicacaoAplicacao: TIntegerField;
    qryAplicacaoTipo: TStringField;
    qryAplicacaoMovBanco: TIntegerField;
    qryAplicacaoValor: TCurrencyField;
    qryCheque: TMSQuery;
    qryChequevalor: TCurrencyField;
    dbBanco1SaldoPrevisto: TCurrencyField;
    dbBanco1Aplicacoes: TCurrencyField;
    dbBanco1Fundos: TCurrencyField;
    dbBanco1Disponivel: TCurrencyField;
    dbBanco1Filial1: TSmallintField;
    pgrBar: TProgressBar;
    qryMovAplic: TMSQuery;
    qryMovAplicMovBanco: TIntegerField;
    qryMovAplicBancoID: TIntegerField;
    qryMovAplicTipo: TStringField;
    qryMovAplicValor: TCurrencyField;
    qryMovAplicAplicacao: TIntegerField;
    cmdConfere: TBitBtn;
    dbMovAplic1: TMSTable;
    dbMovAplic1BancoID: TIntegerField;
    dbMovAplic1Aplicacao: TIntegerField;
    dbMovAplic1Tipo: TStringField;
    dbMovAplic1MovBanco: TIntegerField;
    dbMovAplic1Valor: TCurrencyField;
    dbMovAplicSaldo: TCurrencyField;
    Panel6: TPanel;
    Label48: TLabel;
    DBText13: TDBText;
    DBText11: TDBText;
    Label51: TLabel;
    Panel16: TPanel;
    Panel17: TPanel;
    cmdSaldo: TSpeedButton;
    cmdReclass: TBitBtn;
    cmdExtrato: TSpeedButton;
    cmdPosicao: TBitBtn;
    cmdPosicao1: TBitBtn;
    cmdAnterior: TBitBtn;
    cmdProximo: TBitBtn;
    Panel18: TPanel;
    cmdNovoB: TBitBtn;
    cmdAlteraB: TBitBtn;
    cmdGravaB: TBitBtn;
    cmdCancelaB: TBitBtn;
    cmdExcluiB: TBitBtn;
    cmdFichaB: TSpeedButton;
    cmdListaB: TSpeedButton;
    Panel19: TPanel;
    cmdNovo: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    Panel20: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel21: TPanel;
    cmdFechamento: TSpeedButton;
    cmdConciliarAuto: TSpeedButton;
    cmdAbrir: TSpeedButton;
    pnlFichaM: TPanel;
    pagMov: TPageControl;
    tabTransf: TTabSheet;
    cmpFundo1: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    cmpConta: TLabel;
    cmpSaldoT: TDBText;
    Label73: TLabel;
    DBText18: TDBText;
    cmpFundo2: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cmpContaCredito: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    tabDeb: TTabSheet;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label34: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    tabCred: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    tabAplic: TTabSheet;
    Label49: TLabel;
    Label30: TLabel;
    Label39: TLabel;
    DBText6: TDBText;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit10: TDBEdit;
    tabResg: TTabSheet;
    Label40: TLabel;
    Label43: TLabel;
    Label50: TLabel;
    DBText8: TDBText;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    Panel11: TPanel;
    Label32: TLabel;
    DBText15: TDBText;
    Label53: TLabel;
    DBText19: TDBText;
    Label56: TLabel;
    Panel14: TPanel;
    Label54: TLabel;
    DBText17: TDBText;
    Panel15: TPanel;
    Label55: TLabel;
    DBText20: TDBText;
    Label16: TLabel;
    DBMemo8: TDBMemo;
    Label44: TLabel;
    DBEdit20: TDBEdit;
    Label45: TLabel;
    DBEdit21: TDBEdit;
    Label46: TLabel;
    DBEdit22: TDBEdit;
    Label69: TLabel;
    DBEdit23: TDBEdit;
    dbBancoAgencia: TStringField;
    dbBancoDataFechamento: TDateTimeField;
    dbBancoSaldoPrevisto: TCurrencyField;
    dbBancoDataInclusao: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovBancoDataAlteracao: TDateTimeField;
    dbBanco1Agencia: TStringField;
    dbBanco1DataFechamento: TDateTimeField;
    dbBanco1DataInclusao: TDateTimeField;
    dbPagarDataEmissao: TDateTimeField;
    dbPagarDataVencto: TDateTimeField;
    dbPagarDataPagto: TDateTimeField;
    dbPagarDataInclusao: TDateTimeField;
    dbPagarDataAlteracao: TDateTimeField;
    dbReceberDataEmissao: TDateTimeField;
    dbReceberDataVencto: TDateTimeField;
    dbReceberDataPagto: TDateTimeField;
    dbReceberDataInclusao: TDateTimeField;
    dbFundosDataInclusao: TDateTimeField;
    dbMovBancoFDataEntrada: TDateTimeField;
    dbMovBancoFDataMovimento: TDateTimeField;
    dbMovBancoFDataInclusao: TDateTimeField;
    dbMovBancoFDataAlteracao: TDateTimeField;
    qrySaldoDataEntrada: TDateTimeField;
    qrySaldoDataMovimento: TDateTimeField;
    qrySaldoDataInclusao: TDateTimeField;
    qryNCDataEntrada: TDateTimeField;
    qryNCDataMovimento: TDateTimeField;
    qryNCDataInclusao: TDateTimeField;
    qryNCDataAlteracao: TDateTimeField;
    qryAplicacaoData: TDateTimeField;
    qryMovAplicDataEntrada: TDateTimeField;
    dbMovAplic1Data: TDateTimeField;
    qryConciliado: TMSQuery;
    qryConciliadoMovBanco: TIntegerField;
    qryConciliadoDataEntrada: TDateTimeField;
    qryConciliadoBancoID: TSmallintField;
    qryConciliadoFundo: TIntegerField;
    qryConciliadoTipo: TStringField;
    qryConciliadoDoc: TStringField;
    qryConciliadoValor: TCurrencyField;
    qryConciliadoFavorecido: TStringField;
    qryConciliadoHistorico: TMemoField;
    qryConciliadoStatus: TStringField;
    qryConciliadoFilial: TSmallintField;
    qryConciliadoDataMovimento: TDateTimeField;
    qryConciliadoDataInclusao: TDateTimeField;
    qryConciliadoUsuarioI: TStringField;
    qryConciliadoDataAlteracao: TDateTimeField;
    MonthCalendar1: TMonthCalendar;
    rvdBanco: TRvDataSetConnection;
    rvdAplicacao: TRvDataSetConnection;
    rvdFundo: TRvDataSetConnection;
    dbSaldoDebitosPrestadores: TCurrencyField;
    cmpDataEntrada: TDBDateTimePicker;
    dbMovBancoDataEntrada: TDateTimeField;
    dbFilialRazao: TStringField;
    DBText2: TDBText;
    dbMovBanco1: TMSTable;
    dbMovBanco1MovBanco: TIntegerField;
    dbMovBanco1DataEntrada: TDateTimeField;
    dbMovBanco1BancoID: TSmallintField;
    dbMovBanco1Fundo: TIntegerField;
    dbMovBanco1Tipo: TStringField;
    dbMovBanco1TipoPag: TStringField;
    dbMovBanco1Doc: TStringField;
    dbMovBanco1Valor: TCurrencyField;
    dbMovBanco1Favorecido: TStringField;
    dbMovBanco1Cruzado: TBooleanField;
    dbMovBanco1Historico: TMemoField;
    dbMovBanco1Status: TStringField;
    dbMovBanco1Filial: TSmallintField;
    dbMovBanco1DataMovimento: TDateTimeField;
    dbMovBanco1DataInclusao: TDateTimeField;
    dbMovBanco1UsuarioI: TStringField;
    dbMovBanco1DataAlteracao: TDateTimeField;
    dbMovBanco1Usuario: TStringField;
    dbMovBanco1Selecionado: TBooleanField;
    dbMovBanco1Aplicacao: TIntegerField;
    dbMovBanco1PagtoPre: TIntegerField;
    dbFundo1: TMSTable;
    dbFundo1BancoId: TSmallintField;
    dbFundo1Fundo: TIntegerField;
    dbFundo1Nome: TStringField;
    dbFundo1DataFechamento: TDateTimeField;
    dbFundo1SaldoFechamento: TCurrencyField;
    dbFundo1UsuarioFechamento: TStringField;
    dbFundo1SaldoAtual: TCurrencyField;
    dbFundo1Status: TStringField;
    dbFundo1DataInclusao: TDateTimeField;
    dbFundo1Usuario: TStringField;
    dbMovAplicData: TDateTimeField;
    dbMovBancoNumeroDoc: TStringField;
    Label2: TLabel;
    DBEdit11: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure dbPagarFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure cmdReclassClick(Sender: TObject);
    procedure dbMovBancoBeforeDelete(DataSet: TDataSet);
    procedure dbMovBancoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmpEmprestimoExit(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExtratoClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grdMovBancoCellClick(Column: TColumn);
    procedure dsBancoStateChange(Sender: TObject);
    procedure dbMovBancoAfterScroll(DataSet: TDataSet);
    procedure cmbBusca1Change(Sender: TObject);
    procedure dbBancoxAfterScroll(DataSet: TDataSet);
    procedure cmdFechamentoClick(Sender: TObject);
    procedure cmbAplicacaoChange(Sender: TObject);
    procedure pagBancoChange(Sender: TObject);
    procedure cmdSaldoClick(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure cmbCreditoEnter(Sender: TObject);
    procedure tabConciliacaoShow(Sender: TObject);
    procedure StringAlignGrid1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure cmpDataMovExit(Sender: TObject);
    procedure cmpDataMovChange(Sender: TObject);
    procedure StringAlignGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure tabConciliacaoHide(Sender: TObject);
    procedure cmpDataMovEnter(Sender: TObject);
    procedure dbReceberBeforePost(DataSet: TDataSet);
    procedure cmdConciliarAutoClick(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure dbMovBancoAfterInsert(DataSet: TDataSet);
    procedure dbPagarAfterInsert(DataSet: TDataSet);
    procedure dbPlanoCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cmdGravaBClick(Sender: TObject);
    procedure cmdNovoBClick(Sender: TObject);
    procedure cmdCancelaBClick(Sender: TObject);
    procedure cmdFichaBClick(Sender: TObject);
    procedure cmdListaBClick(Sender: TObject);
    procedure cmdAnteriorClick(Sender: TObject);
    procedure cmdProximoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdAlteraBClick(Sender: TObject);
    procedure cmdExcluiBClick(Sender: TObject);
    procedure dbBancoxBeforeInsert(DataSet: TDataSet);
    procedure dbBancoxAfterEdit(DataSet: TDataSet);
    procedure tabExtratoChange(Sender: TObject);
    procedure dbFundosBeforeDelete(DataSet: TDataSet);
    procedure dbFundosBeforeEdit(DataSet: TDataSet);
    procedure cmdNovoFClick(Sender: TObject);
    procedure cmdGravaFClick(Sender: TObject);
    procedure cmdExcluiFClick(Sender: TObject);
    procedure dsFundosStateChange(Sender: TObject);
    procedure cmdNovoAClick(Sender: TObject);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcluiAClick(Sender: TObject);
    procedure dsAplicacaoStateChange(Sender: TObject);
    procedure grdMovFundoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdMovAplicKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbAplicacaoBeforeInsert(DataSet: TDataSet);
    procedure dbAplicacaoAfterInsert(DataSet: TDataSet);
    procedure dbFundosBeforeInsert(DataSet: TDataSet);
    procedure dbFundosAfterInsert(DataSet: TDataSet);
    procedure dbBancoxAfterPost(DataSet: TDataSet);
    procedure grdFundoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsBancoDataChange(Sender: TObject; Field: TField);
    procedure dbMovBancoBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbBancoAfterScroll(DataSet: TDataSet);
    procedure dbBancoAfterEdit(DataSet: TDataSet);
    procedure dbBancoAfterPost(DataSet: TDataSet);
    procedure dbBancoBeforeInsert(DataSet: TDataSet);
    procedure dbMovBancoAfterCancel(DataSet: TDataSet);
    procedure dbMovBancoAfterPost(DataSet: TDataSet);
    procedure dbBancoCalcFields(DataSet: TDataSet);
    procedure dsBanco1DataChange(Sender: TObject; Field: TField);
    procedure dsMovBancoStateChange(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure cmdPosicaoClick(Sender: TObject);
    procedure tabMovBancoChange(Sender: TObject);
    procedure cmbBuscaChange(Sender: TObject);
    procedure cmdAbrirClick(Sender: TObject);
    procedure dbMovBanco2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbMovBancoFCalcFields(DataSet: TDataSet);
    procedure grdMovFundoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbBancoAfterInsert(DataSet: TDataSet);
    procedure qryNCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure grdMovBancoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdPosicao1Click(Sender: TObject);
    procedure dbBanco1CalcFields(DataSet: TDataSet);
    procedure grdMovAplicDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmdConfereClick(Sender: TObject);
    procedure dbBancoBeforePost(DataSet: TDataSet);
    procedure qryConciliadoAfterInsert(DataSet: TDataSet);
    procedure qryConciliadoBeforePost(DataSet: TDataSet);
    procedure qryConciliadoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryConciliadoTipoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure MonthCalendar1Click(Sender: TObject);
  private
  hoje:tdatetime;
  bcc:String;
  cpmf,ir,iof:double;
  procedure conciliar(bco:boolean);

    { Private declarations }
  public
  function setsaldo(bc:integer;dc:boolean;dt:Tdatetime;fd:integer):currency;
  function strtocurrency(a:string):Currency;
    { Public declarations }

  end;

var
  frmMovBanco: TfrmMovBanco;
  iUltimo:integer;
implementation

uses frmPrincipal, frmReclassificacaos, frmRelExtratos, frmClassificaFins,
  frmExtratosNC, frmFechamentosA, frmRelPFinanceira,  dmRelatorios;

{$R *.DFM}
function TfrmMovBanco.strtocurrency(a:string):Currency;
var
g:Currency;
i:integer;
b:string;
begin
    for i:=1 to length(a) do
        if a[i] in ['0'..'9','-',decimalseparator] then
            b:=b+a[i];
    if b='' then
        b:='0';
    texttofloat(pchar(b),g,fvCurrency);
    if (length(trim(a))>0) and (trim(a)[1]='(') then
        g:=-g;
    result:=g;
end;

procedure TfrmMovBanco.cmdSaldoClick(Sender: TObject);
var iSaldo,iSaldoAplicacao,iSaldoFundo:variant;
begin
    dbBanco.Edit;
    dbBancoSaldoAtual.ascurrency:=setsaldo(dbBancoBancoid.value,false,encodedate(3200,12,31),999);
    dbBanco.post;

    dbFundos.First;
    dbFundos.tag:=1;
    iSaldoFundo:=0;
    while not dbFundos.Eof do
    begin
        dbFundos.Edit;
        dbFundosSaldoAtual.ascurrency:=setsaldo(dbFundosBancoid.value,false,encodedate(3200,12,31),dbFundosFundo.value);
        dbFundos.post;
        if dbFundosFundo.value>0 then
            iSaldoFundo:=iSaldoFundo+dbFundosSaldoAtual.value;
        dbFundos.Next;
    end;
    dbFundos.Tag:=0;

    dbAplicacao.First;
    iSaldoAplicacao:=0;
    while not dbAplicacao.Eof do
    begin
        iSaldo:=0;
        dbMovAplic.First;
        while not dbMovAplic.eof do
        begin
            if dbMovAplicTipo.value='A' then
                iSaldo:=iSaldo+dbMovAplicValor.value;
            if dbMovAplicTipo.value='R' then
                iSaldo:=iSaldo-dbMovAplicValor.value;
            dbMovAplic.Edit;
            dbMovAPlicSaldo.value:=iSaldo;
            dbMovAplic.Post;
            dbMovAplic.Next;
        end;
        dbAplicacao.Edit;
        dbAplicacaoSaldo.value:=iSaldo;
        dbAplicacao.Post;
        iSaldoAplicacao:=iSaldoAplicacao+iSaldo;
        dbAplicacao.Next;
    end;
    dbBanco.Edit;
    dbBancoAplicacoes.ascurrency:=iSaldoAplicacao;
    dbBancoFundos.AsCurrency:=iSaldoFundo;
    dbBanco.post;
    dbAplicacao.Tag:=0;
end;

function TfrmMovBanco.SetSaldo(bc:integer;dc:boolean;dt:Tdatetime;fd:integer):currency;
//dc - falso=dataentrada true=datamovimento    /dt:datafinal /fd=fundo -999 todos
var isaldo:currency;
var idataf,idatai:Tdate;
var iLinha:string;
begin
    if fd=999 then
        iLinha:=''
    else
        iLinha:='and Fundo=:iFundo ';

    if fd<>999 then
    begin
        isaldo:=0;
        iDataI:=0;
        iDataF:=hoje+100;
    end
    else
    begin
        isaldo:=dbBancosaldofechamento.ascurrency;
        iDataI:=dbBancoDataFechamento.Value;
        iDataF:=dt;
    end;
    qrySaldo.SQL.clear;
    if not dc then
        qrySaldo.sql.text:='Select * from MovBanco '+
                           'where BancoId=:iBanco and '+
                           '      Status<>'+QuotedStr('C')+' and '+
                           '      DataEntrada>:DataI and DataEntrada<=:DataF '+iLinha
    else
        qrySaldo.sql.text:='Select * from MovBanco '+
                           'where BancoId=:iBanco and '+
                           '      Status<>'+QuotedStr('C')+' and '+
                           '      DataMovimento>:DataI and DataMovimento<=:DataF '+iLinha;

    qrySaldo.ParamByName('iBanco').asinteger:=bc;
    qrySaldo.ParamByName('DataI').asdate:=iDataI;
    qrySaldo.ParamByName('Dataf').asdate:=iDataF;
    if fd<>999 then
        qrySaldo.ParamByName('iFundo').asinteger:=fd;
    qrySaldo.Open;

    qrySaldo.first;
    while not qrySaldo.eof do
    begin
        if pos(qrySaldoTipo.asstring,'CRS')<>0 then
            isaldo:=isaldo+qrySaldovalor.ascurrency
        else
            isaldo:=isaldo-qrySaldovalor.ascurrency;
        qrySaldo.next;
    end;
    Result:=isaldo;
end;

procedure TfrmMovBanco.FormShow(Sender: TObject);
begin
    screen.cursor:=crhourglass;
    cpmf:=0.30/100;
    ir:=20/100;
try
//utilizados transferencia
    dbBanco1.Open;
    dbMovBanco1.Open;
    dbFundo1.Open;
//***    
    dbAplicacao.Open;
    dbReceber.Open;
    dbFilial.Open;
    dbPlanoC.Open;
    dbMovBanco.Open;
    dbMovBanco.IndexFieldNames:='BancoID;DataEntrada desc';
    dbMovBanco.First;
    dbMovAplic.Open;
    dbBanco.Open;
//****
    qryConciliado.Open;
    dbPagar.Open;
    dbFundos.Open;
    dbFundos.tag:=0;
    dbMovBAncoF.Open;
    dbSaldo.Open;

    MonthCalendar1.Date:=date-60;
    dbBancoafterscroll(dbBanco);
    bcc:=dbBancoconta.asstring;
    if dbMovBancoTipo.asstring='C' then
        pagMov.activepage:=tabCred
    else
        if POS(dbMovBancoTipo.asstring,'GDX')<>0 then
            pagMov.activepage:=tabDeb
        else
            if dbMovBancotipo.asstring='A' THEN
                pagMov.activepage:=tabAplic
            else
                if dbMovBancotipo.asstring='R' THEN
                    pagMov.activepage:=tabResg
                else
                    pagMov.activepage:=tabTransf;
finally
    screen.cursor:=crDefault;
    dbBanco.refresh;
    dbMovBanco.refresh;
    qryConciliado.refresh;
    pagBanco.activepage:=tabMov;
    pagFundoAplic.ActivePage:=tabAplic;
    tabMovBanco.TabIndex:=0;
    cmdAbrir.Visible:=iMaster;
    pgrBar.Position:=0;
end;
end;


procedure TfrmMovBanco.FormCreate(Sender: TObject);
begin
    hoje:=trunc(date);
    cmbBusca1.DateTime:=hoje;
end;

procedure TfrmMovBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbBanco.close;
    dbMovBanco.close;
    dbBanco1.close;
    dbMovBanco1.Close;
    dbFundo1.Close;
    qryConciliado.close;
    dbPagar.close;
    dbFilial.close;
    dbReceber.close;
    dbMovAplic.close;
    dbPlanoC.close;
    dbAplicacao.Close;
    dbFundos.Close;
    dbMovBancoF.Close;
    qrySaldo.Close;
    qryCheque.Close;
    qryAplicacao.close;
    dbSaldo.close;
end;

procedure TfrmMovBanco.cmdGravaClick(Sender: TObject);
var ibanco,i:Integer;
    cli:string;
iValor,vc,vt,rd,vla,iSaldo,iSaldoF,ft:Currency;
v:Longint;
vlr,vlq:double;
q,a,m,d,year,month,day:word;
txt:tstringlist;
begin
    ibanco:=dbBancoBancoId.asinteger;
    iSaldo:=dbBancosaldoAtual.ascurrency;
    iSaldoF:=dbFundosSaldoAtual.value;
    if dbMovBancoDataEntrada.asdatetime<=dbBancoDataFechamento.asdatetime then
    begin
        ShowMessage('Data lançamento menor que do ultimo fechamento');
        abort;
    end;
    dbMovBancoTipo.asstring:=copy('ATDCCR',pagMov.activepage.tag+1,1);
    if (dbMovBancotipo.asstring='T') and
       (dbMovBancoBancoId.value=cmpContaCredito.KeyValue) then
    begin
        ShowMessage('Conta de crédito mesma que de débito');
        abort;
    end;
    if dbMovBancotipo.asstring='A' then
    begin
        if dbMovBancoAplicacao.value=0 then
        begin
            ShowMessage('Selecione uma aplicacao');
            abort;
        end;
        dbMovBancodoc.asstring:='Aplicacao:'+trim(dbMovBancoNomeAplicacao.AsString)
    end;
    if dbMovBancotipo.asstring='R' then
    begin
        if dbMovBancoAplicacao.value=0 then
        begin
            ShowMessage('Selecione uma aplicacao');
            abort;
        end;
        if (dbMovBancoValor.value-0.001)>dbAplicacaoSaldo.value then
        begin
            ShowMessage('Valor Resgatado maior que saldo atual');
            abort;
        end;
        dbMovBancodoc.asstring:='Resgate:'+Trim(dbMovBancoNomeAplicacao.AsString);
    end;
    dbMovBancodatamovimento.value:=dbMovBancoDataEntrada.value;
    dbMovBanco.post;

    if pagMov.activepage.tag<=2 then //debito
    begin
        if (dbBancoSaldoAtual.value-dbMovBancoValor.value<0) and
            (dbBancoSaldoAtual.value>=0) then
            ShowMessage('O saldo desta conta passará a ser negativo');
        if (dbBancoSaldoAtual.value+
            dbBancoLimiteCredito.value+
            dbBancoAplicacoes.value<0) then
        begin
            ShowMessage('Limites de crédito estourados. Impossível efetuar esta operação');
            dbMovBanco.Delete;
            abort;
        end;
        dbBanco.edit;
        dbBancoSaldoAtual.value:=dbBancoSaldoAtual.value-dbMovBancoValor.value;
        dbBanco.Post;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([dbMovBancoBancoId.value,dbMovBancoFundo.value]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value-dbMovBancoValor.value;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;
    end
    else
    begin //credito
        dbBanco.edit;
        dbBancoSaldoAtual.value:=dbBancoSaldoAtual.value+dbMovBancoValor.value;
        if pagMov.activepage.tag=4 then
        begin
            dbBanco.Edit;
            dbMovBancoFavorecido.asstring:='['+dbBancoconta.value+'] '+dbBancoNome.value;
        end;
        dbBanco.Post;

        dbFundos.tag:=1;
        dbFundos.Edit;
        dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
        dbFundos.post;
        dbFundos.tag:=0;
    end;

    if pagMov.activepage.tag=1 then //transferencia
    begin
        iValor:=dbMovBancovalor.value;
        txt:=tstringlist.Create;
        txt.Assign(dbMovBancohistorico);
        dbMovBanco.Edit;
        dbMovBancoFavorecido.asstring:='Transferência para  ['+dbBanco1BancoID.asstring+'] '+dbBanco1Nome.value;
        dbMovBanco.Post;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([qryConciliadoBancoId.value,qryConciliadoFundo.value]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;

        dbBanco1.edit;
        dbBanco1SaldoAtual.value:=dbBanco1SaldoAtual.value+iValor;
        dbBanco1.post;

        qryConciliado.insert;
        for i:=1 to qryConciliado.fieldcount-1 do
            if qryConciliado.fields[i].fieldname<>'MovBanco' then
                qryConciliado.fields[i].value:=dbMovBanco.fieldbyname(qryConciliado.fields[i].fieldname).value;
        qryConciliadoBancoID.asinteger:=dbBanco1BancoID.asinteger;
        qryConciliadovalor.value:=iValor;
        qryConciliadoFavorecido.asstring:='Transferência de ['+dbBancoBancoID.asstring+'] '+dbBancoNome.value;
        qryConciliadoTipo.asstring:='S';
        qryConciliadoFilial.asinteger:=dbBanco1Filial.asinteger;
        qryConciliadodataEntrada.value:=qryConciliadoDataMovimento.value;
        qryConciliado.post;
        qryConciliado.refresh;
    end
    else
    begin
        if dbMovBancotipo.asstring='A' then
        begin
            dbMovAplic.Insert;
            dbMovAplicAplicacao.value:=dbMovBancoAplicacao.Value;
            dbMovAplicBancoID.value:=dbMovBancoBAncoId.value;
            dbMovAplicData.value:=dbMOvBancoDataEntrada.value;
            dbMOvAplicTipo.value:='A';
            dbMovAplicValor.value:=dbMovBancoValor.Value;
            dbMovAplicMovBanco.value:=dbMovBancoMovBanco.value;
            dbMovAplic.post;

            dbAplicacao.Edit;
            dbAplicacaoSaldo.value:=dbAplicacaoSaldo.value+dbMovBAncoValor.value;
            dbAplicacao.Post;
        end
        else
            if dbMovBancotipo.asstring='R' then
            begin
                dbMovAplic.Insert;
                dbMovAplicAplicacao.value:=dbMovBancoAplicacao.Value;
                dbMovAplicBancoID.value:=dbMovBancoBAncoId.value;
                dbMovAplicData.value:=dbMOvBancoDataEntrada.value;
                dbMOvAplicTipo.value:='R';
                dbMovAplicValor.value:=dbMovBancoValor.Value;
                dbMovAplicMovBanco.value:=dbMovBancoMovBanco.value;
                dbMovAplic.post;

                dbAplicacao.Edit;
                dbAplicacaoSaldo.value:=dbAplicacaoSaldo.value-dbMovBAncoValor.value;
                dbAplicacao.Post;
            end
            else
            begin
                if frmClassificaFin=nil then
                    application.createform(TfrmClassificaFin,frmClassificaFin);
                frmClassificaFin.vl:=dbMovBancoValor.value;
                frmClassificaFin.filial:=dbBancofilial.asinteger;
                frmClassificaFin.Contabilizado:=(dbBancoStatus.value<>'N');
                frmClassificaFin.tag:=0;
                frmClassificaFin.showmodal;
                if frmClassificaFin.tag=0 then
                begin
                    pagMov.enabled:=true;
                    cmpDataEntrada.enabled:=true;
//                  dbPagar.CancelRange;
                    dbBanco.edit;
                    dbBancoSaldoAtual.value:=iSaldo;
                    dbBanco.post;

                    dbFundos.Edit;
                    dbFundosSaldoAtual.value:=iSaldoF;
                    dbFundos.Post;
                end
                else
                begin
                    dbPagar.insert;
                    dbPagarcliente.value:=frmClassificaFin.cliente;
                    dbPagarclientedeb.value:=frmClassificaFin.clientedeb;
                    dbPagarContabilizado.value:=frmClassificaFin.contabilizado;
                    dbPagarMovBanco.asInteger:=dbMovBancoMovBanco.asInteger;
                    dbPagarBancoID.asinteger:=dbMovBancoBancoID.asinteger;
                    dbPagarDoc.asstring:=dbMovBancoDoc.asstring;
                    dbPagarCheque.asstring:=dbMovBancoDoc.asstring;
                    dbPagarDataVencto.value:=dbMovBancoDataEntrada.value;
                    dbPagarValor.value:=dbMovBancovalor.value;
                    dbPagarValorPago.value:=dbMovBancovalor.value;
                    dbPagarDataEmissao.value:=dbMovBancoDataEntrada.value;
                    dbPagarDataPagto.value:=dbMovBancoDataEntrada.value;
                    dbPagarHistorico.asstring:=dbMovBancoHistorico.asstring;
                    dbPagarDataInclusao.value:=date;
                    dbPagarUsuarioI.value:=iUsuario;
                    dbPagarTributo.value:=false;
                    dbPagarPago.asboolean:=True;
                    dbPagarStatus.asstring:='P';
                    dbPagarFilial.asinteger:=dbBancoFilial.asinteger;
                    dbPagarCod1.asinteger:=frmClassificaFin.n1;
                    dbPagarCod2.asinteger:=frmClassificaFin.n2;
                    dbPagarCod3.asinteger:=frmClassificaFin.n3;
                    dbPagar.Post;
                end;
            end;
    end;
end;

procedure TfrmMovBanco.dbPagarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=ansiuppercase(dbPagarstatus.asString)=dbPagarstatus.asString;
end;

procedure TfrmMovBanco.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
    if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TfrmMovBanco.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TfrmMovBanco.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
    if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TfrmMovBanco.cmdReclassClick(Sender: TObject);
begin
    if frmReclassificacao=nil then
        application.createform(TfrmReclassificacao,frmReclassificacao);
    frmReclassificacao.show;
end;

procedure TfrmMovBanco.dbMovBancoBeforeDelete(DataSet: TDataSet);
begin
    if dbBancoStatus.value='I' then
    begin
        ShowMessage('Conta Inativa. Impossível efetuar alterações');
        abort;
    end;
    while dbPagar.Locate('MovBanco',dbMovBancoMovBanco.asinteger,[]) do
    begin
        if dbPagarValor.ascurrency=0 then
            dbPagar.delete
        else
        begin
            dbPagar.edit;
            dbPagarDatapagto.clear;
            dbPagarValorpago.value:=0;
            dbPagarMovBanco.value:=0;
            dbPagarPago.asboolean:=false;
            dbPagarBancoID.value:=0;
            dbPagar.post;
        end;
    end;
end;

procedure TfrmMovBanco.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbMovBancostatus.asstring<>'C') or
            (dbMovBancoStatus.asstring='A');
end;

procedure TfrmMovBanco.cmpEmprestimoExit(Sender: TObject);
begin
{    if ((dbMovBancoValor.ascurrency>dbBancoDisponibilidadeGarantida.ascurrency) and
        (radiobutton2.checked)) or
        ((dbMovBancoValor.ascurrency>dbBancoDisponibilidadeDesconto.ascurrency) and
        (radiobutton1.checked)) then
    begin
        ShowMessage('Não é possível emprestar mais do que está garantido');
        cmpEmprestimo.SetFocus;
    end;}
end;

procedure TfrmMovBanco.cmdNovoClick(Sender: TObject);
begin
    dbMovBanco.insert;
    cmpDataEntrada.setfocus;
end;

procedure TfrmMovBanco.cmdCancelaClick(Sender: TObject);
begin
    if dbMovBanco.state=dsinsert then
    begin
        if dbMovAplic.state=dsinsert then
            dbMovAplic.cancel;
        dbMovBanco.cancel;
    end;    
end;

procedure TfrmMovBanco.cmdExtratoClick(Sender: TObject);
begin
    if frmRelExtrato=nil then
       Application.CreateForm(TfrmRelExtrato, frmRelExtrato);
    frmRelExtrato.ShowModal;
end;

procedure TfrmMovBanco.cmdListaClick(Sender: TObject);
begin
    pnlFichaM.visible:=false;
end;

procedure TfrmMovBanco.cmdFichaClick(Sender: TObject);
begin
    pnlFichaM.visible:=true;
end;

procedure TfrmMovBanco.grdMovBancoCellClick(Column: TColumn);
begin
    dbMovBancoafterscroll(dbMovBanco);
end;

procedure TfrmMovBanco.dsBancoStateChange(Sender: TObject);
begin
     cmdNovoB.Enabled:=dbBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdCancelaB.Enabled:=(dbBanco.Active=true) and
                         (dbBanco.RecordCount<>0);
     cmdGravaB.Enabled:=dbBanco.State in [dsEdit,dsInsert];
end;

procedure TfrmMovBanco.dbMovBancoAfterScroll(DataSet: TDataSet);
var iTipo:Char;
var i,f,ibanco:integer;
begin
    if (dbMovBanco.state=dsbrowse) and
       (pagBanco.activepage=tabmov) and
       (dbMovBanco.recordcount>0)  then
    begin
        iTipo:=dbMovBancoTipo.asstring[1];
        case iTipo of
        'T','S':begin
            pagMov.ActivePage:=tabTransf;
            i:=pos('[',dbMovBancofavorecido.AsString);
            f:=pos(']',dbMovBancofavorecido.AsString);
            ibanco:=StrToInt(copy(dbMovBancoFavorecido.value,i+1,f-i-1));
            dbBanco1.Locate('BancoID',ibanco,[]);
            cmpContaCredito.keyvalue:=dbBanco1BancoId.value;
        end;
        'D','X','P':pagMov.ActivePage:=tabDeb;
        'C':pagMov.ActivePage:=tabCred;
        'R':pagMov.ActivePage:=tabResg;
        'A':pagMov.ActivePage:=tabAplic;
        end;
    end;
    if iTipo='S' then
    begin
        cmpConta.Caption:='Conta Debito';
        cmpFundo1.Caption:='Fundo Destino';
        cmpFundo2.Caption:='Fundo Origem';
    end
    else
    begin
        cmpConta.Caption:='Conta Crédito';
        cmpFundo1.Caption:='Fundo Origem';
        cmpFundo2.Caption:='Fundo Destino';
    end;
end;

procedure TfrmMovBanco.cmbBusca1Change(Sender: TObject);
begin
    dbMovBanco.Locate('BancoId;DataEntrada',VarArrayof([dbBancoBancoID.asinteger,cmbBusca1.date]),[]);
end;

procedure TfrmMovBanco.cmbBuscaChange(Sender: TObject);
begin
    dbMovBanco.Locate('BancoId;Doc',VarArrayof([dbBancoBancoID.asinteger,trim(cmbBusca.Text)]),[loCaseInsensitive,loPartialKey]);
end;


procedure TfrmMovBanco.dbBancoxAfterScroll(DataSet: TDataSet);
var apl,rd,vla,irf,iof:currency;
    ft:tstringlist;
    i:integer;
    a:string;
begin
    if dbPlanoC.Active=true then
    begin
        cmdFechamento.caption:=dbBancoDataFechamento.asstring;
    end;    
end;


procedure TfrmMovBanco.cmdFechamentoClick(Sender: TObject);
var i:integer;
    a:string;
    dt:tdatetime;
begin
    try
        dt:=strtodate(stringaligngrid1.cells[0,stringaligngrid1.row]);
    except
        dt:=0;
    end;
    if dt>dbBancoDataFechamento.asdatetime then
    begin
        a:='Esta opção impedirá lançamentos nesta conta com data anterior a '+datetostr(dt)+'. Confirma?';
        i:=application.messagebox(pchar(a),'Atenção', mb_yesno);
        if i=idyes then
        begin
            dbBanco.edit;
            dbBancoSaldofechamento.ascurrency:=setsaldo(dbBancoBancoid.value,true,dt,999);
            dbBancoDataFechamento.asdatetime:=dt;
            dbBanco.post;
            cmdFechamento.caption:=datetostr(dt);
            tabExtrato.TabIndex:=0;
            conciliar(FALSE);
        end
        else
            showmessage('Já há um fechamento posterior a '+datetostr(dt));
    end;
end;


procedure TfrmMovBanco.cmbAplicacaoChange(Sender: TObject);
begin
//label48.caption:=trim(memo1.lines[memProduto.lines.indexof(dbMovBancofavorecido.asstring)]);
end;

procedure TfrmMovBanco.pagBancoChange(Sender: TObject);
begin
    tabExtrato.TabIndex:=0;
end;

procedure TfrmMovBanco.DBLookupComboBox2Exit(Sender: TObject);
begin
    if dbMovBancoDataEntrada.asdatetime<=dbBanco1datafechamento.asdatetime then
    begin
        showmessage('Impossível fazer um crédito nesta conta na data especificada');
        //speedbutton5click(sender);
    end;
end;

procedure TfrmMovBanco.cmbCreditoEnter(Sender: TObject);
begin
    dbBanco.edit;
end;

procedure TfrmMovBanco.tabConciliacaoShow(Sender: TObject);
begin
    if dbMovBanco.active then
       conciliar(false);
end;

procedure TfrmMovBanco.conciliar(bco:boolean);
var sdconc,saldo:currency;
    df,dc,dt,dtNC:Tdate;
    i:integer;
begin
    cmdConciliarAuto.enabled:=not bco;
    cmdFechamento.enabled:=bco;
    screen.cursor:=crhourglass;
    df:=dbBancoDataFechamento.value;
    if df=0 then
        df:=strtodate('1/1/1900');

    dtNC:=df;
    if not bco then
    begin
        qryNC.Close;
        qryNC.SQL.Clear;
        qryNC.SQL.Text:='Select * from MovBanco '+
                        'where DataMovimento is null and '+
                        '      BancoID='+dbBancoBancoID.asstring+' and '+
                        '      DataEntrada<=:xDataFechamento '+
                        'order by BancoID,DataEntrada';
        qryNC.ParamByName('xDataFechamento').asdate:=df;
        qryNC.Open;
        if qryNC.RecordCount<>0 then
            dtNC:=qryNCDataEntrada.value-1;
        qryNC.Close;
    end;
    qryConciliado.Close;
    if bco then
    begin
       qryConciliado.sql.Text:='Select * from MovBanco '+
                               'where BancoID=:iBanco and '+
                               '      DataMovimento>=:Ini and '+
                               '      DataMovimento<=:Fim '+
                               'order by BancoId,DataMovimento ';
       qryConciliado.ParamByName('iBanco').asinteger:=dbBancoBancoid.value;
       qryConciliado.ParamByName('Ini').asdate:=incday(dtNC,1);
       qryConciliado.ParamByName('Fim').asdate:=incday(hoje,9999);
       qryConciliado.Open;
    end
    else
    begin
       qryConciliado.sql.Text:='Select * from MovBanco '+
                               'where BancoID=:iBanco and '+
                               '      DataEntrada>=:Ini and '+
                               '      DataEntrada<=:Fim '+
                               'order by BancoId,DataEntrada ';
       qryConciliado.ParamByName('iBanco').asinteger:=dbBancoBancoid.value;
       qryConciliado.ParamByName('Ini').asdate:=incday(dtNC,1);
       qryConciliado.ParamByName('Fim').asdate:=incday(hoje,9999);
       qryConciliado.Open;
    end;
    qryConciliado.Open;
    qryConciliado.first;
    with stringaligngrid1 do
    begin
        for i:=1 to rowcount-1 do
            if objects[0,i]<>nil then
            begin
                qryConciliado.FreeBookmark(objects[0,i]);
                objects[0,i]:=nil;
            end;
        rows[1].Clear;
        rowcount:=2;
        if bco then
            dt:=trunc(qryConciliadodatamovimento.asdatetime)
        else
            dt:=trunc(qryConciliadodataEntrada.asdatetime);
        rowfont[1].style:=[fsbold];
        rowfont[1].Color:=clblue;
        cells[0,1]:=dbBancoDataFechamento.asstring;
        cells[1,1]:='Saldo';
        cells[4,1]:='SD';
        cells[3,1]:=format('%n',[dbBancoSaldoFechamento.ascurrency]);
        cells[5,1]:=format('%n',[dbBancoSaldoFechamento.ascurrency]);
        cells[7,1]:='';
        saldo:=dbBancoSaldoFechamento.ascurrency;
        sdconc:=saldo;
        if not qryConciliado.Eof then
            rowcount:=rowcount+1;
        while not qryConciliado.eof do
        begin
            if bco then
                dc:=trunc(qryConciliadodatamovimento.asdatetime)
            else
            begin
               if (qryConciliadoDataEntrada.value<=df) and
                   (not qryConciliadoDataMovimento.isnull) then
                begin
                    qryConciliado.Next;
                    Continue
                end;
                dc:=trunc(qryConciliadodataEntrada.asdatetime);
            end;
            if dc<>dt then
            begin
                rowBrush[rowcount-1].Color:=clwhite;
                rowfont[rowcount-1].style:=[fsbold];
                rowfont[rowcount-1].Color:=clblue;
                cells[0,rowcount-1]:=datetostr(dt);
                cells[1,rowcount-1]:='Saldo';
                cells[3,rowcount-1]:=format('%n',[Saldo]);
                cells[2,rowcount-1]:='';
                cells[4,rowcount-1]:='SD';
                cells[5,rowcount-1]:=format('%n',[Sdconc]);
                cells[6,rowcount-1]:='';
                cells[7,rowcount-1]:='';
                rowcount:=rowcount+1;
                dt:=dc;
            end;
            if qryConciliadotipo.displaytext='CR' then
            begin
                if not qryConciliadodatamovimento.isnull then
                    sdconc:=sdconc+frmMenu.Arred(qryConciliadovalor.ascurrency);
                saldo:=saldo+qryConciliadovalor.ascurrency;
            end
            else
            begin
                if not qryConciliadodatamovimento.isnull then
                    sdconc:=sdconc-frmMenu.Arred(qryConciliadovalor.ascurrency);
                saldo:=saldo-qryConciliadovalor.ascurrency;
            end;
            objects[0,rowcount-1]:=qryConciliado.GetBookmark;
            rowfont[rowcount-1].style:=[];
            rowfont[rowcount-1].Color:=clblack;
            if (qryConciliadoDataEntrada.value<=df) and
               (not bco) then
                Rowbrush[rowcount-1].Color:=$00CCCCFF
            else
                Rowbrush[rowcount-1].Color:=clwhite;
            cells[0,rowcount-1]:=qryConciliadodataEntrada.displaytext;
            cells[1,rowcount-1]:=qryConciliadofavorecido.AsString;
            cells[2,rowcount-1]:=qryConciliadodoc.AsString;
            cells[3,rowcount-1]:=format('%n',[qryConciliadovalor.ascurrency]);
            cells[4,rowcount-1]:=qryConciliadotipo.DisplayText;
            cells[5,rowcount-1]:=format('%n',[Sdconc]);
            cells[6,rowcount-1]:=qryConciliadodatamovimento.displaytext;
            cells[7,rowcount-1]:=qryConciliadoMovBanco.asstring;
            rowcount:=rowcount+1;
            qryConciliado.next;
        end;
        if dt>dbBancoDataFechamento.asdatetime then
        begin
            rowfont[rowcount-1].style:=[fsbold];
            rowfont[rowcount-1].Color:=clblue;
            cells[0,rowcount-1]:=datetostr(dt);
            cells[1,rowcount-1]:='Saldo';
            cells[3,rowcount-1]:=format('%n',[Saldo]);
            cells[2,rowcount-1]:='';
            cells[4,rowcount-1]:='SD';
            cells[5,rowcount-1]:=format('%n',[Sdconc]);
            cells[6,rowcount-1]:='';
            cells[7,rowcount-1]:='';
        end;
    end;
    screen.cursor:=crDefault;
end;

procedure TfrmMovBanco.StringAlignGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var a,b:integer;
begin
    b:=stringaligngrid1.row;
    if (button=mbright) and (stringaligngrid1.cells[4,b]<>'SD') then
    begin
        a:=6;
        if stringaligngrid1.cells[6,b]<>'' then
            cmpDataMov.DateTime:=strtodate(stringaligngrid1.cells[6,b])
        else cmpDataMov.datetime:=strtodate(stringaligngrid1.cells[0,b]);
        cmpDataMov.BoundsRect:=stringaligngrid1.CellRect(a,b);
        cmpDataMov.height:=20;
        cmpDataMov.left:=cmpDataMov.left+6;
        cmpDataMov.top:=cmpDataMov.top+26;
        cmpDataMov.tag:=0;
        cmpDataMov.Visible:=true;
    if cmpDataMov.visible then
        cmpDataMov.setfocus;
    end;
end;

procedure TfrmMovBanco.cmpDataMovExit(Sender: TObject);
begin
    if cmpDataMov.tag<>0 then
    begin
        stringaligngrid1.Cells[6,stringaligngrid1.Row]:=datetostr(cmpDataMov.datetime);
        qryConciliado.GotoBookmark(stringaligngrid1.objects[0,stringaligngrid1.row]);
        qryConciliado.edit;
        qryConciliadodatamovimento.AsDateTime:=cmpDataMov.datetime;
        qryConciliado.post;
        // *** alterado 17/09/2015 - os cheques vao ficar com datapagto em branco ate conciliacao
        if qryConciliadoTipo.value='X' then //cheque
        begin
            dbPagar.Locate('MovBanco',qryConciliadoMovBanco.asinteger,[]);
            while (dbPagarMovBanco.value=qryConciliadoMovBanco.value) and (not dbPagar.Eof) do
            begin
                dbPagar.edit;
                dbPagarDatapagto.value:=cmpDataMov.Datetime;
                dbPagar.post;
                dbPagar.Next;
            end;
        end;
        // ****
    end;
    cmpDataMov.visible:=false;
end;


procedure TfrmMovBanco.cmpDataMovChange(Sender: TObject);
begin
    cmpDataMov.Tag:=1;
end;

procedure TfrmMovBanco.StringAlignGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if key=#32 then    //Barra de espaço
    begin
        stringaligngrid1.cells[6,stringaligngrid1.row]:='';
        qryConciliado.GotoBookmark(stringaligngrid1.objects[0,stringaligngrid1.row]);
        qryConciliado.edit;
        qryConciliadodatamovimento.clear;
        qryConciliado.post;

        // *** alterado 17/09/2015 - os cheques vao ficar com datapagto em branco ate conciliacao
        if qryConciliadoTipo.value='X' then //cheque
        begin
            dbPagar.Locate('MovBanco',qryConciliadoMovBanco.asinteger,[]);
            while (dbPagarMovBanco.value=qryConciliadoMovBanco.value) and (not dbPagar.Eof) do
            begin
                dbPagar.edit;
                dbPagarDatapagto.clear;
                dbPagar.post;
                dbPagar.Next;
            end;
        end;
        // ****

    end;
end;

procedure TfrmMovBanco.tabConciliacaoHide(Sender: TObject);
var i:integer;
begin
    with stringaligngrid1 do
    begin
        for i:=1 to rowcount-1 do if objects[0,i]<>nil then
        begin
            qryConciliado.FreeBookmark(objects[0,i]);
            objects[0,i]:=nil;
        end;
    end;
end;


procedure TfrmMovBanco.cmpDataMovEnter(Sender: TObject);
begin
    cmpDataMov.mindate:=dbBancoDataFechamento.asdatetime+1;
end;


procedure TfrmMovBanco.dbReceberBeforePost(DataSet: TDataSet);
begin
//dbReceberultimaatualizao.asdatetime:=Now;
end;

procedure TfrmMovBanco.cmdConciliarAutoClick(Sender: TObject);
var extr:tstringlist;
    J,i:integer;
    m,dat,dc:string;
    dx,dt:tdatetime;
    tc,td,vl:Currency;
    km: Tmovimento;
    mv:^Tmovimento;
    ext:Tlist;
    a,mes,d:word;
    Mostre:boolean;

function Findmov(Startdata,Enddata:tdatetime;doc:string;valor:Currency):Tmovimento;
var j:integer;
    m:^Tmovimento;
    Saia:boolean;

    function ess(a:string):string;
    var i:integer;
        b:string;
    begin
        for i:=1 to length(a) do
            if a[I] in ['0'..'9'] then
                b:=b+a[i];
        Result:=b;
    end;

    begin
        j:=0;
        Saia:=false;
        while (j<ext.Count) and not saia do
        begin
            m:=ext[j];
            if (m^.achou=false) and
               (m^.Dat>=Startdata) and
               (m^.Dat<=Enddata) and
               (m^.Documento=Doc) and
               (trunc(valor*100)=trunc(m^.Valor*100)) then
            begin
                saia:=true;
                m^.Achou:=true;
            end
            else inc(j);
        end;
        if saia then
            Result:=m^
        else result:=nil;
    end;

begin
{    Opendialog1.InitialDir:=iDir+'\Dump';
    if Opendialog1.Execute then
    begin
        extr:=tstringlist.create;
        ext:=tlist.create;
        extr.LoadFromFile(Opendialog1.filename);
        m:=extractfileext(Opendialog1.filename);
        if copy(ansilowercase(m), 1, 3)='.of' then
        begin
        i:=0;
            while i<extr.count do
            begin
            if  pos('<STMTTRN>',EXTR[i])<>0 then
            begin
                new(mv);
                mv^:=tMovimento.Create;
                while pos('<DTPOSTED>',EXTR[i])=0 DO
                    INC(I);
                DAT:=COPY(EXTR[I], 11, 8);
                val(copy(dat, 1, 4), a, j);
                val(copy(dat, 5, 2), mes, j);
                val(copy(dat, 7, 2), d, j);
                try
                    mv^.Dat:=encodedate(a, mes , d);
                except
                    Showmessage(extr[i]);
                end;
                while pos('<TRNAMT>',EXTR[i])=0 DO
                    INC(I);
                DAT:=COPY(extr[i], 9, 255);
                j:=pos('.',dat);
                if j>0 then
                begin
                    delete(dat,j,1);
                    insert(decimalseparator,dat,j);
                end;
                vl:=strtofloat(dat);
                mv^.Valor:=vl;
                while pos('<FITID>',EXTR[i])=0 DO
                    INC(I);
                DAT:=COPY(extr[i], 8, 255);
                MV^.Documento:=DAT;
                while pos('<MEMO>',EXTR[i])=0 DO
                    INC(I);
                DAT:=COPY(extr[i], 7, 255);
                MV^.Historico:=DAT;
                mv^.achou:=false;
                ext.Add(mv);
            end;
            inc(i);
        end;
    end
    else
    begin
        i:=0;
        while i<extr.count do
        begin
            if (pos('S A L D O', ANSIUPPERCASE(EXTR[I]))=0) AND
               (pos('/',extr[i])<5) and
               (pos(decimalseparator,EXTR[i])*(pos('/',EXTR[i]))<>0) then
            begin
                new(mv);
                mv^:=tMovimento.Create;
                DAT:=EXTR[I];
                J:=pos(#32, dat);
                m:=copy(dat, j+1, 255);
                dat:=copy(dat, 1, j-1);
                try
                    mv^.Dat:=strtodate(dat);
                except
                    Showmessage(extr[i]);
                end;
                J:=length(m);
                while (j>0) and (decimalseparator<>m[j]) do
                    dec(j);
                while (j>0) and (m[j] in ['0'..'9','-','+','$',',',decimalseparator]) do
                    dec(j);
                dat:=copy(m, j+1, 255);
                m:=copy(m, 1, j);
                if dat[length(dat)]='-' then
                    dat:='-'+trim(copy(dat, 1, length(dat)-1));
                vl:=strtocurrency(dat);
                mv^.Valor:=vl;
                MV^.Historico:=m;
                dat:='';
                for j:=1 to length(m) do
                    if m[j] in ['0'..'9'] then
                        dat:=dat+m[j];
                MV^.Documento:=DAT;
                mv^.achou:=false;
                ext.Add(mv);
            end;
            inc(i);
        end;
    end;
    with stringaligngrid1 do
    begin
        for j:=1 to Rowcount-1 do if Cells[1,j]<>'Saldo' then
        begin
            if cells[6,j]<>'' then
                dx:=strtodate(cells[6,j])+30
            else dx:=strtodate(cells[0,j])+30;
            if cells[4,j]='DB' then
                vl:=-strtocurrency(cells[3,j])
            else vl:=strtocurrency(cells[3,j]);

            dc:=cells[2,j];
            if copy(dc,1,3)=dbBanco1Sigla.value then
            begin
                dc:=copy(dc,5,8);
                try
                    dc:=IntToStr(StrToInt(dc));
                except
                    dc:='9999999999';
                end;
            end
            else
                dc:='9999999999';
            //*** busca do registro
            km:=findmov(strtodate(cells[0,j])-4,dx,dc,vl);
            if (km=nil) or (km.dat>dbBanco1datafechamento.asdatetime) then
            begin
                if km<>nil then
                begin
                    qryConciliado.GotoBookmark(stringaligngrid1.objects[0,j]);
                    if qryConciliadoDataMovimento.isnull then
                    begin
                        stringaligngrid1.Cells[6,j]:=datetostr(km.dat);
                        qryConciliado.edit;
                        qryConciliadodatamovimento.AsDateTime:=km.dat;
                        qryConciliadoUsuario.value:='EXT.AUTO';
                        qryConciliado.post;
                    end;
                end;
            end;
        end;
    end;
    Mostre:=false;
    if frmExtratoNC=nil then
        application.createform(TfrmExtratoNC,frmExtratoNC);
    frmExtratoNC.StringAlignGrid1.RowCount:=2;
    a:=0;
    tc:=0;
    td:=0;
    for j:=0 to ext.count-1 do
    begin
        mv:=ext[j];
        if mv^.dat>dbBancoDataFechamento.asdatetime then
        begin
            if not mv^.Achou then
            begin
                with frmExtratoNC.StringAlignGrid1 do
                begin
                    a:=a+1;
                    if a>Rowcount-1 then
                        Rowcount:=Rowcount+1;
                    rowfont[rowcount-1].Color:=clblack;
                    cells[0,a]:=datetostr(mv^.dat);
                    cells[1,a]:=mv^.historico;
                    cells[2,a]:=mv^.documento;
                    cells[3,a]:=format('%m',[abs(mv^.valor)]);
                    if mv^.valor<0 then
                    begin
                        cells[4,a]:='DB';
                        td:=td+mv^.valor;
                    end
                    else
                    begin
                        tc:=tc+mv^.valor;
                        cells[4,a]:='CR';
                    end;
                end;
                Mostre:=true;
            end;
        end;
    end;
    if mostre then
    begin
        frmExtratoNC.cmpTotalCredito.caption:=format('%m',[tc]);
        frmExtratoNC.cmpTotalDebito.caption:=format('%m',[abs(td)]);
        frmExtratoNC.cmpMovimento.caption:=format('%m',[tc+td]);
        frmExtratoNC.ibancoid:=dbBancoBancoid.asinteger;
        frmExtratoNC.showmodal;
        dbBanco.refresh;
        dbMovBanco.refresh;
        dbBanco1.refresh;
        qryConciliado.refresh;
        conciliar(false);
    end;
    while ext.count>0 do
    begin
        ext.Delete(0);
    end;
    ext.free;
    extr.free;
end;                           }

end;

procedure TfrmMovBanco.DBLookupComboBox2CloseUp(Sender: TObject);
begin
    dbMovBancofavorecido.asstring:='['+cmpContaCredito.keyvalue+'] '+dbBanco1Nome.value;
end;

procedure TfrmMovBanco.dbMovBancoAfterInsert(DataSet: TDataSet);
begin
    pagMov.enabled:=true;
    cmpHistorico.Readonly:=false;
    cmpDataEntrada.enabled:=true;
    dbMovBancoBAncoId.value:=dbBancoBancoId.value;
    dbMovBancoDataEntrada.asdatetime:=hoje;
    if dbMovBancoDataEntrada.asdatetime<=dbBancoDataFechamento.asdatetime then
        dbMovBancoDataEntrada.asdatetime:=dbBancoDataFechamento.asdatetime+1;
    dbMovBancostatus.asstring:='A';
    dbMovBancoDataInclusao.value:=date;
    dbMovBancoFundo.value:=0;
    dbMovBancoTipo.value:='X';
    dbMovBancoCruzado.value:=true;
    dbMovBancoFilial.value:=1;
    dbMovBancoSelecionado.value:=false;
end;

procedure TfrmMovBanco.dbPagarAfterInsert(DataSet: TDataSet);
begin
    dbPagardataVencto.asdatetime:=date;
    dbPagarDataemissao.asdatetime:=date;
    dbPagarstatus.asstring:='P';
    dbPagarpago.value:=true;
    dbPagarfilial.asinteger:=dbBancofilial.asinteger;
    dbPagarContabilizado.value:=(dbBancoStatus.value<>'N');
end;

procedure TfrmMovBanco.dbPlanoCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPlanoCCod3.value>0;
end;

procedure TfrmMovBanco.cmdGravaBClick(Sender: TObject);
begin
   dbBanco.post;
end;

procedure TfrmMovBanco.cmdNovoBClick(Sender: TObject);
begin
     dbBanco.insert;
     cmpBanco.SetFocus;
end;

procedure TfrmMovBanco.cmdAlteraBClick(Sender: TObject);
begin
    dbBAnco.Edit;
    cmpBanco.SetFocus;
end;

procedure TfrmMovBanco.cmdCancelaBClick(Sender: TObject);
begin
    dbBanco.Cancel;
end;

procedure TfrmMovBanco.cmdExcluiBClick(Sender: TObject);
var i:integer;
begin
    if dbMovBanco.RecordCount>0 then
    begin
        ShowMessage('Banco possui movimentações. Impossível excluir');
        abort;
    end;
    i:=application.messagebox('Confirme a exclusão do banco',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    while dbAplicacao.RecordCount>0 do
        dbAplicacao.Delete;
    dbBanco.delete;
end;

procedure TfrmMovBanco.cmdFichaBClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmMovBanco.cmdListaBClick(Sender: TObject);
begin
    pnlFicha.SendToBack;
end;

procedure TfrmMovBanco.cmdAnteriorClick(Sender: TObject);
begin
    if dbBanco.BOF then else dbBanco.prior;
end;

procedure TfrmMovBanco.cmdProximoClick(Sender: TObject);
begin
    if dbBanco.eof then else dbBanco.next;
end;

procedure TfrmMovBanco.dbBancoxBeforeInsert(DataSet: TDataSet);
begin
    cmdFichaBClick(dataset);
    cmdFichaB.Down:=true;
end;

procedure TfrmMovBanco.dbBancoxAfterEdit(DataSet: TDataSet);
begin
    cmdFichaBClick(dataset);
    cmdFichaB.Down:=true;
end;

procedure TfrmMovBanco.tabExtratoChange(Sender: TObject);
begin
    cmdFechamento.caption:=dbBancoDataFechamento.asstring;
    case tabExtrato.TabIndex of
    0: conciliar(false);
    1: conciliar(true);
    end;
end;

procedure TfrmMovBanco.dbFundosBeforeDelete(DataSet: TDataSet);
begin
    if dbFundosFundo.value=0 then
    begin
        ShowMessage('Registro de controle. Impossível excluir');
        abort;
    end;
end;

procedure TfrmMovBanco.dbFundosBeforeEdit(DataSet: TDataSet);
begin
    if (dbFundosFundo.value=0) and
       (dbFundos.tag=0) then
    begin
        ShowMessage('Registro de controle. Impossível alterar');
        abort;
    end;
end;

procedure TfrmMovBanco.cmdNovoFClick(Sender: TObject);
begin
    dbFundos.Insert;
    grdFundo.SetFocus;
end;

procedure TfrmMovBanco.cmdGravaFClick(Sender: TObject);
begin
    dbFundos.Post;
end;

procedure TfrmMovBanco.cmdExcluiFClick(Sender: TObject);
begin
    if dbMovBancoF.RecordCount>0 then
    begin
        ShowMessage('Fundo possui movimentos. Impossível excluir');
        abort;
    end;
    dbFundos.Delete;
end;

procedure TfrmMovBanco.dsFundosStateChange(Sender: TObject);
begin
     cmdNovoF.Enabled:=dbFundos.State in [dsEdit,dsBrowse,dsInsert];
     cmdGravaF.Enabled:=dbFundos.State in [dsEdit,dsInsert];
end;

procedure TfrmMovBanco.cmdNovoAClick(Sender: TObject);
begin
    dbAplicacao.Insert;
    grdAplicacao.SetFocus;
end;

procedure TfrmMovBanco.cmdGravaAClick(Sender: TObject);
begin
    dbAplicacao.Post;
end;

procedure TfrmMovBanco.cmdExcluiAClick(Sender: TObject);
begin
    if dbMovAplic.RecordCount>0 then
    begin
        ShowMessage('Aplição possui movimentos. Impossível excluir');
        abort;
    end;
    dbAplicacao.Delete;
end;

procedure TfrmMovBanco.dsAplicacaoStateChange(Sender: TObject);
begin
     cmdNovoA.Enabled:=dbAplicacao.State in [dsEdit,dsBrowse,dsInsert];
     cmdGravaA.Enabled:=dbAplicacao.State in [dsEdit,dsInsert];
end;

procedure TfrmMovBanco.grdMovFundoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

procedure TfrmMovBanco.grdMovAplicKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

procedure TfrmMovBanco.dbAplicacaoBeforeInsert(DataSet: TDataSet);
begin
    dbAplicacao.Last;
    iUltimo:=dbAplicacaoAplicacao.value;
end;

procedure TfrmMovBanco.dbAplicacaoAfterInsert(DataSet: TDataSet);
begin
    dbAplicacaoAplicacao.value:=iUltimo+1;
    dbAplicacaoBAncoId.value:=dbBancoBancoId.value;
end;

procedure TfrmMovBanco.dbFundosBeforeInsert(DataSet: TDataSet);
begin
    dbFundos.Last;
    iUltimo:=dbFundosFundo.value;
end;

procedure TfrmMovBanco.dbFundosAfterInsert(DataSet: TDataSet);
begin
    dbFundosFundo.value:=iUltimo+1;
    dbFundosBAncoId.value:=dbBancoBancoId.value;
end;

procedure TfrmMovBanco.dbBancoxAfterPost(DataSet: TDataSet);
begin
    if not dbFundos.Locate('BancoID;Fundo',VarArrayof([dbBancoBancoId.value,0]),[]) then
    begin
        dbFundos.Insert;
        dbFundosFundo.value:=0;
        dbFundosNome.value:='Sem classificação';
        dbFundos.Post;
    end;    
end;

procedure TfrmMovBanco.grdFundoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbFundosSaldoAtual.value<0 then
        grdFundo.Canvas.font.Color:=clRed;
     grdFundo.DefaultDrawDataCell(Rect,grdFundo.Columns[DataCol].field,State);
end;

procedure TfrmMovBanco.dsBancoDataChange(Sender: TObject; Field: TField);
begin
    if dbBancoSaldoAtual.value<0 then
        cmpSaldo.Font.Color:=clRed
    else
        cmpSaldo.Font.Color:=clBlack;
    if dbBancoDisponivel.value<0 then
        cmpDisponivel.Font.Color:=clRed
    else
        cmpDisponivel.Font.Color:=clBlack;
end;

procedure TfrmMovBanco.dbMovBancoBeforePost(DataSet: TDataSet);
begin
    if dbBancoStatus.value='I' then
    begin
        ShowMessage('Conta Inativa. Impossível efetuar alterações');
        abort;
    end;
    if dbMovBanco.State in [dsInsert] then
    begin
        dbMovBancoUsuarioI.value:=iUsuario;
        dbMovBancoDataInclusao.value:=date;
    end
    else
    begin
        dbMovBancoUsuario.value:=iUsuario;
        dbMovBancoDataAlteracao.value:=date;
    end

end;

procedure TfrmMovBanco.BitBtn1Click(Sender: TObject);
begin
    dbMovBanco.Prior;
end;

procedure TfrmMovBanco.BitBtn2Click(Sender: TObject);
begin
    dbMovBanco.Next;
end;

procedure TfrmMovBanco.dbBancoAfterScroll(DataSet: TDataSet);
begin
    if dbPlanoC.Active=true then
        cmdFechamento.caption:=dbBancoDataFechamento.asstring;
    if pagBanco.ActivePage=tabConciliacao then
    begin
        tabExtrato.TabIndex:=0;
        if qryConciliado.Active then
            conciliar(false);
    end;    
end;

procedure TfrmMovBanco.dbBancoAfterEdit(DataSet: TDataSet);
begin
    cmdFichaBClick(dataset);
    cmdFichaB.Down:=true;
end;

procedure TfrmMovBanco.dbBancoAfterPost(DataSet: TDataSet);
begin
    if not dbFundos.Locate('BancoID;Fundo',VarArrayof([dbBancoBancoId.value,0]),[]) then
    begin
        dbFundos.Insert;
        dbFundosFundo.value:=0;
        dbFundosNome.value:='Sem classificação';
        dbFundos.Post;
    end;
end;

procedure TfrmMovBanco.dbBancoBeforeInsert(DataSet: TDataSet);
begin
    cmdFichaBClick(dataset);
    cmdFichaB.Down:=true;
end;

procedure TfrmMovBanco.dbMovBancoAfterCancel(DataSet: TDataSet);
begin
    pagMov.enabled:=false;
    cmpHistorico.Readonly:=true;
    cmpDataEntrada.enabled:=false;
end;

procedure TfrmMovBanco.dbMovBancoAfterPost(DataSet: TDataSet);
begin
    pagMov.enabled:=false;
    cmpHistorico.Readonly:=true;
    cmpDataEntrada.enabled:=false;
end;

procedure TfrmMovBanco.dbBancoCalcFields(DataSet: TDataSet);
begin
    dbBancoFilial1.value:=0;
    dbBancoDisponivel.ascurrency:=dbBancoSaldoAtual.ascurrency+
                                  dbBancoLimiteCredito.ascurrency+
                                  dbBancoAplicacoes.ascurrency;  //Aplicacoes
end;

procedure TfrmMovBanco.dsBanco1DataChange(Sender: TObject; Field: TField);
begin
    if dbBanco1SaldoAtual.value<0 then
        cmpSaldoT.Font.Color:=clRed
    else
        cmpSaldoT.Font.Color:=clBlack;
end;

procedure TfrmMovBanco.dsMovBancoStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbMovBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdCancela.Enabled:=(dbMovBanco.Active=true) and
                         (dbMovBanco.RecordCount<>0);
     cmdGrava.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
end;

procedure TfrmMovBanco.cmdExcluiClick(Sender: TObject);
var idata:Tdatetime;
    iabre,t,y,q,i,b,a,iMovBanco,iFundo,iBanco,ibancoatual:Integer;
    bx,d,c,iseq:String;
    iValor:currency;
    ibook:tbookmark;
    iTipo:Char;
begin
    if dbMovBancoDataEntrada.asdatetime>dbBancoDataFechamento.asdatetime then
    begin
        i:=application.messagebox('Você tem certeza de que deseja excluir/cancelar este Movimento?',
           'Confirmação de Exclusão',mb_YesNo);
        if i=idno then abort;
    end
    else showmessage('Você não pode eliminar um lançamento anterior à data de fechamento');

    iabre:=application.messagebox('Você deseja que o(s) lançamento(s) seja(m) reaberto(s) para pagamento/recebimento futuro?',
                                  'Confirmação',mb_YesNo);

    ibook:=dbMovBanco.GetBookmark;
    iMovBanco:=dbMovBancoMovBanco.value;
    iFundo:=dbMovBancoFundo.value;
    iValor:=dbMovBancovalor.ascurrency;
    ibancoatual:=dbMovBancoBancoId.value;

    dbBanco.DisableControls;
    if dbBanco.Locate('BancoID',dbMovBancoBancoID.asinteger,[]) then
    begin
    if dbMovBancoTipo.asString='' then
        iTipo:=#0
    else iTipo:=dbMovBancoTipo.asstring[1];
    case iTipo of
     #0: dbMovBanco.Delete;
    'A','D','X','P':begin
        if iTipo='A' then

            if dbMovAplic.Locate('MovBanco',dbMovBancoMovBanco.value,[]) then
            begin
                dbAplicacao.Edit;
                dbAplicacaoSaldo.value:=dbAplicacaoSaldo.value-dbMovBAncoValor.value;
                dbAplicacao.Post;

                dbMovAplic.delete;
            end;
        dbBanco.Edit;
        dbBancoSaldoAtual.ascurrency:=dbBancoSaldoAtual.ascurrency+iValor;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([ibancoatual,iFundo]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;
        dbBanco.post;
        while dbPagar.Locate('MovBanco',iMovBanco,[]) do
        begin
            if iabre=idno then
                dbPagar.delete
            else
            begin
                dbPagar.Edit;
                dbPagarBancoId.Clear;
                dbPagarCheque.Clear;
                dbPagarValorPago.Clear;
                dbPagarDataPagto.Clear;
                dbPagarPago.Value:=false;
                dbPagarMovBanco.value:=0;
                dbPagarStatus.value:='A';
                dbPagar.Post;
            end;
        end;

        dbMovBanco.disablecontrols;
        dbMovBanco.gotobookmark(ibook);
        dbMovBanco.Delete;
        dbMovBanco.enablecontrols;
        qryConciliado.refresh;
    end;
    'R','C':begin
        bx:='';
        if iTipo='R' then
            if dbMovAplic.Locate('MovBanco',dbMovBancoMovBanco.value,[]) then
            begin
                dbAplicacao.Edit;
                dbAplicacaoSaldo.value:=dbAplicacaoSaldo.value+dbMovBAncoValor.value;
                dbAplicacao.Post;
                dbMovAplic.delete;
            end;
        while dbPagar.Locate('MovBanco',iMovBanco,[]) do
        begin
            if dbPagarNF.value<>0 then
            begin
                if dbPagarSeq.value='' then
                    iSeq:='A'
                else
                    iSeq:=dbPagarSeq.value;
                if dbReceber.Locate('Filial;Duplicata;Seq',VarArrayof([dbPagarFilial.asinteger,
                                                                       dbPagarNF.value,iSeq]),[]) then
                begin
	                dbReceber.edit;
	                dbReceberValorpago.ascurrency:=dbReceberValorpago.ascurrency-dbMovBancoValor.ascurrency;
	                if dbRecebervalorpago.ascurrency<1 then
	                begin
	                    dbRecebervalorpago.clear;
	                    dbReceberdatapagto.clear;
                        dbReceberBancoId.Value:=0;
                    end;
	                dbReceber.post;
                end;
	        end;
            if iabre=idno then
                dbPagar.delete
            else
            begin
                dbPagar.Edit;
                dbPagarBancoId.Clear;
                dbPagarCheque.Clear;
                dbPagarValorPago.Clear;
                dbPagarDataPagto.Clear;
                dbPagarPago.Value:=false;
                dbPagarMovBanco.value:=0;
                dbPagarStatus.value:='A';
                dbPagar.Post;
            end;
        end;
        dbBanco.Edit;
        dbBancoSaldoAtual.ascurrency:=dbBancoSaldoAtual.ascurrency-iValor;
        dbMovBanco.disablecontrols;
        dbBanco.post;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([ibancoatual,iFundo]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value-iValor;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;

        dbMovBanco.gotobookmark(ibook);
        dbMovBanco.Delete;
        dbMovBanco.enablecontrols;
        qryConciliado.refresh;
    END;
    'T':begin      //Transferencia Origem
        dbBanco.Edit;
        dbBancoSaldoAtual.ascurrency:=dbBancoSaldoAtual.ascurrency+dbMovBancovalor.ascurrency;
        dbBanco.post;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([ibancoatual,iFundo]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+iValor;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;

        dbBanco1.edit;
        dbBanco1SaldoAtual.ascurrency:=dbBanco1SaldoAtual.ascurrency-iValor;
        dbBanco1.post;

        dbMovBanco.GotoBookmark(ibook);
        idata:=dbMovBancoDataEntrada.asdatetime;
        ibanco:=dbBanco1BancoId.value;
        dbMovBanco.Delete;
//*** apagar conta destino
        if dbMovBanco1.Locate('Tipo;DataEntrada;Valor',VarArrayof(['S',idata,ivalor]),[]) then
        begin
            if dbFundo1.Locate('BancoID;Fundo',VarArrayof([ibanco,dbMovBancoFundo.value]),[]) then
            begin
                dbFundo1.Edit;
                dbFundo1SaldoAtual.value:=dbFundosSaldoAtual.value-iValor;
                dbFundo1.post;
            end;
            dbMovBanco1.delete
        end;
    end;
    'S':begin //recebimento transferencia
        dbBanco.Edit;
        dbBancoSaldoAtual.ascurrency:=dbBancoSaldoAtual.ascurrency-dbMovBancoValor.ascurrency;
        dbBanco.post;

        if dbFundos.Locate('BancoID;Fundo',VarArrayof([ibancoatual,iFundo]),[]) then
        begin
            dbFundos.tag:=1;
            dbFundos.Edit;
            dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+iValor;
            dbFundos.post;
            dbFundos.Tag:=0;
        end;

        dbBanco1.edit;
        dbBanco1SaldoAtual.ascurrency:=dbBanco1SaldoAtual.ascurrency+iValor;
        dbBanco1.post;

        dbMovBanco.GotoBookmark(ibook);
        idata:=dbMovBancoDataEntrada.asdatetime;
        ibanco:=dbBanco1BancoId.value;
        dbMovBanco.Delete;
//*** apagar conta origem
        if dbMovBanco1.Locate('Tipo;DataEntrada;Valor',VarArrayof(['T',idata,ivalor]),[]) then
        begin
            if dbFundo1.Locate('BancoID;Fundo',VarArrayof([ibanco,dbMovBancoFundo.value]),[]) then
            begin
                dbFundo1.Edit;
                dbFundo1SaldoAtual.value:=dbFundosSaldoAtual.value+iValor;
                dbFundo1.post;
            end;
            dbMovBanco1.delete
        end
    end;
    end;
    end;
    dbMovBanco.freeBookmark(ibook);
    ibook:=nil;
    pagBanco.setfocus;
    dbBanco.EnableControls;
end;

procedure TfrmMovBanco.cmdPosicaoClick(Sender: TObject);
var iSaldoFinal,iSaldoPrevisto,iAplicacoes,iLimiteCredito,iFundo,iDisponivel:variant;
begin
    iSaldoFinal:=0;
    iAplicacoes:=0;
    iLimiteCredito:=0;
    iFundo:=0;
    iDisponivel:=0;
    iSaldoPrevisto:=0;

    dbBanco1.First;
    while not dbBanco1.eof do
    begin
        iSaldoFinal:=iSaldoFinal+dbBanco1SaldoAtual.value;
        iAplicacoes:=iAplicacoes+dbBanco1Aplicacoes.value;
        iLimiteCredito:=iLimiteCredito+dbBanco1LimiteCredito.value;
        iSaldoPrevisto:=iSaldoPrevisto+dbBanco1SaldoPrevisto.value;
        iFundo:=iFundo+dbBanco1Fundos.value;
        dbBanco1.Next;
    end;

    iDisponivel:=iSaldoPrevisto+iAplicacoes+iLimiteCredito;
    dbBanco1.First;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(date));
    frmMenu.RvFin.SetParam('SaldoAtual',FloattoStrF(iSaldoFinal,ffcurrency,10,2));
    frmMenu.RvFin.SetParam('SaldoPrevisto',FloattoStrF(iSaldoPrevisto,ffcurrency,10,2));
    frmMenu.RvFin.SetParam('Aplicacoes',FloattoStrF(iAplicacoes,ffcurrency,10,2));
    frmMenu.RvFin.SetParam('LimiteCredito',FloattoStrF(iLimiteCredito,ffcurrency,10,2));
    frmMenu.RvFin.SetParam('Fundo',FloattoStrF(iFundo,ffcurrency,10,2));
    frmMenu.RvFin.SetParam('Disponivel',FloattoStrF(iDisponivel,ffcurrency,10,2));
    frmMenu.rvFin.SelectReport('relPosicaoFinanceira',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmMovBanco.tabMovBancoChange(Sender: TObject);
begin
    case tabMovBanco.TabIndex of
    0:begin
        dbMovBanco.IndexFieldNames:='BancoID;DataEntrada desc';
        cmbBusca1.Visible:=true;
        cmbBusca.Visible:=false;
      end;
    1:begin
        dbMovBanco.IndexFieldNames:='BancoID;Doc';
        cmbBusca.Visible:=true;
        cmbBusca1.Visible:=false;
      end;
    end;
    CoolBar1.Refresh;
end;


procedure TfrmMovBanco.cmdAbrirClick(Sender: TObject);
begin
    if frmFechamentoA=nil then
        Application.CreateForm(TfrmFechamentoA, frmFechamentoA);
    frmFechamentoA.ShowModal;
end;

procedure TfrmMovBanco.dbMovBanco2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=(dataset['Status']<>'C') or
        (dataset['Status']='A');
end;

procedure TfrmMovBanco.dbMovBancoFCalcFields(DataSet: TDataSet);
begin
    case dbMovBancoFTipo.asstring[1] of
    'R','C','S':dbMovBancoFTipoTexto.value:='CR';
    'A','D','X','T','P':dbMovBancoFTipoTexto.value:='DB';
    end;
end;

procedure TfrmMovBanco.grdMovFundoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMovBAncoFTipoTexto.value='CR' then
        grdMovFundo.Canvas.Font.Color:=clBlue;
     grdMovFundo.DefaultDrawDataCell(Rect,grdMovFundo.Columns[DataCol].field,State);
end;

procedure TfrmMovBanco.dbBancoAfterInsert(DataSet: TDataSet);
begin
    dbBancoStatus.value:='A';
end;

procedure TfrmMovBanco.qryNCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=(dataset['Status']<>'C') or
        (dataset['Status']='A');
end;

procedure TfrmMovBanco.grdMovBancoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dbMovBanco.RecordCount>0 then
        case dbMovBancoTipo.asstring[1] of
        'R','C','S':grdMovBanco.Canvas.Font.Color:=clNavy;
        'A','D','X','T','P':grdMovBanco.Canvas.Font.Color:=clRed;
        end;

     grdMovBanco.DefaultDrawDataCell(Rect,grdMovBanco.Columns[DataCol].field,State);
end;

procedure TfrmMovBanco.cmdPosicao1Click(Sender: TObject);
var iSaldo,iSaldoAplicacao,iSaldoFundo:variant;
var imesi,ianoi,idiai,imesf,ianof,idiaf,ianoa,imesa,idiaa:word;
var i,qtd:integer;
var idata:Tdate;
begin
    pgrBar.Min:=0;
    pgrBar.Max:=dbBanco.RecordCount;
    pgrBar.Position:=0;
    dbBanco.First;
    while not dbBanco.eof do
    begin
        if dbBancoStatus.value='A' then
        begin
            DecodeDate(dbBancoDataFechamento.value,ianoi,imesi,idiai);
            idiai:=DaysInMonth(EncodeDate(ianoi,imesi,1));
            DecodeDate(date,ianof,imesf,idiaf);
            idiaf:=DaysInMonth(EncodeDate(ianof,imesf,1));
            qtd:=MonthsBetween(EncodeDate(ianof,imesf,idiaf),EncodeDate(ianoi,imesi,idiai));
            for i:=0 to qtd do
            begin
                iSaldo:=setsaldo(dbBancoBancoid.value,true,encodedate(ianoi,imesi,idiai),999);
                //****
                qryCheque.Close;
                qryCheque.sql.Clear;
                qryCheque.sql.text:='select sum(valor) as valor from MovBanco   '+
                                    'where BancoID=:xbco  and '+
                                    '      (DataMovimento is null or DataMovimento>:xfim) and '+
                                    '      (DataEntrada<=:xfim) and '+
                                    '      Status<>'+QuotedStr('C')+'  and '+
                                    '      (Tipo='+QuotedStr('X')+' or Tipo='+QuotedStr('P')+')' ;
                qryCheque.ParamByName('xbco').asinteger:=dbBancoBancoId.value;
                qryCheque.ParamByName('xfim').asDate:=EncodeDate(ianoi,imesi,idiai);
                qryCheque.Open;
                //****

                if dbSaldo.Locate('BancoID;Ano;Mes',VarArrayof([dbBancoBancoId.value,ianoi,imesi]),[]) then
                    dbSaldo.Edit
                else
                    dbSaldo.Insert;
                dbSaldoBancoId.value:=dbBancoBancoid.value;
                dbSaldoAno.value:=ianoi;
                dbSaldoMes.value:=imesi;
                dbSaldoSaldoConciliado.value:=iSaldo;
                dbSaldoDebitosPendentes.value:=qryChequeValor.value;
                dbSaldo.Post;

                imesi:=imesi+1;
                if imesi>12 then
                begin
                    imesi:=1;
                    ianoi:=ianoi+1;
                end;
                idiai:=DaysInMonth(EncodeDate(ianoi,imesi,1));
            end;

            DecodeDate(dbBancoDataFechamento.value,ianoi,imesi,idiai);
            idiai:=DaysInMonth(EncodeDate(ianoi,imesi,1));
            DecodeDate(date,ianof,imesf,idiaf);
            imesa:=imesi-1;
            if imesa=0 then
            begin
                imesa:=12;
                ianoa:=ianoi-1;
            end
            else
                ianoa:=ianoi;
            idiaa:=DaysInMonth(EncodeDate(ianoa,imesa,1));

            qryAplicacao.Close;
            qryAplicacao.SQL.Clear;
            qryAplicacao.SQL.Text:='Select * from MovBancoAplic '+
                                   'where BancoId=:xbco and '+
                                   '      Data>:xdta '+
                                   'order by Data';
            qryAplicacao.ParamByName('xbco').AsInteger:=dbBancoBancoId.Value;
            qryAplicacao.ParamByName('xdta').AsDate:=EncodeDate(ianoa,imesa,idiaa);
            qryAplicacao.Open;

            if dbSaldo.Locate('BancoID;Ano;Mes',VarArrayof([dbBancoBancoid.value,ianoa,imesa]),[]) then
                iSaldo:=dbSaldoSaldoAplicacao.value
            else
                iSaldo:=0;

            qryAplicacao.First;
            while not qryAplicacao.eof do
            begin
                iData:=EncodeDate(ianoi,imesi,idiai);
                while (qryAplicacaoData.value<=iData)  and
                    (not qryAplicacao.eof) do
                begin
                    if qryAplicacaoTipo.value='A' then
                        iSaldo:=iSaldo+qryAplicacaoValor.value;
                    if qryAplicacaoTipo.value='R' then
                        iSaldo:=iSaldo-qryAplicacaoValor.value;
                    qryAplicacao.Next;
                end;
                if dbSaldo.Locate('BancoID;Ano;Mes',VarArrayof([dbBancoBancoId.value,ianoi,imesi]),[]) then
                    dbSaldo.Edit
                else
                    dbSaldo.Insert;
                dbSaldoBancoId.value:=dbBancoBancoid.value;
                dbSaldoAno.value:=ianoi;
                dbSaldoMes.value:=imesi;
                dbSaldoSaldoAplicacao.value:=iSaldo;
                dbSaldo.Post;
                imesi:=imesi+1;
                if imesi>12 then
                begin
                    imesi:=1;
                    ianoi:=ianoi+1;
                end;
                idiai:=DaysInMonth(EncodeDate(ianoi,imesi,1));
            end;
            qryAplicacao.Close;
        end;
        dbBanco.Next;
        pgrBar.Position:=pgrBar.Position+1;
    end;
    dbBanco.First;
    with dmRelatorio do
    begin
        dbSaldo.First;
        while not dbSaldo.eof do
        begin
            dbSaldo.Edit;
            dbSaldoDebitosPrestadores.value:=0;
            dbSaldo.Post;
            dbSaldo.Next;
        end;
        qryProdEmpPag.Close;
        qryProdEmpPag.SQL.Clear;
        qryProdEmpPag.SQL.Text:='Select * from PagtoPre '+
                                'full outer join MovBanco '+
                                'on (PagtoPre.PagtoPre=MovBanco.PagtoPre) '+
                                'join Clientes '+
                                'on (PagtoPre.Empresa=Clientes.CliFor) '+
                                'where PagtoPre.PagtoPre>0 and '+
                                '      MovBanco.DataEntrada is null and '+
                                '      PagtoPre.ValorBruto>0 '+
                                'order by PagtoPre.Filial,Ano,Mes, Nome,PagtoPre.PagtoPre, MovBanco';
        qryProdEmpPag.Open;
        qryProdEmpPag.First;
        while not qryProdEmpPag.eof do
        begin
            imesi:=qryProdEmpPagMes.value;
            ianoi:=qryProdEmpPagAno.value;
            imesi:=imesi+1;
            if imesi=13 then
            begin
                imesi:=1;
                ianoi:=ianoi+1;
            end;
            if dbSaldo.Locate('BancoID;Ano;Mes',VarArrayof([qryProdEmpPagBancoID.value,ianoi,imesi]),[]) then
            begin
                dbSaldo.Edit;
                dbSaldoDebitosPrestadores.value:=dbSaldoDebitosPrestadores.value+qryProdEmpPagValorLiquido.value;
                dbSaldo.Post;
            end;
            qryProdEmpPag.Next;
        end;
    end;
    pgrBar.Position:=0;
    if frmRePFinanceiro=nil then
       Application.CreateForm(TfrmRePFinanceiro, frmRePFinanceiro);
    frmRePFinanceiro.ShowModal;
end;

procedure TfrmMovBanco.dbBanco1CalcFields(DataSet: TDataSet);
begin
    dbBanco1Filial1.value:=0;
    dbBanco1Disponivel.ascurrency:=dbBanco1SaldoPrevisto.ascurrency+
                                   dbBanco1Aplicacoes.ascurrency;
end;

procedure TfrmMovBanco.grdMovAplicDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if dbMovAplicTipo.value='R' then
        grdMovAplic.Canvas.Font.Color:=clRed;

     grdMovAplic.DefaultDrawDataCell(Rect,grdMovAplic.Columns[DataCol].field,State);

end;

procedure TfrmMovBanco.cmdConfereClick(Sender: TObject);
var isaldo: variant;
begin
    abort; // nao utilizar
    dbMovAplic1.Open;
    while not dbMovAplic1.eof do
    begin
        if dbMovAplic1MovBanco.value>0 then
            dbMovAplic1.Delete
        else
            dbMovaplic1.Next;
    end;
    qryMovAplic.Close;
    qryMovAPlic.Open;
    qryMovAplic.First;
    isaldo:=0;
    while not qryMovAplic.Eof do
    begin
        if qryMovAplicDataEntrada.value>StrtoDate('31/12/2006') then
        begin
            dbMovAplic1.Insert;
            dbMovAplic1BancoID.value:=qryMovAplicBancoId.value;
            dbMovAplic1Aplicacao.value:=qryMovAplicAplicacao.value;
            dbMovAplic1Data.value:=qryMovAplicDataEntrada.value;
            dbMovAplic1Tipo.value:=qryMovAplicTipo.value;
            dbMovAplic1MovBanco.value:=qryMovAplicMovBanco.value;
            dbMovAplic1Valor.value:=qryMovAplicValor.value;
            dbMovAplic1.Post;
        end;
    end;
    qryMovAplic.Close;
    dbMovAplic1.Close;
    dbMovAplic.Refresh;
    ShowMessage('Conferencia finalizada');
end;

procedure TfrmMovBanco.dbBancoBeforePost(DataSet: TDataSet);
begin
    if dbBancoBanco.value=0 then
    begin
        ShowMessage('Número do banco inválido');
        abort;
    end;
    if dbBancoAgencia.value='' then
    begin
        ShowMessage('Agência inválida');
        abort;
    end;
    if dbBancoConta.value='' then
    begin
        ShowMessage('Conta Corrente inválida');
        abort;
    end;
    if dbBancoNome.value='' then
    begin
        ShowMessage('Nome da conta inválida');
        abort;
    end;
    if dbBancoSigla.value='' then
    begin
        ShowMessage('Sigla do banco inválida');
        abort;
    end;
    if Length(dbBancoSigla.value)<3 then
    begin
        ShowMessage('Sigla do banco deve ter 3 caracteres');
        abort;
    end;
    if dbBancoFilial.value=0 then
    begin
        ShowMessage('Filial inválida');
        abort;
    end;

    dbBancoDataInclusao.value:=date;
    dbBancoUsuario.value:=iUsuario;
end;

procedure TfrmMovBanco.qryConciliadoAfterInsert(DataSet: TDataSet);
begin
    qryConciliadostatus.asstring:='A';
    qryConciliadodataEntrada.asdatetime:=date;

end;

procedure TfrmMovBanco.qryConciliadoBeforePost(DataSet: TDataSet);
begin
    qryConciliadoStatus.asstring:=dbBanco1status.asstring;
end;

procedure TfrmMovBanco.qryConciliadoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dataset['Status']<>'C') or
            (dataset['Status']='A');
end;

procedure TfrmMovBanco.qryConciliadoTipoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if (displaytext) and (sender.asstring<>'') then
    begin
        case sender.asstring[1] of
        'R','C','S':text:='CR';
        'A','D','X','T','P':text:='DB';
    end;
    end;
end;

procedure TfrmMovBanco.MonthCalendar1Click(Sender: TObject);
var x:integer;
begin
    x:=StringAlignGrid1.Cols[0].IndexOf(DateToStr(MonthCalendar1.date));
    if x>0 then
    begin
        StringAlignGrid1.Row := x;
        StringAlignGrid1.Col := StringAlignGrid1.Rows[x].IndexOf(DateToStr(MonthCalendar1.date));
    end;
{If you want to search via Columns, use
StringGrid.Cols[x].IndexOf('stringtosearchfor');
Where x is the column you want to search. The return
value is the index of the item, you can select it like
this:
StringGrid.Col := x;
StringGrid.Row := StringGrid.Cols[x].IndexOf('stringtosearchfor');

If you want to search via Rows, us it like this:
StringGrid.Rows[x].IndexOf('stringtosearchfor');
Where x is the row you want to search. The return
value is the index of the item, you can select it like
this:
StringGrid.Row := x;
StringGrid.Col := StringGrid.Rows[x].IndexOf('stringtosearchfor');}



end;

end.
