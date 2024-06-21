unit frmComplementos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, Grids, DBGrids;

type
  TfrmComplemento = class(TForm)
    qryComp: TMSQuery;
    grdComp: TDBGrid;
    qryCompDiarias: TFloatField;
    qryCompValor: TCurrencyField;
    qryCompComplemento: TBooleanField;
    dsComp: TDataSource;
    qryCompComplementoTexto: TStringField;
    qryCompSequencial: TIntegerField;
    qryCompCliente: TIntegerField;
    qryCompDataFechamento: TDateTimeField;
    qryCompAtendimentoHI: TLargeintField;
    procedure qryCompCalcFields(DataSet: TDataSet);
    procedure grdCompDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grdCompDblClick(Sender: TObject);
    procedure qryCompAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComplemento: TfrmComplemento;

implementation

uses frmPrincipal,frmPreAnalises;

{$R *.dfm}

procedure TfrmComplemento.qryCompCalcFields(DataSet: TDataSet);
begin
    if qryCompComplemento.value=true then
       qryCompComplementoTexto.value:='Complemento'
    else
       qryCompComplementoTexto.value:='Principal'
end;

procedure TfrmComplemento.grdCompDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if qryCompComplemento.value=false then
        grdComp.Canvas.Font.Color:=clRed;

     grdComp.DefaultDrawDataCell(Rect,grdComp.Columns[DataCol].field,State);
end;

procedure TfrmComplemento.grdCompDblClick(Sender: TObject);
var iseq:integer;
begin
    iseq:=qryCompSequencial.value;
    if qryCompComplemento.value=false then
    begin
        showMessage('Item ja é o principal');
        abort;
    end;
    qryComp.First;
    while not qryComp.eof do
    begin
        qryComp.Edit;
        if qryCompSequencial.value=iSeq then
           qryCompComplemento.value:=false
        else
           qryCompComplemento.value:=true;
        qryComp.Post;
        qryComp.Next;
    end;
end;

procedure TfrmComplemento.qryCompAfterPost(DataSet: TDataSet);
begin
    with frmPreAnalise do
    begin
        dbProcessoBusca.sql.Clear;
        dbProcessoBusca.sql.text:='Select * from AtendHI '+
                                  'where AtendimentoHI=:iAtend and '+
                                  '      Cliente=:iCli '+
                                  'order by Cliente, AtendimentoHI';
        dbProcessoBusca.ParamByName('iAtend').Value:=qryCompAtendimentoHI.Value;
        dbProcessoBusca.ParamByName('iCli').Value:=qryCompCliente.Value;
        dbProcessoBusca.Open;
        dbProcessoBusca.First;

        dbProcessoBusca.Edit;
        dbProcessoBuscaComplemento.value:=qryCompComplemento.value;
        dbProcessoBusca.Post;
    end;
end;

procedure TfrmComplemento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmPreAnalise.dbProcesso.Refresh;
    qryComp.Close;
end;

end.
