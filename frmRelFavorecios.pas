unit frmRelFavorecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls;

type
  TfrmRelFavorecido = class(TForm)
    Panel1: TPanel;
    lblBanco: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmdImp: TBitBtn;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    chkFav: TCheckBox;
    cmpFavorecido: TEdit;
    Label1: TLabel;
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFavClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFavorecido: TfrmRelFavorecido;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelFavorecido.cmdImpClick(Sender: TObject);
var iIni,iFim:TDate;
var ifav:string;
begin
    iIni:=dtpIni.date;
    iFim:=dtpFim.date;
    ifav:=Trim(cmpFavorecido.Text)+'%';
    with dmRelatorio do
    begin
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente,Filiais  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      CCorrente.Filial=Filiais.Filial and '+
                            '      MovBanco.DataEntrada>=:iDataIni and '+
                            '      MovBanco.DataEntrada<=:iDataFim and'+
                            '      Favorecido like :iFavorecido '+
                            'order by Favorecido, DataEntrada ';
        relcheque.ParamByName('iDataIni').asDate:=iIni;
        relcheque.ParamByName('iDataFim').asDate:=iFim;
        relCheque.ParamByName('iFavorecido').value:=ifav;
        relCheque.Open;

        if relCheque.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;
    end;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));

    frmMenu.RvFin.SetParam('Titulo','Movimentações por Favorecido');
    frmMenu.RvFin.SetParam('Titulo1','Emitidos de '+DatetoStr(iIni)+' a '+DateToStr(iFim));
    frmMenu.rvFin.SelectReport('relChequeFavorecido',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelFavorecido.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
end;

procedure TfrmRelFavorecido.chkFavClick(Sender: TObject);
begin
    if chkFav.Checked then
        cmpFavorecido.Visible:=false
    else
        cmpFavorecido.Visible:=true;

end;

end.
