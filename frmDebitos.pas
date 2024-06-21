unit frmDebitos;

interface

uses
  BDE, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Outline, ComCtrls, Mask, DBCtrls, DBDateTi, Grids,
  DBGrids, ExtCtrls, Buttons, ToolWin, DB, DBTables;

type
  TfrmDebito = class(TForm)
    Panel4: TPanel;
    Label3: TLabel;
    cmbFilial: TDBLookupComboBox;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    cmdNovo: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    ToolButton1: TToolButton;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    ToolButton2: TToolButton;
    cmdImp: TBitBtn;
    CoolBar1: TCoolBar;
    tabCheque: TTabControl;
    Panel9: TPanel;
    grdPrevisao1: TDBGrid;
    pnlCheque: TPanel;
    dbPagar: TTable;
    dbPagarDataVencto: TDateField;
    dbPagarCliente: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    dbPagarHistorico: TStringField;
    dbPagarDoc: TStringField;
    dbPagarValor: TCurrencyField;
    dbPagarBancoID: TIntegerField;
    dbPagarDataPagto: TDateField;
    dbPagarValorPago: TCurrencyField;
    dbPagarPago: TBooleanField;
    dbPagarStatus: TStringField;
    dbPagarFilial: TIntegerField;
    dbPagarDataInclusao: TDateField;
    dbPagarUsuario: TStringField;
    dbPagarPrevisao: TIntegerField;
    dsPagar: TDataSource;
    dbFilial: TTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbCliente: TTable;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dsCliente: TDataSource;
    dbPagChq: TTable;
    dbPagChqFilial: TIntegerField;
    dbPagChqLancamento: TAutoIncField;
    dbPagChqCliente: TIntegerField;
    dbPagChqDataVencto: TDateField;
    dbPagChqCod1: TSmallintField;
    dbPagChqCod2: TSmallintField;
    dbPagChqCod3: TSmallintField;
    dbPagChqHistorico: TStringField;
    dbPagChqDoc: TStringField;
    dbPagChqValor: TCurrencyField;
    dbPagChqBancoID: TIntegerField;
    dbPagChqDataPagto: TDateField;
    dbPagChqValorPago: TCurrencyField;
    dbPagChqPago: TBooleanField;
    dbPagChqStatus: TStringField;
    dbPagChqPrevisao: TIntegerField;
    dbPagChqDataInclusao: TDateField;
    dbPagChqUsuario: TStringField;
    dbMovBanco: TTable;
    dbBanco: TTable;
    dbMovBancoDataEntrada: TDateField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoDataMovimento: TDateField;
    dbMovBancoDataInclusao: TDateField;
    dbMovBancoUsuario: TStringField;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoAgencia: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoDigAgencia: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dbBancoEndereco: TMemoField;
    dbBancoGerente: TStringField;
    dbBancoFone: TStringField;
    dbBancoFax: TStringField;
    dbBancoSite: TStringField;
    dbBancoFilial: TSmallintField;
    dbBancoCod1: TSmallintField;
    dbBancoCod2: TSmallintField;
    dbBancoCod3: TSmallintField;
    dbBancoUltimoCheque: TIntegerField;
    dbBancoDataFechamento: TDateTimeField;
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
    dbBancoDataInclusao: TDateField;
    dbBancoUsuario: TStringField;
    dsMovBanco: TDataSource;
    Panel2: TPanel;
    Label8: TLabel;
    Panel5: TPanel;
    Label12: TLabel;
    cmpHistorico: TDBMemo;
    dsBanco: TDataSource;
    Panel3: TPanel;
    Label10: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText4: TDBText;
    Label13: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label11: TLabel;
    cmpBanco: TDBLookupComboBox;
    cmpDoc: TDBEdit;
    cmpFavorecido: TDBEdit;
    cmpValor: TDBEdit;
    Panel10: TPanel;
    Label6: TLabel;
    DBText46: TDBText;
    cmpVencto: TDBDateTimePicker;
    grdPagar: TDBGrid;
    dbPagarLancamento: TAutoIncField;
    Panel6: TPanel;
    Label14: TLabel;
    DBText2: TDBText;
    pnlFicha: TPanel;
    grdCheque: TDBGrid;
    pnlLista: TPanel;
    Panel1: TPanel;
    chkEmitido: TRadioButton;
    chkCancelado: TRadioButton;
    chkTodos: TRadioButton;
    dbMovBancoBanco: TSmallintField;
    dbMovBancoAgencia: TStringField;
    dbMovBancoConta: TStringField;
    dbMovBancoTipoTexto: TStringField;
    Panel7: TPanel;
    DBMemo2: TDBMemo;
    Splitter2: TSplitter;
    Label15: TLabel;
    dbPagarPagoTexto: TStringField;
    dbPagarClienteNome: TStringField;
    dbPagarSelecionado: TBooleanField;
    dbPagarSelecionadoTexto: TStringField;
    qryCheque: TQuery;
    dbMovBancoHistorico: TMemoField;
    qryChequeClienteNome: TStringField;
    cmdAltera: TBitBtn;
    dbPagChqSelecionado: TBooleanField;
    Splitter1: TSplitter;
    pnlPagar: TPanel;
    Panel8: TPanel;
    Label16: TLabel;
    Outline1: TOutline;
    Panel11: TPanel;
    Panel12: TPanel;
    Label18: TLabel;
    cmpHistorico2: TDBEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    cmbCliente: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    dbPagarCheque: TStringField;
    dbPagChqCheque: TStringField;
    BitBtn1: TBitBtn;
    dbPlanoC: TTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dsPlanoC: TDataSource;
    lblCancelado: TLabel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    dbMovBancoMovBanco: TAutoIncField;
    dbPagarMovBanco: TIntegerField;
    dbPagarClienteDeb: TIntegerField;
    dbPagarDataEmissao: TDateField;
    dbPagarPrazo: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbPagChqClienteDeb: TIntegerField;
    dbPagChqDataEmissao: TDateField;
    dbPagChqPrazo: TIntegerField;
    dbPagChqMovBanco: TIntegerField;
    dbPagChqNF: TIntegerField;
    dbPagChqPorcentagem: TFloatField;
    qryChequeFilial: TIntegerField;
    qryChequeLancamento: TIntegerField;
    qryChequeCliente: TIntegerField;
    qryChequeClienteDeb: TIntegerField;
    qryChequeDataEmissao: TDateField;
    qryChequeDataVencto: TDateField;
    qryChequePrazo: TIntegerField;
    qryChequeCod1: TSmallintField;
    qryChequeCod2: TSmallintField;
    qryChequeCod3: TSmallintField;
    qryChequeHistorico: TStringField;
    qryChequeDoc: TStringField;
    qryChequeValor: TCurrencyField;
    qryChequeBancoID: TIntegerField;
    qryChequeCheque: TStringField;
    qryChequeDataPagto: TDateField;
    qryChequeValorPago: TCurrencyField;
    qryChequePago: TBooleanField;
    qryChequeSelecionado: TBooleanField;
    qryChequeStatus: TStringField;
    qryChequePrevisao: TIntegerField;
    qryChequeMovBanco: TIntegerField;
    qryChequeNF: TIntegerField;
    qryChequePorcentagem: TFloatField;
    qryChequeDataInclusao: TDateField;
    qryChequeUsuario: TStringField;
    cmpHistorico1: TDBMemo;
    dsPagChq: TDataSource;
    dbMovBanco1: TTable;
    dbMovBanco1MovBanco: TAutoIncField;
    dbMovBanco1DataEntrada: TDateField;
    dbMovBanco1BancoID: TIntegerField;
    dbMovBanco1Tipo: TStringField;
    dbMovBanco1Doc: TStringField;
    dbMovBanco1Valor: TCurrencyField;
    dbMovBanco1Favorecido: TStringField;
    dbMovBanco1Historico: TMemoField;
    dbMovBanco1Status: TStringField;
    dbMovBanco1Filial: TIntegerField;
    dbMovBanco1DataMovimento: TDateField;
    dbMovBanco1DataInclusao: TDateField;
    dbMovBanco1Usuario: TStringField;
    dsMovBanco1: TDataSource;
    cmbData: TDateTimePicker;
    BitBtn2: TBitBtn;
    dbFundos: TTable;
    dbFundosBancoID: TIntegerField;
    dbFundosFundo: TAutoIncField;
    dbFundosNome: TStringField;
    dbFundosDataFechamento: TDateTimeField;
    dbFundosSaldoFechamento: TCurrencyField;
    dbFundosUsuarioFechamento: TStringField;
    dbFundosSaldoAtual: TCurrencyField;
    dbFundosStatus: TStringField;
    dbFundosDataInclusao: TDateField;
    dbFundosUsuario: TStringField;
    dsFundos: TDataSource;
    dbMovBancoFundo: TIntegerField;
    Label17: TLabel;
    DBText7: TDBText;
    dbPagarNovo: TTable;
    dsPagarNovo: TDataSource;
    dbPagarNovoFilial: TIntegerField;
    dbPagarNovoLancamento: TAutoIncField;
    dbPagarNovoCliente: TIntegerField;
    dbPagarNovoClienteDeb: TIntegerField;
    dbPagarNovoDataEmissao: TDateField;
    dbPagarNovoDataVencto: TDateField;
    dbPagarNovoPrazo: TIntegerField;
    dbPagarNovoCod1: TSmallintField;
    dbPagarNovoCod2: TSmallintField;
    dbPagarNovoCod3: TSmallintField;
    dbPagarNovoHistorico: TStringField;
    dbPagarNovoDoc: TStringField;
    dbPagarNovoValor: TCurrencyField;
    dbPagarNovoBancoID: TIntegerField;
    dbPagarNovoCheque: TStringField;
    dbPagarNovoDataPagto: TDateField;
    dbPagarNovoValorPago: TCurrencyField;
    dbPagarNovoPago: TBooleanField;
    dbPagarNovoSelecionado: TBooleanField;
    dbPagarNovoStatus: TStringField;
    dbPagarNovoPrevisao: TIntegerField;
    dbPagarNovoMovBanco: TIntegerField;
    dbPagarNovoNF: TIntegerField;
    dbPagarNovoPorcentagem: TFloatField;
    dbPagarNovoDataInclusao: TDateField;
    dbPagarNovoUsuario: TStringField;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    DBLookupComboBox3: TDBLookupComboBox;
    TabSheet4: TTabSheet;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    dbMovBancoCruzado: TBooleanField;
    cmbNome: TComboBox;
    Label19: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdPagarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdPagarDblClick(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure dbMovBancoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tabChequeChange(Sender: TObject);
    procedure chkEmitidoClick(Sender: TObject);
    procedure chkCanceladoClick(Sender: TObject);
    procedure chkTodosClick(Sender: TObject);
    procedure grdChequeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbMovBancoCalcFields(DataSet: TDataSet);
    procedure dbPagarFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPagarCalcFields(DataSet: TDataSet);
    procedure dsMovBancoStateChange(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure dbMovBancoAfterInsert(DataSet: TDataSet);
    procedure cmdCancelaClick(Sender: TObject);
    procedure dbMovBancoBeforePost(DataSet: TDataSet);
    procedure dbMovBancoAfterPost(DataSet: TDataSet);
    procedure dbMovBancoAfterCancel(DataSet: TDataSet);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dbPagChqFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Outline1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure cmbFilialCloseUp(Sender: TObject);
    procedure dsMovBancoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbPagarAfterPost(DataSet: TDataSet);
    procedure cmdMoveClick(Sender: TObject);
    procedure cmbDataChange(Sender: TObject);
    procedure cmbNomeChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbPlanoCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPagarNovoAfterPost(DataSet: TDataSet);
    procedure dbPagarNovoBeforePost(DataSet: TDataSet);
    procedure cmpBancoCloseUp(Sender: TObject);
    procedure dbMovBancoBeforeEdit(DataSet: TDataSet);
    procedure grdChequeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure MontaTree;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDebito: TfrmDebito;

implementation

uses frmPrincipal, frmRelCheques, frmRelListaCheques;

{$R *.dfm}

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


procedure TfrmDebito.MontaTree;
var g,n,i,j,k:Integer;
    a:string;
    gt:Tbookmark;
begin
    dbPlanoC.refresh;
    gt:=dbPlanoC.getbookmark;
    outline1.lines.clear;
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
    end;
end;

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;


procedure TfrmDebito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbPagar.close;
    dbMovBanco.close;
    dbMovBanco1.Close;
    dbFilial.close;
    dbCliente.Close;
    dbBAnco.Close;
    dbPagChq.Close;
    dbPlanoC.Close;
    dbFundos.Close;
    dbPagarNovo.Close;
end;

procedure TfrmDebito.FormShow(Sender: TObject);
begin
try
    Screen.cursor:=crhourglass;
    dbFilial.open;
    dbMovBanco.open;
    dbMovBanco1.Open;
    dbPagar.open;
    dbCliente.Open;
    dbBanco.open;
    dbPagChq.Open;
    dbPlanoC.open;
    dbFundos.Open;
    dbPagarNovo.Open;
    MontaTree;

    cmbFilial.keyvalue:=dbFilialFilial.asstring;
    cmbData.Date:=date;
finally
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
    Screen.cursor:=crdefault;
end;

end;

procedure TfrmDebito.grdPagarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdPagar.Columns[4].Color:=$00D9D9FF;
     grdPagar.DefaultDrawDataCell(Rect,grdPagar.Columns[DataCol].field,State);
end;

procedure TfrmDebito.grdPagarDblClick(Sender: TObject);
begin
    dbPagar.Edit;
    if dbPagarSelecionado.value=true then
    begin
       dbPagarSelecionado.value:=false;
       dbPagarValorPago.value:=0;
    end
    else
    begin
       dbPagarSelecionado.value:=true;
       dbPagarValorPago.value:=dbPagarValor.Value;
    end;
    dbPagar.Post;

end;

procedure TfrmDebito.cmdFichaClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmDebito.cmdListaClick(Sender: TObject);
begin
    pnlLista.BringToFront;
end;

procedure TfrmDebito.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icheque:boolean;
begin
    icheque:=Pos(dbMovBancoTipo.value='PG'>0);

    if chkEmitido.Checked=true then
        accept:=(dbMovBancoStatus.value='A') and icheque;
    if chkCancelado.Checked=true then
        accept:=(dbMovBancoStatus.value='C') and icheque;
    if chkTodos.Checked=true then
        accept:=icheque;
end;

procedure TfrmDebito.tabChequeChange(Sender: TObject);
begin
    case TabCheque.tabindex of
    0:begin
      cmbNome.Visible:=false;
      cmbData.Visible:=true;
      dbMovBanco.IndexFieldNames:='DataEntrada';
      end;
    1:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      dbMovBanco.IndexFieldNames:='Doc';
      end;
    2:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      dbMovBanco.IndexFieldNames:='Favorecido';
      end;
    end;
end;

procedure TfrmDebito.chkEmitidoClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmDebito.chkCanceladoClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmDebito.chkTodosClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmDebito.grdChequeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMovBancoStatus.Value='C' then
        grdCheque.Canvas.font.Color:=clRed;

     grdCheque.DefaultDrawDataCell(Rect,grdCheque.Columns[DataCol].field,State);

end;

procedure TfrmDebito.dbMovBancoCalcFields(DataSet: TDataSet);
begin
    if dbMovBancotipo.value='C' then
        dbMovBancoTipoTexto.value:='CR';
    if (dbMovBancotipo.value='D') or
       (dbMovBancotipo.value='X') then
        dbMovBancoTipoTexto.value:='DB';
end;

procedure TfrmDebito.dbPagarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPagarStatus.value='A') and
            (dbPagarMovBanco.value=0) and
            (dbPagarCod1.value>1) and
            (dbPagarFilial.value=dbFilialFilial.value);
end;

procedure TfrmDebito.dbPagarCalcFields(DataSet: TDataSet);
begin
    if dbPagarSelecionado.value=true then
       dbPagarSelecionadoTexto.value:='OK'
    else
       dbPagarSelecionadoTexto.value:='';
end;

procedure TfrmDebito.dsMovBancoStateChange(Sender: TObject);
begin
     cmdNovo.Default:=dbMovBanco.State=dsBrowse;
     cmdGrava.Default:=dbMovBanco.State in [dsEdit,dsInsert];

     cmdNovo.Enabled:=dbMovBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbMovBanco.Active=true) and
                        (dbMovBanco.RecordCount<>0);
     cmdGrava.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
     cmdCancela.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
     cmdLista.Enabled:=dbMovBanco.State=dsBrowse;
     cmdFicha.Enabled:=dbMovBanco.State=dsBrowse;
