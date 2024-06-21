unit frmParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS;

type
  TfrmParam = class(TForm)
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    cmdCopia2: TBitBtn;
    Label18: TLabel;
    Label11: TLabel;
    dbParam: TMSTable;
    dbParamIRendaP: TFloatField;
    dbParamIRendaMin: TCurrencyField;
    dbParamGPSP: TFloatField;
    dbParamPisP: TFloatField;
    dbParamPisMin: TCurrencyField;
    dbParamCofinsP: TFloatField;
    dbParamCofinsMin: TCurrencyField;
    dbParamCSLLP: TFloatField;
    dbParamCSLLMin: TCurrencyField;
    dbParamDiaVencto: TIntegerField;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    dbParamDiaVenctoI: TIntegerField;
    dsParam: TDataSource;
    procedure cmdCopia2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParam: TfrmParam;

implementation

uses frmPrincipal, frmProdutividades;

{$R *.dfm}

procedure TfrmParam.cmdCopia2Click(Sender: TObject);
begin
    if dbParam.State in [dsEdit] then
       dbParam.Post;
end;

procedure TfrmParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if dbParam.State in [dsEdit] then
       dbParam.Cancel;
end;

procedure TfrmParam.FormShow(Sender: TObject);
begin
    dbParam.Open;
    if dbParam.RecordCount<1 then
    begin
        dbParam.Insert;
        dbParamIRendaP.value:=1.5;
        dbParamIRendaMin.value:=10;
        dbParamGPSP.value:=11;
        dbParamPisP.value:=0.65;
        dbParamPisMin.Value:=5000;
        dbParamCofinsP.value:=3;
        dbParamCofinsMin.value:=5000;
        dbParamCSLLP.value:=1;
        dbParamCSLLMin.value:=5000;
        dbParamDiaVencto.value:=25;
        dbParamDiaVenctoI.value:=15;
        dbParam.Post;
    end;
    dbParam.First;
end;

end.
