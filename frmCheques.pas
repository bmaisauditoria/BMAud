unit frmCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Mask, DBCtrls, Grids,
  DBGrids, ExtCtrls, Buttons, ToolWin,  MemDS, ImgList, DB, MSAccess, DBAccess,
  DBDateTimePicker;

type
  TfrmCheque = class(TForm)
    Panel4: TPanel;
    Label3: TLabel;
    cmbFilial: TDBLookupComboBox;
    CoolBar1: TCoolBar;
    tabCheque: TTabControl;
    Panel9: TPanel;
    grdPrevisao1: TDBGrid;
    pnlCheque: TPanel;
    dbPagar: TMSTable;
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
    dbPagarPrevisao: TIntegerField;
    dsPagar: TDataSource;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbCliente: TMSTable;
    dbClienteCliFor: TAutoIncField;
    dbClienteNome: TStringField;
    dbClienteCGC: TStringField;
    dsCliente: TDataSource;
    dbPagChq: TMSTable;
    dbPagChqFilial: TIntegerField;
    dbPagChqLancamento: TAutoIncField;
    dbPagChqCliente: TIntegerField;
    dbPagChqCod1: TSmallintField;
    dbPagChqCod2: TSmallintField;
    dbPagChqCod3: TSmallintField;
    dbPagChqHistorico: TStringField;
    dbPagChqDoc: TStringField;
    dbPagChqValor: TCurrencyField;
    dbPagChqBancoID: TIntegerField;
    dbPagChqValorPago: TCurrencyField;
    dbPagChqPago: TBooleanField;
    dbPagChqStatus: TStringField;
    dbPagChqPrevisao: TIntegerField;
    dbPagChqUsuario: TStringField;
    dbMovBanco: TMSTable;
    dbBanco: TMSTable;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
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
    dbBancoSaldoFechamento: TCurrencyField;
    dbBancoUsuarioFechamento: TStringField;
    dbBancoSaldoAtual: TCurrencyField;
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
    label20: TLabel;
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
    qryCheque: TMSQuery;
    dbMovBancoHistorico: TMemoField;
    qryChequeClienteNome: TStringField;
    dbPagChqSelecionado: TBooleanField;
    Splitter1: TSplitter;
    dbPagarCheque: TStringField;
    dbPagChqCheque: TStringField;
    dbPlanoC: TMSTable;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dsPlanoC: TDataSource;
    lblCancelado: TLabel;
    dbMovBancoMovBanco: TAutoIncField;
    dbPagarMovBanco: TIntegerField;
    dbPagarClienteDeb: TIntegerField;
    dbPagarPrazo: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarPorcentagem: TFloatField;
    dbPagChqClienteDeb: TIntegerField;
    dbPagChqPrazo: TIntegerField;
    dbPagChqMovBanco: TIntegerField;
    dbPagChqNF: TIntegerField;
    dbPagChqPorcentagem: TFloatField;
    qryChequeFilial: TIntegerField;
    qryChequeLancamento: TIntegerField;
    qryChequeCliente: TIntegerField;
    qryChequeClienteDeb: TIntegerField;
    qryChequePrazo: TIntegerField;
    qryChequeCod1: TSmallintField;
    qryChequeCod2: TSmallintField;
    qryChequeCod3: TSmallintField;
    qryChequeHistorico: TStringField;
    qryChequeDoc: TStringField;
    qryChequeValor: TCurrencyField;
    qryChequeBancoID: TIntegerField;
    qryChequeCheque: TStringField;
    qryChequeValorPago: TCurrencyField;
    qryChequePago: TBooleanField;
    qryChequeSelecionado: TBooleanField;
    qryChequeStatus: TStringField;
    qryChequePrevisao: TIntegerField;
    qryChequeMovBanco: TIntegerField;
    qryChequeNF: TIntegerField;
    qryChequePorcentagem: TFloatField;
    qryChequeUsuario: TStringField;
    cmpHistorico1: TDBMemo;
    dsPagChq: TDataSource;
    dbMovBanco1: TMSTable;
    dbMovBanco1MovBanco: TAutoIncField;
    dbMovBanco1BancoID: TIntegerField;
    dbMovBanco1Tipo: TStringField;
    dbMovBanco1Doc: TStringField;
    dbMovBanco1Valor: TCurrencyField;
    dbMovBanco1Favorecido: TStringField;
    dbMovBanco1Historico: TMemoField;
    dbMovBanco1Status: TStringField;
    dbMovBanco1Filial: TIntegerField;
    dbMovBanco1Usuario: TStringField;
    dsMovBanco1: TDataSource;
    cmbData: TDateTimePicker;
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
    dbMovBancoFundo: TIntegerField;
    dbPagarNovo: TMSTable;
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
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    dbMovBancoCruzado: TBooleanField;
    chkCruzado: TDBCheckBox;
    cmbNome: TComboBox;
    Label19: TLabel;
    lblDoc: TDBText;
    dbMovBancoFilialNome: TStringField;
    dbPagarUsuarioI: TStringField;
    dbPagChqUsuarioI: TStringField;
    dbMovBanco1UsuarioI: TStringField;
    dbPagarNovoUsuarioI: TStringField;
    dbPagarNovoDataAlteracao: TDateField;
    dbMovBancoUsuarioI: TStringField;
    dbPagarContabilizado: TBooleanField;
    dbPagarTributo: TBooleanField;
    ListBox1: TListBox;
    dbMovBancoSelecionado: TBooleanField;
    dbBancoStatus: TStringField;
    cmbBanco: TDBLookupComboBox;
    dbMovBancoTipoPag: TStringField;
    Panel8: TPanel;
    Label4: TLabel;
    DBText7: TDBText;
    dbPagarTipoPag: TStringField;
    dbPagarNovoTipoPag: TStringField;
    dbMovBanco1TipoPag: TStringField;
    dbPagChqTipoPag: TStringField;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdNovo: TBitBtn;
    cmdNovoP: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdApaga: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdImp: TBitBtn;
    cmdImp2: TBitBtn;
    cmdImp3: TBitBtn;
    cmdImp4: TBitBtn;
    cmdImp5: TBitBtn;
    cmdImp6: TBitBtn;
    cmdImp7: TBitBtn;
    cmdImp8: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    dbPagarSelecionadoTexto: TStringField;
    Label16: TLabel;
    DBText8: TDBText;
    qryTotal: TMSQuery;
    qryTotalvalorpago: TCurrencyField;
    dsTotal: TDataSource;
    dbBancoAgencia: TStringField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovBancoDataAlteracao: TDateTimeField;
    dbPagarDataEmissao: TDateTimeField;
    dbPagarDataVencto: TDateTimeField;
    dbPagarDataPagto: TDateTimeField;
    dbPagarDataInclusao: TDateTimeField;
    dbPagarDataAlteracao: TDateTimeField;
    dbBancoDataFechamento: TDateTimeField;
    dbBancoDataInclusao: TDateTimeField;
    dbPagChqDataEmissao: TDateTimeField;
    dbPagChqDataVencto: TDateTimeField;
    dbPagChqDataPagto: TDateTimeField;
    dbPagChqDataInclusao: TDateTimeField;
    dbPagChqDataAlteracao: TDateTimeField;
    qryChequeDataEmissao: TDateTimeField;
    qryChequeDataVencto: TDateTimeField;
    qryChequeDataPagto: TDateTimeField;
    qryChequeDataInclusao: TDateTimeField;
    dbMovBanco1DataEntrada: TDateTimeField;
    dbMovBanco1DataMovimento: TDateTimeField;
    dbMovBanco1DataInclusao: TDateTimeField;
    dbMovBanco1DataAlteracao: TDateTimeField;
    dbFundosDataFechamento: TDateTimeField;
    dbFundosDataInclusao: TDateTimeField;
    BitBtn1: TBitBtn;
    dbMovBancoNumeroDoc: TStringField;
    DBEdit1: TDBEdit;
    Label17: TLabel;
    BitBtn2: TBitBtn;
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
    procedure dsMovBancoStateChange(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdGravaClick(Sender: TObject);
    procedure dbMovBancoAfterInsert(DataSet: TDataSet);
    procedure cmdCancelaClick(Sender: TObject);
    procedure dbMovBancoBeforePost(DataSet: TDataSet);
    procedure dbMovBancoAfterPost(DataSet: TDataSet);
    procedure dbMovBancoAfterCancel(DataSet: TDataSet);
    procedure cmdAlteraClick(Sender: TObject);
    procedure dbPagChqFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure cmbFilialCloseUp(Sender: TObject);
    procedure dsMovBancoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbPagarAfterPost(DataSet: TDataSet);
    procedure cmbDataChange(Sender: TObject);
    procedure cmbNomeChange(Sender: TObject);
    procedure cmdImp2Click(Sender: TObject);
    procedure dbPlanoCFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure dbPagarNovoBeforePost(DataSet: TDataSet);
    procedure cmpBancoCloseUp(Sender: TObject);
    procedure dbMovBancoBeforeEdit(DataSet: TDataSet);
    procedure grdChequeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdNovoPClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure cmdApagaClick(Sender: TObject);
    procedure cmdImp4Click(Sender: TObject);
    procedure cmdImp3Click(Sender: TObject);
    procedure cmdImp5Click(Sender: TObject);
    procedure dbMovBancoBeforeDelete(DataSet: TDataSet);
    procedure cmdImp8Click(Sender: TObject);
    procedure cmdImp6Click(Sender: TObject);
    procedure cmdImp7Click(Sender: TObject);
    procedure dbPagarBeforeEdit(DataSet: TDataSet);
    procedure cmbBancoCloseUp(Sender: TObject);
    procedure dbPagarAfterInsert(DataSet: TDataSet);
    procedure dbPagarNovoAfterInsert(DataSet: TDataSet);
    procedure dbPagarCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheque: TfrmCheque;
  istatus:integer; 
implementation

uses frmPrincipal, frmRelCheques, frmRelListaCheques, frmRelPagtosGPS,
  frmRelAutDebitos, frmClassificaFins, relChequesFaltante, dmRelatorios,
  frmRelChequesPre, frmRelChequesNC, frmRelChequesNCP, frmRelFavorecios;

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

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;


procedure TfrmCheque.FormClose(Sender: TObject; var Action: TCloseAction);
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
    qryCheque.Close;
    qryTotal.Close;
end;

procedure TfrmCheque.FormShow(Sender: TObject);
begin
try
    Screen.cursor:=crhourglass;
    dbFilial.open;
    dbMovBanco.open;
    dbMovBanco.IndexFieldNames:='DataEntrada desc;BancoID;Doc';
    dbMovBanco.First;
    
    dbMovBanco1.Open;
    dbPagar.open;
    dbCliente.Open;
    dbBanco.open;
    dbPagChq.Open;
    dbPlanoC.open;
    dbFundos.Open;
    dbPagarNovo.Open;
    qryTotal.Open;

    cmbFilial.keyvalue:=dbFilialFilial.asstring;
    cmbData.Date:=date;
finally
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
    Screen.cursor:=crdefault;
    tabCheque.TabIndex:=0;
end;

end;

procedure TfrmCheque.grdPagarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbPagarSelecionado.value=true then
        grdPagar.Canvas.Brush.Color:=$00FFD3A8;

     grdPagar.Columns[4].Color:=$00D9D9FF;
     grdPagar.DefaultDrawDataCell(Rect,grdPagar.Columns[DataCol].field,State);
end;

procedure TfrmCheque.grdPagarDblClick(Sender: TObject);
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
    qryTotal.close;
    qryTotal.Open;

end;

procedure TfrmCheque.cmdFichaClick(Sender: TObject);
begin
    pnlFicha.BringToFront;
end;

procedure TfrmCheque.cmdListaClick(Sender: TObject);
begin
    pnlLista.BringToFront;
end;

procedure TfrmCheque.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var icheque:boolean;
begin
    icheque:=((dbMovBancoTipo.value='X') or
             (dbMovBancoTipo.value='P'));

    if chkEmitido.Checked=true then
        accept:=(dbMovBancoTipoPag.value<>'C') and (dbMovBancoStatus.value='A') and icheque;
    if chkCancelado.Checked=true then
        accept:=(dbMovBancoTipoPag.value<>'C') and (dbMovBancoStatus.value='C') and icheque;
    if chkTodos.Checked=true then
        accept:=(dbMovBancoTipoPag.value<>'C') and icheque;
end;

procedure TfrmCheque.tabChequeChange(Sender: TObject);
begin
    case TabCheque.tabindex of
    0:begin
      cmbNome.Visible:=false;
      cmbData.Visible:=true;
      cmbBanco.Visible:=false;
      dbMovBanco.IndexFieldNames:='DataEntrada desc;BancoID;Doc';
      end;
    1:begin
      cmbNome.Visible:=false;
      cmbData.Visible:=false;
      cmbBanco.Visible:=true;
      dbMovBanco.IndexFieldNames:='BancoID;DataEntrada desc';
      end;
    2:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      cmbBanco.Visible:=false;
      dbMovBanco.IndexFieldNames:='Doc';
      end;
    3:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      cmbBanco.Visible:=false;
      dbMovBanco.IndexFieldNames:='Favorecido;DataEntrada;BancoID';
      end;
    4:begin
      cmbData.Visible:=false;
      cmbNome.Visible:=true;
      cmbBanco.Visible:=false;
      dbMovBanco.IndexFieldNames:='MovBanco';
      end;
    end;
end;

procedure TfrmCheque.chkEmitidoClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmCheque.chkCanceladoClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmCheque.chkTodosClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmCheque.grdChequeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbMovBancoStatus.Value='C' then
        grdCheque.Canvas.font.Color:=clRed;

     grdCheque.DefaultDrawDataCell(Rect,grdCheque.Columns[DataCol].field,State);

end;

procedure TfrmCheque.dbMovBancoCalcFields(DataSet: TDataSet);
begin
    if (dbMovBancotipo.value='C') or
       (dbMovBancotipo.value='R') or
       (dbMovBancotipo.value='S') then
        dbMovBancoTipoTexto.value:='CR';
    if (dbMovBancotipo.value='D') or
       (dbMovBancotipo.value='X') or
       (dbMovBancotipo.value='T') or
       (dbMovBancotipo.value='P') then
        dbMovBancoTipoTexto.value:='DB';
end;

procedure TfrmCheque.dbPagarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPagarStatus.value='A') and
            (dbPagarMovBanco.value=0) and
            (dbPagarCod1.value>1) and
            (dbPagarFilial.value=dbFilialFilial.value) and
            (dbPagarTipoPag.value='F');