end;

procedure TfrmDebito.cmdNovoClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbMovBanco.Insert;
    cmpBanco.SetFocus;
end;

procedure TfrmDebito.cmdGravaClick(Sender: TObject);
var istatus:integer;
begin
    if dbMovBanco.State=dsInsert then
        istatus:=1
    else istatus:=2;

    if iStatus=1 then
    begin
        if dbMovBAncoDataEntrada.value<=dbBancoDataFechamento.value then
        begin
            Showmessage('Impossível efetuar lançamento nesta data');
            abort;
        end;
        if dbMovBancoValor.value<=0 then
        begin
            Showmessage('Valor invalido');
            abort;
        end;
        if dbMovBancoBancoId.value=0 then
        begin
            ShowMessage('Conta Corrente inválida');
            abort;
        end;
        if dbMovBanco1.FindKey([dbMovBancoBancoID.value,dbMovBancoDoc.value]) then
        begin
            ShowMessage('Documento já cadastrado');
            abort;
        end;

        if dbMovBancoValor.value>dbBancoSaldoAtual.value then
            Showmessage('Atenção! Saldo insuficiente');

        if (dbBancoSaldoAtual.value-dbMovBAncoValor.value<0) and (dbBancoSaldoAtual.value>=0) then
            Showmessage('Atenção! O saldo desta conta passará a ser negativo');

        dbBanco.Edit;
        dbBancoSaldoAtual.value:=dbBancoSaldoAtual.value-dbMovBancoValor.value;
        if copy(dbMovBancodoc.value,1,3)=dbBancoSigla.asstring then
            if StrToInt(copy(dbMovBancoDoc.value,5,12))>=dbBancoUltimoCheque.value then
               dbBancoUltimocheque.value:=StrToInt(copy(dbMovBancoDoc.value,5,12))+1;
        dbBanco.post;

        dbFundos.Edit;
        dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value-dbMovBancoValor.value;
        dbFundos.post;
    end;

    dbMovBanco.Post;

    if iStatus=1 then
    begin
        if (qryCheque.Active=true) and
           (qryCheque.RecordCount>0) then
        begin
            dbPagar.indexfieldnames:='Filial;Lancamento';
            qryCheque.First;
            while not qryCheque.eof do
            begin
                dbPagar.FindKey([qryChequeFilial.value,
                                 qryChequeLancamento.value]);
                dbPagar.edit;
			    dbPagarfilial.value:=dbBancofilial.value;
			    dbPagarDataPagto.asdatetime:=dbMovBancoDataEntrada.asdatetime;
                dbPagarCheque.value:=dbMovBancoDoc.value;
			    dbPagarMovBanco.value:=dbMovBancoMovBanco.value;
                dbPagarSelecionado.value:=false;
                dbPagarStatus.value:='P';
                dbPagarBancoId.value:=dbMovBancoBAncoId.value;
			    dbPagar.post;
                qrycheque.Next;
            end;
            dbPagar.indexfieldnames:='Filial;DataVencto';
            dbPagar.Refresh;
        end
        else
        begin
            ShowMessage('Pagamento não previsto. Classifique o lançamento');
            dbPagarNovo.insert;
            dbPagarNovobancoID.asinteger:=dbMovBancobancoID.asinteger;
            dbPagarNovoDoc.asstring:=dbMovBancoDoc.asstring;
            dbPagarNovoCheque.value:=dbMovBancoDoc.asstring;
            dbPagarNovoDataVencto.asstring:=dbMovBancoDataEntrada.asstring;
            dbPagarNovoValor.asfloat:=dbMovBancoValor.value;
            dbPagarNovoValorPago.asfloat:=dbMovBancoValor.value;
            dbPagarNovoDataPagto.asdatetime:=dbMovBancoDataEntrada.asdatetime;
            dbPagarNovoPago.asboolean:=True;
            dbPagarNovoStatus.asstring:='A';
            dbPagarNovofilial.asinteger:=dbBancoFilial.value;
            dbPagarNovoSelecionado.value:=false;
            dbPagarNovoMovBanco.value:=dbMovBancoMovBanco.value; //MovBanco movbanco/receber
            dbPagarNovoDataInclusao.value:=date;
            dbPagarNovoDataEmissao.value:=date;
            dbPagarNovoPrevisao.value:=0;
            dbPagarNovoUsuario.value:=iUsuario;
            pnlPagar.BringToFront;
        end;
    end;
