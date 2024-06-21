unit frmRelPagtosGPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls,
  Mask;

type
  TfrmRelPagtoGPS = class(TForm)
    Panel1: TPanel;
    cmdImp: TBitBtn;
    DBText1: TDBText;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText3: TDBText;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText2: TDBText;
    rdgDados: TRadioGroup;
    dbRelGPS: TMSTable;
    dsRelGPS: TDataSource;
    dbRelGPSMovBanco: TIntegerField;
    dbRelGPSBancoID: TIntegerField;
    dbRelGPSFundo: TIntegerField;
    dbRelGPSTipo: TStringField;
    dbRelGPSDoc: TStringField;
    dbRelGPSValor: TCurrencyField;
    dbRelGPSMulta: TCurrencyField;
    dbRelGPSOutros: TCurrencyField;
    dbRelGPSFavorecido: TStringField;
    dbRelGPSCruzado: TBooleanField;
    dbRelGPSHistorico: TMemoField;
    dbRelGPSStatus: TStringField;
    dbRelGPSFilial: TIntegerField;
    dbRelGPSUsuario: TStringField;
    dbRelGPSValorGPS: TCurrencyField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cmpCodigo: TEdit;
    cmpCompetencia: TEdit;
    dbRelGPSFilialNome: TStringField;
    dbRelGPSDataEntrada: TDateTimeField;
    dbRelGPSDataMovimento: TDateTimeField;
    dbRelGPSDataInclusao: TDateTimeField;
    procedure cmdImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbRelGPSCalcFields(DataSet: TDataSet);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPagtoGPS: TfrmRelPagtoGPS;

implementation

uses dmRelatorios, frmPrincipal,frmCheques;

{$R *.dfm}

procedure TfrmRelPagtoGPS.cmdImpClick(Sender: TObject);
var iMovBanco:integer;
begin
    if dbRelGPS.State in [dsEdit,dsInsert] then
        dbRelGPS.Post;
    iMovBanco:=frmCheque.dbMovBancoMovBanco.value;
    with dmRelatorio do
    begin
        relGPS.close;
        relGPS.sql.clear;
        relGPS.sql.text:='select * from RelGPS,CCorrente,Lancamentos  '+
                         'where RelGPS.BancoID=CCorrente.BancoID and '+
                         '      Lancamentos.MovBanco=RelGPS.MovBanco and '+
                         '      RelGPS.MovBanco=:MovBanco';
        relGPS.ParamByName('MovBanco').value:=iMovBanco;
        relGPS.Open;
    end;

    frmMenu.RvFin.SetParam('Codigo',cmpCodigo.text);
    frmMenu.RvFin.SetParam('Competencia',cmpCompetencia.text);
    
    case rdgDados.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relPagtoGPS',true);
    1:frmMenu.rvFin.SelectReport('relPagtoGPS1',true);
    end;
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelPagtoGPS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbRelGPS.Close;
end;

procedure TfrmRelPagtoGPS.FormShow(Sender: TObject);
var i:integer;
begin
    dbRelGPS.Close;
    dbRelGPS.SQL.Text:='Delete from relGPS';
    dbRelGPS.Execute;
    dbRelGPS.SQL.Text:='Select * from relGPS';
    dbRelGPS.Open;
    with frmCheque do
    begin
        dbRelGPS.Insert;
        for i:=0 to dbRelGPS.FieldCount-1 do
        begin
            if dbRelGPS.fields[i].fieldname='Multa' then
                dbRelGPSMulta.value:=0
            else
                if dbRelGPS.fields[i].fieldname='Outros' then
                    dbRelGPSOutros.value:=0
                else
                    if dbRelGPS.fields[i].fieldname='ValorGPS' then
                        dbRelGPSValorGPS.value:=0
                    else
                        dbRelGPS.fields[i].assign(dbMovBanco.fieldbyname(dbRelGPS.fields[i].fieldname));
        end;
        dbRelGPS.Post;
    end;
end;

procedure TfrmRelPagtoGPS.dbRelGPSCalcFields(DataSet: TDataSet);
begin
    dbRelGPSValorGPS.value:=dbRelGPSValor.value-dbRelGPSOutros.value-dbRelGPSMulta.value;
end;

procedure TfrmRelPagtoGPS.DBEdit3Enter(Sender: TObject);
begin
    if dbRelGPS.State in [dsbrowse] then
        dbRelGPS.Edit;
end;

procedure TfrmRelPagtoGPS.DBEdit4Enter(Sender: TObject);
begin
    if dbRelGPS.State in [dsbrowse] then
        dbRelGPS.Edit;
end;

end.