end;

procedure TfrmCheque.dsMovBancoStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbMovBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdNovoP.Enabled:=dbMovBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbMovBanco.Active=true) and
                        (dbMovBanco.RecordCount<>0);
     cmdApaga.Enabled:=(dbMovBanco.Active=true) and
                        (dbMovBanco.RecordCount<>0);
     cmdGrava.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
     cmdCancela.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
     cmdLista.Enabled:=dbMovBanco.State=dsBrowse;
     cmdFicha.Enabled:=dbMovBanco.State=dsBrowse;
end;

procedure TfrmCheque.cmdNovoClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbMovBanco.Tag:=0;
    dbMovBanco.Insert;
    cmpBanco.SetFocus;
end;

procedure TfrmCheque.cmdNovoPClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbMovBanco.Tag:=1;
    dbMovBanco.Insert;
    cmpBanco.SetFocus;
end;

procedure TfrmCheque.cmdGravaClick(Sender: TObject);
var i:integer;
begin
    if dbBancoStatus.value='I' then
    begin
        ShowMessage('Conta inativa');
        abort;
    end;    
    if dbMovBanco.State=dsInsert then
        istatus:=1
    else istatus:=2;

    if iStatus=1 then
    begin
        if dbMovBancoDataEntrada.value<=dbBancoDataFechamento.value then
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
        if dbMovBancoTipo.value='X' then
        begin
            if dbMovBancoValor.value>=5000 then
            begin
                i:=application.messagebox('Atenção! Confirme a emissão de cheque igual ou maior que R$5.000,00',
                              'Confirmação',mb_YesNo);
                if i=idno then abort;
            end;
            if dbMovBanco1.Locate('MovBanco;Doc',VarArrayof([dbMovBancoBancoID.value,
                                                             dbMovBancoDoc.value]),[]) then
            begin
                ShowMessage('Documento já cadastrado');
                abort;
            end;
        end;
        if dbMovBancoValor.value>dbBancoSaldoAtual.value then
            Showmessage('Atenção! Saldo insuficiente');

        if (dbBancoSaldoAtual.value-dbMovBAncoValor.value<0) and (dbBancoSaldoAtual.value>=0) then
            Showmessage('Atenção! O saldo desta conta passará a ser negativo');

        dbBanco.Edit;
        dbBancoSaldoAtual.value:=dbBancoSaldoAtual.value-dbMovBancoValor.value;
        if dbMovBancoTipo.value='X' then
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
            qryCheque.First;
            while not qryCheque.eof do
            begin
                dbPagar.Locate('Filial;Lancamento',VarArrayof([qryChequeFilial.value,qryChequeLancamento.value]),[]);
                dbPagar.edit;
			    dbPagarfilial.value:=dbBancofilial.value;
                dbPagarContabilizado.value:=(dbBancoStatus.value<>'N');
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
            if frmClassificaFin=nil then
                application.createform(TfrmClassificaFin,frmClassificaFin);
            frmClassificaFin.vl:=dbMovBancoValor.value;
            frmClassificaFin.filial:=dbBancofilial.asinteger;
            frmClassificaFin.filial:=dbBancofilial.asinteger;
            frmClassificaFin.Contabilizado:=(dbBancoStatus.value<>'N');
            frmClassificaFin.tag:=0;
            frmClassificaFin.showmodal;
            if frmclassificaFin.tag=1 then
            begin
                dbPagar.insert;
                dbPagarcliente.value:=frmClassificaFin.cliente;
                dbPagarclientedeb.value:=frmClassificaFin.clientedeb;
                dbPagarContabilizado.value:=frmClassificaFin.contabilizado;
                dbPagarFilial.value:=dbMovBancoFilial.value;
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
                dbPagarCod1.asinteger:=frmClassificaFin.n1;
                dbPagarCod2.asinteger:=frmClassificaFin.n2;
                dbPagarCod3.asinteger:=frmClassificaFin.n3;
                dbPagar.Post;
            end;
        end;
    end;