end;

procedure TfrmDebito.dbMovBancoAfterInsert(DataSet: TDataSet);
begin
    cmpBanco.Enabled:=true;
    cmpDoc.Enabled:=true;
    cmpValor.Enabled:=true;
    cmpVencto.Enabled:=true;
    cmpHistorico.Readonly:=false;

    qryCheque.Close;
    qryCheque.sql.clear;
    qryCheque.sql.Text:='Select * from Lancamentos '+
                        'where Selecionado=true and '+
                        '      Filial=:iFil ';
    qryCheque.ParamByName('iFil').asinteger:=cmbFilial.KeyValue;
    qryCheque.Open;
    if qryCheque.RecordCount>0 then
    begin
        qryCheque.First;
        while not qryCheque.Eof do
        begin
            if qryCheque.RecordCount=1 then
                dbMovBancoFavorecido.value:=qryChequeClienteNome.value;
            dbMovBancoValor.value:=dbMovBancoValor.value+qrychequevalorpago.value;
            cmpHistorico.Lines.Add(trim(qryChequeClienteNome.value)+' - '+
                                   trim(qryChequeHistorico.value)+' - '+
                                   trim(qryChequeDoc.value)+' - '+
                                   trim(FloatToSTrF(qryChequevalorpago.value,ffCurrency,11,2)));
            qryCheque.Next;
        end;
    end;
    dbMovBancoDataEntrada.value:=date;
    dbMovBancoFundo.value:=0;
    dbMOvBancoDataInclusao.value:=date;
    dbMovBancoTipo.asstring:='X';
    dbMovBancoCruzado.value:=true;
    dbMovBancoFilial.value:=qryChequeFilial.value;
    cmpBanco.keyvalue:=0;
