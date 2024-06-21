unit frmRelCLTs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils,
  Spin;

type
  TfrmRelCLT = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    Label2: TLabel;
    cmdImp: TBitBtn;
    dtpIni: TDateTimePicker;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    Label3: TLabel;
    dtpFim: TDateTimePicker;
    cmbMes: TComboBox;
    cmbAno: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCLT: TfrmRelCLT;
  iFilial,xFilial:integer;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}


procedure TfrmRelCLT.FormClose(Sender: TObject;
  var Action: TCloseAction);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dbFilial.Close;
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
end;

procedure TfrmRelCLT.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    dtpIni.date:=EncodeDate(a,m,1);
    dtpFim.date:=EndOfTheMonth(date);
    dbFilial.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    cmbMes.ItemIndex:=m-1;
    cmbAno.Value:=a;
end;

procedure TfrmRelCLT.cmbMesChange(Sender: TObject);
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

procedure TfrmRelCLT.cmdImpClick(Sender: TObject);
begin
    with dmRelatorio do
    begin
        rptCLT.Close;
        rptCLT.SQL.Clear;
        rptCLT.SQL.Text:='Select * from Lancamentos, MovBanco, Funcionario '+
                         'where Lancamentos.MovBanco=MovBanco.MovBanco and  '+
                         '      Lancamentos.Funcionario=Funcionario.Funcionario and '+
                         '      Lancamentos.DataVencto>=:Ini and '+
                         '      Lancamentos.DataVencto<=:Fim and '+
                         '      Lancamentos.TipoPag=:Tipo and '+
                         '      Lancamentos.Filial=:Fil  '+
                         'order by Lancamentos.Filial,Cod1,Cod2,Cod3,Nome,DataVencto ';

       rptCLT.ParamByName('Fil').asinteger:=cmbFilial.KeyValue;
       rptCLT.ParamByName('Tipo').asstring:='C';
       rptCLT.ParamByName('Ini').asdate:=dtpIni.Date;
       rptCLT.ParamByName('Fim').asdate:=dtpFim.Date;
       rptCLT.Open;
       if rptCLT.RecordCount=0 then
       begin
          ShowMessage('Nenhuma informação a ser impressa');
          abort;
       end;
    end;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.rvFin.SelectReport('rptCLTCompleto',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelCLT.BitBtn1Click(Sender: TObject);
begin
    with dmRelatorio do
    begin
        rptCLT.Close;
        rptCLT.SQL.Clear;
        rptCLT.SQL.Text:='Select * from Lancamentos, MovBanco, Funcionario '+
                         'where Lancamentos.MovBanco=MovBanco.MovBanco and  '+
                         '      Lancamentos.Funcionario=Funcionario.Funcionario and '+
                         '      Lancamentos.DataVencto>=:Ini and '+
                         '      Lancamentos.DataVencto<=:Fim and '+
                         '      Lancamentos.TipoPag=:Tipo and '+
                         '      Lancamentos.Filial=:Fil  '+
                         'order by Lancamentos.Filial,Lancamentos.Cliente,Nome,DataVencto ';

       rptCLT.ParamByName('Fil').asinteger:=cmbFilial.KeyValue;
       rptCLT.ParamByName('Tipo').asstring:='C';
       rptCLT.ParamByName('Ini').asdate:=dtpIni.Date;
       rptCLT.ParamByName('Fim').asdate:=dtpFim.Date;
       rptCLT.Open;
       if rptCLT.RecordCount=0 then
       begin
          ShowMessage('Nenhuma informação a ser impressa');
          abort;
       end;

    end;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.rvFin.SelectReport('rptCLTCliente',true);
    frmMenu.rvFin.Execute;
end;

procedure TfrmRelCLT.BitBtn2Click(Sender: TObject);
var itotal:variant;
var d,m,a,df,mf,af:word;
var iextenso,imes:string;
begin
    DecodeDate(dtpIni.Date,a,m,d);
    DecodeDate(dtpFim.Date,af,mf,df);

    if (m<>mf) or (a<>af) then
    begin
      ShowMessage('Selecione um mes/ano por vez');
      abort;
    end;
    case m of
    1:imes:='Janeiro';
    2:imes:='Fevereiro';
    3:imes:='Março';
    4:imes:='Abril';
    5:imes:='Maio';
    6:imes:='Junho';
    7:imes:='Julho';
    8:imes:='Agosto';
    9:imes:='Setembro';
    10:imes:='Outubro';
    11:imes:='Novembro';
    12:imes:='Dezembro';
    end;

    with dmRelatorio do
    begin
        rptCLT.Close;
        rptCLT.SQL.Clear;
        rptCLT.SQL.Text:='Select * from Lancamentos, MovBanco, Funcionario '+
                         'where Lancamentos.MovBanco=MovBanco.MovBanco and  '+
                         '      Lancamentos.Funcionario=Funcionario.Funcionario and '+
                         '      Lancamentos.DataVencto>=:Ini and '+
                         '      Lancamentos.DataVencto<=:Fim and '+
                         '      Lancamentos.TipoPag=:Tipo and '+
                         '      Lancamentos.Filial=:Fil  '+
                         'order by Lancamentos.Filial,Lancamentos.TipoPag, Nome,DataVencto ';

       rptCLT.ParamByName('Fil').asinteger:=cmbFilial.KeyValue;
       rptCLT.ParamByName('Tipo').asstring:='C';
       rptCLT.ParamByName('Ini').asdate:=dtpIni.Date;
       rptCLT.ParamByName('Fim').asdate:=dtpFim.Date;
       rptCLT.Open;
       if rptCLT.RecordCount=0 then
       begin
          ShowMessage('Nenhuma informação a ser impressa');
          abort;
       end;
       rptCLT.First;
       while not rptCLT.eof do
       begin
        itotal:=itotal+rptCLTValorPago.value;
        rptCLT.Next;
       end;
       rptCLT.First;
       frmMenu.extenso.Valor:=itotal;
       iextenso:='('+Trim(frmMenu.extenso.Caption)+')';
    end;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));
    frmMenu.RvFin.SetParam('Ano',IntToStr(a));
    frmMenu.RvFin.SetParam('Mes',imes);
    frmMenu.RvFin.SetParam('Total',FloatToStrF(itotal,ffCurrency,11,2));
    frmMenu.RvFin.SetParam('Extenso',iextenso);
    frmMenu.rvFin.SelectReport('rptCLTAutoriza',true);
    frmMenu.rvFin.Execute;
end;

end.
