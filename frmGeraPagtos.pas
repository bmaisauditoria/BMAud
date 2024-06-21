unit frmGeraPagtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DBCtrls;

type
  TfrmGeraPagto = class(TForm)
    frmCopiaFolha: TPanel;
    cmdGerar: TBitBtn;
    barPagar: TProgressBar;
    dbBco: TMSTable;
    cmbBanco: TDBLookupComboBox;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    dsBanco: TDataSource;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label2: TLabel;
    dbFundo: TMSTable;
    dbFundoBancoID: TAutoIncField;
    dbFundoNome: TStringField;
    dbFundoSaldoFechamento: TCurrencyField;
    dbFundoUsuarioFechamento: TStringField;
    dbFundoSaldoAtual: TCurrencyField;
    dbFundoStatus: TStringField;
    dbFundoUsuario: TStringField;
    dsFundos: TDataSource;
    Label3: TLabel;
    cmbFundo: TDBLookupComboBox;
    dbFundoFundo: TAutoIncField;
    dbBcoBancoID: TAutoIncField;
    dbBcoBanco: TSmallintField;
    dbBcoConta: TStringField;
    dbBcoNome: TStringField;
    dbBcoSigla: TStringField;
    dbBcoFilial: TSmallintField;
    dbBcoUltimoCheque: TIntegerField;
    dbBcoSaldoFechamento: TCurrencyField;
    dbBcoUsuarioFechamento: TStringField;
    dbBcoSaldoAtual: TCurrencyField;
    dbBcoLimiteCredito: TCurrencyField;
    dbBcoStatus: TStringField;
    dbBcoUsuario: TStringField;
    dbBcoFilialNome: TStringField;
    dbMovBco: TMSTable;
    dbMovBcoMovBanco: TAutoIncField;
    dbMovBcoBancoID: TIntegerField;
    dbMovBcoTipo: TStringField;
    dbMovBcoDoc: TStringField;
    dbMovBcoValor: TCurrencyField;
    dbMovBcoFavorecido: TStringField;
    dbMovBcoHistorico: TMemoField;
    dbMovBcoStatus: TStringField;
    dbMovBcoFilial: TIntegerField;
    dbMovBcoUsuario: TStringField;
    dbMovBcoBanco: TSmallintField;
    dbMovBcoAgencia: TStringField;
    dbMovBcoConta: TStringField;
    dbMovBcoTipoTexto: TStringField;
    dbMovBcoFundo: TIntegerField;
    dbMovBcoCruzado: TBooleanField;
    dbMovBcoFilialNome: TStringField;
    dbMovBcoUsuarioI: TStringField;
    dbMovBcoSelecionado: TBooleanField;
    dbMovBcoTipoPag: TStringField;
    dbMovBcoAplicacao: TIntegerField;
    dbFun: TMSTable;
    dbFunFuncionario: TIntegerField;
    dbFunNome: TStringField;
    dbFunBanco: TSmallintField;
    dbFunAgencia: TStringField;
    dbFunConta: TStringField;
    dbFunCPF: TStringField;
    dbFunSalarioBruto: TCurrencyField;
    dbFunCliente: TIntegerField;
    dbBcoAgencia: TStringField;
    dbBcoDataFechamento: TDateTimeField;
    dbBcoDataInclusao: TDateTimeField;
    dbFundoDataFechamento: TDateTimeField;
    dbFundoDataInclusao: TDateTimeField;
    dbMovBcoDataEntrada: TDateTimeField;
    dbMovBcoDataMovimento: TDateTimeField;
    dbMovBcoDataInclusao: TDateTimeField;
    dbMovBcoDataAlteracao: TDateTimeField;
    dbFunDataFim: TDateTimeField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraPagto: TfrmGeraPagto;

implementation

uses frmPrincipal, frmPagtoCLT;

{$R *.dfm}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

procedure TfrmGeraPagto.FormShow(Sender: TObject);
var iAno,iMes:integer;
begin
    barPagar.Position:=0;
    dbBco.Open;
    dbFilial.OPen;
    dbFundo.Open;
    cmbBanco.KeyValue:=dbBcoBancoID.value;
    dbFundo.Locate('Nome','Fundo Folha',[loCaseInsensitive,loPartialKey]);
    cmbFundo.keyvalue:=dbFundoFundo.value;

    dbMovBco.Open;
    dbFun.Open;
end;

procedure TfrmGeraPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbBco.Close;
    dbFilial.Close;
    dbFundo.Close;
    dbMovBco.Close;
    dbFun.Close;

    with frmPagtosCLT do
    begin
        dbPagar.Refresh;
        dbMovBanco.Refresh;
    end;
end;