end;

procedure TfrmCheque.dbMovBancoAfterInsert(DataSet: TDataSet);
begin
    cmpBanco.Enabled:=true;
    cmpDoc.Enabled:=true;
    cmpVencto.Enabled:=true;

    qryCheque.Close;
    qryCheque.sql.clear;
    qryCheque.sql.Text:='Select * from Lancamentos '+
                        'where Selecionado=1 and '+
                        '      TipoPag=:iTip and '+
                        '      Filial=:iFil  and '+
                        '      Movbanco=0 ';
    qryCheque.ParamByName('iFil').asinteger:=cmbFilial.KeyValue;
    qryCheque.ParamByName('iTip').AsString:='F';
    qryCheque.Open;

    if qryCheque.RecordCount=0 then
    begin
        ShowMessage('Selecione um lançamento para pagamento');
        dbMovBanco.Cancel;
        abort;
    end;

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
        dbMovBancoFilial.value:=qryChequeFilial.value;
    end;
    if qryCheque.RecordCount=0 then
    begin
        cmpValor.Enabled:=true;
        cmpHistorico.Readonly:=false;
        dbMovBancoFilial.value:=dbBancoFilial.value;
    end;
    if dbMovBanco.tag=0 then
    begin
        lblDoc.Visible:=false;
        cmpDoc.Visible:=true;
        chkCruzado.Visible:=true;
        dbMovBancoTipo.asstring:='X';
    end
    else
    begin
        lblDoc.Visible:=true;
        cmpDoc.Visible:=false;
        chkCruzado.Visible:=false;
        dbMovBancoTipo.asstring:='P';
    end;
    dbMovBancoDataEntrada.value:=date;
    dbMovBancoFundo.value:=0;
    dbMOvBancoDataInclusao.value:=date;
    dbMovBancoCruzado.value:=false;
    dbMovBancoSelecionado.value:=false;
    cmpBanco.keyvalue:=0;
    dbMovBancoTipoPag.value:='F';
