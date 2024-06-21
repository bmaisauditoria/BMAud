unit relsEstatisticaHospitalDiag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls;

type
  TrelEstatisticasHospitalDiag = class(TForm)
    qrpRelatorio: TQuickRep;
    qryRelatorio: TQuery;
    dsRelatorio: TDataSource;
    qryRelatorioAtendimentoHI: TIntegerField;
    qryRelatorioCliente: TIntegerField;
    qryRelatorioPaciente: TIntegerField;
    qryRelatorioHospital: TIntegerField;
    qryRelatorioMedico: TIntegerField;
    qryRelatorioEnfermeiro: TIntegerField;
    qryRelatorioDataFechamento: TDateField;
    qryRelatorioMesCompetencia: TIntegerField;
    qryRelatorioAnoCompetencia: TIntegerField;
    qryRelatorioDataInternacao: TDateField;
    qryRelatorioDataAlta: TDateField;
    qryRelatorioValor: TCurrencyField;
    qryRelatorioValorGlosadoM: TCurrencyField;
    qryRelatorioValorGlosadoE: TCurrencyField;
    qryRelatorioComplemento: TBooleanField;
    qryRelatorioNumeroParcial: TIntegerField;
    qryRelatorioDayClinic: TBooleanField;
    qryRelatorioIntercambio: TBooleanField;
    qryRelatorioUsuario: TStringField;
    qryRelatorioObservacao: TMemoField;
    qryRelatorioDataInclusao: TDateField;
    qryRelatorioDataExclusao: TDateField;
    qryRelatorioNome: TStringField;
    bndCabecalho: TQRBand;
    lblTitulo: TQRLabel;
    lblInicio: TQRLabel;
    qrImagem: TQRImage;
    QRGroup1: TQRGroup;
    QRGroup2: TQRGroup;
    PageFooterBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    dbItem: TTable;
    dbDiagnostico: TTable;
    dbHospital: TTable;
    dbCliente: TTable;
    dsItem: TDataSource;
    bndDetalhe: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    cmpValor: TQRDBText;
    cmpUTI: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    qryRelatorioParcialTexto: TStringField;
    cmpDiagnostico: TQRMemo;
    qryRelatorioValorPago: TCurrencyField;
    qryRelatorioDayClinicTexto: TStringField;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoCodCid: TStringField;
    dbDiagnosticoNome: TStringField;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBImage1: TQRDBImage;
    dbClienteLogotipo: TGraphicField;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRExpr5: TQRExpr;
    qryRelatorioComplementoTexto: TStringField;
    qryRelatorioDayClinicSum: TIntegerField;
    qryRelatorioParcialSum: TIntegerField;
    qryRelatorioComplementoSum: TIntegerField;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    qryRelatorioDiasUTI: TFloatField;
    qryRelatorioDiarias: TFloatField;
    qryRelatorioDiariasGlosadas: TFloatField;
    dbItemCliente: TIntegerField;
    dbItemAtendimentoHI: TIntegerField;
    dbItemDiagnostico: TIntegerField;
    dbItemAtendimentoHC: TIntegerField;
    dbItemItem: TIntegerField;
    dbItemDataAuditoria: TDateField;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteCor1: TStringField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteCor2: TStringField;
    dbClienteMaximoCobrado3: TCurrencyField;
    dbClienteCor3: TStringField;
    qryRelatorioPacote: TBooleanField;
    QRLabel16: TQRLabel;
    QRDBText7: TQRDBText;
    qryRelatorioPacoteTexto: TStringField;
    QRExpr11: TQRExpr;
    qryRelatorioPacoteSum: TIntegerField;
    QRExpr12: TQRExpr;
    cmpHospital: TQRLabel;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbHospitalRegiao: TIntegerField;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    cmpDiaria: TQRDBText;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel17: TQRLabel;
    dbClienteDiarias: TIntegerField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TIntegerField;
    dbClienteCorDiariaUTI: TStringField;
    QRChildBand1: TQRChildBand;
    QRLabel18: TQRLabel;
    qryRelatorio1: TQuery;
    cmpValorT: TQRDBText;
    cmpDiariaT: TQRDBText;
    cmpUTIT: TQRDBText;
    qryRelatorio1Cliente: TIntegerField;
    qryRelatorio1Hospital: TIntegerField;
    qryRelatorio1Valor: TCurrencyField;
    qryRelatorio1ValorGlosadoE: TCurrencyField;
    qryRelatorio1ValorGlosadoM: TCurrencyField;
    qryRelatorio1Diarias: TFloatField;
    qryRelatorio1DiasUTI: TFloatField;
    qryRelatorio1Nome: TStringField;
    qryRelatorio1ValorPago: TCurrencyField;
    qryRelatorio2: TQuery;
    qryRelatorio2Cliente: TIntegerField;
    qryRelatorio2Hospital: TIntegerField;
    qryRelatorio2DataInicioP: TDateField;
    qryRelatorio2Valor: TCurrencyField;
    qryRelatorio2ValorGlosadoE: TCurrencyField;
    qryRelatorio2ValorGlosadoM: TCurrencyField;
    qryRelatorio2Diarias: TFloatField;
    qryRelatorio2DiasUTI: TFloatField;
    qryRelatorio2Nome: TStringField;
    qryRelatorio2ValorPago: TCurrencyField;
    QRLabel19: TQRLabel;
    cmpDataInicio: TQRDBText;
    cmpValorTotal: TQRDBText;
    qryRelatorioDataInicioP: TDateField;
    qryRelatorio1Qtd: TIntegerField;
    lblConferencia: TQRLabel;
    lblPrimeiro: TQRLabel;
    QRLabel20: TQRLabel;
    qryRelatorioNaoContabilizado: TIntegerField;
    QRLabel26: TQRLabel;
    qryRelatorioParcial: TIntegerField;
    procedure qryRelatorioCalcFields(DataSet: TDataSet);
    procedure bndDetalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure qrpRelatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qryRelatorio1CalcFields(DataSet: TDataSet);
    procedure qryRelatorio2CalcFields(DataSet: TDataSet);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relEstatisticasHospitalDiag: TrelEstatisticasHospitalDiag;
  iPaciente,iVez:integer;
  cor1,cor2,cor3,cor4,cor5:string;
  iDataIniP: Tdate;
  igrupo: boolean;

