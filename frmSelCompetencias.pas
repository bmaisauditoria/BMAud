unit frmSelCompetencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls;

type
  TfrmSelCompetencia = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Edit2: TEdit;
    UpDown2: TUpDown;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelCompetencia: TfrmSelCompetencia;

implementation

uses dmRelatorios, frmPrincipal, frmProdutividades;

{$R *.DFM}

procedure TfrmSelCompetencia.SpeedButton1Click(Sender: TObject);
begin
    frmProdutividades.iAnoC:=StrToInt(Edit2.Text);
    frmProdutividades.iMesC:=StrToInt(Edit1.Text);
    Close;
end;

procedure TfrmSelCompetencia.FormShow(Sender: TObject);
var d,m,a: word;
begin
    DecodeDate(date,a,m,d);
    m:=m-1;
    if m=0 then
    begin
        a:=a-1;
        m:=12;
    end;

    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntToStr(a);
end;

end.




