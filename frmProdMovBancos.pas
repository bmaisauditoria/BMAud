unit frmProdMovBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, MemDS, DBAccess, MSAccess, Buttons;

type
  TfrmProdMovBanco = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    cmdVinculaP: TBitBtn;
    procedure Edit1Change(Sender: TObject);
    procedure cmdVinculaPClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdMovBanco: TfrmProdMovBanco;

implementation

uses frmPrincipal, frmProdutividades;

{$R *.dfm}

procedure TfrmProdMovBanco.Edit1Change(Sender: TObject);
begin
    frmProdutividade.dbMovBancoAtu.Locate('MovBanco',trim(Edit1.Text),[]);
end;

procedure TfrmProdMovBanco.cmdVinculaPClick(Sender: TObject);
var iResultado,iMovBanco,iLancamento:integer;
begin
with frmProdutividade do
begin
    dbPagarAtualiza.Refresh;
    dbMovBancoAtu.Refresh;

    iMovBanco:=StrToInt(Edit1.text);
    if not dbMovBancoAtu.Locate('MovBanco',iMovBanco,[]) then
    begin
        ShowMessage('Movimento bancário não localizado');
        abort;
    end;
    if dbProdMovBanco.value>0 then
    begin
        ShowMessage('Produtividade já paga');
        abort;
    end;
    if dbMovBancoAtuFilial.value<>dbPagtoPreFilial.value then
    begin
        ShowMessage('Filial da Produtividade diferente do Movimento Bancário');
        abort;
    end;
    if dbMovBancoAtuBancoID.value<>dbPagtoPreBancoID.value then
    begin
        ShowMessage('Banco da Produtividade diferente do Movimento Bancário');
        abort;
    end;
    if dbMovBancoAtuValor.value<>dbProdTotal.value then
    begin
        ShowMessage('Valor da Produtividade diferente do Movimento Bancário');
        abort;
    end;
    if dbProdServico.value<>'FIX' then
    begin
        ShowMessage('Produtividade não é um fixo');
        abort;
    end;

    ShowMessage('Os lançamentos do Mov.Bancario serão excluidos e substituidos pelo da Produtividade'+#13+
                'O Favorecido tambem será atualizado');

    iResultado:=Application.MessageBox('Confirme o vinculo do registro!',
     'Aviso', mb_yesno+ mb_iconExclamation);

    if(iResultado=id_no) then abort;

    dbMovBancoAtu.Edit;
    dbMovBancoAtuPagtoPre.value:=dbPagtoPrePagtoPre.value;
    dbMovBancoAtuFavorecido.value:=dbPagtoPreEmpresaNome.value;
    dbMovBancoAtuFundo.value:=3;
    dbMovBancoAtu.Post;
    iLancamento:=dbProdLancamento.value;

    dbPagarAtualiza.Locate('MovBanco',iMovBanco,[]);
    while (dbPagarAtualizaMovBanco.value=iMovBanco) and
          (not dbPagarAtualiza.eof) do
    begin      
         if dbPagarAtualizaLancamento.value<>iLancamento then
             dbPagarAtualiza.Delete
         else
            dbPagarAtualiza.Next;
    end;        

    if  dbPagar.Locate('Lancamento',dbProdLancamento.value,[]) then
    begin
        dbPagar.Edit;
        dbPagarBancoID.value:=dbPagtoPreBancoID.value;
        dbPagarDataPagto.value:=dbPagarDataVencto.value;
        dbPagarValorPago.value:=dbPagarValor.value;
        dbPagarPago.value:=true;
        dbPagarStatus.value:='P';
        dbPagarPorcentagem.value:=100;
        dbPagarMovBanco.value:=iMovBanco;
        dbPagarUsuario.value:=iUsuario;
        dbPagarDataAlteracao.value:=date;
        if dbMovBancoAtuTipo.value='X' then
             dbPagarCheque.value:=dbMovBancoAtuDoc.value;
        dbPagar.Post;
    end;
    dbProd.Edit;
    dbProdMovBanco.value:=iMovBanco;
    dbProd.Post;

    dbProd.Refresh;
    dbPagtoPre.Refresh;
    dbPagar.Refresh;
    dbMovBanco.Refresh;

    dbPagar.First;
    ShowMessage('Pagamento vinculado com sucesso');
    close;
end;
end;

procedure TfrmProdMovBanco.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
//    if (Key=VK_DELETE) then
//        abort;
//    if (Key=VK_INSERT) then
//        abort;
end;

end.
