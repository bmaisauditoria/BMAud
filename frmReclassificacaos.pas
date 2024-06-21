unit frmReclassificacaos;

interface

uses
  QT, Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,  DB,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask,
  Outline, ComCtrls,  ToolWin, DBDateTimePicker;

type
  TfrmReclassificacao = class(TForm)
    dbMovBanco: TMSTable;
    dbLancamento: TMSTable;
    dsMovBanco: TDataSource;
    dsLancamento: TDataSource;
    dbPlanoC: TMSTable;
    dsPlanoC: TDataSource;
    Bevel1: TBevel;
    dbConta: TMSTable;
    Panel1: TPanel;
    Panel2: TPanel;
    grdLancamento: TDBGrid;
    tabOrdem: TTabControl;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cmpHistorico: TDBMemo;
    cmpData: TDBDateTimePicker;
    CoolBar1: TCoolBar;
    cmbBusca: TComboBox;
    Panel4: TPanel;
    ListBox1: TListBox;
    Outline1: TOutline;
    Label10: TLabel;
    cmdCalcula: TSpeedButton;
    dbMovBancoMovBanco: TAutoIncField;
    dbMovBancoBancoID: TIntegerField;
    dbMovBancoFundo: TIntegerField;
    dbMovBancoTipo: TStringField;
    dbMovBancoDoc: TStringField;
    dbMovBancoValor: TCurrencyField;
    dbMovBancoFavorecido: TStringField;
    dbMovBancoCruzado: TBooleanField;
    dbMovBancoHistorico: TMemoField;
    dbMovBancoStatus: TStringField;
    dbMovBancoFilial: TIntegerField;
    dbMovBancoUsuario: TStringField;
    dbLancamentoFilial: TIntegerField;
    dbLancamentoLancamento: TAutoIncField;
    dbLancamentoCliente: TIntegerField;
    dbLancamentoClienteDeb: TIntegerField;
    dbLancamentoPrazo: TIntegerField;
    dbLancamentoCod1: TSmallintField;
    dbLancamentoCod2: TSmallintField;
    dbLancamentoCod3: TSmallintField;
    dbLancamentoHistorico: TStringField;
    dbLancamentoDoc: TStringField;
    dbLancamentoValor: TCurrencyField;
    dbLancamentoTributo: TBooleanField;
    dbLancamentoBancoID: TIntegerField;
    dbLancamentoCheque: TStringField;
    dbLancamentoValorPago: TCurrencyField;
    dbLancamentoPago: TBooleanField;
    dbLancamentoSelecionado: TBooleanField;
    dbLancamentoStatus: TStringField;
    dbLancamentoPrevisao: TIntegerField;
    dbLancamentoMovBanco: TIntegerField;
    dbLancamentoNF: TIntegerField;
    dbLancamentoSeq: TStringField;
    dbLancamentoPorcentagem: TFloatField;
    dbLancamentoUsuario: TStringField;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbContaBancoID: TAutoIncField;
    dbContaBanco: TSmallintField;
    dbContaConta: TStringField;
    dbContaNome: TStringField;
    dbContaSigla: TStringField;
    dbContaEndereco: TMemoField;
    dbContaGerente: TStringField;
    dbContaFone: TStringField;
    dbContaFax: TStringField;
    dbContaSite: TStringField;
    dbContaFilial: TSmallintField;
    dbContaUltimoCheque: TIntegerField;
    dbContaDataFechamento: TDateTimeField;
    dbContaSaldoFechamento: TCurrencyField;
    dbContaUsuarioFechamento: TStringField;
    dbContaSaldoAtual: TCurrencyField;
    dbContaLimiteCredito: TCurrencyField;
    dbContaStatus: TStringField;
    dbContaDataInclusao: TDateField;
    dbContaUsuario: TStringField;
    Label11: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    cmpBanco: TDBLookupComboBox;
    Label2: TLabel;
    Label12: TLabel;
    cmpProblema: TLabel;
    Label14: TLabel;
    dbCliente: TMSTable;
    dbLancamentoClienteNome: TStringField;
    dsConta: TDataSource;
    Panel8: TPanel;
    cmdNovoB: TBitBtn;
    cmdGravaB: TBitBtn;
    cmdExcluiB: TBitBtn;
    cmpDataMov: TDBEdit;
    ProgressBar2: TProgressBar;
    Label15: TLabel;
    cmpCalculado: TLabel;
    dbClienteDeb: TMSTable;
    dbLancamentoClienteDebNome: TStringField;
    cmdLimpaB: TBitBtn;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbMovBancoTipoTexto: TStringField;
    dbLancamento1: TMSTable;
    dbLancamento1Filial: TIntegerField;
    dbLancamento1Lancamento: TAutoIncField;
    dbLancamento1Cliente: TIntegerField;
    dbLancamento1ClienteDeb: TIntegerField;
    dbLancamento1Prazo: TIntegerField;
    dbLancamento1Cod1: TSmallintField;
    dbLancamento1Cod2: TSmallintField;
    dbLancamento1Cod3: TSmallintField;
    dbLancamento1Historico: TStringField;
    dbLancamento1Doc: TStringField;
    dbLancamento1Valor: TCurrencyField;
    dbLancamento1Tributo: TBooleanField;
    dbLancamento1BancoID: TIntegerField;
    dbLancamento1Cheque: TStringField;
    dbLancamento1ValorPago: TCurrencyField;
    dbLancamento1Pago: TBooleanField;
    dbLancamento1Selecionado: TBooleanField;
    dbLancamento1Status: TStringField;
    dbLancamento1Previsao: TIntegerField;
    dbLancamento1MovBanco: TIntegerField;
    dbLancamento1NF: TIntegerField;
    dbLancamento1Seq: TStringField;
    dbLancamento1Porcentagem: TFloatField;
    dbLancamento1Usuario: TStringField;
    dbMovBanco1: TMSTable;
    dbMovBanco1MovBanco: TAutoIncField;
    dbMovBanco1BancoID: TIntegerField;
    dbMovBanco1Fundo: TIntegerField;
    dbMovBanco1Tipo: TStringField;
    dbMovBanco1Doc: TStringField;
    dbMovBanco1Valor: TCurrencyField;
    dbMovBanco1Favorecido: TStringField;
    dbMovBanco1Cruzado: TBooleanField;
    dbMovBanco1Historico: TMemoField;
    dbMovBanco1Status: TStringField;
    dbMovBanco1Filial: TIntegerField;
    dbMovBanco1Usuario: TStringField;
    dbMovBanco1Selecionado: TBooleanField;
    dbLancamentoContabilizado: TBooleanField;
    cmdContabiliza: TBitBtn;
    dbDuplicata: TMSTable;
    dbDuplicataFilial: TIntegerField;
    dbDuplicataDuplicata: TIntegerField;
    dbDuplicataSeq: TStringField;
    dbDuplicataSeqNum: TSmallintField;
    dbDuplicataPrazo: TIntegerField;
    dbDuplicataDataEmissao: TDateField;
    dbDuplicataCliente: TIntegerField;
    dbDuplicataPraca: TStringField;
    dbDuplicataDataVencto: TDateField;
    dbDuplicataValor: TCurrencyField;
    dbDuplicataAcrescimos: TCurrencyField;
    dbDuplicataDescontos: TCurrencyField;
    dbDuplicataBancoID: TIntegerField;
    dbDuplicataDataPagto: TDateField;
    dbDuplicataValorPago: TCurrencyField;
    dbDuplicataDocPagto: TStringField;
    dsDuplicata: TDataSource;
    dbNF: TMSTable;
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
    dbNFBancoIDDep: TIntegerField;
    dbNFUsuario: TStringField;
    dbNFClienteNome: TStringField;
    dbNFClienteDeb: TIntegerField;
    dsNF: TDataSource;
    dbMovBancoUsuarioI: TStringField;
    dbLancamentoUsuarioI: TStringField;
    dbLancamento1UsuarioI: TStringField;
    dbMovBanco1Aplicacao: TIntegerField;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    Panel10: TPanel;
    Label17: TLabel;
    DBText46: TDBText;
    Panel6: TPanel;
    Label18: TLabel;
    DBText8: TDBText;
    Panel7: TPanel;
    Label19: TLabel;
    DBText9: TDBText;
    Panel9: TPanel;
    lblTipo: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    cmdNovo: TBitBtn;
    cmdAltera: TBitBtn;
    cmdGrava: TBitBtn;
    cmdCancela: TBitBtn;
    cmdExclui: TBitBtn;
    cmdFicha: TSpeedButton;
    cmdLista: TSpeedButton;
    cmdChecar1: TBitBtn;
    cmdChecar: TBitBtn;
    cmdChecarNF: TBitBtn;
    cmdFiltro: TSpeedButton;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    dbLancamentoTipoPag: TStringField;
    dbLancamentoFuncionario: TIntegerField;
    dbMovBancoTipoPag: TStringField;
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
    dsMedico: TDataSource;
    dsEnfermeiro: TDataSource;
    dbLancamentoFuncionarioNome: TStringField;
    dbLancamentoMedicoNome: TStringField;
    dbLancamentoEnfermeiroNome: TStringField;
    Panel12: TPanel;
    Label8: TLabel;
    DBText4: TDBText;
    dbMovBancoTipoPagTexto: TStringField;
    dbLancamentoValorBruto: TCurrencyField;
    dbLancamentoAuditor: TIntegerField;
    dbLancamentoTipoAud: TStringField;
    cmpDiferenca: TLabel;
    dbContaAgencia: TStringField;
    dbMedico: TMSTable;
    dbMedicoAuditor: TIntegerField;
    dbMedicoNome: TStringField;
    dbMedicoCRM: TIntegerField;
    dbMedicoCliente: TIntegerField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbEnfermeiroCliente: TIntegerField;
    dbMovBancoDataEntrada: TDateTimeField;
    dbMovBancoDataMovimento: TDateTimeField;
    dbMovBancoDataInclusao: TDateTimeField;
    dbMovBancoDataAlteracao: TDateTimeField;
    dbLancamentoDataEmissao: TDateTimeField;
    dbLancamentoDataVencto: TDateTimeField;
    dbLancamentoDataPagto: TDateTimeField;
    dbLancamentoPagtoPre: TIntegerField;
    dbLancamentoDataInclusao: TDateTimeField;
    dbLancamentoDataAlteracao: TDateTimeField;
    dbLancamento1DataEmissao: TDateTimeField;
    dbLancamento1DataVencto: TDateTimeField;
    dbLancamento1DataPagto: TDateTimeField;
    dbLancamento1DataInclusao: TDateTimeField;
    dbLancamento1DataAlteracao: TDateTimeField;
    dbMovBanco1DataEntrada: TDateTimeField;
    dbMovBanco1DataMovimento: TDateTimeField;
    dbMovBanco1DataInclusao: TDateTimeField;
    dbMovBanco1DataAlteracao: TDateTimeField;
    dbNFDataEmissao: TDateTimeField;
    dbNFDataVencto: TDateTimeField;
    dbNFDataInclusao: TDateTimeField;
    dbFuncionarioDataFim: TDateTimeField;
    dbLancamento1PagtoPre: TIntegerField;
    cmdStop: TSpeedButton;
    dbMovBancoNumeroDoc: TStringField;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    procedure cmdGravaClick(Sender: TObject);
    procedure dbMovBancoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure grdLancamentoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbMovBancoAfterScroll(DataSet: TDataSet);
    procedure cmbBuscaChange(Sender: TObject);
    procedure cmdFichaClick(Sender: TObject);
    procedure cmdListaClick(Sender: TObject);
    procedure cmdChecarClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure dbLancamentoAfterInsert(DataSet: TDataSet);
    procedure dbMovBancoBeforeEdit(DataSet: TDataSet);
    procedure dbLancamentoAfterScroll(DataSet: TDataSet);
    procedure dbMovBancoBeforePost(DataSet: TDataSet);
    procedure cmdCalculaClick(Sender: TObject);
    procedure dbLancamentoBeforePost(DataSet: TDataSet);
    procedure Outline1Click(Sender: TObject);
    procedure dbLancamentoAfterPost(DataSet: TDataSet);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsMovBancoStateChange(Sender: TObject);
    procedure cmdNovoBClick(Sender: TObject);
    procedure cmdGravaBClick(Sender: TObject);
    procedure cmdExcluiBClick(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure cmdAlteraClick(Sender: TObject);
    procedure cmdCancelaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure dsLancamentoStateChange(Sender: TObject);
    procedure cmdLimpaBClick(Sender: TObject);
    procedure cmdFiltroClick(Sender: TObject);
    procedure dbMovBancoCalcFields(DataSet: TDataSet);
    procedure cmdChecar1Click(Sender: TObject);
    procedure dbMovBanco1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure grdLancamentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmdContabilizaClick(Sender: TObject);
    procedure cmdChecarNFClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbMovBancoBeforeDelete(DataSet: TDataSet);
    procedure dbLancamentoBeforeDelete(DataSet: TDataSet);
    procedure dbMovBancoAfterInsert(DataSet: TDataSet);
    procedure dbLancamentoClienteChange(Sender: TField);
  private
  cs:string;
  procedure PlanoContas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReclassificacao: TfrmReclassificacao;
implementation

uses frmPrincipal, frmReceber, relReclassificacaoErros, frmPrevsPagRec;

{$R *.DFM}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;


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

procedure TfrmReclassificacao.PlanoContas;
var g,n,i,j,k:Integer;
    a:string;
begin
    outline1.lines.clear;
    dbPlanoC.first;
    g:=1;
    cs:='';
    while not dbPlanoC.eof do
    begin
        if pos('(-)', dbPlanoCDescricao.asstring)<>0 then
            cs:=cs+dbPlanoCcod1.asstring+',';
        i:=dbPlanoCcod1.asinteger;
        j:=dbPlanoCcod2.asinteger;
        k:=dbPlanoCcod3.asinteger;
        a:=fnz(i,j,k);
        n:=ord(i<>0)+ord(j<>0)+ord(k<>0);
        outline1.lines.add(copy('      ',1,n-1)+a+' '+dbPlanoCDescricao.asstring);
        outline1.items[g].expanded:=true;
        inc(g);
        dbPlanoC.next;
    end;
end;


procedure TfrmReclassificacao.cmdGravaClick(Sender: TObject);
var tb:tbookmark;
begin
    if dbLancamento.state in [dsedit,dsinsert] then
        dbLancamento.post;
    if dbMovBanco.state =dsedit then
    begin
        dbMovBancoFilial.asinteger:=dbContaFilial.asinteger;
        if dbMovBancoDoc.asstring='' then
            dbMovBancoDoc.asstring:='Aviso';
        dbMovBanco.post;
    end;
    tb:=dbLancamento.getbookmark;
    dbLancamento.first;
    while not dbLancamento.eof do
    begin
        dbLancamento.edit;
        if dbLancamento.RecordCount=1 then
            dbLancamentovalorpago.ascurrency:=dbMovBancovalor.ascurrency;
        if dbMovBancodatamovimento.isnull then
            dbLancamentodatapagto.asdatetime:=dbMovBancodataEntrada.asdatetime
        else
            dbLancamentodatapagto.asdatetime:=dbMovBancodatamovimento.asdatetime;
        dbLancamento.post;
        dbLancamento.next;
    end;
    dbLancamento.gotobookmark(tb);
    dbLancamento.freebookmark(tb);
end;

procedure TfrmReclassificacao.dbMovBancoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var chk,chkdata:boolean;
var a,m,d:word;
var Ini:TDate;
begin
    Ini:=date;
    DecodeDate(Ini,a,m,d);
    if (m>=1) and (m<=6) then
        a:=a-1;
    if m=1 then m:=7;
    if m=2 then m:=8;
    if m=3 then m:=9;
    if m=4 then m:=10;
    if m=5 then m:=11;
    if m=6 then m:=12;
    if m>6 then m:=m-6;

    Ini:=EncodeDate(a,m,1);
    chk:=(dataset['Tipo']<>'A') and (dataset['Tipo']<>'R') and
         (dataset['Tipo']<>'T') and (dataset['Tipo']<>'S');
    chkdata:=(dbMovBancoDataEntrada.value>=Ini);
    if (cmdFiltro.Down)  then
        accept:=chk and chkdata
    else
        accept:=chk;
end;

procedure TfrmReclassificacao.grdLancamentoKeyPress(Sender: TObject; var Key: Char);
begin
if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TfrmReclassificacao.FormShow(Sender: TObject);
begin
try
    dbPlanoC.open;
    PlanoContas;
    dbConta.open;
    dbMovBanco.open;
    dbMovBanco.IndexFieldNames:='MovBanco desc';
    dbLancamento.open;
    dbLancamento1.Open;
    dbMovBanco1.Open;
    dbCliente.Open;
    dbClienteDeb.Open;
    dbFilial.Open;
    dbNF.OPen;
    dbDuplicata.Open;
    dbFuncionario.Open;
    dbMedico.Open;
    dbEnfermeiro.Open;
finally
    cmpCalculado.Caption:='R$0,00';
    panel1.visible:=false;
    dbMovBanco.refresh;
end;
end;

procedure TfrmReclassificacao.dbMovBancoAfterScroll(DataSet: TDataSet);
var i:Integer;
saia:boolean;
begin
    cmpCalculado.Caption:='R$ 0,00';
    if dbLancamento.mastersource<>nil then
    begin
        if dbPlanoC.active then
        begin
            PlanoContas;
            i:=0;
            saia:=false;
            while (i<outline1.itemcount) and not saia do
            begin
                inc(i);
                if pos(fnz(dbLancamentoCod1.asinteger,dbLancamentoCod2.asinteger,dbLancamentoCod3.asinteger),outline1.items[i].text)<>0 then
                begin
                    saia:=true;
                    outline1.selecteditem:=i;
                end;
            end;
//            dbMovBanco.edit;
        end;
    end;
    if dbMovBancoTipo.Value='C' then
      lblTipo.color:=clgreen
    else
      lblTipo.color:=clred;
end;

procedure TfrmReclassificacao.cmbBuscaChange(Sender: TObject);
var iMB:integer;
begin
if trim(cmbBusca.text)<>'' then
    case tabOrdem.TabIndex of
    0:dbMovBanco.Locate('MovBanco',StrToInt(cmbBusca.text),[]);
    1:begin
        iMB:=0;
        dbFilial.First;
        while not dbFilial.eof do
        begin
            dbLancamento1.IndexFieldNames:='Filial;Lancamento';
            if dbLancamento1.Locate('Filial;Lancamento',VarArrayof([dbFilialFilial.value,StrToInt(cmbBusca.text)]),[]) then
                iMB:=dbLancamento1MovBanco.value;
            if iMB>0 then
            begin
                 dbMovBanco.Locate('MovBanco',iMB,[]);
                 Break;
            end;
            dbFilial.Next;
        end;
      end;
      end;
end;

procedure TfrmReclassificacao.cmdFichaClick(Sender: TObject);
begin
    panel3.visible:=true;
    dbgrid2.visible:=false;
end;

procedure TfrmReclassificacao.cmdListaClick(Sender: TObject);
begin
    panel3.visible:=false;
    dbgrid2.visible:=true;
end;

procedure TfrmReclassificacao.cmdChecarClick(Sender: TObject);
var v:currency;
    c,l:string;
    i,tot,ifil:integer;
begin
    if (not cmdFiltro.Down) then
        i:=application.messagebox('Atenção! Filtro de 6 meses não ativo. Confirme a conferência de TODOS os movimentos',
                                 'Confirmação',mb_YesNo)
    else
        i:=application.messagebox('Atenção! Confirme a conferência dos movimentos dos ultimos 6 meses',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
try
    cmdStop.Down:=false;
    screen.Cursor:=crhourglass;
    listbox1.items.clear;
    listbox1.Tag:=2;    
    panel1.visible:=true;
    progressbar2.position:=0;
    progressbar2.max:=dbMovBanco.recordcount;
    dbMovBanco.First;
    dbMovBanco.tag:=1;
    dbLancamento.Tag:=1;
    tot:=0;
    while (not dbMovBanco.eof) and (not cmdStop.Down) do
    begin
        if dbMovBancoMovBanco.value=0 then
            dbMovBanco.Delete;
        if dbMovBancostatus.asstring='C' then //cancelado
        begin
            while dbLancamento.RecordCount>0 do
                dbLancamento.Delete;
        end
        else
        begin // ativos
            v:=0;
            if (dbMovBancoDataMovimento.IsNull) and
               (dbMovBancoDataEntrada.value<=StrToDate('30/09/2004')) then
            begin
                dbMovBanco.Edit;
                dbMovBancoDataMovimento.value:=dbMovBancoDataEntrada.value;
                dbMovBanco.Post;
            end;
            if dbMovBancoFilial.value<>dbContaFilial.value then
            begin
                dbMovBanco.Edit;
                dbMovBancoFilial.value:=dbContaFilial.value;
                dbMovBanco.Post;
            end;
            if dbLancamento.RecordCount=0 then
            begin
                str(dbMovBancoMovBanco.asinteger:7, c);
                str(dbLancamentoLancamento.asinteger:7,l);
                c:='['+c+'/'+l+']';
                listbox1.items.add(c+' Movimentação bancária sem lançamento (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                tot:=tot+1;
            end
            else
            begin
                dbLancamento.first;
                ifil:=dbLancamentoFilial.value;
                while (not dbLancamento.eof) do
                begin
                    Application.processmessages;
                    if (dbLancamentoCod1.value=1) and
                       (dbLancamentoClienteDeb.value<>dbLancamentoCliente.value) then
                    begin
                        dbLancamento.Edit;
                        dbLancamentoClienteDeb.Value:=dbLancamentoCliente.value;
                        dbLancamento.Post;
                    end;
                    if (dbLancamentoMovBanco.value>0) and
                       (dbLancamentoMovBanco.value=dbMovBancoMovBanco.value) and
                       (dbLancamentoStatus.value<>'P') then
                    begin
                        dbLancamento.Edit;
                        dbLancamentoStatus.Value:='P';
                        dbLancamento.Post;
                    end;
                    if (dbLancamentoMovBanco.value>0) and
                       (dbLancamentoMovBanco.value=dbMovBancoMovBanco.value) then
                    begin
                        if (dbMovBAncoDataMovimento.isnull) and
                           (dbLancamentoPago.value=true)  then
                        begin
                                dbLancamento.Edit;
                                dbLancamentoPago.value:=false;
                                dbLancamento.Post;
                        end;
                        if (not dbMovBAncoDataMovimento.isnull) and
                           (dbLancamentoPago.value=false)  then
                        begin
                                dbLancamento.Edit;
                                dbLancamentoPago.value:=true;
                                dbLancamento.Post;
                        end;
                    end;
                    if dbLancamentoDataEmissao.isnull then
                    begin
                        dbLancamento.Edit;
                        dbLancamentoDataEmissao.Value:=dbLancamentoDataVencto.value;
                        dbLancamento.Post;
                    end;
                    if dbLancamentoValorPago.value<0 then
                    begin
                        dbLancamento.Edit;
                        dbLancamentoValorPago.Value:=dbLancamentoValorPago.value*-1;
                        dbLancamento.Post;
                    end;
                    if dbLancamentoFilial.value<>iFil then
                    begin
                        str(dbMovBancoMovBanco.asinteger:7, c);
                        str(dbLancamentoLancamento.asinteger:7,l);
                        c:='['+c+'/'+l+']';
                        listbox1.items.add(c+' Lançamentos com Filias diferentes (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                        tot:=tot+1;
                    end;
                    if dbLancamentoFilial.value<>dbMovBancoFilial.value then
                    begin
                        dbMovBanco.Edit;
                        dbMovBancoFilial.value:=dbLancamentoFilial.value;
                        dbMovBanco.Post;
                    end;
                    if dbPlanoC.recordcount=0 then
                    begin
                        str(dbMovBancoMovBanco.asinteger:7, c);
                        str(dbLancamentoLancamento.asinteger:7,l);
                        c:='['+c+'/'+l+']';
                        listbox1.items.add(c+' Item de plano de contas inexistente (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                        tot:=tot+1;
                    end
                    else
                        if dbLancamentocod1.asinteger=0 then
                        begin
                            str(dbMovBancoMovBAnco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Item de plano de contas inválido (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                            tot:=tot+1;
                        end;
                        if (dbLancamentoCod1.value=1) and
                           ((dbMovBancoTipo.value<>'C') and
                            (dbMovBancoTipo.value<>'R') and
                            (dbMovBancoTipo.value<>'S')) then
                        begin
                            str(dbMovBancoMovBAnco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Movimentação de Débito e Plano de Contas de Crédito (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                            tot:=tot+1;
                        end;
                        if (dbLancamentoCod1.value>1) and
                           ((dbMovBancoTipo.value='C') or
                            (dbMovBancoTipo.value='R') or
                            (dbMovBancoTipo.value='S')) then
                        begin
                            str(dbMovBancoMovBAnco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Movimentação de Crédito e Plano de Contas de Débito (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                            tot:=tot+1;
                        end;

                        if dbLancamentocod3.asinteger=0 then
                        begin
                            str(dbMovBancoMovBAnco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Item de plano de contas inválido (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+')');
                            tot:=tot+1;
                        end;

                        if (dbLancamentoCod1.value=2) and (dbLancamentoCod2.value=40) and
                           ((dbLancamentoCod3.value=1) or (dbLancamentoCod3.value=3)) and
                           (dbLancamentoTipoPag.value<>'C') then
                        begin
                          dbLancamento.Edit;
                          dbLancamentoTipoPag.value:='C';
                          dbLancamento.Post;
                        end;

                       if (dbLancamentoCod1.value=2) and
                          ((dbLancamentoCod2.value=50) or (dbLancamentoCod2.Value=60)) and
                          (dbLancamentoCod3.value=1) and
                          (dbLancamentoTipoPag.value<>'P') then
                        begin
                          dbLancamento.Edit;
                          dbLancamentoTipoPag.value:='P';
                          dbLancamento.Post;
                        end;
{
                        if (dbLancamentoTipoPag.value='C') and (dbLancamentoFuncionario.value=0) then
                        begin
                            str(dbMovBancoMovBanco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Pagamento CLT sem codigo do Funcionario (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbLancamentodatapagto.asstring+')');
                            tot:=tot+1;
                        end;

                        if (dbLancamentoTipoPag.value='P') and (dbLancamentoCod2.value=50)  and
                           (dbLancamentoMedico.value=0) then
                        begin
                            str(dbMovBancoMovBanco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Pagamento Prestador sem codigo do Médico (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbLancamentodatapagto.asstring+')');
                            tot:=tot+1;
                        end;

                       if (dbLancamentoTipoPag.value='P') and (dbLancamentoCod2.value=60)  and
                           (dbLancamentoEnfermeiro.value=0) then
                        begin
                            str(dbMovBancoMovBanco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Pagamento Prestador sem codigo do Enfermeiro (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbLancamentodatapagto.asstring+')');
                            tot:=tot+1;
                        end;
}

//                          (Int(dbLancamentodatapagto.asdatetime)<>Int(dbMovBancodataEntrada.asdatetime)) or
                        if (Int(dbLancamentodatapagto.asdatetime)<>Int(dbMovBancodatamovimento.asdatetime)) and
                           (not dbMovBancoDataMovimento.IsNull) then
                        begin
                            dbLancamento.Edit;
                            dbLancamentoDataPagto.value:=dbMovBancoDataMovimento.value;
                            dbLancamento.Post;

{                            str(dbMovBancoMovBanco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Data de pagamento do Lançamento não confere com data da Conciliação Bancária (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbLancamentodatapagto.asstring+')');
                            tot:=tot+1;}
                        end;
                        v:=v+dbLancamentovalorpago.ascurrency;
                        dbLancamento.next;
                    end;

                   if (dbLancamentodatapagto.isnull and not dbMovBancodatamovimento.isnull) or
                      (not dbLancamentodatapagto.isnull and dbMovBancodatamovimento.isnull) then
                   begin
                            str(dbMovBancoMovBanco.asinteger:7, c);
                            str(dbLancamentoLancamento.asinteger:7,l);
                            c:='['+c+'/'+l+']';
                            listbox1.items.add(c+' Data de pagamento do Lançamento não confere com data da Conciliação Bancária (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbLancamentodatapagto.asstring+')');
                            tot:=tot+1;
                   end;

                    if abs(v-dbMovBancovalor.ascurrency)>=0.01 then
                    begin
                        str(dbMovBancoMovBanco.asinteger:7, c);
                        c:='['+c+']';
                        listbox1.items.add(c+' Valor dos lançamentos não conferem com valor da Movimentação Bancária (Bco '+dbMovBancobancoID.asstring+'-'+dbMovBancodoc.asstring+' - '+dbMovBancodataEntrada.asstring+') Diferença:'+format('%m',[dbMovBancovalor.ascurrency-v]));
                        tot:=tot+1;
                    end;
                end;
            end;
            if tot=1 then
                cmpProblema.Caption:=IntToStr(tot)+' Movimento com problema'
            else
                cmpProblema.Caption:=IntToStr(tot)+' Movimentos com problemas';
            progressbar2.position:=progressbar2.position+1;
            dbMovBanco.next;
        end;
finally
    if cmdStop.Down then
        ShowMessage('Processamento interrompido pelo usuario')
    else
        ShowMessage('Movimentos conferidos com sucesso');
    dbMovBanco.tag:=0;
    dbLancamento.tag:=0;
    screen.Cursor:=crDefault;
    progressbar2.position:=0;
end;
end;



procedure TfrmReclassificacao.ListBox1Click(Sender: TObject);
var a,b,l1:string;
    j,f,l:integer;
begin
    a:=dbMovBanco1.indexfieldnames;
    tabOrdem.TabIndex:=2;
    dbMovBanco1.indexfieldnames:='MovBanco';
    b:=listbox1.items[listbox1.itemindex];
    j:=pos(']', b);
    b:=copy(b, 1, j-1);
    j:=pos('/', b);
    if j<>0 then
    begin
        l1:=copy(b,11,10);
        b:=copy(b, 1, j-1);
    end;
    j:=strtoint(trim(copy(b, 2, 255)));
    if ListBox1.tag<>3 then l:=strtoint(l1);

    if not dbMovBanco1.Locate('MovBanco',j,[]) then
        ShowMessage('Movimentação bancária não cadastrada')
    else
        dbMovBanco.Locate('MovBanco',j,[]);
    dbMovBanco1.indexfieldnames:=a;
    b:=listbox1.items[listbox1.itemindex];

    if ListBox1.Tag=1 then  //Lancamento
    begin
        if not frmMenu.Acesso('Lançamentos/Previsões') then
            abort;
        if frmPrevPagRec=nil then
            Application.CreateForm(TfrmPrevPagRec, frmPrevPagRec);
        frmPrevPagRec.Show;
        frmPrevPagRec.cmbFilial.KeyValue:=f;
        frmPrevPagRec.pagPrevisao.ActivePageIndex:=0;
        frmPrevPagRec.tabLan.TabIndex:=0;
        frmPrevPagRec.cmdLista.Down:=true;
        frmPrevPagRec.cmbBusca.Text:=IntTostr(l);
        frmPrevPagRec.chkPagoAberto.Checked:=true;
        frmPrevPagRec.dbPagar.Locate('Lancamento',l,[])
    end;


    if ListBox1.Tag=3 then  //NF
    begin
        j:=pos(']', b);
        b:=copy(b, 1, j-1);
        if length(b)=28 then
        begin
            if not frmMenu.Acesso('Contas a Receber/Nota Fiscal') then
                abort;
            if frmRec=nil then
                Application.CreateForm(TfrmRec, frmRec);
            f:=strtoint(trim(copy(b, 18, 3)));
            j:=strtoint(trim(copy(b, 22, 7)));
            frmRec.Show;
            frmRec.cmbFilial.KeyValue:=f;
            frmRec.pagReceber.ActivePageIndex:=1;
            frmRec.pagNF.ActivePageIndex:=1;
            frmRec.dbNF.Locate('Filial;NF',VarArrayof([f,j]),[])
        end;
    end;
    dbMovBanco.Refresh;
    dbLancamento.Refresh;
end;

procedure TfrmReclassificacao.dbLancamentoAfterInsert(DataSet: TDataSet);
begin
    dbLancamentoDataInclusao.value:=date;
    dbLancamentoDataVencto.value:=dbMovBancoDataEntrada.value;
    dbLancamentoFilial.value:=dbMovBancoFilial.value;
    dbLancamentoFuncionario.value:=0;
    dbLancamentoAuditor.value:=0;
    dbLancamentoTipoAud.value:='M';
    dbLancamentoValorBruto.value:=0;
    if dbMovBancodatamovimento.isnull then
        dbLancamentodatapagto.asdatetime:=dbMovBancodataEntrada.asdatetime
    else
        dbLancamentodatapagto.asdatetime:=dbMovBancodatamovimento.asdatetime;
    if dbLancamento.RecordCount=0 then
    begin
        dbLancamentoValorPago.value:=dbMovBancoValor.value;
    end;
    dbLancamentoHistorico.value:=dbMovBancoHistorico.value;
    dbLancamentoDoc.value:=dbMovBancoDoc.value;
end;

procedure TfrmReclassificacao.dbMovBancoBeforeEdit(DataSet: TDataSet);
begin
    cmpData.enabled:=dbMovBancodataEntrada.asdatetime>dbContadatafechamento.asdatetime;
    cmpDataMov.Enabled:=dbMovBancodataEntrada.asdatetime>dbContadatafechamento.asdatetime;
end;

procedure TfrmReclassificacao.dbLancamentoAfterScroll(DataSet: TDataSet);
var i:Integer;
saia:boolean;
begin
    if dbLancamento.mastersource<>nil then
    begin
        i:=0;
        saia:=false;
        while (i<outline1.itemcount) and not saia do
        begin
            inc(i);
            if pos(fnz(dbLancamentoCod1.asinteger,dbLancamentoCod2.asinteger,dbLancamentoCod3.asinteger),outline1.items[i].text)<>0 then
            begin
                 saia:=true;
                 outline1.selecteditem:=i;
             end;
        end;
    end;
end;

procedure TfrmReclassificacao.dbMovBancoBeforePost(DataSet: TDataSet);
begin
    if (dbMovBancodataEntrada.asdatetime<=dbContadatafechamento.asdatetime) and
       (dbMovBanco.tag=0) then
    begin
        ShowMessage('Movimento anterior à última data de fechamento');
        abort;
    end;
    if dbMovBanco.State in [dsInsert] then
    begin
        dbMovBancoUsuarioI.value:=iUsuario;
        dbMovBancoDataInclusao.value:=date;
    end;
    if dbMovBanco.State in [dsEdit] then
    begin
        dbMovBancoUsuario.value:=iUsuario;
        dbMovBancoDataAlteracao.value:=date;
    end;
end;

procedure TfrmReclassificacao.cmdCalculaClick(Sender: TObject);
var v,d:currency;
begin
    v:=0;
    dbLancamento.first;
    while not dbLancamento.eof do
    begin
        v:=v+dbLancamentovalorpago.ascurrency;
        dbLancamento.next;
    end;
    d:=v-dbMovBancoValor.value;
    cmpDiferenca.Caption:=FloattoStrF(d,ffcurrency,11,2);
    cmpCalculado.Caption:=FloattoStrF(v,ffcurrency,11,2);
end;

procedure TfrmReclassificacao.dbLancamentoBeforePost(DataSet: TDataSet);
var ft:Double;
begin
if dbLancamento.Tag=0 then
begin
    if dbLancamentoCod1.asinteger=0 then
    begin
        Showmessage('Classifique o lançamento.');
        abort;
    end;
    if dbLancamentoValorPago.value=0 then
    begin
        Showmessage('Valor inválido');
        abort;
    end;
    if (dbLancamentoDataPagto.isnull) and (dbMovBancoTipo.value<>'X') then
    begin
        Showmessage('Pagamento inválido');
        abort;
    end;

    dbLancamentoTipoPag.value:='F';

    if ((dbLancamentoCod1.value=1) and (dbLancamentoCod2.value=1) and
       ((dbLancamentoCod3.value=1) )) and
       ((dbLancamentoNF.value=0)) then
    begin
        Showmessage('Credito de Nota Fiscal. Cadastre a NF no lancamento.');
        abort;
    end;

    if ((dbLancamentoCod1.value=1) and (dbLancamentoCod2.value=1) and
       ((dbLancamentoCod3.value=1) )) and
       ((dbLancamentoCliente.value=0)) then
    begin
        Showmessage('Credito de Nota Fiscal. Selecione um cliente.');
        abort;
    end;


    if ((dbLancamentoCod1.value=2) and (dbLancamentoCod2.value=40) and
       ((dbLancamentoCod3.value=1) or (dbLancamentoCod3.value=3) or
       (dbLancamentoCod3.value=4) or (dbLancamentoCod3.value=15))) and
       ((dbLancamentoFuncionario.value=0)) then
    begin
        dbLancamentoTipoPag.Value:='C';
        Showmessage('Pagamento CLT. Selecione um funcionário.');
        abort;
    end;

    if ((dbLancamentoCod1.value=2) and ((dbLancamentoCod2.value=50) or (dbLancamentoCod2.value=60)) and
       (dbLancamentoCod3.value=1))  then
    begin
        dbLancamentoTipoPag.Value:='P';

        if (dbLancamentoTipoAud.value<>'M') and (dbLancamentoTipoAud.value<>'E')  then
        begin
            Showmessage('Pagamento Prestador. Selecione um  tipo [M]édico ou [E]nfermeiro');
            abort;
        end;
        if (dbLancamentoAuditor.value=0) then
        begin
            Showmessage('Pagamento Prestador. Selecione um Médico ou Enfermeiro');
            abort;
        end;
    end;

    if dbLancamentoValor.value=0 then
        dbLancamentoValor.value:=dbLancamentoValorPago.value;
    if dbLancamentoDataVencto.isnull then
        dbLancamentoDataVencto.value:=dbLancamentoDataPagto.value;

    dbLancamentofilial.asinteger:=dbMovBancofilial.asinteger;
    dbLancamentoTributo.value:=false;
    if ansiuppercase(dbMovBancoStatus.asstring)<>'C' then
    begin
        dbLancamento.edit;
        dbLancamentoBancoID.asinteger:=dbMovBancoBancoID.asinteger;
        dbLancamentoMovBanco.asinteger:=dbMovBancoMovBanco.asinteger;
        dbLancamentoCheque.asstring:=dbMovBancoDoc.asstring;
        dbLancamentoUsuario.value:=iUsuario;
        dbLancamentoDataAlteracao.value:=date;
        if dbLancamentohistorico.asstring='' then
            dbLancamentoHistorico.asstring:=dbMovBancoFavorecido.asstring;
        dbLancamentostatus.asstring:='P';
        if ((pos(dbLancamentoCod1.asstring,cs)=0) and
            (pos(dbMovBancoTipo.asstring,'XD')<>0)) or
            ((pos(dbLancamentoCod1.asstring,cs)<>0) and
             (pos(dbMovBancoTipo.asstring,'C')<>0)) then
            ft:=-1
        else ft:=1;
        dbLancamentovalorpago.ascurrency:=dbLancamentovalorpago.AsCurrency*ft;
        if dbLancamentovalor.ascurrency=0 then
            dbLancamentovalor.AsCurrency:=dbLancamentovalorpago.AsCurrency;
        if (dbLancamento.state=dsinsert) then
        begin
            dbLancamentoFilial.asinteger:=dbMovBancoFilial.asinteger;
            dbLancamentoDataVencto.asdatetime:=dbMovBancoDataEntrada.asdatetime;
            if dbMovBancodatamovimento.isnull then
            begin
                dbLancamentodatapagto.asdatetime:=dbMovBancodataEntrada.asdatetime;
                dbLancamentoPago.asboolean:=false;
            end
            else
            begin
                dbLancamentodatapagto.asdatetime:=dbMovBancodatamovimento.asdatetime;
                dbLancamentoPago.asboolean:=true;
            end;
            dbLancamentoDataEmissao.asdatetime:=dbMovBancodataEntrada.asdatetime;
        end;
    end;
    dbLancamentoSeq.value:=UpperCase(dbLancamentoSeq.value);
end;
end;

procedure TfrmReclassificacao.Outline1Click(Sender: TObject);
var i,j,k:Integer;
    a:string;
begin
    if outline1.Focused then
    begin
        if outline1.selecteditem>0 then
            with outline1 do
            begin
                if not items[selecteditem].hasitems then
                begin
                    a:=items[selecteditem].text;
                    i:=strtoint(copy(a, 1, 2));
                    j:=strtoint(copy(a, 4, 2));
                    k:=strtoint(copy(a, 7, 2));
                    if k<>0 then
                    begin
                        dbLancamento.edit;
                        dbLancamentoCod1.asinteger:=i;
                        dbLancamentoCod2.asinteger:=j;
                        dbLancamentoCod3.asinteger:=k;
                    end
                    else showmessage('Escolha uma classificação de Nível 3');
                end;
        end;
    end;
end;

procedure TfrmReclassificacao.dbLancamentoAfterPost(DataSet: TDataSet);
var iTipo,iCred:string;
begin
    dbLancamento.Refresh;
    iTipo:='F';
    if (dbLancamentoCod1.value=2) and (dbLancamentoCod2.value=40) and
       ((dbLancamentoCod3.value=1) or (dbLancamentoCod3.value=3) or
       (dbLancamentoCod3.value=4) or (dbLancamentoCod3.value=15)) then
        iTipo:='C';
    if (dbLancamentoCod1.value=2) and ((dbLancamentoCod2.value=50) or (dbLancamentoCod2.value=60)) and
      (dbLancamentoCod3.value=1) then
        iTipo:='P';
    if dbLancamentoCod1.value=1 then
        iCred:='C'
    else
        iCred:='D';
    if (dbMovBancoTipoPag.value<>iTipo) or
       (dbMovBancoTipo.value<>iCred) then
    begin
        dbMovBanco.Edit;
        dbMovBancoTipoPag.value:=iTipo;
        dbMovBanco.Post;
    end;
end;

procedure TfrmReclassificacao.BitBtn8Click(Sender: TObject);
begin
    dbMovBanco.Prior;
end;

procedure TfrmReclassificacao.BitBtn9Click(Sender: TObject);
begin
    dbMovBanco.Next;
end;

procedure TfrmReclassificacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbMovBanco.close;
    dbLancamento.close;
    dbLancamento1.Close;
    dbMovBanco1.Close;
    dbPlanoC.close;
    dbConta.close;
    dbCliente.Close;
    dbClienteDeb.Close;
    dbFilial.Close;
    dbNF.Close;
    dbDuplicata.Close;
    dbFuncionario.Close;
    dbMedico.Close;
    dbEnfermeiro.Close;
end;

procedure TfrmReclassificacao.dsMovBancoStateChange(Sender: TObject);
begin
     cmdNovo.Enabled:=dbMovBanco.State in [dsEdit,dsBrowse,dsInsert];
     cmdExclui.Enabled:=(dbMovBanco.Active=true) and
                        (dbMovBanco.RecordCount<>0);
     cmdGrava.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
     cmdCancela.Enabled:=dbMovBanco.State in [dsEdit,dsInsert];
end;

procedure TfrmReclassificacao.cmdNovoBClick(Sender: TObject);
begin
    dbLancamento.Insert;
    grdLancamento.SetFocus;
end;

procedure TfrmReclassificacao.cmdGravaBClick(Sender: TObject);
begin
    dbLancamento.Post;
    dbLancamento.First;
    dbMovBanco.Edit;
    cmpHistorico.Clear;
    while not dbLancamento.eof do
    begin
        cmpHistorico.Lines.Add(trim(dbLancamentoClienteNome.value)+' - '+
                               trim(dbLancamentoHistorico.value)+' - '+
                               trim(dbLancamentoDoc.value)+' - '+
                               trim(FloatToSTrF(dbLancamentovalorpago.value,ffCurrency,11,2)));
        dbLancamento.Next;
    end;
    dbMovBanco.Post;
    dbLancamento.Refresh;
end;

procedure TfrmReclassificacao.cmdExcluiBClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Atenção! Confirme a exclusão do lançamento',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    dbLancamento.Delete;
end;

procedure TfrmReclassificacao.cmdNovoClick(Sender: TObject);
begin
    dbMovBanco.Insert;
    cmpData.SetFocus;
end;

procedure TfrmReclassificacao.cmdAlteraClick(Sender: TObject);
begin
    dbMovBanco.Edit;
    cmpData.SetFocus;
end;

procedure TfrmReclassificacao.cmdCancelaClick(Sender: TObject);
begin
    dbMovBanco.Cancel;
end;

procedure TfrmReclassificacao.cmdExcluiClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Atenção! Confirme a exclusão do movimento bancário e seu lançamentos',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    while dbLancamento.RecordCount>0 do
        dbLancamento.Delete;
    dbMovBanco.Delete;
end;

procedure TfrmReclassificacao.dsLancamentoStateChange(Sender: TObject);
begin
     cmdNovoB.Enabled:=dbLancamento.State in [dsEdit,dsBrowse,dsInsert];
     cmdExcluiB.Enabled:=(dbLancamento.Active=true) and
                        (dbLancamento.RecordCount<>0);
     cmdGravaB.Enabled:=dbLancamento.State in [dsEdit,dsInsert];
end;

procedure TfrmReclassificacao.cmdLimpaBClick(Sender: TObject);
var i:integer;
begin
    i:=application.messagebox('Atenção! Confirme a liberação do lancamento desta movimentação',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
    
    dbLancamento.Edit;
    dbLancamentoDataPagto.clear;
    dbLancamentoCheque.clear;
    dbLancamentoMovBanco.value:=0;;
    dbLancamentoSelecionado.value:=false;
    dbLancamentoStatus.value:='A';
    dbLancamentoPago.value:=false;
    dbLancamentoBancoId.value:=0;
    dbLancamento.Post;
end;

procedure TfrmReclassificacao.cmdFiltroClick(Sender: TObject);
begin
    dbMovBanco.Refresh;
end;

procedure TfrmReclassificacao.dbMovBancoCalcFields(DataSet: TDataSet);
begin
    if (dbMovBancoTipo.value='R') or
       (dbMovBancoTipo.value='C') or
       (dbMovBancoTipo.value='S') then
        dbMovBancoTipoTexto.value:='CR';

    if (dbMovBancoTipo.value='A') or
       (dbMovBancoTipo.value='D') or
       (dbMovBancoTipo.value='X') or
       (dbMovBancoTipo.value='T') or
       (dbMovBancoTipo.value='P') then
        dbMovBancoTipoTexto.value:='DB';

    if dbMovBancoTipoPag.value='C' then
      dbMovBancoTipoPagTexto.value:='CLT';
    if dbMovBancoTipoPag.value='P' then
      dbMovBancoTipoPagTexto.value:='PRE';
    if dbMovBancoTipoPag.value='F' then
      dbMovBancoTipoPagTexto.value:='FOR';
end;

procedure TfrmReclassificacao.cmdChecar1Click(Sender: TObject);
var v:currency;
    c,l:string;
    i,tot,ifil:integer;
begin
    i:=application.messagebox('Atenção! Confirme a conferência dos lançamentos',
                              'Confirmação',mb_YesNo);
    if i=idno then abort;
try
    cmdStop.Down:=false;
    screen.Cursor:=crhourglass;
    listbox1.Tag:=1;
    listbox1.Items.Clear;
    tot:=0;
    panel1.visible:=true;
    progressbar2.position:=0;
    dbLancamento1.IndexFieldNames:='Filial;Lancamento';
    dbMovBanco1.IndexFieldNames:='MovBanco';
    progressbar2.max:=dbLancamento1.recordcount;
    dbLancamento1.Refresh;
    dbMovBanco1.Refresh;
    dbLancamento1.first;
    while (not dbLancamento1.eof) and (not cmdStop.Down) do
    begin
        Application.processmessages;
        if (dbLancamento1Filial.value)=0 then
        begin
            dbLancamento1.Delete;
            progressbar2.position:=progressbar2.Position+1;
            Continue;
        end;
        if (dbLancamento1MovBanco.value>0) and
           (not dbMovBanco1.Locate('MovBanco',dbLancamento1MovBanco.value,[])) then
        begin
            str(dbLancamento1MovBanco.asinteger:7, c);
            str(dbLancamento1Lancamento.asinteger:7,l);
            c:='['+c+'/'+l+']';
            listbox1.items.add(c+' Movimentação bancária do lançamento não existente (Lançamento '+dbLancamento1Lancamento.asstring+'-'+dbLancamento1DataEmissao.asstring+' - PagtoPre:'+dbLancamento1PagtoPre.asstring+')');
            tot:=tot+1;
            progressbar2.position:=progressbar2.Position+1;
{            //**   usado apenas na limpeza/backup anual
            dbLancamento1.Delete;
            Continue;
            //**}
        end;
        if (dbLancamento1MovBanco.value=0) and
           ((dbLancamento1Status.value='P') or
           (dbLancamento1Pago.value=true)) then
        begin
            dbLancamento1.Edit;
            dbLancamento1Status.value:='A';
            dbLancamento1Pago.value:=false;
            dbLancamento1.Post;
            Continue;
        end;
        if tot=1 then
            cmpProblema.Caption:=IntToStr(tot)+' Movimento com problema'
        else
            cmpProblema.Caption:=IntToStr(tot)+' Movimentos com problemas';
        progressbar2.position:=progressbar2.Position+1;
        dbLancamento1.next;
    end;
finally
    if cmdStop.Down then
        ShowMessage('Processamento interrompido pelo usuario')
    else
        ShowMessage('Lançamentos conferidos com sucesso');
    screen.Cursor:=crDefault;
    dbLancamento.Refresh;
    progressbar2.position:=0;
end;

end;

procedure TfrmReclassificacao.dbMovBanco1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var chk:boolean;
begin
    chk:=(dataset['Tipo']<>'T') and (dataset['Tipo']<>'S');
    if cmdFiltro.down then
        accept:=chk and dbMovBanco1DataMovimento.IsNull
    else
        accept:=chk ;
end;

procedure TfrmReclassificacao.grdLancamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbLancamentoContabilizado.Value=false then
        grdLancamento.Canvas.Font.Color:=clRed;

     grdLancamento.DefaultDrawDataCell(Rect,grdLancamento.Columns[DataCol].field,State);

end;

procedure TfrmReclassificacao.cmdContabilizaClick(Sender: TObject);
begin
    dbLancamento.Edit;
    if dbLancamentoContabilizado.value=true then
        dbLancamentoContabilizado.value:=false
    else
        dbLancamentoContabilizado.value:=true;
    dbLancamento.Post;
end;

procedure TfrmReclassificacao.cmdChecarNFClick(Sender: TObject);
var ivalor,ipago:currency;
    l1,m1,c,n,f,inf:string;
    i,tot,ifil,l,m:integer;
begin
    i:=application.messagebox('Atenção! Confirme a conferência das Notas Fiscais',
                              'Confirmação',mb_YesNo);
try
    cmdStop.Down:=false;
    screen.Cursor:=crhourglass;
    listbox1.items.clear;
    listbox1.Tag:=3;
    panel1.visible:=true;
    progressbar2.position:=0;
    progressbar2.max:=dbNF.recordcount;
    dbMovBanco.tag:=1;
    dbNF.First;
    dbLancamento.Tag:=1;
    dbLancamento1.IndexFieldNames:='Filial;NF;Seq';
    tot:=0;
    while (not dbNF.eof) and (not cmdStop.Down) do
    begin
        if dbNFstatus.asstring='C' then //cancelado
        begin
            while dbDuplicata.RecordCount>0 do
            begin
                if dbLancamento1.Locate('Filial;NF;Seq',VarArrayof([dbDuplicataFilial.value,
                                                                    dbDuplicataDuplicata.value,
                                                                    dbDuplicataSeq.value]),[]) then
                    if dbLancamentoMovBanco.value=0 then
                        dbLancamento1.Delete;
                dbDuplicata.Delete;
            end;
        end
        else
        begin // ativos
            ivalor:=0;
            ipago:=0;
            dbDuplicata.First;
            while not dbDuplicata.Eof do
            begin
                ivalor:=ivalor+dbDuplicataValor.value+
                               dbDuplicataAcrescimos.value-
                               dbDuplicataDescontos.value;
                ipago:=ipago+dbDuplicataValorPago.value;
                dbDuplicata.Next;
            end;
            if dbLancamento1.Locate('Filial;NF;Seq',
                                        VarArrayof([dbDuplicataFilial.value,dbDuplicataDuplicata.value,dbDuplicataSeq.value]),[]) then
            begin
                m:=dbLancamento1MovBanco.value;
                l:=dbLancamento1Lancamento.value;
            end;
            if Int(iValor-dbNFNFLiquida.value)>0.01 then
            begin
                str(m:7,m1);
                str(l:7,l1);
                str(dbNFFilial.asinteger:3, f);
                str(dbNFNF.asinteger:7, n);
                c:='['+m1+'/'+l1+'/'+f+'/'+n+']';
                listbox1.items.add(c+' Valor NF '+FloatToStrF(dbNFNFLiquida.value,ffCurrency,11,2)+' diferente da soma das Duplicatas '+
                                                  FloatToStrF(iValor,ffCurrency,11,2));
                tot:=tot+1;
            end;
            if Int(iPago-dbNFNFLiquida.value)>0.01 then
            begin
                str(m:7,m1);
                str(l:7,l1);
                str(dbNFFilial.asinteger:3, f);
                str(dbNFNF.asinteger:7, n);
                c:='['+m1+'/'+l1+'/'+f+'/'+n+']';
                listbox1.items.add(c+' Valor NF '+FloatToStrF(dbNFNFLiquida.value,ffCurrency,11,2)+' diferente do Valor Pago '+
                                                  FloatToStrF(iPago,ffCurrency,11,2));
                tot:=tot+1;
            end;
            dbDuplicata.First;
            while not dbDuplicata.Eof do
            begin
                if not dbLancamento1.Locate('Filial;NF;Seq',
                                             VarArrayof([dbDuplicataFilial.value,dbDuplicataDuplicata.value,dbDuplicataSeq.value]),[]) then
                begin
                    inf:='NF'+ZeroEsq(dbDuplicataDuplicata.Value,5)+dbDuplicataSeq.value;
                    if not dbLancamento1.Locate('Doc',inf,[]) then
                    begin
                        str(m:7,m1);
                        str(l:7,l1);
                        str(dbNFFilial.asinteger:3, f);
                        str(dbNFNF.asinteger:7, n);
                        c:='['+m1+'/'+l1+'/'+f+'/'+n+']';
                        listbox1.items.add(c+' Duplicata '+dbDuplicataSeq.value+' sem Lancamento');
                        tot:=tot+1;
                    end
                    else
                    begin
                        if dbLancamento1NF.value=0 then
                        begin
                            dbLancamento1.Edit;
                            dbLancamento1NF.value:=dbDuplicataDuplicata.value;
                            dbLancamento1Seq.value:=dbDuplicataSeq.value;
                            dbLancamento1.Post;
                        end;

                    end;
                end;
                dbDuplicata.Next;
            end;
            if tot=1 then
                cmpProblema.Caption:=IntToStr(tot)+' Nota Fiscal com problema'
            else
                cmpProblema.Caption:=IntToStr(tot)+' Notas Fiscais com problemas';
        end;
        progressbar2.position:=progressbar2.position+1;
        dbNF.Next;
    end;
finally
    if cmdStop.Down then
        ShowMessage('Processamento interrompido pelo usuario')
    else
        ShowMessage('Notas Fiscais conferidas com sucesso');
    dbMovBanco.tag:=0;
    dbLancamento.tag:=0;
    screen.Cursor:=crDefault;
    progressbar2.position:=0;
end;
end;

procedure TfrmReclassificacao.BitBtn1Click(Sender: TObject);
begin
    if ListBox1.Items.Count=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;
    if relReclassificacaoErro=nil then
        Application.CreateForm(TrelReclassificacaoErro, relReclassificacaoErro);
    relReclassificacaoErro.qrpRelatorio.Preview;
end;

procedure TfrmReclassificacao.dbMovBancoBeforeDelete(DataSet: TDataSet);
begin
    if dbMovBancoTipo.value='X' then
       frmMenu.Log('Reclassificação','MovBanco-[0]-Doc',dbMovBancoMovBanco.value,0,dbMovBancoDoc.value,'E')
    else
       frmMenu.Log('Reclassificação','MovBanco-BancoId-Favorecido',dbMovBancoMovBanco.value,
                                                                   dbMovBancoBancoId.value,
                                                                   dbMovBancoFavorecido.value,'E');
end;

procedure TfrmReclassificacao.dbLancamentoBeforeDelete(DataSet: TDataSet);
begin
    frmMenu.Log('Reclassificação','Lancamento-MovBanco',dbLancamentoLancamento.value,
                                                        dbLancamentoMovBanco.value,
                                                        '','E')
end;

procedure TfrmReclassificacao.dbMovBancoAfterInsert(DataSet: TDataSet);
begin
    dbMovBancoDataEntrada.value:=date;
end;

procedure TfrmReclassificacao.dbLancamentoClienteChange(Sender: TField);
begin
    dbLancamentoClienteDeb.value:=dbLancamentoCliente.value;
end;

end.
