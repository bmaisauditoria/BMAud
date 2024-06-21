unit frmRelTributos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls;

type
  TfrmRelTributo = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    cmdImp: TBitBtn;
    dtpIni: TDateTimePicker;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTributo: TfrmRelTributo;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelTributo.cmdImpClick(Sender: TObject);
begin
    with dmRelatorio do
    begin
        relLancamento.close;
        relLancamento.sql.clear;
        relLancamento.sql.text:='select * from Lancamentos  '+
                                'where DataVencto>=:iDataIni and '+
                                '      DataVencto<=:iDataFim and '+
                                '      Tributo=1 '+
                                'order by Filial,Cliente,Doc,DataVencto ';
        relLancamento.ParamByName('iDataIni').asdate:=DtpIni.Date;
        relLancamento.ParamByName('iDataFim').asdate:=DtpFim.Date;
        relLancamento.Open;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.rvFin.SelectReport('relTributos',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelTributo.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
end;

end.