procedure TfrmGeraPagto.cmdGerarClick(Sender: TObject);
var i,iCodigo,iMedico,iMovBanco,iMovBancoIR,iMovBancoGPS, iMovBancoPIS,iFilial:integer;
var iMovBancoCofins,iMovBancoCSll,iMovBancoISSNF,iUltChq,iFundo:integer;
var iFormaPag,iNome:string;
var iTotal,iTotalIR,iTotalGPS,iTotalTaxa,iTotalPis,iTotalCofins,iTotalCsll,iTotalISSNF:currency;
var iPos:Tbookmark;
begin
    if dbBcoStatus.value='I' then
    begin
        ShowMessage('Conta inativa');
        abort;
    end;
    i:=application.messagebox('Confirme a geração dos pagamentos'+#13+
                              'Tenha certeza de que o numero do ultimo cheque emitido esta correto','Atenção!',mb_YesNo);

    if i=idno then abort;

    barPagar.Position:=0;
    iUltChq:=dbBcoUltimoCheque.value;
    iFundo:=cmbFundo.KeyValue;
    with frmPagtosCLT do
    begin
        case frmGeraPagto.tag of
        0:begin
            barPagar.Max:=dbPagar.RecordCount;
            iFilial:=dbFilialFilial.Value;

            dbPagar.First;
            while not dbPagar.eof do
            begin
                barPagar.Position:=barPagar.Position+1;
                if (dbPagarSelecionado.value=true) and
                   (dbPagarValorPago.value>0) and
                   (dbPagarMovBanco.value=0) then
                begin
                    dbFun.Locate('Funcionario',dbPagarFuncionario.value,[]);
                    if (dbFunBanco.value<>0) and
                       (dbFunAgencia.value<>'') and
                       (dbFunConta.value<>'') then
                        if dbFunBanco.value=dbBcoBanco.value then
                           iFormaPag:='A' //transf.
                        else
                            if dbPagarValorPago.value>5000 then
                                iFormaPag:='T'  //Ted
                            else
                                iFormaPag:='D' //Doc
                    else iFormaPag:='C';   //Cheque

                    dbMovBco.Insert;
                    dbMovBcoFilial.value:=iFilial;
                    dbMovBcoTipoPag.value:='C';
                    dbMovBcoDataEntrada.value:=dbPagarDataVencto.Value;
                    dbMovBcoBancoID.value:=dbBcoBancoID.value;
                    dbMovBcoValor.value:=dbPagarValorPago.value;
                    dbMovBcoFavorecido.value:=dbFunNome.value;
                    dbMovBcoHistorico.value:=dbPagarHistorico.value;
                    dbMovBcoStatus.value:='A';
                    dbMovBcoDataInclusao.value:=date;
                    dbMovBcoUsuarioI.Value:=iUsuario;
                    dbMovBcoFundo.Value:=iFundo;
                    if iFormaPag='C' then
                    begin
                        dbMovBcoDoc.value:=dbBcoSigla.value+'-'+ZeroEsq(iUltChq,8);
                        iUltChq:=iUltChq+1;
                        dbMovBcoTipo.value:='X';
                        dbMovBcoCruzado.value:=true;
                    end
                    else
                    begin
                        dbMovBcoDoc.value:=dbPagarDoc.value;
                        dbMovBcoTipo.value:='P';
                        dbMovBcoCruzado.value:=false;
                    end;
                    dbMovBco.Post;

                    dbPagar.Edit;
                    dbPagarBancoID.value:=dbBcoBancoID.value;
                    dbPagarDataPagto.value:=dbPagarDataVencto.value;
                    if dbMovBcoTipo.value='D' then
                        dbPagarPago.value:=true;
                    dbPagarStatus.value:='P';
                    dbPagarPorcentagem.value:=100;
                    dbPagarMovBanco.value:=dbMovBcoMovBanco.value;
                    dbPagarUsuario.value:=iUsuario;
                    dbPagarDataAlteracao.value:=date;
                    dbPagarSelecionado.value:=false;
                    if dbMovBcoTipo.value='X' then
                        dbPagarCheque.value:=dbMovBcoDoc.value;

                    dbPagar.Post;

                    dbBco.Edit;
                    dbBcoSaldoAtual.value:=dbBcoSaldoAtual.value-dbMovBcoValor.value;
                    if iFormaPag='C' then
                        if StrToInt(copy(dbMovBcoDoc.value,5,12))>=dbBcoUltimoCheque.value then
                            dbBcoUltimocheque.value:=StrToInt(copy(dbMovBcoDoc.value,5,12))+1;
                    dbBco.Post;

                    dbFundos.Edit;
                    dbFundosSaldoAtual.value:=dbFundosSaldoAtual.value-dbMovBcoValor.value;
                    dbFundos.post;
                    dbPagar.First;
                end
                else
                  dbPagar.Next;
            end;
            ShowMessage('Pagamentos gerados com sucesso');
        end;
    end;
    end;
    barPagar.Position:=0;
    Close;
end;

end.
