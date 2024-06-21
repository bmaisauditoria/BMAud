unit relReclassificacaoErros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TrelReclassificacaoErro = class(TForm)
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
  relReclassificacaoErro: TrelReclassificacaoErro;

implementation

uses frmReclassificacaos;

{$R *.dfm}

procedure TrelReclassificacaoErro.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    cmpMemo.Lines.Clear;
    cmpMemo.Lines.Add(frmReclassificacao.ListBox1.Items.Text);
end;

end.
