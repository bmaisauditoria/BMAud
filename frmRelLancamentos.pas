unit frmRelLancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls;

type
  TfrmRelLancamento = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cmdImp: TBitBtn;
    dtpIni: TDateTimePicker;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLancamento: TfrmRelLancamento;
  iFilial:integer;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelLancamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
end;

procedure TfrmRelLancamento.FormShow(Sender: TObject);
begin
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
end;

procedure TfrmRelLancamento.cmdImpClick(Sender: TObject);
begin
    iFilial:=cmbFilial.KeyValue;
    with dmRelatorio do
    begin
        relLancamento.tag:=3;
        relLancamento.close;
        relLancamento.sql.clear;
        relLancamento.sql.text:='select * from Lancamentos  '+
                                'where Filial=:iFilial and '+
                                '      DataVencto<=:iDataIni and '+
                                '      Pago=0 '+
                                'order by Cod1,DataVencto,Cliente,Doc';
        relLancamento.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento.Open;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.rvFin.SelectReport('relLancamentos',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelLancamento.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
end;

end.