end;

procedure TfrmDebito.cmdCancelaClick(Sender: TObject);
begin
    dbMovBanco.Cancel;
end;

procedure TfrmDebito.dbMovBancoBeforePost(DataSet: TDataSet);
begin
    if dbPagar.State=dsInsert then
        dbMovBAncoDataInclusao.value:=date;
    dbMovBAncoUsuario.value:=iUsuario;
end;

procedure TfrmDebito.dbMovBancoAfterPost(DataSet: TDataSet);
begin
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
     DbiSaveChanges(dbMovBanco.Handle);
end;

procedure TfrmDebito.dbMovBancoAfterCancel(DataSet: TDataSet);
begin
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
end;

procedure TfrmDebito.cmdAlteraClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbMovBanco.Edit;
    cmpFavorecido.SetFocus;
end;

procedure TfrmDebito.cmdExcluiClick(Sender: TObject);
var i:Integer;
begin
   if dbMovBancoStatus.value='C' then
    begin
       Showmessage('Cheque ja cancelado');
       abort;
    end;
    if not dbMovBancoDataMovimento.isnull  then
    begin
       Showmessage('Cheque compensado no banco. Impossível cancelar');
       abort;
    end;
    i:=application.messagebox('Você tem certeza de que deseja cancelar este cheque?',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    dbPagChq.First;
    while not dbPagChq.eof do
    begin
        if dbPagChqValor.value<>0 then
        begin
            dbPagChq.edit;
            dbPagChqPago.asboolean:=false;
            dbPagChqMovBanco.clear;
            dbPagChqCheque.clear;
            dbPagChqValorPago.clear;
            dbPagChqBancoID.clear;
            dbPagChqDatapagto.clear;
            dbPagChqStatus.value:='A';
            dbPagChq.post;
            dbPagChq.next;
        end
        else dbPagChq.delete;
    end;
    dbMovBanco.edit;
    dbbanco.findkey([dbMovBancoBancoID.value]);
    dbbanco.edit;
    dbbancoSaldoAtual.value:=dbbancoSaldoAtual.value+dbMovBancoValor.value;
    dbbanco.post;
    dbFundos.findkey([dbMovBancoBancoID.value,dbMovBAncoFundo.value]);
    dbFundos.Edit;
    dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
    dbFundos.post;
    dbMovBancoStatus.asstring:='C';
    cmpHistorico.lines.add('x-x-x-x-x-x CANCELADO x-x-x-x-x-x');
    dbMovBanco.post;
    dbPagar.Refresh;
end;

procedure TfrmDebito.dbPagChqFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPagChqCod1.value>1);