end;

procedure TfrmCheque.cmdCancelaClick(Sender: TObject);
begin
    dbMovBanco.Cancel;
end;

procedure TfrmCheque.dbMovBancoBeforePost(DataSet: TDataSet);
begin
    if dbMovBanco.State=dsInsert then
    begin
        dbMovBAncoDataInclusao.value:=date;
        dbMovBancoUsuarioI.value:=iUsuario;
    end
    else
    begin
        dbMovBAncoDataAlteracao.value:=date;
        dbMovBAncoUsuario.value:=iUsuario;
    end;
end;

procedure TfrmCheque.dbMovBancoAfterPost(DataSet: TDataSet);
begin
    if istatus=1 then
        if dbMovBancoTipo.value='X' then
            frmMenu.Log('Cheques','MovBanco-[0]-Doc',dbMovBancoMovBanco.value,0,dbMovBancoDoc.value,'I')
        else
            frmMenu.Log('Cheques','MovBanco-BancoId-Favorecido',dbMovBancoMovBanco.value,
                                                                dbMovBancoBancoId.value,
                                                                dbMovBancoFavorecido.value,'I');
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
    dbPagar.Refresh;
end;

procedure TfrmCheque.dbMovBancoAfterCancel(DataSet: TDataSet);
begin
    cmpBanco.Enabled:=false;
    cmpDoc.Enabled:=false;
    cmpValor.Enabled:=false;
    cmpVencto.Enabled:=false;
    cmpHistorico.Readonly:=true;
