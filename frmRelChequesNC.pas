unit frmRelChequesNC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls;

type
  TfrmRelChequeNC = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    dtpIni: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelChequeNC: TfrmRelChequeNC;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.DFM}

procedure TfrmRelChequeNC.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
end;

procedure TfrmRelChequeNC.SpeedButton1Click(Sender: TObject);
begin
    with dmRelatorio do
    begin
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente,Filiais  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      CCorrente.Filial=Filiais.Filial and '+
                            '      MovBanco.DataMovimento is null and '+
                            '      MovBanco.DataEntrada<:hoje and '+
                            '      MovBanco.Status<>'+QuotedStr('C')+'  and '+
                            '     (MovBanco.Tipo='+QuotedStr('X')+') '+
                            'order by MovBanco.BancoId, Doc ';

        relcheque.ParamByName('hoje').asDate:=dtpIni.Date;
        relCheque.Open;

        if relCheque.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informa��o a ser impressa');
            abort;
        end;
    end;

    frmMenu.RvFin.SetParam('Titulo','Cheques n�o Compensados at� '+DateToStr(dtpIni.Date)+' (CNCP)');
    frmMenu.rvFin.SelectReport('relChequeNC',true);
    frmMenu.rvFin.Execute;
end;

end.




