unit frmPagtoCLTLans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, DBCtrls;

type
  TfrmPagtoCLTLan = class(TForm)
    frmCopiaFolha: TPanel;
    cmdCopia2: TBitBtn;
    barPagar: TProgressBar;
    dbFilial: TMSTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dbFundos: TMSTable;
    dbFundosBancoID: TAutoIncField;
    dbFundosNome: TStringField;
    dbFundosSaldoFechamento: TCurrencyField;
    dbFundosUsuarioFechamento: TStringField;
    dbFundosSaldoAtual: TCurrencyField;
    dbFundosStatus: TStringField;
    dbFundosUsuario: TStringField;
    dsFundos: TDataSource;
    Label3: TLabel;
    cmbFundo: TDBLookupComboBox;
    dbFundosFundo: TAutoIncField;
    Label4: TLabel;
    dtpVencto: TDateTimePicker;
    rdgSalario: TRadioGroup;
    dbFundosDataFechamento: TDateTimeField;
    dbFundosDataInclusao: TDateTimeField;
    dsFilial: TDataSource;
    cmbFilial: TDBLookupComboBox;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmdCopia2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagtoCLTLan: TfrmPagtoCLTLan;

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

procedure TfrmPagtoCLTLan.FormShow(Sender: TObject);
var iAno,iMes:integer;
begin
    barPagar.Position:=0;
    dtpVencto.date:=date;
    dbFilial.OPen;
    dbFundos.Open;
    dbFundos.Locate('Nome','Fundo Folha',[loCaseInsensitive,loPartialKey]);
    cmbFilial.KeyValue:=dbFilialFilial.value;
    cmbFundo.keyvalue:=dbFundosFundo.value;
end;

procedure TfrmPagtoCLTLan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
    dbFundos.Close;

    with frmPagtosCLT do
      dbPagar.Refresh;
end;


procedure TfrmPagtoCLTLan.cmdCopia2Click(Sender: TObject);
var i,iFilial:integer;
var imes,iano,idia:word;
begin
    if dtpVencto.date<date then
    begin
      ShowMessage('Data de Vencimento menor que data atual');
      abort;
    end;

    i:=application.messagebox('Confirme o lançamento nas previsões','Atenção!',mb_YesNo);
    if i=idno then abort;

    DecodeDate(dtpVencto.Date,iano,imes,idia);
    iFilial:=cmbFilial.KeyValue;

with frmPagtosCLT do
begin
    barPagar.Position:=0;
    barPagar.Max:=dbFuncionario.RecordCount;

    dbFuncionario.First;
    while not dbFuncionario.eof do
    begin
        if dbFuncionarioFilial.value=iFilial then
        begin
            barPagar.Position:=barPagar.Position+1;
            if (dbPagar.Locate('DataVencto;Funcionario',VarArrayof([dtpVencto.date,dbFuncionarioFuncionario.value]),[])) and
               (dbPagarMovBanco.value=0) then
                  dbPagar.Edit
            else
            begin
              dbPagar.Insert;
              dbPagarDataInclusao.value:=date;
              dbPagarUsuarioI.value:=iUsuario;
            end;
            dbPagarDataEmissao.Value:=date;
            dbPagarDataVencto.value:=dtpVencto.Date;
            dbPagarCliente.value:=0;
            dbPagarValor.value:=dbFuncionarioSalarioBruto.value;
            dbPagarStatus.value:='A';
            dbPagarFilial.value:=iFilial;
            dbPagarUsuario.value:=iUsuario;
            dbPagarDataAlteracao.value:=date;
            dbPagarClienteDeb.value:=dbFuncionarioCliente.value;
            dbPagarFuncionario.value:=dbFuncionarioFuncionario.value;
            dbPagarValorBruto.value:=dbFuncionarioSalarioBruto.value;
            dbPagarTributo.value:=false;
            dbPagarPago.value:=false;
            dbPagarTipoPag.value:='C';

            dbPagarCod1.value:=2;
            dbPagarCod2.value:=40;
            if rdgSalario.ItemIndex=0 then
            begin
                dbPagarCod3.value:=1;
                dbPagarHistorico.value:='Salário '+ZeroEsq(imes,2)+'/'+
                                              ZeroEsq(iano,4)+
                                            ' ref. func. '+dbFuncionarioNome.value;
                dbPagarDoc.value:='FP'+ZeroEsq(imes,2)+
                                  ZeroEsq(iano,4)+
                                  ZeroEsq(dbFuncionarioFuncionario.value,5);
            end
            else
            begin
                dbPagarCod3.value:=3;
                dbPagarHistorico.value:='13o.Salário -'+ZeroEsq(iano,4)+
                                                 ' ref. func. '+dbFuncionarioNome.value;
                dbPagarDoc.value:='FP13'+ZeroEsq(iano,4)+
                                    ZeroEsq(dbFuncionarioFuncionario.value,5);
            end;
            dbPagar.Post;
        end;
        dbFuncionario.Next;
    end;
end;
    barPagar.Position:=0;
    ShowMessage('Lançamentos gerados com sucesso');
end;

end.