end;

procedure TfrmCheque.cmdAlteraClick(Sender: TObject);
begin
    cmdFichaClick(sender);
    cmdFicha.Down:=true;
    cmdLista.Down:=false;
    dbMovBanco.Edit;
    cmpFavorecido.SetFocus;
end;

procedure TfrmCheque.dbPagChqFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbPagChqCod1.value>1) and (dbPagChqTipoPag.value='F');
end;

procedure TfrmCheque.BitBtn1Click(Sender: TObject);
begin
with dmRelatorio do
begin
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
                            'order by PagtoPre.Filial,Ano,Mes, Nome,PagtoPre.PagtoPre,MovBanco';

    qryProdEmpPag.Open;

    if qryProdEmpPag.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.rvFin.SetParam('Titulo','Pagamento Prestadores em Aberto');
    frmMenu.rvFin.SelectReport('relProdEmpAberto',true);
    frmMenu.rvFin.Execute;
end;
end;

procedure TfrmCheque.cmdImpClick(Sender: TObject);
begin
    if frmRelCheque=nil then
       Application.CreateForm(TfrmRelCheque, frmRelCheque);
    frmRelCheque.chqIni.Text:=dbMovBancoDoc.value;
    frmRelCheque.chqFim.Text:=dbMovBancoDoc.value;
    frmRelCheque.iBanco:=dbMovBancoBancoID.value;
    frmRelCheque.ShowModal;
