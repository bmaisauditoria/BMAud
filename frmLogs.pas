unit frmLogs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, ToolWin, DB, MemDS,
  DBAccess, MSAccess;

type
  TfrmLog = class(TForm)
    tabLog: TTabControl;
    CoolBar1: TCoolBar;
    cmbBusca1: TDateTimePicker;
    cmbBusca: TComboBox;
    grdLog: TDBGrid;
    dsLog: TDataSource;
    tabFiltro: TTabControl;
    Label12: TLabel;
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbLog: TMSQuery;
    dbLogRegistro: TIntegerField;
    dbLogModulo: TStringField;
    dbLogCliente: TIntegerField;
    dbLogCampos: TStringField;
    dbLogCodigo1: TIntegerField;
    dbLogCodigo2: TIntegerField;
    dbLogCodigo3: TStringField;
    dbLogOperacao: TStringField;
    dbLogUsuario: TStringField;
    dbLogData: TDateTimeField;
    dbLogHora: TDateTimeField;
    dbLogOperacaoTexto: TStringField;
    dbLogHoraTexto: TStringField;
    dbLogClienteNome: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbLogCalcFields(DataSet: TDataSet);
    procedure grdLogKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grdLogDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tabLogChange(Sender: TObject);
    procedure cmbBusca1Change(Sender: TObject);
    procedure cmbBuscaChange(Sender: TObject);
    procedure tabFiltroChange(Sender: TObject);
    procedure dbLogFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLog: TfrmLog;

implementation

uses frmPrincipal, Math;

{$R *.dfm}

procedure TfrmLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbLog.Close;
    dbCliente.Close;
end;

procedure TfrmLog.FormShow(Sender: TObject);
begin
    dbCliente.Open;
    dbLog.Open;
    dbLog.SQL.Text:='Select * from Log where Data>=:iData order by Data desc, Hora desc';
    dbLog.ParamByName('idata').value:=date-30;
    dbLog.Open;
    dbLog.First;
    tabLog.TabIndex:=0;
    cmbBusca1.Date:=date;
end;

procedure TfrmLog.dbLogCalcFields(DataSet: TDataSet);
begin
    if dbLogOperacao.value='S' then
        dbLogOperacaoTexto.value:='Sessão';
    if dbLogOperacao.value='I' then
        dbLogOperacaoTexto.value:='Inclusao';
    if dbLogOperacao.value='E' then
        dbLogOperacaoTexto.value:='Exclusao';
    if dbLogOperacao.value='A' then
        dbLogOperacaoTexto.value:='Acesso';
    dbLogHoraTexto.value:=TimeToStr(dbLogHora.value);
end;

procedure TfrmLog.grdLogKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_Delete) then
        abort;
end;

procedure TfrmLog.grdLogDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (dbLogOperacao.value='I')  then
        grdLog.Canvas.Font.Color:=clGReen;
     if (dbLogOperacao.value='E')  then
        grdLog.Canvas.Font.Color:=clRed;
     if (dbLogOperacao.value='A')  then
        grdLog.Canvas.Font.Color:=clFuchsia;

     grdLog.DefaultDrawDataCell(Rect,grdLog.Columns[DataCol].field,State);
end;

procedure TfrmLog.tabLogChange(Sender: TObject);
begin
    case tabLog.TabIndex of
    0:dbLog.IndexFieldNames:='Data desc;Hora desc';
    1:dbLog.IndexFieldNames:='Codigo1;Data desc;Hora desc';
    2:dbLog.IndexFieldNames:='Codigo2;Data desc;Hora desc';
    3:dbLog.IndexFieldNames:='Codigo3;Data desc;Hora desc';
    4:dbLog.IndexFieldNames:='Usuario;Data desc;Hora desc';
    end;

    if tabLog.TabIndex=0 then
    begin
        cmbBusca1.Visible:=true;
        cmbBusca.Visible:=false;
    end
    else
    begin
        cmbBusca1.Visible:=false;
        cmbBusca.Visible:=true;
    end;

end;

procedure TfrmLog.cmbBusca1Change(Sender: TObject);
begin
    dbLog.Locate('Data',cmbBusca1.Date,[]);
end;

procedure TfrmLog.cmbBuscaChange(Sender: TObject);
begin
    case tabLog.TabIndex of
    1:dbLog.Locate('Codigo1',cmbBusca.Text,[loCaseInsensitive,loPartialKey]);
    2:dbLog.Locate('Codigo2',cmbBusca.text,[loCaseInsensitive,loPartialKey]);
    3:dbLog.Locate('Codigo3',cmbBusca.text,[loCaseInsensitive,loPartialKey]);
    4:dbLog.Locate('Usuario',cmbBusca.text,[loCaseInsensitive,loPartialKey]);
    end;

end;

procedure TfrmLog.tabFiltroChange(Sender: TObject);
begin
    dbLog.Refresh;
end;

procedure TfrmLog.dbLogFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case tabFiltro.TabIndex of
    0:accept:=true;
    1:accept:=dbLogOperacao.value='I';
    2:accept:=dbLogOperacao.value='E';
    3:accept:=dbLogOperacao.value='A';
    4:accept:=dbLogOperacao.value='S';
    end;
end;

end.
