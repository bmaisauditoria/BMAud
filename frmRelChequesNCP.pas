unit frmRelChequesNCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls;

type
  TfrmRelChequeNCP = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label1: TLabel;
    rdgTipoPag: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelChequeNCP: TfrmRelChequeNCP;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.DFM}

procedure TfrmRelChequeNCP.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
end;

procedure TfrmRelChequeNCP.SpeedButton1Click(Sender: TObject);
var iFilial,iLinha:string;
begin
    case rdgTipoPag.ItemIndex of
    0:ilinha:=' and MovBanco.TipoPag='+QuotedStr('P')+' ';
    1:ilinha:=' and MovBanco.TipoPag='+QuotedStr('F')+' ';
    2:ilinha:=' and MovBanco.TipoPag='+QuotedStr('C')+' ';
    3:ilinha:=' ';
    end;

    with dmRelatorio do
    begin
        iFilial:=dbFilialFilial.AsString;
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente,Filiais  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      CCorrente.Filial=Filiais.Filial and '+
                            '     (MovBanco.DataMovimento is null or MovBanco.DataMovimento>:xfim) and '+
                            '     (MovBanco.DataEntrada>=:xini and MovBanco.DataEntrada<=:xfim) and '+
                            '      MovBanco.Status<>'+QuotedStr('C')+'  and '+
                            '     (MovBanco.Tipo='+QuotedStr('X')+' or MovBanco.Tipo='+QuotedStr('P')+') '+
                            iLinha+
                            'order by MovBanco.BancoId, Doc ';

        relcheque.ParamByName('xini').asDate:=dtpIni.Date;
        relcheque.ParamByName('xfim').asDate:=dtpFim.Date;
        relCheque.Open;

    end;

    frmMenu.RvFin.SetParam('Titulo','Cheques não Compensados no periodo');
    case rdgTipoPag.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Débitos Pendentes - Prestadores');
    1:frmMenu.RvFin.SetParam('Titulo1','Débitos Pendentes - Forncedores');
    2:frmMenu.RvFin.SetParam('Titulo1','Débitos Pendentes - CLT');
    3:frmMenu.RvFin.SetParam('Titulo1','Débitos Pendentes');
    end;
    frmmenu.RvFin.SetParam('Competencia','De '+DateToStr(dtpIni.Date)+' a '+DateToStr(dtpFim.date));
    frmmenu.RvFin.SetParam('Filial',iFilial);
    if dmRelatorio.relcheque.RecordCount=0 then
        frmMenu.rvFin.SelectReport('relChequeNCPVazio',true)
    else
        frmMenu.rvFin.SelectReport('relChequeNCP',true);
    frmMenu.rvFin.Execute;
end;

end.