end;

procedure TfrmCheque.cmbFilialCloseUp(Sender: TObject);
begin
    dbPagar.Filtered:=true;
    dbPagar.Refresh;
end;

procedure TfrmCheque.dsMovBancoDataChange(Sender: TObject; Field: TField);
begin
    if dbMovBancoTipo.asstring='X' then
    begin
        lblDoc.Visible:=false;
        cmpDoc.Visible:=true;
        chkCruzado.Visible:=true;
    end;
    if dbMovBancoTipo.asstring='P' then
    begin
        lblDoc.Visible:=true;
        cmpDoc.Visible:=false;
        chkCruzado.Visible:=false;
    end;

    if dbMovBancoStatus.asstring='C' then
        lblCancelado.visible:=true
    else
        lblCancelado.visible:=false;    
end;

procedure TfrmCheque.BitBtn8Click(Sender: TObject);
begin
    dbMovBanco.Prior;
end;

procedure TfrmCheque.BitBtn9Click(Sender: TObject);
begin
    dbMovBanco.Next;
end;

procedure TfrmCheque.dbPagarAfterPost(DataSet: TDataSet);
begin
     qryTotal.close;
     qryTotal.Open;
end;

procedure TfrmCheque.cmbBancoCloseUp(Sender: TObject);
begin
    dbMovBanco.Locate('BancoID',cmbBanco.KeyValue,[]);
end;

procedure TfrmCheque.cmbDataChange(Sender: TObject);
begin
    dbMovBanco.Locate('DataEntrada',DateToStr(cmbData.Date),[loPartialKey,loCaseInsensitive]);
end;

