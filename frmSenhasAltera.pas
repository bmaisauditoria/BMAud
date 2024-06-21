unit frmSenhasAltera;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  TfrmSenhaAltera = class(TForm)
    pnSenha: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmdGravaPreco: TBitBtn;
    cmdCancelaTab: TBitBtn;
    lblSenha: TEdit;
    lblSenhaNova: TEdit;
    lblSenhaNova1: TEdit;
    procedure cmdCancelaTabClick(Sender: TObject);
    procedure cmdGravaPrecoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmSenhaAltera: TfrmSenhaAltera;


implementation

uses frmCadastros;

{$R *.DFM}

function Encrypt( Senha:String ): String;
Const
    Chave : String = 'Jesus';
Var
    x,y : Integer;
    NovaSenha : String;
begin
   for x := 1 to Length( Chave ) do begin
      NovaSenha := '';
      for y := 1 to Length( Senha ) do
         NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
      Senha := NovaSenha;
   end;
   result := Senha;
end;

procedure TfrmSenhaAltera.cmdCancelaTabClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmSenhaAltera.cmdGravaPrecoClick(Sender: TObject);
var iSenha:string;
begin
     iSenha:=Encrypt(frmCadastro.dbLoginSenha.Text);
     if iSenha<>lblSenha.Text then
     begin
        ShowMessage('Senha Atual incorreta!');
        lblSenha.Clear;
        lblSenhaNova.Clear;
        lblSenhaNova1.Clear;
        abort;
     end;

     if (lblSenhaNova.Text='0000') or
        (lblSenhaNova.Text='') or
        (lblSenhaNova1.Text='0000') then
     begin
        ShowMessage('Senha nova inv�lida');
        lblSenha.Clear;
        lblSenhaNova.Clear;
        lblSenhaNova1.Clear;
        abort;
     end;

     if lblSenhaNova.Text<>lblSenhaNova1.Text then
     begin
        ShowMessage('Confirma��o da senha nova n�o confere');
        lblSenha.Clear;
        lblSenhaNova.Clear;
        lblSenhaNova1.Clear;
        abort;
     end;

     frmCadastro.dbLogin.Edit;
     frmCadastro.dbLoginSenha.Text:=Encrypt(lblSenhaNova.Text);
     frmCadastro.dbLogin.Post;

     ShowMessage('Senha alterada com Sucesso!');
     Close;
end;

procedure TfrmSenhaAltera.FormShow(Sender: TObject);
begin
    lblSenha.Clear;
    lblSenhaNova.Clear;
    lblSenhaNova1.Clear;
end;

end.