implementation

uses frmRelEstatisticasPacienteH;
{$R *.dfm}

procedure TrelEstatisticasHospitalDiag.qryRelatorioCalcFields(DataSet: TDataSet);
begin
    if qryRelatorioDayClinic.Value=true then
       qryRelatorioDayClinicTexto.Value:='X'
    else
       qryRelatorioDayClinicTexto.Value:='';

    if qryRelatorioDayClinic.Value=true then
       qryRelatorioDayClinicSum.Value:=1
    else
       qryRelatorioDayClinicSum.Value:=0;

    if qryRelatorioParcial.Value=1 then
       qryRelatorioParcialTexto.Value:='X'
    else
       qryRelatorioParcialTexto.Value:='';

    if qryRelatorioParcial.Value=1 then
       qryRelatorioParcialSum.Value:=1
    else
       qryRelatorioParcialSum.Value:=0;

    if qryRelatorioComplemento.Value=true then
       qryRelatorioComplementoTexto.Value:='X'
    else
       qryRelatorioComplementoTexto.Value:='';

    if qryRelatorioComplemento.Value=true then
       qryRelatorioComplementoSum.Value:=1
    else
       qryRelatorioComplementoSum.Value:=0;

    if qryRelatorioPacote.Value=true then
       qryRelatorioPacoteTexto.Value:='X'
    else
       qryRelatorioPacoteTexto.Value:='';

    if qryRelatorioPacote.Value=true then
       qryRelatorioPacoteSum.Value:=1
    else
       qryRelatorioPacoteSum.Value:=0;

    qryRelatorioValorPago.Value:=qryRelatorioValor.Value-
                                 qryRelatorioValorGlosadoM.Value-
                                 qryRelatorioValorGlosadoE.Value;

end;

