unit frmRelIndicadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, StdCtrls, ExtCtrls, DBCtrls, Spin, Buttons, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls;

type
  TfrmRelIndicador = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lblPeriodo: TLabel;
    Label6: TLabel;
    lblAdm: TLabel;
    lblDem: TLabel;
    lblQtd: TLabel;
    lblITG: TLabel;
    qryITG: TMSQuery;
    qryITGQtd: TIntegerField;
    cmdImp: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelIndicador: TfrmRelIndicador;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelIndicador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    qryITG.Close;
end;

procedure TfrmRelIndicador.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
end;

procedure TfrmRelIndicador.SpeedButton1Click(Sender: TObject);
var iDataIni,iDataFim:Tdate;
var iitg:variant;
var iqtd,iadm,idem:integer;
begin
    iDataIni:=Int(dtpIni.Date);
    iDataFim:=Int(dtpFim.Date);

    lblPeriodo.Caption:='Colaboradores em '+DateToStr(iDataIni-1);

    qryITG.SQL.clear;
    qryITG.SQL.Text:='Select count(Funcionario) as Qtd from Funcionario '+
                     'where DataInicio>=:Ini and DataInicio<=:Fim ';
    qryITG.ParamByName('Ini').AsDate:=iDataIni;
    qryITG.ParamByName('Fim').AsDate:=iDataFim;
    qryITG.Open;
    qryITG.First;
    iadm:=qryITGQtd.value;
    lblAdm.Caption:=qryITGQtd.asstring;

    qryITG.SQL.clear;
    qryITG.SQL.Text:='Select count(Funcionario) as Qtd from Funcionario '+
                     'where DataFim>=:Ini and DataFim<=:Fim ';
    qryITG.ParamByName('Ini').AsDate:=iDataIni;
    qryITG.ParamByName('Fim').AsDate:=iDataFim;
    qryITG.Open;
    qryITG.First;
    iDem:=qryITGQtd.value;
    lblDem.Caption:=qryITGQtd.asstring;

    qryITG.SQL.clear;
    qryITG.SQL.Text:='Select count(Funcionario) as Qtd from Funcionario '+
                     'where (DataFim>=:Ini or DataFim is null) and (DataInicio<:Ini) ';
    qryITG.ParamByName('Ini').AsDate:=(iDataIni-1);
    qryITG.Open;
    qryITG.First;

    iQtd:=qryITGQtd.value;
    lblQtd.Caption:=qryITGQtd.asstring;

    iitg:=0;
    if iQtd>0 then
        iitg:=(iadm+idem)/2/iqtd*100;

    lblITG.Caption:=FloatToStrF(iITG,ffFixed,3,2)+'%';
end;

procedure TfrmRelIndicador.cmdImpClick(Sender: TObject);
var iDataIni,iDataFim:Tdate;
var iitg:variant;
var iqtd,iadm,idem:integer;
var lblitg:string;
begin
with dmRelatorio do
begin
    iDataIni:=Int(dtpIni.Date);
    iDataFim:=Int(dtpFim.Date);

    qryAdmitidos.SQL.clear;
    qryAdmitidos.SQL.Text:='Select * from Funcionario '+
                     'where DataInicio>=:Ini and DataInicio<=:Fim  order by Nome';
    qryAdmitidos.ParamByName('Ini').AsDate:=iDataIni;
    qryAdmitidos.ParamByName('Fim').AsDate:=iDataFim;
    qryAdmitidos.Open;
    qryAdmitidos.First;
    iadm:=qryAdmitidos.RecordCount;

    qryDemitidos.SQL.clear;
    qryDemitidos.SQL.Text:='Select * from Funcionario '+
                     'where DataFim>=:Ini and DataFim<=:Fim order by Nome';
    qryDemitidos.ParamByName('Ini').AsDate:=iDataIni;
    qryDemitidos.ParamByName('Fim').AsDate:=iDataFim;
    qryDemitidos.Open;
    qryDemitidos.First;
    idem:=qryDemitidos.RecordCount;

    qryAtivos.SQL.clear;
    qryAtivos.SQL.Text:='Select * from Funcionario '+
                     'where (DataFim>=:Ini or DataFim is null) and (DataInicio<:Ini) order by Nome ';
    qryAtivos.ParamByName('Ini').AsDate:=(iDataIni-1);
    qryAtivos.Open;
    qryAtivos.First;
    iQtd:=qryAtivos.RecordCount;

    iitg:=0;
    if iQtd>0 then
        iitg:=(iadm+idem)/2/iqtd*100;

    lblITG:='( '+IntToStr(iadm)+' + '+IntToStr(idem)+' ) / 2 / '+IntToStr(iqtd)+' = '+
             FloatToStrF(iITG,ffFixed,3,2)+'%';

    frmMenu.RvFin.SetParam('DataIni',DateToStr(iDataIni));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(iDataFim));
    frmMenu.RvFin.SetParam('Limite',DateToStr(iDataIni-1));
    frmMenu.RvFin.SetParam('ITG',lblITG);

    frmMenu.rvFin.SelectReport('RelIndicador',true);
    frmMenu.rvFin.Execute;
end;
end;

end.

