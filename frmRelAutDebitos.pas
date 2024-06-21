unit frmRelAutDebitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls;

type
  TfrmRelAutDebito = class(TForm)
    dbFun: TMSTable;
    dsFun: TDataSource;
    Panel1: TPanel;
    cmdImp: TBitBtn;
    GroupBox1: TGroupBox;
    rbCliente: TRadioButton;
    rbFuncionario: TRadioButton;
    dbFunFuncionario: TIntegerField;
    dbFunNome: TStringField;
    dbFunBanco: TSmallintField;
    dbFunAgencia: TStringField;
    dbFunConta: TStringField;
    dbCli: TMSTable;
    dsCli: TDataSource;
    dbCliCliFor: TAutoIncField;
    dbCliNome: TStringField;
    dbCliBanco: TSmallintField;
    dbCliAgencia: TStringField;
    dbCliConta: TStringField;
    cmbCli: TDBLookupComboBox;
    cmbFun: TDBLookupComboBox;
    Label11: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    Memo1: TMemo;
    rbExterno: TRadioButton;
    dbBco: TMSTable;
    dsBco: TDataSource;
    dbBcoBanco: TSmallintField;
    dbBcoNome: TStringField;
    dbFunCPF: TStringField;
    dbCliCGC: TStringField;
    Label3: TLabel;
    DBText7: TDBText;
    cmbBco: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmpAgencia: TEdit;
    cmpConta: TEdit;
    cmpCGC: TEdit;
    Label7: TLabel;
    cmpNome: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    iMovBanco,iBanco:integer;
    iAgencia, iConta, iNome, iCNPJ:string;
    { Public declarations }
  end;

var
  frmRelAutDebito: TfrmRelAutDebito;

implementation

uses dmRelatorios, frmPrincipal, frmCheques, frmPagtoCLT;

{$R *.dfm}

procedure TfrmRelAutDebito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFun.Close;
    dbCli.Close;
    dbBco.Close;
end;

procedure TfrmRelAutDebito.FormShow(Sender: TObject);
begin
    dbFun.Open;
    cmbFun.keyvalue:=dbFunFuncionario.value;
    dbCli.Open;
    cmbCli.keyvalue:=dbCliCliFor.value;
    dbBco.Open;
    cmbBco.keyvalue:=dbBcoBanco.value;
end;

procedure TfrmRelAutDebito.cmdImpClick(Sender: TObject);
begin
    if frmRelAutDebito.tag=0 then
        iMovBanco:=frmCheque.dbMovBancoMovBanco.value;
    if frmRelAutDebito.tag=1 then
        iMovBanco:=frmPagtosCLT.dbMovBancoMovBanco.value;

    if rbCliente.Checked=true then
    begin
        iBanco:=dbCliBanco.Value;
        iAgencia:=dbCliAgencia.value;
        iConta:=dbCliConta.Value;
        iNome:=dbCliNome.value;
        iCNPJ:=dbCliCGC.value;
    end;
    if rbFuncionario.Checked=true then
    begin
        iBanco:=dbFunBanco.Value;
        iAgencia:=dbFunAgencia.value;
        iConta:=dbFunConta.Value;
        iNome:=dbFunNOme.value;
        iCNPJ:=dbFunCPF.value;
    end;
    if rbExterno.Checked=true then
    begin
        iBanco:=dbBcoBanco.Value;
        iAgencia:=cmpAgencia.Text;
        iConta:=cmpConta.Text;
        iNome:=cmpNome.Text;
        iCNPJ:=cmpCGC.Text;
    end;
    with dmRelatorio do
    begin
        relAutDeb.close;
        relAutDeb.sql.clear;
        relAutDeb.sql.text:='select * from MovBanco,CCorrente  '+
                            'where MovBanco.BancoId=CCorrente.BAncoId and '+
                            '      MovBanco.MovBanco=:MovBanco ';
        relAutDeb.ParamByName('MovBanco').value:=iMovBanco;
        relAutDeb.Open;
    end;

    frmMenu.RvFin.SetParam('Banco',IntToStr(iBanco));
    frmMenu.RvFin.SetParam('Agencia',iAgencia);
    frmMenu.RvFin.SetParam('Conta',iConta);
    frmMenu.RvFin.SetParam('Nome',iNome);
    frmMenu.RvFin.SetParam('CNPJ',iCNPJ);
    frmMenu.RvFin.SetParam('Obs',Memo1.Text);

    frmMenu.rvFin.SelectReport('relAutorizaDeb',true);
    frmMenu.rvFin.Execute;
end;

end.