procedure TrelEstatisticasHospitalDiag.bndDetalheBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    Printband:=true;
    if relEstatisticasHospitalDiag.tag=1 then
    begin
        if qryRelatorio1.Locate('Cliente;Hospital;Nome',
                                VarArrayOf([qryRelatorioCliente.value,
                                            qryRelatorioHospital.value,
                                            qryRelatorioNome.value]),[]) then
        PrintBand:=(qryRelatorio1Qtd.value>1);
    end;

    if iPaciente=qryRelatorioPaciente.value then
        ivez:=ivez+1
    else ivez:=0;

    iPaciente:=qryRelatorioPaciente.value;
    iDataIniP:=qryRelatorioDataInicioP.value;

    cor1:='clWhite';
    cor2:='clWhite';
    cor3:='clWhite';
    cor4:='clWhite';
    cor5:='clWhite';

    if dbClienteCor1.Value<>'' then
       cor1:=dbClienteCor1.Value;

    if dbClienteCor2.Value<>'' then
       cor2:=dbClienteCor2.Value;

    if dbClienteCor3.Value<>'' then
       cor3:=dbClienteCor3.Value;

    if dbClienteCorDiaria.Value<>'' then
       cor4:=dbClienteCorDiaria.Value;

    if dbClienteCorDiariaUTI.Value<>'' then
       cor5:=dbClienteCorDiariaUTI.Value;

    cmpValor.Color:=clWhite;
    cmpDiaria.Color:=clWhite;
    cmpUTI.Color:=ClWhite;

    if (qryRelatorioValorPago.Value< dbClienteMaximoCobrado2.Value) and
       (qryRelatorioValorPago.Value>=dbClienteMaximoCobrado1.Value) and
       (dbClienteMaximoCobrado1.Value>0) then
        cmpValor.Color:=StringtoColor(cor1);

    if (qryRelatorioValorPago.Value< dbClienteMaximoCobrado3.Value) and
       (qryRelatorioValorPago.Value>=dbClienteMaximoCobrado2.Value) and
       (dbClienteMaximoCobrado2.Value>0) then
        cmpValor.Color:=StringtoColor(cor2);

    if (qryRelatorioValorPago.Value>=dbClienteMaximoCobrado3.Value) and
       (dbClienteMaximoCobrado3.Value>0) then
        cmpValor.Color:=StringtoColor(cor3);

    if (qryRelatorioDiarias.Value>=dbClienteDiarias.Value) and
       (dbClienteDiarias.Value>0) then
        cmpDiaria.Color:=StringtoColor(cor4);

    if (qryRelatorioDiasUTI.Value>=dbClienteDiariasUTI.Value) and
       (dbClienteDiariasUTI.Value>0) then
        cmpUTI.Color:=StringtoColor(cor5);


    cmpDiagnostico.Lines.Clear;
    dbItem.First;
    while not dbItem.eof do
    begin
        cmpDiagnostico.Lines.Add(dbDiagnosticoNome.Value);
        dbItem.Next;
    end;

    if qryRelatorioNaoContabilizado.value=1 then
    begin
       bndDetalhe.Font.Color:=clRed;
       QRDbText7.Font.Color:=clRed;
       QRDbtext10.Font.Color:=clRed;
       QRDbTExt11.Font.Color:=clRed;
       QrDbText12.Font.Color:=clRed;
    end
    else
    begin
       bndDetalhe.Font.color:=clBlack;
       QRDbText7.Font.Color:=clblack;
       QRDbtext10.Font.Color:=clblack;
       QRDbTExt11.Font.Color:=clblack;
       QrDbText12.Font.Color:=clblack;
    end;
end;

procedure TrelEstatisticasHospitalDiag.QRGroup2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
    cmpHospital.Caption:=dbHospitalNome.VAlue;
end;

procedure TrelEstatisticasHospitalDiag.qrpRelatorioBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    iPaciente:=0;
    iVez:=0;
end;

procedure TrelEstatisticasHospitalDiag.QRChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var itotal:variant;
begin
    qryRelatorio1.Locate('Cliente;Hospital;Nome',
                         VarArrayOf([qryRelatorioCliente.value,
                                     qryRelatorioHospital.value,
                                     qryRelatorioNome.value]),[]);

    if relEstatisticasHospitalDiag.tag=0 then
       if qryRelatorio2.Locate('Cliente;Hospital;Nome;DataInicioP',
                                VarArrayOf([qryRelatorioCliente.value,
                                            qryRelatorioHospital.value,
                                             qryRelatorioNome.value,
                                             qryRelatorioDataInicioP.value]),[]) then
            itotal:=qryrelatorio2valorpago.value
        else
            itotal:=0
    else
        itotal:=0;
        
    if itotal>0 then
        PrintBand:=(qryRelatorio1Qtd.value-1=ivez) and
                   (itotal>0)
    else
        PrintBand:=(ivez>0) and
                   (qryRelatorio1Qtd.value-1=ivez);


