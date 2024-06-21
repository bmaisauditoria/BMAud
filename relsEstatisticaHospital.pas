unit relsEstatisticaHospital;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, Grids, DBGrids;

type
  TrelEstatisticasHospital = class(TForm)
    qrpRelatorio: TQuickRep;
    qryRelatorio: TQuery;
    dsRelatorio: TDataSource;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    lblInicio: TQRLabel;
    qrImagem: TQRImage;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    dbHospital: TTable;
    dbCliente: TTable;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    cmpValor: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    QRDBImage1: TQRDBImage;
    dbClienteLogotipo: TGraphicField;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioNome: TStringField;
    qryRelatorioDiarias: TFloatField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosado: TCurrencyField;
    qryRelatorioCliente: TIntegerField;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    qryRelatorioValorPago: TCurrencyField;
    qryRelatorioGlosaPorc: TFloatField;
    qryRelatorioMedia: TFloatField;
    qryRelatorioMediana: TFloatField;
    qryRelatorioCustoPaciente: TCurrencyField;
    qryRelatorioCustoDia: TCurrencyField;
    qryRelatorioPaciente: TIntegerField;
    QRExpr1: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr9: TQRExpr;
    bndTotRegiao: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    bndRegiao: TQRGroup;
    QRDBText14: TQRDBText;
    dbRegiao: TTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    qryRelatorioRegiao: TIntegerField;
    lblAnalise: TQRLabel;
    qryRelatorioComplemento: TFloatField;
    qryRelatorioPaciente1: TIntegerField;
    lblCliente: TQRLabel;
    qryRelatorioNaoContabilizado: TIntegerField;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    qryRelatorio1: TQuery;
    qryRelatorio1Cliente: TIntegerField;
    qryRelatorio1Paciente: TIntegerField;
    qryRelatorio1Diarias: TFloatField;
    qryRelatorio1Valor: TCurrencyField;
    qryRelatorio1ValorGlosado: TCurrencyField;
    qryRelatorio1Complemento: TFloatField;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    qryRelatorio1Paciente1: TIntegerField;
    qryRelatorio1GlosaPorc: TFloatField;
    qryRelatorio1Media: TFloatField;
    qryRelatorio1Mediana: TFloatField;
    qryRelatorio1CustoPaciente: TCurrencyField;
    qryRelatorio1CustoDia: TCurrencyField;
    qryRelatorio1ValorPago: TCurrencyField;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRShape1: TQRShape;
    qryRelatorioDiariasGlosadas: TFloatField;
    qryRelatorio1DiariasGlosadas: TFloatField;
    qryRelatorioDiariasPagas: TFloatField;
    qryRelatorio1DiariasPagas: TFloatField;
    qryRelatorio2: TQuery;
    qryRelatorio2GlosaPorc: TFloatField;
    qryRelatorio2Media: TFloatField;
    qryRelatorio2Mediana: TFloatField;
    qryRelatorio2CustoPaciente: TCurrencyField;
    qryRelatorio2CustoDia: TCurrencyField;
    qryRelatorio2Paciente1: TIntegerField;
    qryRelatorio2ValorPago: TCurrencyField;
    qryRelatorio2DiariasPagas: TFloatField;
    qryRelatorio2Cliente: TIntegerField;
    qryRelatorio2Regiao: TIntegerField;
    qryRelatorio2Paciente: TIntegerField;
    qryRelatorio2Diarias: TFloatField;
    qryRelatorio2DiariasGlosadas: TFloatField;
    qryRelatorio2Valor: TCurrencyField;
    qryRelatorio2ValorGlosado: TCurrencyField;
    qryRelatorio2Complemento: TFloatField;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText25: TQRDBText;
    QRExpr21: TQRExpr;
    QRDBText26: TQRDBText;
    QRExpr22: TQRExpr;
    QRDBText27: TQRDBText;
    QRExpr23: TQRExpr;
    QRShape2: TQRShape;
    QRDBText28: TQRDBText;
    QRExpr24: TQRExpr;
    QRDBText29: TQRDBText;
    QRExpr25: TQRExpr;
    QRDBText30: TQRDBText;
    QRExpr26: TQRExpr;
    QRDBText31: TQRDBText;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRDBText35: TQRDBText;
    QRLabel25: TQRLabel;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel26: TQRLabel;
    qryRelatorioValorNaoAcordadoM: TCurrencyField;
    qryRelatorioValorNaoAcordadoE: TCurrencyField;
    qryRelatorioValorNaoAcordado: TCurrencyField;
    qryRelatorio1ValorNaoAcordadoM: TCurrencyField;
    qryRelatorio1ValorNaoAcordadoE: TCurrencyField;
    qryRelatorio1ValorNaoAcordado: TCurrencyField;
    QRDBText7: TQRDBText;
    QRDBText22: TQRDBText;
    QRExpr44: TQRExpr;
    qryRelatorio2ValorNaoAcordado: TCurrencyField;
    qryRelatorio2ValorNaoAcordadoM: TCurrencyField;
    qryRelatorio2ValorNaoAcordadoE: TCurrencyField;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRDBText33: TQRDBText;
    QRExpr47: TQRExpr;
    procedure qryRelatorioCalcFields(DataSet: TDataSet);
    procedure bndCabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qryRelatorio1CalcFields(DataSet: TDataSet);
    procedure qryRelatorio1FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bndRegiaoAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrpRelatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qryRelatorio2CalcFields(DataSet: TDataSet);
    procedure qryRelatorio2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure bndRegiaoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEstatisticasHospital: TrelEstatisticasHospital;
  iCliente,iRegiao:integer;
