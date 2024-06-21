unit frmProdsExclusao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmProdExclusao = class(TForm)
    Label1: TLabel;
    cmdNao: TBitBtn;
    cmdLimpar: TBitBtn;
    cmdSim: TBitBtn;
    procedure cmdSimClick(Sender: TObject);
    procedure cmdNaoClick(Sender: TObject);
    procedure cmdLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdExclusao: TfrmProdExclusao;

implementation

uses frmProdutividades, frmPrincipal;

{$R *.dfm}

procedure TfrmProdExclusao.cmdSimClick(Sender: TObject);
begin
    with frmProdutividade do
    begin
         while dbPagtoPreItens.RecordCount>0 do
         begin
            while dbProd.RecordCount>0 do
            begin
                if (dbProdServico.value='FIX') or
                   (dbProdServico.value='FXP') or
                   (dbProdServico.value='MIN') then
                    dbProd.Delete
                else
                begin
                    dbProd.Edit;
                    dbProdPagtoPre.value:=0;
                    dbProdLancamento.value:=0;
                    dbProd.Post;
                end;
            end;
            dbPagtoPreItens.Delete;
         end;
         dbPagtoPre.Delete;
    end;
end;

procedure TfrmProdExclusao.cmdNaoClick(Sender: TObject);
begin
    frmProdExclusao.Close;
end;

procedure TfrmProdExclusao.cmdLimparClick(Sender: TObject);
var i:integer;
begin
    with frmProdutividade do
    begin
        if frmMenu.dbUsuarioMasterFin.Value=false then
        begin
            ShowMessage('Exclusão permitida apenas para Usuários Master');
            abort;
        end;
        ShowMessage('Atenção! As Produtividades deste Prestador serão excluidas e não poderão mais ser processadas');
        i:=Application.MessageBox('Confirme a Exclusão do Registro somente se tiver certeza! ',
        'Aviso',MB_YESNO +  mb_iconExclamation);

        if i=id_no then abort;

        dbProd.tag:=1;
         while dbPagtoPreItens.RecordCount>0 do
         begin
            while dbProd.RecordCount>0 do
            begin
                if dbProdAud.Locate('Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;ClienteAud;Hospital;Servico',
                             VarArrayof([dbProdProdutividade.value,
                                         dbProdAnoCompetencia.value,
                                         dbProdMesCompetencia.value,
                                         dbProdTipo.value,
                                         dbProdAuditor.value,
                                         dbProdClienteAud.value,
                                         dbProdHospital.value,
                                         dbProdServico.value]),[]) then
                begin
                    dbProdAud.Edit;
                    dbProdAudPagtoPre.value:=99999999;
                    dbProdAudDataAlteracao.value:=date;
                    dbProdAudUsuarioA.value:=iUsuario;
                    dbProdAud.Post;
                end;
                dbProd.Delete;
            end;
            dbPagtoPreItens.Delete;
         end;
         dbPagtoPre.Delete;
         dbProd.tag:=0;
     end;
     Close;
end;

procedure TfrmProdExclusao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmProdutividade.dbProd.tag:=0;
end;

end.