if PrintBand then
begin
    cor1:='$00F9E9DB';
    cor2:='$00F9E9DB';
    cor3:='$00F9E9DB';
    cor4:='$00F9E9DB';
    cor5:='$00F9E9DB';

    if dbClienteCor1.Value<>'' then
       cor1:=dbClienteCor1.Value;

    if dbClienteCor2.Value<>'' then
       cor2:=dbClienteCor2.Value;

    if dbClienteCor3.Value<>'' then
       cor3:=dbClienteCor3.Value;

    if dbClienteCorDiaria.Value<>'' then
       cor4:=dbClienteCorDiaria.Value;

    if dbClienteCorDiariaUTI.Value<>'' then
       cor5:=dbClienteCorDiariaUTI.Value;

    cmpValorT.Color:=$00F9E9DB;
    cmpDiariaT.Color:=$00F9E9DB;
    cmpUTIT.Color:=$00F9E9DB;
    cmpValorTotal.Color:=$00F9E9DB;

    qryRelatorio1.Locate('Cliente;Hospital;Nome',
                         VarArrayOf([qryRelatorioCliente.value,
                                     qryRelatorioHospital.value,
                                     qryRelatorioNome.value]),[]);

    if not qryRelatorioDataInicioP.isnull then
    begin
        qryRelatorio2.Locate('Cliente;Hospital;Nome;DataInicioP',
                             VarArrayOf([qryRelatorioCliente.value,
                                         qryRelatorioHospital.value,
                                         qryRelatorioNome.value,
                                         qryRelatorioDataInicioP.value]),[]);

        QrLabel19.Enabled:=true;
        cmpDataInicio.Enabled:=true;
        cmpValortotal.Enabled:=true;
    end
    else
    begin
        QrLabel19.Enabled:=false;
        cmpDataInicio.Enabled:=false;
        cmpValortotal.Enabled:=false;
    end;


    if (qryRelatorio1ValorPago.Value< dbClienteMaximoCobrado2.Value) and
       (qryRelatorio1ValorPago.Value>=dbClienteMaximoCobrado1.Value) and
       (dbClienteMaximoCobrado1.Value>0) then
        cmpValorT.Color:=StringtoColor(cor1);

    if (qryRelatorio1ValorPago.Value< dbClienteMaximoCobrado3.Value) and
       (qryRelatorio1ValorPago.Value>=dbClienteMaximoCobrado2.Value) and
       (dbClienteMaximoCobrado2.Value>0) then
        cmpValorT.Color:=StringtoColor(cor2);

    if (qryRelatorio1ValorPago.Value>=dbClienteMaximoCobrado3.Value) and
       (dbClienteMaximoCobrado3.Value>0) then
        cmpValorT.Color:=StringtoColor(cor3);
//******
    if (qryRelatorio2ValorPago.value< dbClienteMaximoCobrado2.Value) and
       (qryRelatorio2ValorPago.value>=dbClienteMaximoCobrado1.Value) and
       (dbClienteMaximoCobrado1.Value>0) then
        cmpValorTotal.Color:=StringtoColor(cor1);

    if (qryRelatorio2ValorPago.value< dbClienteMaximoCobrado3.Value) and
       (qryRelatorio2ValorPago.value>=dbClienteMaximoCobrado2.Value) and
       (dbClienteMaximoCobrado2.Value>0) then
        cmpValorTotal.Color:=StringtoColor(cor2);

    if (qryRelatorio2ValorPago.value>=dbClienteMaximoCobrado3.Value) and
       (dbClienteMaximoCobrado3.Value>0) then
        cmpValorTotal.Color:=StringtoColor(cor3);

    if (qryRelatorio1Diarias.Value>=dbClienteDiarias.Value) and
       (dbClienteDiarias.Value>0) then
        cmpDiariaT.Color:=StringtoColor(cor4);

    if (qryRelatorio1DiasUTI.Value>=dbClienteDiariasUTI.Value) and
       (dbClienteDiariasUTI.Value>0) then
        cmpUTIT.Color:=StringtoColor(cor5);
end;
end;

procedure TrelEstatisticasHospitalDiag.qryRelatorio1CalcFields(
  DataSet: TDataSet);
begin
    qryRelatorio1ValorPago.Value:=qryRelatorio1Valor.Value-
                                  qryRelatorio1ValorGlosadoM.Value-
                                  qryRelatorio1ValorGlosadoE.Value;

end;

procedure TrelEstatisticasHospitalDiag.qryRelatorio2CalcFields(
  DataSet: TDataSet);
begin
    qryRelatorio2ValorPago.Value:=qryRelatorio2Valor.Value-
                                  qryRelatorio2ValorGlosadoM.Value-
                                  qryRelatorio2ValorGlosadoE.Value;
end;

procedure TrelEstatisticasHospitalDiag.QRLabel21Print(sender: TObject;
  var Value: String);
begin
    value:=InttoStr(ivez);
end;

procedure TrelEstatisticasHospitalDiag.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    if relEstatisticasHospitalDiag.tag=1 then
       lblconferencia.enabled:=true
    else
       lblconferencia.enabled:=false;

end;

end.
