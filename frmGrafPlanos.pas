unit frmGrafPlanos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess,
  MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls, DateUtils, 
  Spin, Grids, Outline, TeEngine, Series, TeeProcs, Chart, DbChart, RPTChart,
  RpDefine, RpCon;

type
  TfrmGrafPlano = class(TForm)
    dbFilial: TMSTable;
    dsFilial: TDataSource;
    Panel1: TPanel;
    cmbFilial: TDBLookupComboBox;
    cmdImp: TBitBtn;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    chkFilial: TCheckBox;
    ProgressBar: TProgressBar;
    dbPlano: TMSTable;
    dbPlanoCod1: TSmallintField;
    dbPlanoCod2: TSmallintField;
    dbPlanoCod3: TSmallintField;
    dbPlanoDescricao: TStringField;
    dbPlanoDescricaoFC: TStringField;
    dbPlanoIndicativo: TStringField;
    dsPlano: TDataSource;
    Panel2: TPanel;
    Outline1: TOutline;
    Label12: TLabel;
    grafico: TDBChart;
    Series1: TFastLineSeries;
    rvGrafico: TRvCustomConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkFilialClick(Sender: TObject);
    procedure cmbMesChange(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure rvGraficoGetCols(Connection: TRvCustomConnection);
    procedure rvGraficoGetRow(Connection: TRvCustomConnection);
  private
    procedure MontaTree;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmGrafPlano: TfrmGrafPlano;
  iFilial:integer;
  iDataIni,iDataFim:TDate;
implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

function fnz(i,j,k:word):string;
var b,c:string;
begin
    b:=inttostr(1000+i);
    c:=copy(b, 3, 2)+'.';
    b:=inttostr(1000+j);
    c:=c+copy(b, 3, 2)+'.';
    b:=inttostr(1000+k);
    c:=c+copy(b, 3, 2);
    result:=c;
end;


procedure TfrmGrafPlano.MontaTree;
var g,n,i,j,k:Integer;
    a:string;
    gt:Tbookmark;
begin
    dbPlano.refresh;
    gt:=dbPlano.getbookmark;
    outline1.lines.clear;
    dbPlano.first;
    g:=1;
    while not dbPlano.eof do
    begin
        i:=dbPlanoCod1.asinteger;
        j:=dbPlanoCod2.asinteger;
        k:=dbPlanoCod3.asinteger;
        a:=fnz(i,j,k);
        n:=ord(i<>0)+ord(j<>0)+ord(k<>0);
        outline1.lines.add(copy('      ',1,n-1)+a+' '+dbPlanoDescricao.asstring);
        outline1.items[g].expanded:=true;

        inc(g);
        dbPlano.next;
    end;
    if gt<>nil then
    begin
        dbPlano.gotobookmark(gt);
        dbPlano.freebookmark(gt);
        i:=dbPlanoCod1.asinteger;
        j:=dbPlanoCod2.asinteger;
        k:=dbPlanoCod3.asinteger;
        a:=fnz(i,j,k);
        outline1.selecteditem:=outline1.gettextitem(a+' '+dbPlanoDescricao.asstring);
    end;
end;


procedure TfrmGrafPlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
var d,m,a:word;
begin
    dbFilial.Close;
    dbPlano.Close;
end;

procedure TfrmGrafPlano.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    if (m>=1) and (m<=6) then
        a:=a-1;
    if m=1 then m:=7;
    if m=2 then m:=8;
    if m=3 then m:=9;
    if m=4 then m:=10;
    if m=5 then m:=11;
    if m=6 then m:=12;
    iDataFim:=EncodeDate(a,m,1);
    d:=DateUtils.DaysInMonth(iDataFim);
    iDataFim:=EncodeDate(a,m,d);
    m:=m+1;
    if m=13 then
    begin
        m:=1;
        a:=a+1;
    end;
    a:=a-1;
    iDataIni:=EncodeDate(a,m,1);
    dbFilial.Open;
    dbPlano.Open;
    cmbFilial.keyvalue:=dbFilialFilial.value;
    MontaTree;
end;

procedure TfrmGrafPlano.chkFilialClick(Sender: TObject);
begin
    if chkFilial.Checked then
        cmbFilial.Visible:=false
    else
        cmbFilial.Visible:=true;
end;

procedure TfrmGrafPlano.cmbMesChange(Sender: TObject);
var maxday:word;
begin
end;

procedure TfrmGrafPlano.cmdImpClick(Sender: TObject);
var i,iCod1,iCod2,iCod3:integer;
var k,iLinhaF,iLinhaP:string;
var a,m,d:word;
begin
    k:=outline1.Items[outline1.selecteditem].text;
    iCod1:=pos(#32, k);
    k:=trim(copy(k, 1, iCod1-1));
    iCod2:=pos('.', k);
    iCod1:=strtoint(copy(k, 1, iCod2-1));
    k:=copy(k, iCod2+1, 255);
    iCod3:=pos('.', k);
    iCod2:=strtoint(copy(k, 1, iCod3-1));
    k:=copy(k, iCod3+1, 255);
    iCod3:=strtoint(k);

    if iCod1=0 then
    begin
        ShowMessage('Selecione um Plano de Contas');
        abort;
    end;

    iLinhaF:='';
    if not chkFilial.Checked then
        iLinhaF:=' and Filial=:iFilial ';

    if (iCod3=0) and (iCod2=0) then
        iLinhaP:='and Cod1=:iCod1 ';
    if (iCod3=0) and (iCod2>0) then
        iLinhaP:='and Cod1=:iCod1 and Cod2=:iCod2 ';
    if (iCod3>0) and (iCod2>0) then
        iLinhaP:='and Cod1=:iCod1  and Cod2=:iCod2 and Cod3=:iCod3 ';

    with dmRelatorio do
    begin
        qryGraf.close;
        qryGraf.sql.clear;
        qryGraf.sql.text:='select * from Lancamentos  '+
                          'where DataPagto>=:iDataIni and '+
                          '      DataPagto<=:iDataFim  '+iLinhaF+iLinhaP+
                          'order by DataPagto ';
        if not chkFilial.Checked then
            qryGraf.ParamByName('iFilial').value:=cmbFilial.KeyValue;
        qryGraf.ParamByName('iDataIni').asdate:=iDataIni;
        qryGraf.ParamByName('iDataFim').asdate:=iDataFim;

        if (iCod3=0) and (iCod2=0) then
            qryGraf.ParamByName('iCod1').asinteger:=iCod1;
        if (iCod3=0) and (iCod2>0) then
        begin
            qryGraf.ParamByName('iCod1').asinteger:=iCod1;
            qryGraf.ParamByName('iCod2').asinteger:=iCod2;
        end;
        if (iCod3>0) and (iCod2>0) then
        begin
            qryGraf.ParamByName('iCod1').asinteger:=iCod1;
            qryGraf.ParamByName('iCod2').asinteger:=iCod2;
            qryGraf.ParamByName('iCod3').asinteger:=iCod3;
        end;
        qryGraf.Open;
        if qryGraf.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;

        dbGraf.Close;
        dbGraf.SQL.text:='Delete from relGrafico';
        dbGraf.Execute;
        dbGraf.SQL.text:='Select * from relGrafico order by Ano,Mes';
        dbGraf.Open;

        DecodeDate(iDataIni,a,m,d);
        for i:=1 to 12 do
        begin
            dbGraf.Insert;
            dbGrafAno.value:=a;
            dbGrafMes.value:=m;
            dbGrafTexto.value:=IntToStr(m)+'/'+IntToStr(a);
            dbGraf.Post;
            m:=m+1;
            if m=13 then
            begin
                m:=1;
                a:=a+1;
            end;
        end;
        ProgressBar.Min:=0;
        ProgressBar.Max:=qryGraf.RecordCount;
        ProgressBar.Position:=0;
        qryGraf.First;
        while not qryGraf.eof do
        begin
            DecodeDate(qryGrafDataPagto.value,a,m,d);
            if dbGraf.Locate('Ano;Mes',VarArrayof([a,m]),[]) then
            begin
                dbGraf.Edit;
                dbGrafValor.value:=dbGrafValor.value+qryGrafValorPago.value;
                dbGraf.Post;
            end;
            qryGraf.Next;
            ProgressBar.Position:=ProgressBar.Position+1;
        end;

        dbGraf.Refresh;
        dbGraf.IndexFieldNames:='Ano;Mes';
        dbGraf.First;
        grafico.Series[0].ValueFormat:='R$ ###,##0.00';
        grafico.Refresh;

        frmMenu.RvFin.SetParam('Titulo','Evolução de Creditos/Despesas');
        frmMenu.RvFin.SetParam('Competencia',outline1.Items[outline1.selecteditem].text);
        frmMenu.RvFin.SelectReport('grfEvolucao',true);
        frmMenu.RvFin.Execute;
        ProgressBar.Position:=0;
    end;
end;

procedure TfrmGrafPlano.rvGraficoGetCols(Connection: TRvCustomConnection);
begin
    Connection.WriteField('CampoChart',dtGraphic,0,'CampoChart','');
end;

procedure TfrmGrafPlano.rvGraficoGetRow(Connection: TRvCustomConnection);
begin
    WriteChartData(Connection,grafico);
end;

end.
