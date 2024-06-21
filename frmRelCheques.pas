unit frmRelCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons;

type
  TfrmRelCheque = class(TForm)
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    Panel1: TPanel;
    cmbBanco: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    chqIni: TEdit;
    chqFim: TEdit;
    cmdImp: TBitBtn;
    BitBtn1: TBitBtn;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    chkPre: TCheckBox;
    dbBancoAgencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmbBancoCloseUp(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
      iBanco:integer;
  end;

var
  frmRelCheque: TfrmRelCheque;

implementation

uses dmRelatorios, frmPrincipal, frmCheques;

{$R *.dfm}

procedure TfrmRelCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbBanco.Close;
end;

procedure TfrmRelCheque.FormShow(Sender: TObject);
begin
    dbBanco.Open;
    dbBanco.Locate('BancoId',iBanco,[]);
    cmbBanco.keyvalue:=dbBancoBancoID.value;
end;

procedure TfrmRelCheque.cmbBancoCloseUp(Sender: TObject);
begin
    chqIni.Text:=dbBancoSigla.value+'-';
    chqFim.Text:=dbBancoSigla.value+'-';
end;

procedure TfrmRelCheque.cmdImpClick(Sender: TObject);
begin
    with dmRelatorio do
    begin
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      MovBanco.BancoID=:iBanco and '+
                            '      MovBanco.Doc>=:iDocIni and '+
                            '      MovBanco.Doc<=:iDocFim '+
                            'order by Doc ';
        relcheque.ParamByName('iBanco').value:=cmbBanco.KeyValue;
        relcheque.ParamByName('iDocIni').value:=chqIni.Text;
        relcheque.ParamByName('iDocFim').value:=chqFim.Text;
        relCheque.Open;
        if relCheque.RecordCount=0 then
        begin
            ShowMessage('Numero de cheque(s) não localizado(s)');
            abort;
        end;     
    end;

    frmMenu.rvFin.SelectReport('relCheque341',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelCheque.BitBtn1Click(Sender: TObject);
begin
    with dmRelatorio do
    begin
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      MovBanco.BancoID=:iBAnco and '+
                            '      MovBanco.Doc>=:iDocIni and '+
                            '      MovBanco.Doc<=:iDocFim '+
                            'order by Doc ';
        relcheque.ParamByName('iBanco').value:=cmbBanco.KeyValue;
        relcheque.ParamByName('iDocIni').value:=chqIni.Text;
        relcheque.ParamByName('iDocFim').value:=chqFim.Text;
        relCheque.Open;
    end;
    frmMenu.rvFin.SelectReport('relCopiaCheque',true);
    frmMenu.rvFin.Execute;
end;

end.
