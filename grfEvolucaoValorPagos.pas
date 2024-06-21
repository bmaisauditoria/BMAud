unit grfEvolucaoValorPagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, QuickRpt, TeeProcs, TeEngine, Chart,
  DbChart, Series, QRTEE, QRCtrls;

type
  TgrfEvolucaoValorPago = class(TForm)
    qrpRelatorio: TQuickRep;
    DetailBand1: TQRBand;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    Series1: TLineSeries;
    qryRelatorio: TQuery;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioMes: TIntegerField;
    qryRelatorioAno: TIntegerField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosaM: TCurrencyField;
    qryRelatorioValorGlosaE: TCurrencyField;
    dbHospital: TTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dbRelatorio: TTable;
    dbRelatorioRegiao: TIntegerField;
    dbRelatorioPaciente1: TIntegerField;
    dbRelatorioValor1: TCurrencyField;
    dbRelatorioGlosa1: TCurrencyField;
    dbRelatorioPaciente2: TIntegerField;
    dbRelatorioValor2: TCurrencyField;
    dbRelatorioGlosa2: TCurrencyField;
    dbRelatorioPaciente3: TIntegerField;
    dbRelatorioValor3: TCurrencyField;
    dbRelatorioGlosa3: TCurrencyField;
    dbRelatorioPaciente4: TIntegerField;
    dbRelatorioValor4: TCurrencyField;
    dbRelatorioGlosa4: TCurrencyField;
    dbRelatorioPaciente5: TIntegerField;
    dbRelatorioValor5: TCurrencyField;
    dbRelatorioGlosa5: TCurrencyField;
    dbRelatorioPaciente6: TIntegerField;
    dbRelatorioValor6: TCurrencyField;
    dbRelatorioGlosa6: TCurrencyField;
    dsRelatorio: TDataSource;
    dbCliente: TTable;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    qrImagem: TQRImage;
    QRDBImage1: TQRDBImage;
    QRDBText20: TQRDBText;
    lblAnalise: TQRLabel;
    dbGrafico: TTable;
    dbGraficoNome: TStringField;
    dbGraficoValor: TFloatField;
    QRDBText1: TQRDBText;
    dbGraficoOrdem: TStringField;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRChart2: TQRChart;
    QRDBChart2: TQRDBChart;
    LineSeries1: TLineSeries;
    dbGraficoTotal1: TFloatField;
    dbGraficoTotal2: TFloatField;
    dbGraficoMedia: TFloatField;
    dbRelatorioNC: TSmallintField;
    dbRelatorioNome: TStringField;
    dbRelatorioDiaria1: TFloatField;
    dbRelatorioDiaria2: TFloatField;
    dbRelatorioDiaria3: TFloatField;
    dbRelatorioDiaria4: TFloatField;
    dbRelatorioDiaria5: TFloatField;
    dbRelatorioDiaria6: TFloatField;
    qryRelatorioPaciente: TIntegerField;
    qryRelatorioComplemento: TFloatField;
    QRLabel2: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrpRelatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  grfEvolucaoValorPago: TgrfEvolucaoValorPago;

implementation

uses frmRelEvolucaoCustosR;


{$R *.dfm}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

procedure TgrfEvolucaoValorPago.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var i,m,a:integer;
var imax,imin:variant;
begin
    with  frmRelEvolucaoCustoR do
    begin
        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);
    end;
    imax:=0;
    imin:=999999999;
    for i:=1 to 6 do
    begin
        dbGrafico.FindKey([IntToStr(a)+ZeroEsq(m,2)]);
        dbGrafico.Edit;
        dbGraficoValor.Value:=0;
        case i of
        6:begin
            dbGraficoValor.Value:=(dbRelatorioValor1.Value-dbRelatorioGlosa1.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor1.Value-dbRelatorioGlosa1.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente1.Value;
          end;
        5:begin
                dbGraficoValor.Value:=(dbRelatorioValor2.Value-dbRelatorioGlosa2.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor2.Value-dbRelatorioGlosa2.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente2.Value;
          end;
        4:begin
                dbGraficoValor.Value:=(dbRelatorioValor3.Value-dbRelatorioGlosa3.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor3.Value-dbRelatorioGlosa3.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente3.Value;
          end;
        3:begin
                dbGraficoValor.Value:=(dbRelatorioValor4.Value-dbRelatorioGlosa4.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor4.Value-dbRelatorioGlosa4.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente4.Value;
          end;
        2:begin
                dbGraficoValor.Value:=(dbRelatorioValor5.Value-dbRelatorioGlosa5.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor5.Value-dbRelatorioGlosa5.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente5.Value;
          end;
        1:begin
            dbGraficoValor.Value:=(dbRelatorioValor6.Value-dbRelatorioGlosa6.Value);
            dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbRelatorioValor6.Value-dbRelatorioGlosa6.Value);
            dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbRelatorioPaciente6.Value;
          end;
        end;
        m:=m-1;
        if m=0 then
        begin
            m:=12;
             a:=a-1;
       end;
       dbGrafico.Post;
       if imax<dbGraficoValor.value then
          imax:=dbGraficoValor.value;
       if imin>dbGraficoValor.value then
          imin:=dbGraficoValor.value;
    end;
    QRChart1.chart.LeftAxis.Automatic:= False ;
    QRChart1.Chart.LeftAxis.Minimum:=0;
    QRChart1.Chart.LeftAxis.Maximum:=999999999;
    QRChart1.Chart.LeftAxis.Minimum:=imin*0.80;
    QRChart1.Chart.LeftAxis.Maximum:=imax*1.20;
end;

procedure TgrfEvolucaoValorPago.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var imax,imin:variant;
begin
    imax:=0;
    imin:=999999999;
    dbGrafico.First;
    while not dbGrafico.eof do
    begin
       if imax<dbGraficoTotal1.value then
          imax:=dbGraficoTotal1.value;
       if imin>dbGraficoTotal1.value then
          imin:=dbGraficoTotal1.value;
       dbGrafico.Next;
    end;
    dbGrafico.First;
    QRChart2.chart.LeftAxis.Automatic:= False ;
    QRChart2.Chart.LeftAxis.Minimum:=0;
    QRChart2.Chart.LeftAxis.Maximum:=999999999;
    QRChart2.Chart.LeftAxis.Minimum:=imin*0.80;
    QRChart2.Chart.LeftAxis.Maximum:=imax*1.20;
end;

procedure TgrfEvolucaoValorPago.qrpRelatorioBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    dbGrafico.First;
    while not dbGrafico.eof do
    begin
        dbGrafico.Edit;
        dbGraficoValor.value:=0;
        dbGraficoTotal1.Value:=0;
        dbGraficoTotal2.value:=0;
        dbGrafico.Post;
        dbGrafico.Next
    end;    
end;

end.