implementation

{$R *.dfm}

procedure TrelEstatisticasHospital.qryRelatorioCalcFields(DataSet: TDataSet);
begin
    qryRelatorioDiariasPagas.Value:=qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value;

    qryRelatorioPaciente1.Value:=qryRelatorioPaciente.asInteger-qryRelatorioComplemento.asInteger;
    qryRelatorioValorPago.Value:=qryRelatorioValor.Value-
                                 qryRelatorioValorGlosado.Value;
    if qryRelatorioValor.Value<>0 then
       qryRelatorioGlosaPorc.Value:=qryRelatorioValorGlosado.Value/
                                    qryRelatorioValor.Value*100
    else
       qryRelatorioGlosaPorc.Value:=0;

    if qryRelatorioPaciente1.Value<>0 then
       qryRelatorioMedia.Value:=(qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value)/
                                qryRelatorioPaciente1.Value
    else
       qryRelatorioMedia.Value:=0;

    qryRelatorioMediana.Value:=0;

    if qryRelatorioPaciente1.Value<>0 then
        qryRelatorioCustoPaciente.Value:=qryRelatorioValorPago.Value/
                                         qryRelatorioPaciente1.Value
    else
        qryRelatorioCustoPaciente.Value:=0;

    if (qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value)<>0 then
        qryRelatorioCustoDia.Value:=qryRelatorioValorPago.Value/
                                    (qryRelatorioDiarias.Value-qryRelatorioDiariasGlosadas.Value)
    else
        qryRelatorioCustoDia.Value:=0;

    qryRelatorioValorNaoAcordado.value:=qryRelatorioValorNaoAcordadoM.value+
                                        qryRelatorioValorNaoAcordadoE.value;
end;

procedure TrelEstatisticasHospital.bndCabecalhoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    lblCliente.Caption:=dbClienteNome.Value;
    iCliente:=qryRelatorioCliente.Value;
    qryRelatorio1.Refresh;
end;

procedure TrelEstatisticasHospital.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    if qryRelatorioNaoContabilizado.Value<>0 then
        DetailBand1.Font.Color:=clRed
    else
        DetailBand1.Font.Color:=clBlack;
end;

procedure TrelEstatisticasHospital.qryRelatorio1CalcFields(
  DataSet: TDataSet);
