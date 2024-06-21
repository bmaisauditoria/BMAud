unit relChequesFaltante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TrelChequeFaltante = class(TForm)
    qrpRelatorio: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    cmpMemo: TQRMemo;
    QRShape1: TQRShape;
    QRSysData1: TQRSysData;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relChequeFaltante: TrelChequeFaltante;

implementation

uses frmCheques;

{$R *.dfm}

procedure TrelChequeFaltante.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    cmpMemo.Lines.Clear;
    cmpMemo.Lines.Add(frmCheque.ListBox1.Items.Text);
end;

end.