end;

procedure TfrmDebito.Outline1Click(Sender: TObject);
var i,a,b,c:Integer;
    k:String;
    Saia:boolean;
begin
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
            if dbPagarNovo.state=dsbrowse then
               dbPagarNovo.edit;
           dbPagarNovoCod1.asinteger:=a;
           dbPagarNovoCod2.asinteger:=b;
           dbPagarNovoCod3.asinteger:=c;
        end
        else
            Showmessage('Escolha uma classificação de Nível 3');
    end;
end;

procedure TfrmDebito.BitBtn1Click(Sender: TObject);
begin
    if (dbPagarNovo.State in [dsEdit,dsInsert]) then
        dbPagarNovo.Post;
    dbPagar.Refresh;    
    pnlPagar.SendToBack;
end;

procedure TfrmDebito.cmdImpClick(Sender: TObject);
begin
    if frmRelCheque=nil then
       Application.CreateForm(TfrmRelCheque, frmRelCheque);
    frmRelCheque.chqIni.Text:=dbMovBancoDoc.value;
    frmRelCheque.chqFim.Text:=dbMovBancoDoc.value;
    frmRelCheque.ShowModal;
end;

procedure TfrmDebito.cmbFilialCloseUp(Sender: TObject);
begin
    dbPagar.Refresh;
