unit frmPrevsPagRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Variants,
  DBCtrls, StdCtrls, Mask, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DB, Buttons, ExtCtrls, Grids,
  ToolWin, ComCtrls, DBGrids, Menus, Outline, DateUtils, DBDateTimePicker;

type
  TfrmPrevPagRec = class(TForm)
    Bevel1: TBevel;
    dsPagar: TDataSource;
    dbPlanoC: TMSTable;
    dsPlanoC: TDataSource;
    dbPagar: TMSTable;
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    dbCliente: TMSTable;
    dsCliente: TDataSource;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dbPagarLancamento: TAutoIncField;
    dbPagarCliente: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    dbPagarHistorico: TStringField;
    dbPagarDoc: TStringField;
    dbPagarValor: TCurrencyField;
    dbPagarBancoID: TIntegerField;
    dbPagarValorPago: TCurrencyField;
    dbPagarPago: TBooleanField;
    dbPagarStatus: TStringField;
    dbPagarFilial: TIntegerField;
    dbPagarUsuario: TStringField;
    Panel4: TPanel;
    Label3: TLabel;
    cmbFilial: TDBLookupComboBox;
    dbPrevisao: TMSTable;
    dbPrevisaoPrevisao: TAutoIncField;
    dbPrevisaoFilial: TIntegerField;
    dbPrevisaoCliente: TIntegerField;
    dbPrevisaoHistorico: TStringField;
    dbPrevisaoValor: TCurrencyField;
    dbPrevisaoCod1: TSmallintField;
    dbPrevisaoCod2: TSmallintField;
    dbPrevisaoCod3: TSmallintField;
    dsPrevisao: TDataSource;
    dbPagarPrevisao: TIntegerField;
    dbPagarClienteNome: TStringField;
    pagPrevisao: TPageControl;
    tabLancamento: TTabSheet;
    TabSheet2: TTabSheet;
    CoolBar1: TCoolBar;
    cmbBusca: TComboBox;
    tabLan: TTabControl;
    Splitter1: TSplitter;
    Panel9: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    Label11: TLabel;
    cmpVencto: TDBDateTimePicker;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    Outline1: TOutline;
    Panel3: TPanel;
    chkFor: TRadioButton;
    chkCLT: TRadioButton;
    chkPre: TRadioButton;
    CoolBar2: TCoolBar;
    cmbBusca1: TComboBox;
    tabPrev: TTabControl;
    Panel8: TPanel;
    dbPagPrev: TMSTable;
    dsPagPrev: TDataSource;
    Panel5: TPanel;
    Outline2: TOutline;
    Label10: TLabel;
    Label12: TLabel;
    DBText3: TDBText;
    pagCliente: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dbPagPrevFilial: TIntegerField;
    dbPagPrevLancamento: TAutoIncField;
    dbPagPrevCliente: TIntegerField;
    dbPagPrevCod1: TSmallintField;
    dbPagPrevCod2: TSmallintField;
    dbPagPrevCod3: TSmallintField;
    dbPagPrevHistorico: TStringField;
    dbPagPrevDoc: TStringField;
    dbPagPrevValor: TCurrencyField;
    dbPagPrevBancoID: TIntegerField;
    dbPagPrevValorPago: TCurrencyField;
    dbPagPrevPago: TBooleanField;
    dbPagPrevStatus: TStringField;
    dbPagPrevPrevisao: TIntegerField;
    dbPagPrevUsuario: TStringField;
    Label13: TLabel;
    DBText4: TDBText;
    Panel7: TPanel;
    Label8: TLabel;
    grdPagPrev: TDBGrid;
    grdPrev: TDBGrid;
    pnlPrev: TPanel;
    pagCliente1: TPageControl;
    TabSheet5: TTabSheet;
    DBLookupComboBox4: TDBLookupComboBox;
    TabSheet6: TTabSheet;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit5: TDBEdit;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    DBText5: TDBText;
    Label18: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    Label20: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    dbPrevisaoDia: TSmallintField;
    dbPrevisaoTipo: TStringField;
    DBEdit7: TDBEdit;
    dbPrevisaoTipoNome: TStringField;
    GroupBox1: TGroupBox;
    cmpDataFim: TDBDateTimePicker;
    dbPrevisaoAtivo: TBooleanField;
    Panel6: TPanel;
    Label15: TLabel;
    DBText8: TDBText;
    Panel11: TPanel;
    lblStatus: TLabel;
    DBText9: TDBText;
    dbPrevisaoAtivoTexto: TStringField;
    dbPrevisaoUsuario: TStringField;
    grdPrevisao1: TDBGrid;
    dbPrevisaoRepetir: TIntegerField;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    Label21: TLabel;
    dbPagarSelecionado: TBooleanField;
    dbPagarCheque: TStringField;
    dbPagPrevCheque: TStringField;
    dbPagPrevSelecionado: TBooleanField;
    cmbData: TDateTimePicker;
    cmbCli: TDBLookupComboBox;
    dbPagarClienteDeb: TIntegerField;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    DBLookupComboBox6: TDBLookupComboBox;
    TabSheet7: TTabSheet;
    DBLookupComboBox7: TDBLookupComboBox;
    Label19: TLabel;
    dbClienteDeb: TMSTable;
    dsClienteDeb: TDataSource;
    dbClienteDebCliFor: TAutoIncField;
    dbClienteDebNome: TStringField;
    dbClienteDebCGC: TStringField;
    dbClienteDebStatusCli: TBooleanField;
    dbPagarPrazo: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbPrevisaoClienteDeb: TIntegerField;
    Label22: TLabel;
    PageControl4: TPageControl;
    TabSheet8: TTabSheet;
    DBLookupComboBox8: TDBLookupComboBox;
    TabSheet9: TTabSheet;
    DBLookupComboBox9: TDBLookupComboBox;
    dbPagarMovBanco: TIntegerField;
    dbPagPrevClienteDeb: TIntegerField;
    dbPagPrevPrazo: TIntegerField;
    dbPagPrevMovBanco: TIntegerField;
    dbPagPrevNF: TIntegerField;
    dbPagPrevPorcentagem: TFloatField;
    dbPrevisaoClienteNome: TStringField;
    DBText7: TDBText;
    Label9: TLabel;
    Label23: TLabel;
    cmbCliente1: TDBLookupComboBox;
    txtPago: TDBText;
    dbPagarStatusTexto: TStringField;
    Label24: TLabel;
    DBText10: TDBText;
    dbPagarTributo: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    qryTributo: TMSQuery;
    qryTributoFilial: TIntegerField;
    qryTributoLancamento: TIntegerField;
    qryTributoCliente: TIntegerField;
    qryTributoClienteDeb: TIntegerField;
    qryTributoPrazo: TIntegerField;
    qryTributoCod1: TSmallintField;
    qryTributoCod2: TSmallintField;
    qryTributoCod3: TSmallintField;
    qryTributoHistorico: TStringField;
    qryTributoDoc: TStringField;
    qryTributoValor: TCurrencyField;
    qryTributoBancoID: TIntegerField;
    qryTributoCheque: TStringField;
    qryTributoValorPago: TCurrencyField;
    qryTributoPago: TBooleanField;
    qryTributoSelecionado: TBooleanField;
    qryTributoStatus: TStringField;
    qryTributoPrevisao: TIntegerField;
    qryTributoMovBanco: TIntegerField;
    qryTributoNF: TIntegerField;
    qryTributoPorcentagem: TFloatField;
    qryTributoTributo: TBooleanField;
    qryTributoUsuario: TStringField;
    dbPagPrevStatusTexto: TStringField;
    DBText6: TDBText;
    DBText11: TDBText;
    dbPagarContabilizado: TBooleanField;
    chkContabilizado: TDBCheckBox;
    GroupBox2: TGroupBox;
    Label25: TLabel;
    DBText12: TDBText;
    Panel12: TPanel;
    Label54: TLabel;
    DBText13: TDBText;
    Label57: TLabel;
    DBText28: TDBText;
    Panel13: TPanel;
    Label55: TLabel;
    DBText14: TDBText;
    dbPagarUsuarioI: TStringField;
    dbMovBanco: TMSTable;
    dbPagarTipoPag: TStringField;
    dbPagPrevTipoPag: TStringField;
    Panel10: TPanel;
    chkPagoAberto: TRadioButton;
    chkAberto: TRadioButton;
    Label6: TLabel;
    Label26: TLabel;
    Splitter2: TSplitter;
    Panel18: TPanel;
    Panel24: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdImp: TBitBtn;
    cmdImpPC: TBitBtn;
    cmdImpPCCli: TBitBtn;
    cmdImpFolhaME: TBitBtn;
    cmdImpSocio: TBitBtn;
    cmdImpTributo: TBitBtn;
    cmdGrava: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdNovoP: TBitBtn;
    cmdAlteraP: TBitBtn;
    cmdGravaP: TBitBtn;
    cmdCancelaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    cmdRepetir: TBitBtn;
    cmdFichaP: TSpeedButton;
    cmdListaP: TSpeedButton;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel16: TPanel;
    Label27: TLabel;
    chkPag: TRadioButton;
    chkRec: TRadioButton;
    chkTodos: TRadioButton;
    chkTodos1: TRadioButton;
    Label28: TLabel;
    DBComboBox1: TDBComboBox;
    dbPagarValorBruto: TCurrencyField;
    dbPagarFuncionario: TIntegerField;
    dbFuncionario: TMSTable;
    dbFuncionarioFuncionario: TIntegerField;
    dbFuncionarioNome: TStringField;
    dbFuncionarioBanco: TSmallintField;
    dbFuncionarioAgencia: TStringField;
    dbFuncionarioConta: TStringField;
    dbFuncionarioCPF: TStringField;
    dbFuncionarioSalarioBruto: TCurrencyField;
    dbFuncionarioCliente: TIntegerField;
    dsFuncionario: TDataSource;
    dbPagarAuditor: TIntegerField;
    dbPagarTipoAud: TStringField;
    dbPagarDataEmissao: TDateTimeField;
    dbPagarDataVencto: TDateTimeField;
    dbPagarDataPagto: TDateTimeField;
    dbPagarDataInclusao: TDateTimeField;
    dbPagarDataAlteracao: TDateTimeField;
    dbPrevisaoDataIni: TDateTimeField;
    dbPrevisaoDataFim: TDateTimeField;
    dbPagPrevDataEmissao: TDateTimeField;
    dbPagPrevDataVencto: TDateTimeField;
    dbPagPrevDataPagto: TDateTimeField;
    dbPagPrevDataInclusao: TDateTimeField;
    dbPagPrevDataAlteracao: TDateTimeField;
    qryTributoDataEmissao: TDateTimeField;
    qryTributoDataVencto: TDateTimeField;
    qryTributoDataInclusao: TDateTimeField;
    qryTributoDataAlteracao: TDateTimeField;
    dbFuncionarioDataFim: TDateTimeField;
    pagFun: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    Label30: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBText15: TDBText;
    Label31: TLabel;
    DBText16: TDBText;
    dbPagarPagtoPre: TIntegerField;
    DBText17: TDBText;
    Label33: TLabel;
    DBText18: TDBText;
    Label32: TLabel;
    dbPagarAudNome: TStringField;
    dbPagarEnfNome: TStringField;
    dbPagarAuditorNome: TStringField;
    procedure dbPagarFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPagarBeforePost(DataSet: TDataSet);
    procedure dbPagarAfterScroll(DataSet: TDataSet);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure Outline1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdListaClick(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure DateTimePicker1Enter(Sender: TObject);
    procedure dbPagarAfterOpen(DataSet: TDataSet);
    procedure cmbBuscaChange(Sender: TObject);
    procedure tabLanChange(Sender: TObject);
    procedure dbPagarAfterInsert(DataSet: TDataSet);
    procedure cmbFilialCloseUp(Sender: TObject);
    procedure cmbFilialKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbPlanoCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure chkPreClick(Sender: TObject);
    procedure dbPagPrevAfterScroll(DataSet: TDataSet);
    procedure dsPagarStateChange(Sender: TObject);
    procedure dbPrevisaoCalcFields(DataSet: TDataSet);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdAlteraPClick(Sender: TObject);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdCancelaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure dbPrevisaoAfterInsert(DataSet: TDataSet);
    procedure Outline2Click(Sender: TObject);
    procedure dsPrevisaoStateChange(Sender: TObject);
    procedure dbPrevisaoAfterScroll(DataSet: TDataSet);
    procedure dbPrevisaoAfterOpen(DataSet: TDataSet);
    procedure cmdFichaPClick(Sender: TObject);
    procedure cmdListaPClick(Sender: TObject);
    procedure dbPrevisaoBeforePost(DataSet: TDataSet);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure dsPrevisaoDataChange(Sender: TObject; Field: TField);
    procedure cmdRepetirClick(Sender: TObject);
    procedure tabPrevChange(Sender: TObject);
    procedure cmbCliCloseUp(Sender: TObject);
    procedure cmbDataChange(Sender: TObject);
    procedure dbClienteDebFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure Label9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlPrevMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pagCliente1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pagClienteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbPagPrevFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmbBusca1Change(Sender: TObject);
    procedure cmbCliente1CloseUp(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure dbPagarCalcFields(DataSet: TDataSet);
    procedure dsPagarDataChange(Sender: TObject; Field: TField);
    procedure grdPrevisao1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbPagarBeforeEdit(DataSet: TDataSet);
    procedure grdPrevisao1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdPagPrevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdImpTributoClick(Sender: TObject);
    procedure cmdImpPCClick(Sender: TObject);
    procedure dbPagPrevCalcFields(DataSet: TDataSet);
    procedure grdPagPrevDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdPagPrevDblClick(Sender: TObject);
    procedure pagPrevisaoChange(Sender: TObject);
    procedure cmdImpPCCliClick(Sender: TObject);
    procedure cmdImpSocioClick(Sender: TObject);
    procedure cmdImpFolhaMEClick(Sender: TObject);
    procedure dbPagarTipoPagGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbPagarTipoPagSetText(Sender: TField; const Text: String);
    procedure dbPagarTipoPagChange(Sender: TField);
    procedure grdPrevDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbPagarAfterEdit(DataSet: TDataSet);
  private
  procedure MontaTree;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevPagRec: TfrmPrevPagRec;

implementation

uses frmPrincipal, frmRepetirPrevs, dmRelatorios, frmRelLancamentos,
     frmClientes, frmRelLancamentosPC, frmRelTributos,
  frmRelLancamentosPCCli, frmRelLancamentosSocio, frmRelFolhaTotaisCli;

{$R *.DFM}

function fnz(i,j,k:word):string;
var b,c:string;
begin
    b:=inttostr(1000+i);
    c:=copy(b, 3, 2)+'.';
    b:=inttostr(1000+j);
    c:=c+copy(b, 3, 2)+'.';
    b:=inttostr(1000+k);
    c:=c+copy(b, 3, 2);
    result:=c;
end;

procedure TfrmPrevPagRec.MontaTree;
var g,n,i,j,k:Integer;
    a:string;
    gt:Tbookmark;
begin
    dbPlanoC.refresh;
    gt:=dbPlanoC.getbookmark;
    outline1.lines.clear;
    outline2.lines.clear;
    dbPlanoC.first;
    g:=1;
    while not dbPlanoC.eof do
    begin
        i:=dbPlanoCCod1.asinteger;
        j:=dbPlanoCCod2.asinteger;
        k:=dbPlanoCCod3.asinteger;
        a:=fnz(i,j,k);
        n:=ord(i<>0)+ord(j<>0)+ord(k<>0);
        outline1.lines.add(copy('      ',1,n-1)+a+' '+dbPlanoCDescricao.asstring);
        outline1.items[g].expanded:=true;

        outline2.lines.add(copy('      ',1,n-1)+a+' '+dbPlanoCDescricao.asstring);
        outline2.items[g].expanded:=true;
        inc(g);
        dbPlanoC.next;
    end;
    if gt<>nil then
    begin
        dbPlanoC.gotobookmark(gt);
        dbPlanoC.freebookmark(gt);
        i:=dbPlanoCCod1.asinteger;
        j:=dbPlanoCCod2.asinteger;
        k:=dbPlanoCCod3.asinteger;
        a:=fnz(i,j,k);
        outline1.selecteditem:=outline1.gettextitem(a+' '+dbPlanoCDescricao.asstring);
        outline2.selecteditem:=outline1.gettextitem(a+' '+dbPlanoCDescricao.asstring);
    end;
end;

procedure TfrmPrevPagRec.dbPagarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var chk,chkstatus,tipo:boolean;
begin
    chkStatus:=true;
    if chkAberto.checked then
      chkStatus:=(dbPagarStatus.AsString='A');

    if chkPag.checked then
        chk:=(dbPagarCod1.asinteger>1);
    if chkRec.checked then
        chk:=(dbPagarCod1.asinteger=1);
    if chkTodos.checked then
        chk:=(true);

    if chkFor.checked then
        tipo:=(dbPagarTipoPag.value='F');
    if chkCLT.checked then
        tipo:=(dbPagarTipoPag.value='C');
    if chkPre.checked then
        tipo:=(dbPagarTipoPag.value='P');
    if chkTodos1.checked then
        tipo:=(true);

    accept:=(dbPagarStatus.asstring<>'C') and
             chk and  chkStatus and tipo and
//          (dbPagarPago.value=false) and  - visualiza, mas não altera
            (dbPagarFilial.value=dbFilialFilial.value);
end;

procedure TfrmPrevPagRec.dbPagarBeforePost(DataSet: TDataSet);
var iok:boolean;
begin
    if (dbPagarCod1.value=1) and
       (dbPagarClienteDeb.value=0) then
    begin
        ShowMessage('Cliente de Crédito inválido');
        abort;
    end;
    if dbPagarCod1.asinteger=0 then
    begin
        Showmessage('Classifique o lançamento.');
        abort;
    end;
    if dbPagarValor.value=0 then
    begin
        Showmessage('Valor inválido');
        abort;
    end;
    if dbPagarDataVencto.isnull then
    begin
        Showmessage('Vencimento inválido');
        abort;
    end;
    if dbPagarHistorico.value='' then
    begin
        Showmessage('Histórico inválido');
        abort;
    end;
    if dbPagarTipoPag.value='F' then
    begin
      if (dbPagarCod1.value=2) and (dbPagarCod2.value=40) and
         ((dbPagarCod3.value=1) or (dbPagarCod3.value=3) or
         (dbPagarCod3.value=4) or (dbPagarCod3.value=15)) then
      begin
        ShowMessage('O Plano de contas selecionado é especifico de pagamento CLT');
        abort;
      end;
      if (dbPagarCod1.value=2) and ((dbPagarCod2.value=50) or (dbPagarCod2.value=60)) and
         (dbPagarCod3.value=1) then
      begin
        ShowMessage('O Plano de contas selecionado é especifico de pagamento Prestadores');
        abort;
      end;
    end;
    if dbPagarTipoPag.value='C' then
    begin
      if (dbPagarCod1.value<>2) or (dbPagarCod2.value<>40) or
         ((dbPagarCod3.value<>1) and (dbPagarCod3.value<>3) and
         (dbPagarCod3.value<>4) and (dbPagarCod3.value<>15)) then
      begin
        ShowMessage('O Plano de contas selecionado não se refere a pagamento CLT');
        abort;
      end;
      if (dbPagarValorBruto.value=0) or (dbPagarValorBruto.IsNull) then
      begin
        ShowMessage('Selecione o valor Bruto');
        abort;
     end;
      if (dbPagarFuncionario.value=0) or (dbPagarFuncionario.isnull) then
      begin
        ShowMessage('Selecione o Funcionario');
        abort;
     end;
    end;
    if dbPagarTipoPag.value='P' then
    begin
      if (dbPagarCod1.value<>2) or ((dbPagarCod2.value<>50) and (dbPagarCod2.value<>60)) or
         (dbPagarCod3.value<>1) then
      begin
        ShowMessage('O Plano de contas selecionado não se refere a pagamento Prestadores');
        abort;
      end;
    end;

    if dbPagarTributo.value=true then
    begin
        qryTributo.sql.clear;
        qryTributo.sql.text:='Select * from Lancamentos '+
                             'where Cliente=:iCli and '+
                             '      Doc=:iDoc  '+
                             'order by DataVencto ';
        qryTributo.ParamByName('iCli').asinteger:=dbPagarCliente.value;
        qryTributo.ParamByName('iDoc').asstring:=dbPagarDoc.value;
        qryTributo.Open;
        if qryTributo.RecordCount=0 then
        begin
            Showmessage('Documento origem do tributo não cadastrado');
            abort;
        end;
        qryTributo.First;
        iok:=false;
        while not qryTributo.eof do
        begin
            if qryTributoTributo.value=false then
            begin
                iok:=true;
                break;
            end;
            qryTributo.Next;
        end;
        if not iok then
        begin
            Showmessage('Documento origem do tributo não cadastrado');
            abort;
        end;
    end;
    if dbPagarMovBanco.value>0 then
        if not dbMovBanco.Locate('MovBanco',dbPagarMovBanco.value,[]) then
        begin
            dbPagarMovBanco.value:=0;
            dbPagarStatus.value:='A';
        end;

    if dbPagar.state=dsInsert then
    begin
        dbPagarDataInclusao.value:=date;
        dbPagarUsuarioI.value:=IUsuario;
    end
    else
    begin
        dbPagarDataAlteracao.value:=date;
        dbPagarUsuario.value:=iUsuario;
    end;
end;

procedure TfrmPrevPagRec.dbPagarAfterScroll(DataSet: TDataSet);
var i:Integer;
var fim:boolean;
begin
    i:=0;
    fim:=false;
    while (i<outline1.itemcount) and not fim do
    begin
        inc(i);
        if pos(fnz(dbPagarCod1.asinteger,dbPagarCod2.asinteger,dbPagarCod3.asinteger),outline1.items[i].text)<>0 then
        begin
            fim:=true;
            outline1.selecteditem:=i;
        end;
    end;
    pagFun.Visible:=(dbPagarTipoPag.value='C') or (dbPagarTipoPag.value='P');
    if dbPagarTipoPag.value='C' then pagFun.ActivePageIndex:=0;
    if dbPagarTipoPag.value='P' then pagFun.ActivePageIndex:=1;
end;

procedure TfrmPrevPagRec.cmdNovoClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbPagar.Insert;
    cmpVencto.setfocus;
end;

procedure TfrmPrevPagRec.cmdAlteraClick(Sender: TObject);
begin
    dbPagar.Edit;
    cmpVencto.SetFocus;
end;


procedure TfrmPrevPagRec.cmdGravaClick(Sender: TObject);
begin
    dbPagar.post;
end;

procedure TfrmPrevPagRec.cmdCancelaClick(Sender: TObject);
begin
    dbPagar.Cancel;
end;

procedure TfrmPrevPagRec.cmdExcluiClick(Sender: TObject);
var i:Integer;
begin
    if dbPagarMovBanco.value>0 then
        if dbMovBanco.Locate('MovBanco',dbPagarMovBanco.value,[]) then
        begin
            ShowMessage('Lançamento pago. Cancele o movimento bancário para poder exclui-lo');
            abort;
        end;
    i:=application.messagebox('Você tem certeza de que deseja excluir este registro?',
                              'Confirmação de Exclusão',mb_YesNo);
    if i=idno then abort;
    dbPagar.delete
end;

procedure TfrmPrevPagRec.Outline1Click(Sender: TObject);
var i,a,b,c:Integer;
    k:String;
    Saia:boolean;
begin
    dbPagar.tag:=1;
    if (outline1.Lines.count>0) and outline1.Focused then
    begin
        k:=outline1.Items[outline1.selecteditem].text;
        a:=pos(#32, k);
        k:=trim(copy(k, 1, a-1));
        b:=pos('.', k);
        a:=strtoint(copy(k, 1, b-1));
        k:=copy(k, b+1, 255);
        c:=pos('.', k);
        b:=strtoint(copy(k, 1, c-1));
        k:=copy(k, c+1, 255);
        c:=strtoint(k);
        if c<>0 then
        begin
            if dbPagarCod3.asinteger<>0 then
                i:=application.MessageBox('Você tem certeza que deseja reclassificar este lançamento',
                                          'Atenção',mb_yesno)
            else i:=idyes;
            if i=idyes then
            begin
                if dbPagar.state=dsbrowse then
                    dbPagar.edit;
                dbPagarCod1.asinteger:=a;
                dbPagarCod2.asinteger:=b;
                dbPagarCod3.asinteger:=c;
                dbPagar.post;
            end
            else
            begin
{               if grdPrev.visible then
                   grdPrev.setfocus
               else tabLan.SetFocus;}
               i:=0;
               saia:=false;
               while (i<outline1.itemcount) and not saia do
               begin
                    inc(i);
                    if pos(fnz(dbPagarCod1.asinteger,dbPagarCod2.asinteger,dbPagarCod3.asinteger),outline1.items[i].text)<>0 then
                    begin
                        saia:=true;
                        outline1.selecteditem:=i;
                    end;
               end;
            end;
        end
        else
            Showmessage('Escolha uma classificação de Nível 3');
        end;
    dbPagar.Tag:=0;
end;

procedure TfrmPrevPagRec.FormShow(Sender: TObject);
begin
try
    Screen.cursor:=crhourglass;
    dbFilial.open;
    dbPlanoC.open;
    dbPagar.open;
    dbCliente.Open;
    dbClienteDeb.Open;
    dbPrevisao.open;
    dbPagPrev.Open;
    dbMovBanco.Open;
    dbFuncionario.Open;

    dbPagarafterscroll(dbPagar);
    cmbFilial.keyvalue:=dbFilialFilial.asstring;
    cmbData.Date:=date;
    MontaTree;
finally
    TabLan.TabIndex:=0;
    TabLanChange(sender);
    pagPrevisao.ActivePageIndex:=0;
    Screen.cursor:=crdefault;
    pagCliente.ActivePageIndex:=0;
    pagCliente1.ActivePageIndex:=0;
end;
end;

procedure TfrmPrevPagRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbPagar.close;
    dbPlanoC.close;
    dbFilial.close;
    dbCliente.Close;
    dbClienteDeb.Close;
    dbPrevisao.Close;
    dbPagPrev.Close;
    qryTributo.Close;
    dbMovBanco.Close;
    dbFuncionario.Close;
end;

procedure TfrmPrevPagRec.cmdListaClick(Sender: TObject);
begin
    grdPrevisao1.BringToFront;
end;

procedure TfrmPrevPagRec.cmdFichaClick(Sender: TObject);
begin
    grdPrevisao1.SendToBack;
end;

procedure TfrmPrevPagRec.DateTimePicker1Enter(Sender: TObject);
begin
dbPagar.edit;
end;

procedure TfrmPrevPagRec.dbPagarAfterOpen(DataSet: TDataSet);
begin
    dbPagar.afterscroll(dataset);
end;

procedure TfrmPrevPagRec.cmbBuscaChange(Sender: TObject);
begin
    case tabLan.tabindex of
    0:if trim(cmbBusca.text)<>'' then
         dbPagar.Locate('Filial;Lancamento',
                        VarArrayof([cmbFilial.KeyValue,StrToInt(cmbBusca.text)]),[loPartialKey]);
    3:if trim(cmbBusca.text)<>'' then
         dbPagar.Locate('Doc',trim(cmbBusca.text),[loPartialKey,loCaseInsensitive]);
    end;
end;

procedure TfrmPrevPagRec.cmbCliCloseUp(Sender: TObject);
begin
    dbPagar.Locate('Cliente',cmbCli.keyvalue,[]);
end;

procedure TfrmPrevPagRec.cmbDataChange(Sender: TObject);
begin
    dbPagar.Locate('DataVencto',Int(cmbData.date),[loPartialKey]);
end;

procedure TfrmPrevPagRec.tabLanChange(Sender: TObject);
begin
    case tabLan.tabindex of
    0:begin
      cmbData.Visible:=false;
      cmbCli.Visible:=false;
      cmbBusca.Visible:=true;
      dbPagar.indexfieldnames:='Filial;Lancamento';
      end;
    1:begin
      cmbBusca.Visible:=false;
      cmbCli.Visible:=false;
      cmbData.Visible:=true;
      dbPagar.indexfieldnames:='DataVencto';
      end;
    2:begin
      cmbBusca.Visible:=false;
      cmbData.Visible:=false;
      cmbCli.Visible:=true;
      dbPagar.indexfieldnames:='Cliente';
      end;
    3:begin
      cmbData.Visible:=false;
      cmbCli.Visible:=false;
      cmbBusca.Visible:=true;
      dbPagar.indexfieldnames:='Doc';
      end;
    end;
    if dbPagar.Active=true then
        dbPagar.refresh;
end;

procedure TfrmPrevPagRec.dbPagarAfterInsert(DataSet: TDataSet);
begin
    outline1.selecteditem:=0;
    dbPagarCliente.value:=0;
    dbPagarFuncionario.value:=0;
    dbPagarAuditor.value:=0;
    dbPagarTipoAud.value:='M';
    dbPagarClienteDeb.value:=0;
    dbPagarStatus.asstring:='A';
    dbPagarfilial.asinteger:=dbFilialfilial.asinteger;
    dbPagarPago.asboolean:=false;
    dbPagarSelecionado.value:=false;
    dbPagarMovBanco.value:=0; //lancamento movbanco/receber
    dbPagarDataInclusao.value:=date;
    dbPagarDataEmissao.value:=date;
    if chkRec.checked then
        dbPagarCod1.asinteger:=1;
    if chkPag.checked then
        dbPagarCod1.asinteger:=2;
    dbPagarCod2.asinteger:=1;
    dbPagarCod3.asinteger:=1;
    dbPagarDataVencto.asDateTime:=date;
    dbPagarTributo.value:=false;
    dbPagarContabilizado.value:=true;
    dbPagarTipoPag.value:='F';
end;


procedure TfrmPrevPagRec.cmbFilialCloseUp(Sender: TObject);
begin
    dbPagar.refresh;
    MontaTree;
end;

procedure TfrmPrevPagRec.cmbFilialKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    dbPagar.refresh;
    MontaTree;
end;

procedure TfrmPrevPagRec.dbPlanoCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=(chkPag.checked and (dbPlanoCCod1.asinteger>1)) or
        (chkRec.checked and (dbPlanoCCod1.asinteger=1)) or
        chkTodos.checked;
end;

procedure TfrmPrevPagRec.chkPreClick(Sender: TObject);
begin
  dbPlanoC.refresh;
  dbPagar.refresh;
  dbPagarafterscroll(dbPagar);
end;

procedure TfrmPrevPagRec.dbPagPrevAfterScroll(DataSet: TDataSet);
var i:Integer;
fim:boolean;
begin
    i:=0;
    fim:=false;
    while (i<outline2.itemcount) and not fim do
    begin
        inc(i);
        if pos(fnz(dbPagPrevCod1.asinteger,dbPagPrevCod2.asinteger,dbPagPrevCod3.asinteger),outline2.items[i].text)<>0 then
        begin
            fim:=true;
            outline2.selecteditem:=i;
        end;
    end;
end;

procedure TfrmPrevPagRec.dsPagarStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbPagar.State in [dsEdit,dsBrowse,dsInsert];
     cmdCancela.Enabled:=dbPagar.State in [dsEdit,dsInsert];
     cmdExclui.Enabled:=(dbPagar.Active=true) and
                         (dbPagar.RecordCount<>0);
     cmdGrava.Enabled:=dbPagar.State in [dsEdit,dsInsert];
end;

procedure TfrmPrevPagRec.dbPrevisaoCalcFields(DataSet: TDataSet);
begin
    if dbPrevisaoTipo.value='D' then
        dbPrevisaoTipoNOme.value:='Repetir todo dia'
    else
        dbPrevisaoTipoNOme.value:='Repetir a cada dias';

    if dbPrevisaoAtivo.value=true then
        dbPrevisaoAtivoTexto.value:='Ativo'
    else
        dbPrevisaoAtivoTexto.value:='Inativo';
end;

procedure TfrmPrevPagRec.cmdNovoPClick(Sender: TObject);
begin
    cmdFichaPClick(sender);
    cmdFichaP.Down:=true;
    cmdListaP.Down:=false;
    dbPrevisao.Insert;
end;

procedure TfrmPrevPagRec.cmdAlteraPClick(Sender: TObject);
begin
    dbPrevisao.Edit;
end;

procedure TfrmPrevPagRec.cmdGravaPClick(Sender: TObject);
begin
    dbPrevisao.Post;
end;

procedure TfrmPrevPagRec.cmdCancelaPClick(Sender: TObject);
begin
    dbPrevisao.Cancel;
end;

procedure TfrmPrevPagRec.cmdExcluiPClick(Sender: TObject);
var i:Integer;
begin
    if dbPagPrev.RecordCount=0 then
    begin
        i:=application.messagebox('Você tem certeza de que deseja excluir este registro?',
                                  'Confirmação de Exclusão',mb_YesNo);
        if i=idno then abort;
        dbPrevisao.delete
    end
    else
    begin
        dbPrevisao.Edit;
        if dbPrevisaoAtivo.value=true then
           dbPrevisaoAtivo.value:=false
        else
           dbPrevisaoAtivo.value:=true;
        dbPrevisao.Post;
    end;
end;

procedure TfrmPrevPagRec.dbPrevisaoAfterInsert(DataSet: TDataSet);
begin
    outline2.selecteditem:=0;
    dbPrevisaoTipo.value:='D';
    dbPrevisaoAtivo.value:=true;
    dbPrevisaoRepetir.value:=0;
end;

procedure TfrmPrevPagRec.Outline2Click(Sender: TObject);
var i,a,b,c:Integer;
    k:String;
    Saia:boolean;
begin
    if (outline2.Lines.count>0) and outline2.Focused then
    begin
        k:=outline2.Items[outline2.selecteditem].text;
        a:=pos(#32, k);
        k:=trim(copy(k, 1, a-1));
        b:=pos('.', k);
        a:=strtoint(copy(k, 1, b-1));
        k:=copy(k, b+1, 255);
        c:=pos('.', k);
        b:=strtoint(copy(k, 1, c-1));
        k:=copy(k, c+1, 255);
        c:=strtoint(k);
        if c<>0 then
        begin
            if dbPrevisaoCod3.asinteger<>0 then
                i:=application.MessageBox('Você tem certeza que deseja reclassificar este lançamento',
                                          'Atenção',mb_yesno)
            else i:=idyes;
            if i=idyes then
            begin
            if dbPrevisao.state=dsbrowse then
                dbPrevisao.edit;
            dbPrevisaoCod1.asinteger:=a;
            dbPrevisaoCod2.asinteger:=b;
            dbPrevisaoCod3.asinteger:=c;
            dbPrevisao.post;
        end
        else
        begin
            if grdPrev.visible then
                grdPrev.setfocus
            else tabLan.SetFocus;
            i:=0;
            saia:=false;
            while (i<outline2.itemcount) and not saia do
            begin
                inc(i);
                if pos(fnz(dbPrevisaoCod1.asinteger,dbPrevisaoCod2.asinteger,dbPrevisaoCod3.asinteger),outline2.items[i].text)<>0 then
                begin
                    saia:=true;
                    outline2.selecteditem:=i;
                end;
            end;
        end;
    end
    else
        Showmessage('Escolha uma classificação de Nível 3');
    end;

end;

procedure TfrmPrevPagRec.dsPrevisaoStateChange(Sender: TObject);
begin
     cmdNovoP.Enabled:=dbPrevisao.State in [dsEdit,dsBrowse,dsInsert];
     cmdCancelaP.Enabled:=dbPrevisao.State in [dsEdit,dsInsert];
     cmdExcluiP.Enabled:=(dbPrevisao.Active=true) and
                         (dbPrevisao.RecordCount<>0);
     cmdGravaP.Enabled:=dbPrevisao.State in [dsEdit,dsInsert];
     cmdRepetir.Enabled:=dbPrevisao.State in [dsBrowse];
end;

procedure TfrmPrevPagRec.dbPrevisaoAfterScroll(DataSet: TDataSet);
var i:Integer;
fim:boolean;
begin
    i:=0;
    fim:=false;
    while (i<outline2.itemcount) and not fim do
    begin
        inc(i);
        if pos(fnz(dbPrevisaoCod1.asinteger,dbPrevisaoCod2.asinteger,dbPrevisaoCod3.asinteger),outline2.items[i].text)<>0 then
        begin
            fim:=true;
            outline2.selecteditem:=i;
        end;
    end;
end;

procedure TfrmPrevPagRec.dbPrevisaoAfterOpen(DataSet: TDataSet);
begin
    dbPrevisaoafterscroll(dataset);
end;

procedure TfrmPrevPagRec.cmdFichaPClick(Sender: TObject);
begin
    grdPrev.SendToBack;
end;

procedure TfrmPrevPagRec.cmdListaPClick(Sender: TObject);
begin
    grdPrev.BringToFront;
end;

procedure TfrmPrevPagRec.dbPrevisaoBeforePost(DataSet: TDataSet);
begin
    if dbPrevisaoDia.value=0 then
    begin
        ShowMessage('Dia de pagamento inválido');
        abort;
    end;
    if dbPrevisaoHistorico.value='' then
    begin
        ShowMessage('Histórico inválido');
        abort;
    end;
    if dbPrevisaoDataIni.isnull then
    begin
        ShowMessage('Data Inicial inválida');
        abort;
    end;
    if dbPrevisaoDia.value<>DayoftheMonth(dbPrevisaoDataIni.value) then
    begin
        ShowMessage('Dia do pagamento diferente do dia da Data Inicial');
        abort;
    end;
    if dbPrevisaoValor.value=0 then
    begin
        ShowMessage('Valor inválido');
        abort;
    end;
    if dbPrevisaoCod3.value=0 then
    begin
        ShowMessage('Classifiação financeira inválida');
        abort;
    end;

    if (dbPrevisaoCod1.value=2) and (dbPrevisaoCod2.value=40) and
       ((dbPrevisaoCod3.value=1) or (dbPrevisaoCod3.value=3) or
       (dbPrevisaoCod3.value=4) or (dbPrevisaoCod3.value=15)) then
    begin
        ShowMessage('Pagamento CLT não dever ser gerado na Previsão');
        abort;
      end;
      if (dbPrevisaoCod1.value=2) and ((dbPrevisaoCod2.value=50) or (dbPrevisaoCod2.value=60)) and
         (dbPrevisaoCod3.value=1) then
      begin
        ShowMessage('Pagamento de Medico/Enfermeiro não deve ser gerado na previsão');
        abort;
      end;
    dbPrevisaoUsuario.value:=iUsuario;
end;

procedure TfrmPrevPagRec.DBEdit7Exit(Sender: TObject);
var d,m,a:word;
begin
    if dbPrevisao.State in [dsEdit,dsInsert] then
    begin
        if dbPrevisaoTipo.value='D' then
        begin
            DecodeDate(date,a,m,d);
            if dbPrevisaoDia.value<d then
            begin
                m:=m+1;
                if m=13 then
                begin
                    a:=a+1;
                    m:=1;
                end;
            end;
            dbPrevisaoDataIni.value:=EncodeDate(a,m,dbPrevisaoDia.value);
        end
        else
            dbPrevisaoDataIni.value:=date;            
    end;
end;

procedure TfrmPrevPagRec.DBEdit1Exit(Sender: TObject);
var d,m,a:word;
var i:integer;
begin
    if dbPrevisao.State in [dsInsert,dsEdit] then
    begin
        if dbPrevisaoRepetir.value=0 then
        begin
            dbPrevisaoDataFim.clear;
            cmpDataFim.Visible:=false;
        end
        else
        begin
            cmpDataFim.Visible:=true;
            if dbPrevisaoTipo.value='D' then
            begin
                DecodeDate(dbPrevisaoDAtaIni.value,a,m,d);
                for i:=1 to dbPrevisaoRepetir.value do
                begin
                    m:=m+1;
                    if m=13 then
                    begin
                        a:=a+1;
                        m:=1;
                    end;
                end;
                case d of
                29..30: if m=2 then d:=28;
                31: begin
                    if m=2 then d:=28;
                    if (m=4) or (m=6) or (m=9) or
                       (m=11) then d:=30
                    end;
                end;
                dbPrevisaoDataFim.value:=EncodeDAte(a,m,d);
            end
            else
            begin
                dbPrevisaoDAtaFim.value:=dbPrevisaoDataIni.value;
                for i:=1 to dbPrevisaoRepetir.value do
                    dbPrevisaoDataFim.value:=dbPrevisaoDataFim.value+
                                             dbPrevisaoDia.Value;
            end;
        end;
    end;
end;

procedure TfrmPrevPagRec.dsPrevisaoDataChange(Sender: TObject;
  Field: TField);
begin
    if dbPrevisaoRepetir.value=0 then
       cmpDataFim.Visible:=false
    else
       cmpDataFim.Visible:=true;
    if dbPrevisaoAtivo.value=true then
        lblStatus.color:=$00408000
    else
        lblStatus.color:=clRed;
end;

procedure TfrmPrevPagRec.cmdRepetirClick(Sender: TObject);
begin
    if frmRepetirPrev=nil then
        Application.CreateForm(TfrmRepetirPrev, frmRepetirPrev);
    frmRepetirPrev.ShowModal;
end;

procedure TfrmPrevPagRec.tabPrevChange(Sender: TObject);
begin
    case tabPrev.TabIndex of
    0: begin
       dbPrevisao.IndexFieldNames:='Filial;Previsao';
       cmbCliente1.Visible:=false;
       cmbBusca1.Visible:=true;
       end;
    1: begin
       dbPrevisao.IndexFieldNames:='Filial;Cliente';
       cmbCliente1.Visible:=true;
       cmbBusca1.Visible:=false;
       end;
    end;
end;

procedure TfrmPrevPagRec.cmbBusca1Change(Sender: TObject);
begin
    dbPrevisao.Locate('Filial;Previsao',VarArrayof([cmbFilial.KeyValue,StrToInt(cmbBusca1.text)]),[]);
end;

procedure TfrmPrevPagRec.cmbCliente1CloseUp(Sender: TObject);
begin
    dbPrevisao.Locate('Filial;Cliente',VarArrayof([cmbFilial.KeyValue,cmbCliente1.KeyValue]),[]);
end;

procedure TfrmPrevPagRec.dbClienteDebFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbClienteDebStatusCli.value=true;
end;

procedure TfrmPrevPagRec.BitBtn8Click(Sender: TObject);
begin
    dbPagar.Prior;
end;

procedure TfrmPrevPagRec.BitBtn9Click(Sender: TObject);
begin
    dbPagar.Next;
end;

procedure TfrmPrevPagRec.BitBtn1Click(Sender: TObject);
begin
    dbPrevisao.Prior;
end;

procedure TfrmPrevPagRec.BitBtn2Click(Sender: TObject);
begin
    dbPrevisao.Next;
end;

procedure TfrmPrevPagRec.BitBtn6Click(Sender: TObject);
begin
    with dmRelatorio do
    begin
        relPrevisao.Close;
        relPrevisao.SQL.Clear;
        relPrevisao.SQL.Text:='select * from Previsao, Clientes '+
                              'where Previsao.Cliente=Clientes.Clifor and '+
                              '      Previsao.Ativo=1 and '+
                              '      Previsao.Filial=:iFil '+
                              'order by Cod1,Nome,Dia ';
       relPrevisao.ParamByName('iFil').asinteger:=cmbFilial.KeyValue;
       relPrevisao.Open;
    end;
    frmMenu.rvFin.SelectReport('relPrevisao',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmPrevPagRec.cmdImpClick(Sender: TObject);
begin
    if frmRelLancamento=nil then
       Application.CreateForm(TfrmRelLancamento, frmRelLancamento);
    frmRelLancamento.ShowModal;
end;

procedure TfrmPrevPagRec.Label9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crHandPoint;
end;

procedure TfrmPrevPagRec.pnlPrevMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPrevPagRec.pagCliente1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPrevPagRec.Panel1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPrevPagRec.pagClienteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   Screen.Cursor := crDefault;
end;

procedure TfrmPrevPagRec.dbPagPrevFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPrevisaoPrevisao.value>0;
end;

procedure TfrmPrevPagRec.dbPagarCalcFields(DataSet: TDataSet);
begin
    if dbPagarStatus.value='P' then
        dbPagarStatusTexto.value:='PAGO';
    if dbPagarStatus.value='A' then
        dbPagarStatusTexto.value:='EM ABERTO';

    if dbPagarTipoAud.value='M' then
        dbPagarAuditorNome.value:=dbPagarAudNome.value;
    if dbPagarTipoAud.value='E' then
        dbPagarAuditorNome.value:=dbPagarEnfNome.value;

end;

procedure TfrmPrevPagRec.dsPagarDataChange(Sender: TObject; Field: TField);
begin
    if dbPagarStatus.value='P' then
        txtPago.Visible:=true
    else
        txtPago.Visible:=false;

    if dbPagarContabilizado.value=false then
    begin
        ChkContabilizado.Color:=clRed;
        ChkContabilizado.Font.Color:=clWhite;
    end
    else
    begin
        ChkContabilizado.Color:=clBtnFace;
        ChkContabilizado.Font.Color:=clWindowText;
    end;
end;

procedure TfrmPrevPagRec.grdPrevisao1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbPagarStatus.Value='P' then
        grdPrevisao1.Canvas.Font.Color:=clBlue;

     grdPrevisao1.DefaultDrawDataCell(Rect,grdPrevisao1.Columns[DataCol].field,State);
end;

procedure TfrmPrevPagRec.dbPagarBeforeEdit(DataSet: TDataSet);
begin
    if dbPagarMovBanco.value>0 then
        if dbMovBanco.Locate('MovBanco',dbPagarMovBanco.value,[]) then
        begin
            ShowMessage('Lançamento pago. Cancele o movimento bancário para poder altera-lo');
            abort;
        end;
end;

procedure TfrmPrevPagRec.grdPrevisao1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

procedure TfrmPrevPagRec.grdPagPrevKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

procedure TfrmPrevPagRec.cmdImpTributoClick(Sender: TObject);
begin
    if frmRelTributo=nil then
        Application.CreateForm(TfrmRelTributo, frmRelTributo);
    frmRelTributo.ShowModal;
end;

procedure TfrmPrevPagRec.cmdImpPCClick(Sender: TObject);
begin
    if frmRelLancamentoPC=nil then
       Application.CreateForm(TfrmRelLancamentoPC, frmRelLancamentoPC);
    frmRelLancamentoPC.ShowModal;
end;

procedure TfrmPrevPagRec.dbPagPrevCalcFields(DataSet: TDataSet);
begin
    if dbPagPrevStatus.value='P' then
        dbPagPrevStatusTexto.value:='PAGO';
    if dbPagPrevStatus.value='A' then
        dbPagPrevStatusTexto.value:='EM ABERTO';
end;

procedure TfrmPrevPagRec.grdPagPrevDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbPagPrevStatus.Value='P' then
        grdPagPrev.Canvas.Font.Color:=clBlue;

     grdPagPrev.DefaultDrawDataCell(Rect,grdPagPrev.Columns[DataCol].field,State);
end;

procedure TfrmPrevPagRec.grdPagPrevDblClick(Sender: TObject);
begin
    tabLan.TabIndex:=0;
    cmbData.Visible:=false;
    cmbCli.Visible:=false;
    cmbBusca.Visible:=true;
    dbPagar.indexfieldnames:='Filial;Lancamento';
    dbPagar.Locate('Filial;Lancamento',VarArrayof([dbPagPrevFilial.value,dbPagPrevLancamento.value]),[]);
end;

procedure TfrmPrevPagRec.pagPrevisaoChange(Sender: TObject);
begin
    dbPagPrev.Refresh;
end;

procedure TfrmPrevPagRec.cmdImpPCCliClick(Sender: TObject);
begin
    if frmRelLancamentoPCCli=nil then
       Application.CreateForm(TfrmRelLancamentoPCCli, frmRelLancamentoPCCli);
    frmRelLancamentoPCCli.ShowModal;
end;

procedure TfrmPrevPagRec.cmdImpSocioClick(Sender: TObject);
begin
    if frmRelLancamentoSocio=nil then
       Application.CreateForm(TfrmRelLancamentoSocio, frmRelLancamentoSocio);
    frmRelLancamentoSocio.ShowMOdal;
end;

procedure TfrmPrevPagRec.cmdImpFolhaMEClick(Sender: TObject);
begin
    if frmRelFolhaTotalCli=nil then
        Application.CreateForm(TfrmRelFolhaTotalCli, frmRelFolhaTotalCli);
    frmRelFolhaTotalCli.ShowModal;
end;

procedure TfrmPrevPagRec.dbPagarTipoPagGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbPagarTipoPag.value='F' then
       text:='Fornecedores';
    if dbPagarTipoPag.value='C' then
       text:='CLT';
    if dbPagarTipoPag.value='P' then
        text:='Prestadores';
end;

procedure TfrmPrevPagRec.dbPagarTipoPagSetText(Sender: TField;
  const Text: String);
begin
    if text='Fornecedores' then
        dbPagarTipoPag.value:='F';
    if text='CLT' then
        dbPagarTipoPag.value:='C';
    if text='Prestadores' then
        dbPagarTipoPag.value:='P';
end;

procedure TfrmPrevPagRec.dbPagarTipoPagChange(Sender: TField);
begin
    pagFun.Visible:=(dbPagarTipoPag.value='C') or (dbPagarTipoPag.value='P');
    if dbPagarTipoPag.value='C' then pagFun.ActivePageIndex:=0;
    if dbPagarTipoPag.value='P' then pagFun.ActivePageIndex:=1;
end;

procedure TfrmPrevPagRec.grdPrevDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbPrevisaoAtivo.Value=false then
        grdPrev.Canvas.Font.Color:=clRed;

     grdPrev.DefaultDrawDataCell(Rect,grdPrev.Columns[DataCol].field,State);

end;

procedure TfrmPrevPagRec.dbPagarAfterEdit(DataSet: TDataSet);
begin
    if (dbPagarPago.value=true) or (dbPagarStatus.value='P') then
    begin
        ShowMessage('Lançamento pago, impossivel alterar');
        dbPagar.Cancel;
        abort;
    end;
end;

end.