procedure TfrmCheque.cmbNomeChange(Sender: TObject);
begin
    case TabCheque.tabindex of
    2:dbMovBanco.Locate('Doc',trim(cmbNome.Text),[loPartialKey,loCaseInsensitive]);
    3:dbMovBanco.Locate('Favorecido',trim(cmbNome.Text),[loPartialKey,loCaseInsensitive]);
    4:dbMovBanco.Locate('MovBanco',trim(cmbNome.Text),[loPartialKey,loCaseInsensitive]);
    end;
end;

procedure TfrmCheque.cmdImp2Click(Sender: TObject);
begin
    if frmRelListaCheque=nil then
        Application.CreateForm(TfrmRelListaCheque, frmRelListaCheque);
    frmRelListaCheque.ShowModal;
end;

procedure TfrmCheque.dbPlanoCFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbPlanoCCod1.value>=2;
end;

procedure TfrmCheque.dbPagarNovoBeforePost(DataSet: TDataSet);
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

procedure TfrmCheque.cmpBancoCloseUp(Sender: TObject);
begin
    if dbMovBanco.State in [dsInsert] then
    begin
        if dbMovBancoTipo.value='X' then
            dbMovBancoDoc.value:=dbBancoSigla.Value+'-'+ZeroEsq(dbBancoUltimoCheque.value,8);
        if dbMovBancoTipo.value='P' then
            dbMovBancoDoc.value:='AUT.DEBITO';
        dbMovBancoBAncoId.value:=dbBancoBancoId.value;
    end;    
end;

procedure TfrmCheque.dbMovBancoBeforeEdit(DataSet: TDataSet);
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

procedure TfrmCheque.grdChequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key=VK_DELETE) then
        abort;
end;


procedure TfrmCheque.cmdExcluiClick(Sender: TObject);
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
            dbPagChqMovBanco.value:=0;
            dbPagChqCheque.clear;
            dbPagChqValorPago.value:=0;
            dbPagChqBancoID.value:=0;
            dbPagChqDatapagto.clear;
            dbPagChqStatus.value:='A';
            dbPagChq.post;
        end
        else dbPagChq.delete;
    end;
    dbMovBanco.edit;
    dbbanco.Locate('BancoID',dbMovBancoBancoID.value,[]);
    dbbanco.edit;
    dbbancoSaldoAtual.value:=dbbancoSaldoAtual.value+dbMovBancoValor.value;
    dbbanco.post;
    dbFundos.Locate('BancoID;Fundo',VarArrayof([dbMovBancoBancoID.value,dbMovBAncoFundo.value]),[]);
    dbFundos.Edit;
    dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value+dbMovBancoValor.value;
    dbFundos.post;
    dbMovBancoStatus.asstring:='C';
    cmpHistorico.lines.add('x-x-x-x-x-x CANCELADO x-x-x-x-x-x');
    dbMovBanco.post;
    dbPagar.Refresh;
end;