begin
    qryRelatorio1DiariasPagas.Value:=qryRelatorio1Diarias.Value-qryRelatorio1DiariasGlosadas.Value;

    qryRelatorio1Paciente1.Value:=qryRelatorio1Paciente.asInteger-qryRelatorio1Complemento.asInteger;
    qryRelatorio1ValorPago.Value:=qryRelatorio1Valor.Value-
                                 qryRelatorio1ValorGlosado.Value;
    if qryRelatorio1Valor.Value<>0 then
       qryRelatorio1GlosaPorc.Value:=qryRelatorio1ValorGlosado.Value/
                                    qryRelatorio1Valor.Value*100
    else
       qryRelatorio1GlosaPorc.Value:=0;

    if qryRelatorio1Paciente1.Value<>0 then
       qryRelatorio1Media.Value:=(qryRelatorio1Diarias.Value-qryRelatorio1DiariasGlosadas.Value)/
                                  qryRelatorio1Paciente1.Value
    else
       qryRelatorio1Media.Value:=0;

    qryRelatorio1Mediana.Value:=0;

    if qryRelatorio1Paciente1.Value<>0 then
        qryRelatorio1CustoPaciente.Value:=qryRelatorio1ValorPago.Value/
                                         qryRelatorio1Paciente1.Value
    else
        qryRelatorio1CustoPaciente.Value:=0;

    if (qryRelatorio1Diarias.Value-qryRelatorio1DiariasGlosadas.Value)<>0 then
        qryRelatorio1CustoDia.Value:=qryRelatorio1ValorPago.Value/
                                    (qryRelatorio1Diarias.Value-qryRelatorio1DiariasGlosadas.Value)
    else
        qryRelatorio1CustoDia.Value:=0;

    qryRelatorio1ValorNaoAcordado.value:=qryRelatorio1ValorNaoAcordadoM.value+
                                         qryRelatorio1ValorNaoAcordadoE.value;

end;

procedure TrelEstatisticasHospital.qryRelatorio1FilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
    accept:=qryRelatorio1Cliente.Value=iCliente;
end;

procedure TrelEstatisticasHospital.bndRegiaoAfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
    bndRegiao.ForceNewPage:=true;
end;

procedure TrelEstatisticasHospital.qrpRelatorioBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    bndRegiao.ForceNewPage:=false;
end;

procedure TrelEstatisticasHospital.qryRelatorio2CalcFields(
  DataSet: TDataSet);
begin
    qryRelatorio2DiariasPagas.Value:=qryRelatorio2Diarias.Value-qryRelatorio2DiariasGlosadas.Value;

    qryRelatorio2Paciente1.Value:=qryRelatorio2Paciente.asInteger-qryRelatorio2Complemento.asInteger;
    qryRelatorio2ValorPago.Value:=qryRelatorio2Valor.Value-
                                 qryRelatorio2ValorGlosado.Value;
    if qryRelatorio2Valor.Value<>0 then
       qryRelatorio2GlosaPorc.Value:=qryRelatorio2ValorGlosado.Value/
                                    qryRelatorio2Valor.Value*100
    else
       qryRelatorio2GlosaPorc.Value:=0;

    if qryRelatorio2Paciente1.Value<>0 then
       qryRelatorio2Media.Value:=(qryRelatorio2Diarias.Value-qryRelatorio2DiariasGlosadas.Value)/
                                  qryRelatorio2Paciente1.Value
    else
       qryRelatorio2Media.Value:=0;

    qryRelatorio2Mediana.Value:=0;

    if qryRelatorio2Paciente1.Value<>0 then
        qryRelatorio2CustoPaciente.Value:=qryRelatorio2ValorPago.Value/
                                         qryRelatorio2Paciente1.Value
    else
        qryRelatorio2CustoPaciente.Value:=0;

    if (qryRelatorio2Diarias.Value-qryRelatorio2DiariasGlosadas.Value)<>0 then
        qryRelatorio2CustoDia.Value:=qryRelatorio2ValorPago.Value/
                                    (qryRelatorio2Diarias.Value-qryRelatorio2DiariasGlosadas.Value)
    else
        qryRelatorio2CustoDia.Value:=0;

    qryRelatorio2ValorNaoAcordado.value:=qryRelatorio2ValorNaoAcordadoM.value+
                                         qryRelatorio2ValorNaoAcordadoE.value;
end;

procedure TrelEstatisticasHospital.qryRelatorio2FilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
    accept:=(qryRelatorio2Cliente.Value=iCliente) and
            (qryRelatorio2Regiao.value=iRegiao);
end;

procedure TrelEstatisticasHospital.bndRegiaoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    iRegiao:=qryRelatorioRegiao.Value;
    qryRelatorio2.Refresh;
end;

end.