end;

procedure TfrmDebito.dsMovBancoDataChange(Sender: TObject; Field: TField);
begin
    if dbMovBancoStatus.asstring='C' then
        lblCancelado.visible:=true
    else
        lblCancelado.visible:=false;    
end;

procedure TfrmDebito.BitBtn8Click(Sender: TObject);
begin
    dbMovBanco.Prior;
end;

procedure TfrmDebito.BitBtn9Click(Sender: TObject);
begin
    dbMovBanco.Next;
end;

procedure TfrmDebito.dbPagarAfterPost(DataSet: TDataSet);
begin
     DbiSaveChanges(dbPagar.Handle);
end;

procedure TfrmDebito.cmdMoveClick(Sender: TObject);
var i:Integer;
begin
end;

procedure TfrmDebito.cmbDataChange(Sender: TObject);
begin
    dbMovBAnco.FindNearest([cmbData.Date]);    
end;

procedure TfrmDebito.cmbNomeChange(Sender: TObject);
begin
    dbMovBanco.FindNearest([trim(cmbNome.Text)]);
end;

procedure TfrmDebito.BitBtn2Click(Sender: TObject);
begin
    if frmRelListaCheque=nil then
        Application.CreateForm(TfrmRelListaCheque, frmRelListaCheque);
    frmRelListaCheque.ShowModal;
