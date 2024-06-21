unit frmFechamentosA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, StdCtrls, Mask, Buttons, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS;

type
  TfrmFechamentoA = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cmdFechamento: TSpeedButton;
    lblData: TLabel;
    lblValor: TLabel;
    procedure cmdFechamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamentoA: TfrmFechamentoA;
  iData:TDate;
  iValor:Currency;
implementation

uses frmMovsBAnco;
{$R *.dfm}

procedure TfrmFechamentoA.cmdFechamentoClick(Sender: TObject);
var i:integer;
begin
    with frmMovBanco do
    begin
        if dbBancoDataFechamento.value>iData then
        begin
            ShowMessage('Data do Fechamento selecionada maior que Data do Fechamento atual');
            abort;
        end;
        i:=application.messagebox('Confirme a alteração do Fechamento',
                                  'Fechamento',mb_YesNo);
        if i=idno then
            dbBanco.Cancel
        else
        begin
            dbBanco.Post;
            ShowMessage('Feche e Reabra a tela de Movimentação bancária para atualizar as informações');
        end;
    end;
    Close;
end;

procedure TfrmFechamentoA.FormShow(Sender: TObject);
begin
    iData:=frmMovBanco.dbBancoDataFechamento.value;
    iValor:=frmMovBanco.dbBancoSaldoFechamento.value;
    frmMovBAnco.dbBanco.Edit;
    lblData.Caption:=DateToStr(iDAta);
    lblValor.Caption:=FloatToStrF(iValor,ffCurrency,11,2);
end;

procedure TfrmFechamentoA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    with frmMovBanco do
    begin
        if dbBanco.State in [dsEdit] then
            dbBanco.Cancel;
    end;
end;

end.