procedure TfrmCheque.cmdApagaClick(Sender: TObject);
var i:Integer;
begin
   if dbMovBancoStatus.value<>'C' then
    begin
       Showmessage('Cheque não cancelado');
       abort;
    end;
    i:=application.messagebox('Atenção! Confirme a exclusão do cheque cancelado e não emitido',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    dbMovBanco.Delete;

end;

procedure TfrmCheque.cmdImp4Click(Sender: TObject);
begin
    if dbMovBancoTipo.value<>'P' then
    begin
        ShowMessage('Lançamento não é uma autorização de débito');
        abort;
    end;
    if frmRelAutDebito=nil then
        Application.CreateForm(TfrmRelAutDebito, frmRelAutDebito);
    frmRelAutDebito.Tag:=0;
    frmRelAutDebito.ShowModal;
end;

procedure TfrmCheque.cmdImp3Click(Sender: TObject);
begin
    if dbMovBancoTipo.value<>'P' then
    begin
        ShowMessage('Lançamento não é uma autorização de débito');
        abort;
    end;
    if frmRelPagtoGPS=nil then
        Application.CreateForm(TfrmRelPagtoGPS, frmRelPagtoGPS);
    frmRelPagtoGPS.ShowModal;

end;

procedure TfrmCheque.cmdImp5Click(Sender: TObject);
var ibco:string;
var inum,i,iult,ibanco:integer;
var iok:boolean;
begin
    tabCheque.TabIndex:=1;
    cmbData.Visible:=false;

    cmbNome.Visible:=true;
    dbMovBanco.IndexFieldNames:='Doc';
    ListBox1.Clear;
    iok:=true;

    dbBanco.Last;
    iult:=dbBancoBancoId.value;

    for ibanco:=1 to iult do
    begin
        if dbBanco.Locate('BancoID',ibanco,[]) then
        begin
        ibco:=dbBancoSigla.Value;
        dbMovBanco.Locate('BancoId',ibco,[]);
        if (copy(dbMovBancoDoc.value,1,3)=ibco) and iok then
        begin
            ListBox1.items.add(#13+'*** Banco '+dbBancoBancoId.AsString+' - '+dbBancoNome.Value);
            inum:=StrToInt(copy(dbMovBAncoDoc.value,5,20));
            iok:=true;
            while (copy(dbMovBancoDoc.value,1,3)=ibco) and
                  (StrToInt(copy(dbMovBancoDoc.value,5,20))>=inum) do
            begin
                dbMovBanco.Next;
                if copy(dbMovBancoDoc.value,1,3)=ibco then
                begin
                    if StrToInt(copy(dbMovBancoDoc.value,5,20))>(inum+10) then
                    begin
                        if copy(dbMovBancoDoc.value,1,3)=ibco then
                            inum:=StrToInt(copy(dbMovBancoDoc.value,5,20))
                        else
                            iok:=false;
                        continue;
                    end;
                    if StrToInt(copy(dbMovBancoDoc.value,5,20))>(inum+1) then
                    begin
                        for i:=1 to StrToInt(copy(dbMovBancoDoc.value,5,20))-inum-1 do
                            ListBox1.items.add(ibco+'-'+ZeroEsq(inum+i,8));
                        inum:=inum+i;
                    end
                    else
                        inum:=inum+1;
                end;
             end;
        end;
        end;
    end;

    if ListBox1.Items.Count=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    if relChequeFaltante=nil then
        Application.CreateForm(TrelChequeFaltante, relChequeFaltante);
    relChequeFaltante.qrpRelatorio.Preview;

end;

procedure TfrmCheque.dbMovBancoBeforeDelete(DataSet: TDataSet);
begin
   frmMenu.Log('Cheques','MovBanco-[0]-Doc',dbMovBancoMovBanco.value,0,dbMovBancoDoc.value,'E');
end;

procedure TfrmCheque.cmdImp8Click(Sender: TObject);
begin
    if frmRelChequePre=nil then
       Application.CreateForm(TfrmRelChequePre, frmRelChequePre);
    frmRelChequePre.ShowModal;   
end;

procedure TfrmCheque.cmdImp6Click(Sender: TObject);
begin
    if frmRelChequeNC=nil then
        Application.CreateForm(TfrmRelChequeNC, frmRelChequeNC);
    frmRelChequeNC.ShowModal;
end;

procedure TfrmCheque.cmdImp7Click(Sender: TObject);
begin
    if frmRelChequeNCP=nil then
        Application.CreateForm(TfrmRelChequeNCP, frmRelChequeNCP);
    frmRelChequeNCP.ShowModal;
end;

procedure TfrmCheque.dbPagarBeforeEdit(DataSet: TDataSet);
begin
    if dbMovBanco.state in [dsInsert,dsEdit] then
    begin
        ShowMessage('Finalize a geração do Cheque/Autorização de pagamento');
        abort;
    end;    
end;

procedure TfrmCheque.dbPagarAfterInsert(DataSet: TDataSet);
begin
    dbPagarTipoPag.value:='F';
end;

procedure TfrmCheque.dbPagarNovoAfterInsert(DataSet: TDataSet);
begin
    dbPagarTipoPag.value:='F';
end;

procedure TfrmCheque.dbPagarCalcFields(DataSet: TDataSet);
begin
    if dbPagarSelecionado.value=true then
        dbPagarSelecionadoTexto.value:='Ok'
    else
        dbPagarSelecionadoTexto.value:='';    
end;

procedure TfrmCheque.BitBtn2Click(Sender: TObject);
begin
    if frmRelFavorecido=nil then
        Application.CreateForm(TfrmRelFavorecido, frmRelFavorecido);
    frmRelFavorecido.ShowModal;
end;

end.