end;

procedure TfrmDebito.dbPlanoCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPlanoCCod1.value>=2;
end;

procedure TfrmDebito.dbPagarNovoAfterPost(DataSet: TDataSet);
begin
     DbiSaveChanges(dbPagarNovo.Handle);
end;

procedure TfrmDebito.dbPagarNovoBeforePost(DataSet: TDataSet);
begin
    if dbPagarNovoCod1.asinteger=0 then
    begin
        Showmessage('Classifique o lançamento.');
        abort;
    end;
    if dbPagarNovoHistorico.value='' then
    begin
        Showmessage('Histórico inválido');
        abort;
    end;
end;

procedure TfrmDebito.cmpBancoCloseUp(Sender: TObject);
begin
    if dbMovBanco.State in [dsInsert] then
    begin
        dbMovBancoDoc.value:=dbBancoSigla.Value+'-'+ZeroEsq(dbBancoUltimoCheque.value,8);
        dbMovBancoBAncoId.value:=dbBancoBancoId.value;
    end;    
end;

procedure TfrmDebito.dbMovBancoBeforeEdit(DataSet: TDataSet);
begin
    if dbMovBancoStatus.value='C' then
    begin
       Showmessage('Cheque cancelado. Impossível alterar');
       abort;
    end;
    if not dbMovBancoDataMovimento.isnull  then
    begin
       Showmessage('Cheque compensado no banco. Impossível alterar');
       abort;
    end;
end;

procedure TfrmDebito.grdChequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;

end.
