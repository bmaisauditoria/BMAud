unit frmRelDups;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils,
  Gradpan, Spin;

type
  TfrmRelDup = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    cmdImp: TBitBtn;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label2: TLabel;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    Label3: TLabel;
    chkFilial: TCheckBox;
    rdgOrdem: TRadioGroup;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDup: TfrmRelDup;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelDup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbFilial.Close;
end;

procedure TfrmRelDup.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
end;

procedure TfrmRelDup.cmdImpClick(Sender: TObject);
var iLinhaF,iLinhaO:string;
var iFilial:integer;
begin
    if chkFilial.Checked then
    begin
        iLinhaF:='';
        iFilial:=0;
    end
    else
    begin
        iLinhaF:='and Filial=:iFilial ';
        iFilial:=cmbFilial.KeyValue;
    end;

    case rdgOrdem.ItemIndex of
    0:iLinhaO:='order by Filial,Duplicata,Seq';
    1:iLinhaO:='order by Cliente,Filial,Duplicata,Seq';
    2:iLinhaO:='order by Filial,DataVencto,Duplicata,Seq';
    end;

case frmRelDup.tag of
0:begin

    with dmRelatorio do
    begin
        qryDup.close;
        qryDup.sql.clear;
        qryDup.sql.text:='select * from Receber  '+
                         'where DataPagto>=:iDataIni and '+
                         '      DataPagto<=:iDataFim  '+
                        iLinhaF+iLinhaO;
        if not chkFilial.Checked then
            qryDup.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryDup.ParamByName('iDataIni').asdate:=DtpIni.Date;
        qryDup.ParamByName('iDataFim').asdate:=DtpFim.Date;
        qryDup.Open;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Filial',IntToStr(iFilial));

    frmMenu.RvFin.SetParam('Titulo','Duplicatas Emitidas de '+DateToSTr(dtpIni.date)+' a '+DatetoStr(dtpFim.date)+' (RNFR)');

    case rdgOrdem.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Nota Fiscal');
    1:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Cliente');
    2:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Data de Vencimento');
    end;
    end;

    frmMenu.rvFin.SelectReport('relDupPaga',true);
    frmMenu.rvFin.Execute;
end;
1:begin
    with dmRelatorio do
    begin
        qryDup.close;
        qryDup.sql.clear;
        qryDup.sql.text:='select * from Receber  '+
                         'where DataEmissao>=:iDataIni and '+
                         '      DataEmissao<=:iDataFim and '+
                         '      (DataPagto is null or DataPagto>:iDataFim) '+
                        iLinhaF+iLinhaO;
        if not chkFilial.Checked then
            qryDup.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryDup.ParamByName('iDataIni').asdate:=DtpIni.Date;
        qryDup.ParamByName('iDataFim').asdate:=DtpFim.Date;
        qryDup.Open;

    if qryDup.RecordCount=0 then
    begin
        ShowMessage('Nenhuma informação a ser impressa');
        abort;
    end;

    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Filial',IntToStr(iFilial));

    frmMenu.RvFin.SetParam('Titulo','Duplicatas Emitidas e não Recebidas de '+DateToSTr(dtpIni.date)+' a '+DatetoStr(dtpFim.date));

    case rdgOrdem.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Nota Fiscal');
    1:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Cliente');
    2:frmMenu.RvFin.SetParam('Titulo1','Por Ordem de Data de Vencimento');
    end;
    end;

    frmMenu.rvFin.SelectReport('relDupPaga',true);
    frmMenu.rvFin.Execute;
end;
end;
end;

procedure TfrmRelDup.FormCreate(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
end;

procedure TfrmRelDup.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;

end;

procedure TfrmRelDup.cmbMesChange(Sender: TObject);
var maxday:word;
begin
    case cmbMes.ItemIndex+1 of
    2:maxday:=28+ord(cmbAno.Value mod 4=0);
    1,3,5,7,8,10,12:Maxday:=31;
    4,6,9,11:maxday:=30;
    end;
    dtpIni.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,1);
    dtpFim.DateTime:=EncodeDate(cmbAno.Value,cmbMes.ItemIndex+1,maxday);

end;

end.
