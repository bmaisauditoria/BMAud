unit frmRelEvolucaoCustosR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  StdCtrls, Buttons, DBCtrls, ComCtrls, Variants, RPTChart, 
  RpDefine, RpCon, TeEngine, Series, TeeProcs, Chart, DbChart, Grids,
  DBGrids ;

type
  TfrmRelEvolucaoCustoR = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    dbClienteIni: TMSTable;
    dsClienteIni: TDataSource;
    cmpClienteIni: TDBLookupComboBox;
    cmpCodClienteIni: TDBText;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    Label1: TLabel;
    rdgAnalise: TRadioGroup;
    RvCustomConnection: TRvCustomConnection;
    grafico: TDBChart;
    dbHospitalIni: TMSTable;
    dbHospitalIniHospital: TIntegerField;
    dbHospitalIniNome: TStringField;
    dsHospitalIni: TDataSource;
    chkHospital: TCheckBox;
    cmpHospitalIni: TDBLookupComboBox;
    cmpCodHospitalIni: TDBText;
    Panel3: TPanel;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dbClienteIDPrincipal: TIntegerField;
    dsClienteID: TDataSource;
    chkClienteID: TCheckBox;
    cmpClienteID: TDBLookupComboBox;
    Series1: TFastLineSeries;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    dsRegiao: TDataSource;
    chkRegiao: TCheckBox;
    cmpRegiao: TDBLookupComboBox;
    rdgPeriodo: TRadioGroup;
    rdgMedia: TRadioGroup;
    rdgCFor: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    cmdExcelDemo: TBitBtn;
    cmdExcel: TBitBtn;
    Panel2: TPanel;
    cmdRelDemo: TBitBtn;
    cmdRelResumo: TBitBtn;
    Panel5: TPanel;
    cmdMediaPaciente: TBitBtn;
    cmdMediaDia: TBitBtn;
    cmdMediaPermanencia: TBitBtn;
    cmdValorPago: TBitBtn;
    cmdRelIndicadores: TBitBtn;
    cmdExcelIndicadores: TBitBtn;
    PB1: TProgressBar;
    Panel6: TPanel;
    rdgLogo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdRelResumoClick(Sender: TObject);
    procedure cmdMediaPacienteClick(Sender: TObject);
    procedure cmdMediaDiaClick(Sender: TObject);
    procedure cmdValorPagoClick(Sender: TObject);
    procedure RvCustomConnectionGetCols(Connection: TRvCustomConnection);
    procedure RvCustomConnectionGetRow(Connection: TRvCustomConnection);
    procedure chkHospitalClick(Sender: TObject);
    procedure cmdRelDemoClick(Sender: TObject);
    procedure cmdExcelClick(Sender: TObject);
    procedure cmdExcelDemoClick(Sender: TObject);
    procedure cmpClienteIniCloseUp(Sender: TObject);
    procedure chkClienteIDClick(Sender: TObject);
    procedure cmdMediaPermanenciaClick(Sender: TObject);
    procedure chkRegiaoClick(Sender: TObject);
    procedure cmdRelIndicadoresClick(Sender: TObject);
    procedure cmdExcelIndicadoresClick(Sender: TObject);
  private
    { Private declarations }
  public
     iCompetencia,iLogo:integer;
    { Public declarations }
  end;

var
  frmRelEvolucaoCustoR: TfrmRelEvolucaoCustoR;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

function ZeroEsq(a:integer;t:integer):string;  //numero->string
var aa:string;
begin
    str(a,aa);
    while length(aa)<t do aa:='0'+aa;
    result:=aa;
end;

procedure TfrmRelEvolucaoCustoR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
    dbHospitalIni.close;
    dbClienteID.close;
    dbRegiao.Close;
end;

procedure TfrmRelEvolucaoCustoR.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

    dbHospitalIni.Open;
    cmpHospitalIni.KeyValue:=dbHospitalIniHospital.Value;

    dbClienteId.Open;
    cmpClienteId.KeyValue:=dbClienteIDID.value;

    dbRegiao.Open;
    cmpRegiao.KeyValue:=dbRegiaoRegiao.value;
    chkRegiao.Checked;
end;

procedure TfrmRelEvolucaoCustoR.chkHospitalClick(Sender: TObject);
begin
    if chkHospital.Checked then
    begin
       cmpHospitalIni.Visible:=false;
       cmpCodHospitalIni.visible:=false;
       cmdRelDemo.Enabled:=true;
       cmdExcelDemo.Enabled:=true;
       chkRegiao.Checked:=true;
       chkRegiao.Visible:=true;
       cmpRegiao.Visible:=false;
    end
    else
    begin
       cmpHospitalIni.Visible:=true;
       cmpCodHospitalIni.Visible:=true;
       cmdRelDemo.Enabled:=false;
       cmdExcelDemo.Enabled:=false;
       cmpRegiao.Visible:=false;
       chkRegiao.Visible:=false;
    end;
end;

procedure TfrmRelEvolucaoCustoR.cmdRelResumoClick(Sender: TObject);
var iClienteIni,iRegiao:integer;
var i,iMes,iAno,m,a,iHospital,imeses,iparcial:integer;
var iLinhaA,iLinhaH,iHospitalNome,iLinhaID,iClienteID,iRegiaoNome,iLinhaF,ititulo:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     PB1.Position:=0;

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

     if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:=' ';
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    if chkHospital.Checked then
    begin
        iHospital:=0;
        iHospitalNome:='';
        iLinhaH:='';
    end
    else
    begin
        iHospital:=cmpHospitalIni.KeyValue;
        iHospitalNome:=dbHospitalIniNome.value;
        iLinhaH:=' and AtendHI.Hospital=:Hosp ';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
    end;

    with dmRelatorio do
    begin
        if chkRegiao.Checked then
        begin
            qryRelEvolucao.SQL.Clear;
            qryRelEvolucao.SQL.Text:= 'Select AnoCompetencia as Ano, '+
                                      '       MesCompetencia as Mes, '+
                                      '       count(Paciente) as Paciente, '+
                                      '       sum(cast(Complemento as integer)) as Complemento, '+
                                      '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                      '       sum(Valor) as Valor, '+
                                      '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                      '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                      '       sum(Diarias) as Diarias, '+
                                      '       sum(DiasUTI) as DiariasUTI, '+
                                      '       sum(DiariasGlosadas) as DiariasGlosadas,  '+
                                      '       count(DISTINCT CASE WHEN DiasUTI>0 THEN (Paciente) END) as PacienteUTI, '+
                                      '       count(CASE WHEN DiasUTI>0 THEN Paciente END) as ContaUTI  '+
                                      'from  AtendHI '+
                                      'where AnoCompetencia>=:AnoIni and '+
                                      '      AnoCompetencia<=:AnoFim and '+
                                      '      MesCompetencia>=1 and '+
                                      '      MesCompetencia<=12 and '+
                                      '      Cliente=:CliIni  '+iLinhaA+iLinhaH+iLinhaID+iLinhaF+
                                      'group by AnoCompetencia,MesCompetencia '+
                                      'order by Ano,Mes ';

            qryRelEvolucao.ParamByName('CliIni').asInteger:=iClienteIni;
            qryRelEvolucao.ParamByName('AnoIni').asInteger:=iAno-1;
            qryRelEvolucao.ParamByName('AnoFim').asInteger:=iAno;
            if not chkHospital.Checked then
                qryRelEvolucao.ParamByName('Hosp').AsInteger:=iHospital;
            qryRelEvolucao.Open;

//***************
         qryParcialMensal.SQL.Clear;    //soma o total de parciais reais
         qryParcialMensal.SQL.Text:='Select  AtendHI.AnoCompetencia, AtendHI.MesCompetencia, '+
                                    '        AtendHI.Hospital, '+
                                    '        AtendHI.Paciente, '+
                                    '        AtendHI.DataInicioP '+
                                    'from AtendHI '+
                                    'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                    'where AnoCompetencia>=:AnoIni and '+
                                    '      AnoCompetencia<=:AnoFim and '+
                                    '      MesCompetencia>=1 and '+
                                    '      MesCompetencia<=12 and '+
                                    '      DataInicioP is not null and Parcial=1 and '+
                                    '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+iLinhaF+
                                    'group by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP '+
                                    'order by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP';

         qryParcialMensal.ParamByName('CliIni').asinteger:=iClienteIni;
         qryParcialMensal.ParamByName('CliIni').asInteger:=iClienteIni;
         qryParcialMensal.ParamByName('AnoIni').asInteger:=iAno-1;
         qryParcialMensal.ParamByName('AnoFim').asInteger:=iAno;
         if not chkHospital.Checked then
            qryParcialMensal.ParamByName('Hosp').AsInteger:=iHospital;

         qryParcialMensal.Open;
//*****************

            dbRelEvolucao.tag:=0;
            dbRelEvolucao.Close;
            dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR';
            dbRelEvolucao.Execute;
            dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR';
            dbRelEvolucao.Open;

            qryRelEvolucao.First;
            m:=iMes;
            a:=iAno;
            PB1.Max:=12;
                for i:=1 to imeses  do
                begin
                    PB1.Position:=PB1.Position+1;
                    if qryRelEvolucao.Locate('Ano;Mes',VarArrayof([a,m]),[]) then
                        dbRelEvolucao.Edit
                    else
                        dbRelEvolucao.Insert;

                    dbRelEvolucaoHospital.value:=iHospital;
                    dbRelEvolucaoNome.value:=iHospitalNome;
                    dbRelEvolucaoRegiao.value:=dbHospitalRegiao.value;

//***** Parcial
                    iparcial:=0;
                    if qryParcialMensal.Locate('AnoCompetencia;MesCompetencia',VarArrayof([a,m]),[]) then
                    begin
                        while (qryParcialMensalAnoCompetencia.value=a) and
                              (qryParcialMensalMesCompetencia.value=m) and
                              (not qryParcialMensal.eof) do
                        begin
                            iparcial:=iparcial+1;
                            qryParcialMensal.Next;
                        end;
                    end;
//*****

                    case i of
                    12:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI1.Value:=dbRelEvolucaoPacienteUTI1.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI1.Value:=dbRelEvolucaoPacienteUTI1.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor1.Value:=dbRelEvolucaoValor1.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa1.Value:=dbRelEvolucaoGlosa1.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria1.Value:=dbRelEvolucaoDiaria1.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI1.Value:=dbRelEvolucaoDiariaUTI1.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                    11:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI2.Value:=dbRelEvolucaoPacienteUTI2.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI2.Value:=dbRelEvolucaoPacienteUTI2.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;

                            dbRelEvolucaoValor2.Value:=dbRelEvolucaoValor2.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa2.Value:=dbRelEvolucaoGlosa2.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria2.Value:=dbRelEvolucaoDiaria2.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI2.Value:=dbRelEvolucaoDiariaUTI2.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                    10:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI3.Value:=dbRelEvolucaoPacienteUTI3.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI3.Value:=dbRelEvolucaoPacienteUTI3.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor3.Value:=dbRelEvolucaoVAlor3.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa3.Value:=dbRelEvolucaoGlosa3.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria3.Value:=dbRelEvolucaoDiaria3.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI3.Value:=dbRelEvolucaoDiariaUTI3.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        9:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI4.Value:=dbRelEvolucaoPacienteUTI4.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI4.Value:=dbRelEvolucaoPacienteUTI4.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor4.Value:=dbRelEvolucaoValor4.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa4.Value:=dbRelEvolucaoGlosa4.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria4.Value:=dbRelEvolucaoDiaria4.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI4.Value:=dbRelEvolucaoDiariaUTI4.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        8:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI5.Value:=dbRelEvolucaoPacienteUTI5.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI5.Value:=dbRelEvolucaoPacienteUTI5.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor5.Value:=dbRelEvolucaoValor5.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa5.Value:=dbRelEvolucaoGlosa5.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria5.Value:=dbRelEvolucaoDiaria5.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI5.Value:=dbRelEvolucaoDiariaUTI5.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        7:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI6.Value:=dbRelEvolucaoPacienteUTI6.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI6.Value:=dbRelEvolucaoPacienteUTI6.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor6.Value:=dbRelEvolucaoValor6.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa6.Value:=dbRelEvolucaoGlosa6.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria6.Value:=dbRelEvolucaoDiaria6.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI6.Value:=dbRelEvolucaoDiariaUTI6.Value+qryRelEvolucaoDiariasUTI.Value;
                         end;
                        6:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI7.Value:=dbRelEvolucaoPacienteUTI7.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI7.Value:=dbRelEvolucaoPacienteUTI7.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor7.Value:=dbRelEvolucaoValor7.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa7.Value:=dbRelEvolucaoGlosa7.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria7.Value:=dbRelEvolucaoDiaria7.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI7.Value:=dbRelEvolucaoDiariaUTI7.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        5:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI8.Value:=dbRelEvolucaoPacienteUTI8.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI8.Value:=dbRelEvolucaoPacienteUTI8.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor8.Value:=dbRelEvolucaoValor8.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa8.Value:=dbRelEvolucaoGlosa8.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria8.Value:=dbRelEvolucaoDiaria8.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI8.Value:=dbRelEvolucaoDiariaUTI8.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        4:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI9.Value:=dbRelEvolucaoPacienteUTI9.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI9.Value:=dbRelEvolucaoPacienteUTI9.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor9.Value:=dbRelEvolucaoVAlor9.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa9.Value:=dbRelEvolucaoGlosa9.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria9.Value:=dbRelEvolucaoDiaria9.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI9.Value:=dbRelEvolucaoDiariaUTI9.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        3:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI10.Value:=dbRelEvolucaoPacienteUTI10.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI10.Value:=dbRelEvolucaoPacienteUTI10.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor10.Value:=dbRelEvolucaoValor10.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa10.Value:=dbRelEvolucaoGlosa10.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria10.Value:=dbRelEvolucaoDiaria10.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI10.Value:=dbRelEvolucaoDiariaUTI10.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        2:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI11.Value:=dbRelEvolucaoPacienteUTI11.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI11.Value:=dbRelEvolucaoPacienteUTI11.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor11.Value:=dbRelEvolucaoValor11.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa11.Value:=dbRelEvolucaoGlosa11.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria11.Value:=dbRelEvolucaoDiaria11.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI11.Value:=dbRelEvolucaoDiariaUTI11.Value+qryRelEvolucaoDiariasUTI.Value;
                        end;
                        1:begin
                            if rdgMedia.ItemIndex=0 then
                            begin
                                dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger);
                                dbRelEvolucaoPacienteUTI12.Value:=dbRelEvolucaoPacienteUTI12.Value+qryRelEvolucaoContaUTI.value;
                            end
                            else
                            begin
                                dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoPaciente.asInteger-qryRelEvolucaoComplemento.asInteger)-
                                                               qryRelEvolucaoParcial.value+iParcial;
                                dbRelEvolucaoPacienteUTI12.Value:=dbRelEvolucaoPacienteUTI12.Value+qryRelEvolucaoPacienteUTI.Value;
                            end;
                            dbRelEvolucaoValor12.Value:=dbRelEvolucaoValor12.Value+qryRelEvolucaoValor.Value;
                            dbRelEvolucaoGlosa12.Value:=dbRelEvolucaoGlosa12.Value+qryRelEvolucaoValorGlosaE.Value+qryRelEvolucaoValorGlosaM.Value;
                            dbRelEvolucaoDiaria12.Value:=dbRelEvolucaoDiaria12.Value+qryRelEvolucaoDiarias.Value-qryRelEvolucaoDiariasGlosadas.Value;
                            dbRelEvolucaoDiariaUTI12.Value:=dbRelEvolucaoDiariaUTI12.Value+qryRelEvolucaoDiariasUTI.Value;
                         end;
                        end;
                        dbRelEvolucao.Post;
                        dbRelEvolucao.Refresh;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
        end
        else
        begin //por Regiao
            qryRelEvolucaoH.SQL.Clear;
            qryRelEvolucaoH.SQL.Text:= 'Select Hospital as Hospital, '+
                                      '       AnoCompetencia as Ano, '+
                                      '       MesCompetencia as Mes, '+
                                      '       count(Paciente) as Paciente, '+
                                      '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                      '       sum(cast(Complemento as integer)) as Complemento, '+
                                      '       sum(Valor) as Valor, '+
                                      '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                      '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                      '       sum(Diarias) as Diarias, '+
                                      '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                      'from  AtendHI '+
                                      'where AnoCompetencia>=:AnoIni and '+
                                      '      AnoCompetencia<=:AnoFim and '+
                                      '      MesCompetencia>=1 and '+
                                      '      MesCompetencia<=12 and '+
                                      '      Cliente=:CliIni  '+iLinhaA+iLinhaH+iLinhaID+iLinhaF+
                                      'group by Hospital,AnoCompetencia,MesCompetencia '+
                                      'order by Hospital,Ano,Mes ';

            qryRelEvolucaoH.ParamByName('CliIni').asInteger:=iClienteIni;
            qryRelEvolucaoH.ParamByName('AnoIni').asInteger:=iAno-1;
            qryRelEvolucaoH.ParamByName('AnoFim').asInteger:=iAno;
            qryRelEvolucaoH.Open;

//***************
         qryParcialMensal.SQL.Clear;    //soma o total de parciais reais
         qryParcialMensal.SQL.Text:='Select  AtendHI.AnoCompetencia, AtendHI.MesCompetencia, '+
                                    '        AtendHI.Hospital, '+
                                    '        AtendHI.Paciente, '+
                                    '        AtendHI.DataInicioP '+
                                    'from AtendHI '+
                                    'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                    'where AnoCompetencia>=:AnoIni and '+
                                    '      AnoCompetencia<=:AnoFim and '+
                                    '      MesCompetencia>=1 and '+
                                    '      MesCompetencia<=12 and '+
                                    '      DataInicioP is not null and Parcial=1 and '+
                                    '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+iLinhaF+
                                    'group by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP '+
                                    'order by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP';

         qryParcialMensal.ParamByName('CliIni').asinteger:=iClienteIni;
         qryParcialMensal.ParamByName('CliIni').asInteger:=iClienteIni;
         qryParcialMensal.ParamByName('AnoIni').asInteger:=iAno-1;
         qryParcialMensal.ParamByName('AnoFim').asInteger:=iAno;
         if not chkHospital.Checked then
            qryParcialMensal.ParamByName('Hosp').AsInteger:=iHospital;

         qryParcialMensal.Open;
//*****************

            dbRelEvolucao.Close;
            dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR';
            dbRelEvolucao.Execute;
            dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR';
            dbRelEvolucao.Open;

            qryRelEvolucaoH.First;
            dbHospital.Open;
            dbHospital.First;
            while not dbHospital.eof do
            begin
                if (not chkRegiao.Checked) and
                  (dbHospitalRegiao.value<>iRegiao) then
                begin
                    dbHospital.Next;
                    Continue;
                end;
                iHospital:=dbHospitalHospital.value;
                m:=iMes;
                a:=iAno;
                PB1.Position:=0;

                for i:=1 to imeses  do
                begin
                    PB1.Position:=PB1.Position+1;
                    if qryRelEvolucaoH.Locate('Hospital;Ano;Mes',VarArrayof([iHospital,a,m]),[]) then
                    begin
                        if dbRelEvolucao.Locate('Regiao',iRegiao,[]) then
                            dbRelEvolucao.Edit
                        else
                            dbRelEvolucao.Insert;
                        dbRelEvolucaoRegiao.value:=iRegiao;

//***** Parcial
                        iparcial:=0;
                        if qryParcialMensal.Locate('AnoCompetencia;MesCompetencia;Hospital',VarArrayof([a,m,iHospital]),[]) then
                        begin
                            while (qryParcialMensalAnoCompetencia.value=a) and
                                  (qryParcialMensalMesCompetencia.value=m) and
                                  (qryParcialMensalHospital.value=iHospital) and
                                  (not qryParcialMensal.eof) do
                           begin
                                iparcial:=iparcial+1;
                                qryParcialMensal.Next;
                            end;
                        end;
//*****
                        case i of
                        12:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor1.Value:=dbRelEvolucaoValor1.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa1.Value:=dbRelEvolucaoGlosa1.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria1.Value:=dbRelEvolucaoDiaria1.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        11:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor2.Value:=dbRelEvolucaoValor2.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa2.Value:=dbRelEvolucaoGlosa2.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria2.Value:=dbRelEvolucaoDiaria2.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        10:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor3.Value:=dbRelEvolucaoVAlor3.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa3.Value:=dbRelEvolucaoGlosa3.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria3.Value:=dbRelEvolucaoDiaria3.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        9:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor4.Value:=dbRelEvolucaoValor4.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa4.Value:=dbRelEvolucaoGlosa4.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria4.Value:=dbRelEvolucaoDiaria4.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        8:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor5.Value:=dbRelEvolucaoValor5.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa5.Value:=dbRelEvolucaoGlosa5.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria5.Value:=dbRelEvolucaoDiaria5.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                         end;
                        7:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor6.Value:=dbRelEvolucaoValor6.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa6.Value:=dbRelEvolucaoGlosa6.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria6.Value:=dbRelEvolucaoDiaria6.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                         end;
                        6:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor7.Value:=dbRelEvolucaoValor7.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa7.Value:=dbRelEvolucaoGlosa7.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria7.Value:=dbRelEvolucaoDiaria7.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        5:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor8.Value:=dbRelEvolucaoValor8.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa8.Value:=dbRelEvolucaoGlosa8.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria8.Value:=dbRelEvolucaoDiaria8.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        4:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor9.Value:=dbRelEvolucaoVAlor9.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa9.Value:=dbRelEvolucaoGlosa9.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria9.Value:=dbRelEvolucaoDiaria9.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        3:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor10.Value:=dbRelEvolucaoValor10.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa10.Value:=dbRelEvolucaoGlosa10.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria10.Value:=dbRelEvolucaoDiaria10.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        2:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor11.Value:=dbRelEvolucaoValor11.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa11.Value:=dbRelEvolucaoGlosa11.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria11.Value:=dbRelEvolucaoDiaria11.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                         end;
                        1:begin
                            if rdgMedia.ItemIndex=0 then
                                dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)
                            else
                                dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                              qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoValor12.Value:=dbRelEvolucaoValor12.Value+qryRelEvolucaoHValor.Value;
                            dbRelEvolucaoGlosa12.Value:=dbRelEvolucaoGlosa12.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                            dbRelEvolucaoDiaria12.Value:=dbRelEvolucaoDiaria12.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        end;
                        end;
                    dbRelEvolucao.Post;
                    dbRelEvolucao.Refresh;
                    end;
                    m:=m-1;
                    if m=0 then
                    begin
                        m:=12;
                        a:=a-1;
                    end;
                end;
                dbHospital.Next;
            end;
            dbRelEvolucao.IndexFieldNames:='Regiao;Nome';
        end;

        if frmRelEvolucaoCustoR.tag=0 then
        begin
            m:=iMes;
            a:=iAno;
            for i:=1 to imeses do
            begin
                case i of
                12:frmMenu.rvBBAuditoria.SetParam('Mes1',IntToStr(m)+'/'+IntToStr(a));
                11:frmMenu.rvBBAuditoria.SetParam('Mes2',IntToStr(m)+'/'+IntToStr(a));
                10:frmMenu.rvBBAuditoria.SetParam('Mes3',IntToStr(m)+'/'+IntToStr(a));
                9:frmMenu.rvBBAuditoria.SetParam('Mes4',IntToStr(m)+'/'+IntToStr(a));
                8:frmMenu.rvBBAuditoria.SetParam('Mes5',IntToStr(m)+'/'+IntToStr(a));
                7:frmMenu.rvBBAuditoria.SetParam('Mes6',IntToStr(m)+'/'+IntToStr(a));
                6:frmMenu.rvBBAuditoria.SetParam('Mes7',IntToStr(m)+'/'+IntToStr(a));
                5:frmMenu.rvBBAuditoria.SetParam('Mes8',IntToStr(m)+'/'+IntToStr(a));
                4:frmMenu.rvBBAuditoria.SetParam('Mes9',IntToStr(m)+'/'+IntToStr(a));
                3:frmMenu.rvBBAuditoria.SetParam('Mes10',IntToStr(m)+'/'+IntToStr(a));
                2:frmMenu.rvBBAuditoria.SetParam('Mes11',IntToStr(m)+'/'+IntToStr(a));
                1:frmMenu.rvBBAuditoria.SetParam('Mes12',IntToStr(m)+'/'+IntToStr(a));
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            ititulo:='';
            case rdgAnalise.ItemIndex of
            0:ititulo:=ititulo+'Pré-Análise';
            1:ititulo:=ititulo+'Pos-Análise';
            end;
            case rdgCFor.ItemIndex of
            0:iTitulo:=iTitulo+' - Complemento Fornecedor ';
            1:iTitulo:=iTitulo+' - Sem Complemento Fornecedor ';
            end;

            frmMenu.rvBBAuditoria.SetParam('Analise',ititulo);
            if chkClienteID.Checked then
               frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
            else
                frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
            frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução dos Custos');
            frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
            frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
            if chkRegiao.Checked then
            begin
              if imeses=6 then
                frmMenu.rvBBAuditoria.SelectReport('relEvolucao',true);
              if imeses=12 then
                frmMenu.rvBBAuditoria.SelectReport('relEvolucao12',true);
            end
            else
            begin
              if imeses=6 then
                frmMenu.rvBBAuditoria.SelectReport('relEvolucaoRegiao',true);
              if imeses=12 then
                frmMenu.rvBBAuditoria.SelectReport('relEvolucaoRegiao12',true);
            end;
            frmMenu.rvBBAuditoria.Execute;              
        end
        else
        begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            dbRelEvolucaoPGlosa1.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa2.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa3.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa4.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa5.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa6.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa7.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa8.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa9.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa10.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa11.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa12.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbRelEvolucao;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
            dbRelEvolucao.Close;
        end;
     end;
end;


procedure TfrmRelEvolucaoCustoR.cmdMediaPacienteClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao,imeses:integer;
var iLinhaA,iLinhaH,iHospitalNome,iRegiaoNome:string;
var iLinhaId,iclienteId:string;
var imax,imin:variant;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

     if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

     if chkClienteID.Checked then
        iLinhaID:=''
     else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

     case rdgAnalise.ItemIndex of
     0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
     1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
     2:iLinhaA:=' ';
     end;

     if chkHospital.Checked then
     begin
        iHospital:=0;
        iHospitalNome:='';
        iLinhaH:='';
     end
     else
     begin
        iHospital:=cmpHospitalIni.KeyValue;
        iHospitalNome:=dbHospitalIniNome.value;
        iLinhaH:=' and Hospital=:Hosp ';
     end;

     with dmRelatorio do
     begin
         dbPro.Open;
         dbPro.First;
         qryGrafico.SQL.Clear;
         qryGrafico.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(cast(Complemento as integer)) as Complemento, '+
                                 '       sum(cast(Parcial as integer)) as Parcial, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  AtendHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

        qryGrafico.ParamByName('CliIni').asInteger:=iClienteIni;
        qryGrafico.ParamByName('AnoIni').asInteger:=iAno-1;
        qryGrafico.ParamByName('AnoFim').asInteger:=iAno;
        if not chkHospital.Checked then
            qryGrafico.ParamByName('Hosp').AsInteger:=iHospital;
        qryGrafico.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;

        dbGraficoAux.Insert;
        dbGraficoAuxRegiao.Value:=0;
        dbGraficoAux.Post;
        dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
             begin
                dbHospital.Next;
                Continue;
            end;
            dbGraficoAux.Edit;
            iHospital:=dbHospitalHospital.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to imeses do
            begin
                if qryGrafico.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    12:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa1.Value:=dbGraficoAuxGlosa1.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    11:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa2.Value:=dbGraficoAuxGlosa2.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    10:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor3.Value:=dbGraficoAuxVAlor3.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa3.Value:=dbGraficoAuxGlosa3.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    9:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa4.Value:=dbGraficoAuxGlosa4.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    8:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor5.Value:=dbGraficoAuxValor5.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa5.Value:=dbGraficoAuxGlosa5.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    7:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor6.Value:=dbGraficoAuxValor6.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa6.Value:=dbGraficoAuxGlosa6.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    6:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor7.Value:=dbGraficoAuxValor7.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa7.Value:=dbGraficoAuxGlosa7.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    5:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor8.Value:=dbGraficoAuxValor8.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa8.Value:=dbGraficoAuxGlosa8.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    4:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor9.Value:=dbGraficoAuxVAlor9.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa9.Value:=dbGraficoAuxGlosa9.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    3:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor10.Value:=dbGraficoAuxValor10.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa10.Value:=dbGraficoAuxGlosa10.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    2:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor11.Value:=dbGraficoAuxValor11.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa11.Value:=dbGraficoAuxGlosa11.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    1:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.AsInteger);
                        end;
                        dbGraficoAuxValor12.Value:=dbGraficoAuxValor12.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa12.Value:=dbGraficoAuxGlosa12.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                    end;
                    end;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
         end;

         dbGraficoAux.First;
         dbGrafico.Open;
         dbGrafico.First;
         while dbGrafico.RecordCount<>0 do
         begin
            dbGrafico.Delete;
            dbGrafico.Refresh;
         end;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);

        for i:=1 to imeses do
        begin
            dbGrafico.Insert;
            dbGraficoTotal1.Value:=0;
            dbGraficoTotal2.Value:=0;
            dbGraficoNome.Value:=IntToStr(m)+'/'+IntToStr(a);
            dbGraficoOrdem.Value:=IntToStr(a)+ZeroEsq(m,2);
            dbGrafico.Post;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
           end;
        end;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);
        imin:=999999999;
        imax:=0;
        for i:=1 to imeses do
        begin
            dbGrafico.Locate('Ordem',IntToStr(a)+ZeroEsq(m,2),[]);
            dbGrafico.Edit;
            dbGraficoValor.Value:=0;
            case i of
            12:begin
                if dbGraficoAuxPaciente1.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value)/dbGraficoAuxPaciente1.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente1.Value;
            end;
            11:begin
                if dbGraficoAuxPaciente2.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value)/dbGraficoAuxPaciente2.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente2.Value;
            end;
            10:begin
                if dbGraficoAuxPaciente3.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value)/dbGraficoAuxPaciente3.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente3.Value;
              end;
            9:begin
                if dbGraficoAuxPaciente4.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value)/dbGraficoAuxPaciente4.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente4.Value;
              end;
            8:begin
                if dbGraficoAuxPaciente5.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value)/dbGraficoAuxPaciente5.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente5.Value;
              end;
            7:begin
                if dbGraficoAuxPaciente6.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value)/dbGraficoAuxPaciente6.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente6.Value;
              end;
            6:begin
                if dbGraficoAuxPaciente7.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value)/dbGraficoAuxPaciente7.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente7.Value;
            end;
            5:begin
                if dbGraficoAuxPaciente8.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value)/dbGraficoAuxPaciente8.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente8.Value;
            end;
            4:begin
                if dbGraficoAuxPaciente9.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value)/dbGraficoAuxPaciente9.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente9.Value;
              end;
            3:begin
                if dbGraficoAuxPaciente10.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value)/dbGraficoAuxPaciente10.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente10.Value;
              end;
            2:begin
                if dbGraficoAuxPaciente11.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value)/dbGraficoAuxPaciente11.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente11.Value;
              end;
            1:begin
                if dbGraficoAuxPaciente12.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value)/dbGraficoAuxPaciente12.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente12.Value;
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
        dbGrafico.IndexFieldNames:='Ordem';
        dbGrafico.Refresh;
        dbGrafico.First;
        imax:=imax*1.10;
        imin:=imin*0.90;
        grafico.LeftAxis.Automatic:= False ;
        grafico.LeftAxis.Minimum:=0;
        grafico.LeftAxis.Maximum:=999999999;
        grafico.LeftAxis.Minimum:=imin;
        grafico.LeftAxis.Maximum:=imax;
        grafico.Series[0].ValueFormat:='R$ ###,##0.00';
        grafico.RefreshData;
        grafico.Refresh;

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
        case rdgMedia.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução do Custo Médio por Paciente - Base Capeantes');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução do Custo Médio por Paciente - Base Pacientes');
        end;
        frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
        frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
        frmMenu.rvBBAuditoria.SetParam('Hospital',iHospitalNome);
        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Analise','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Analise','Pos-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Analise','Pre/Pos-Análise');
        end;
         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);
        frmMenu.rvBBAuditoria.SelectReport('grfEvolucao',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEvolucaoCustoR.cmdMediaDiaClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao,imeses:integer;
var iLinhaA,iLinhaH,iHospitalNome,iRegiaoNome:string;
var iLinhaId,iclienteId:string;
var imax,imin:variant;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;

          if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:=' ';
    end;

     if chkHospital.Checked then
     begin
        iHospital:=0;
        iHospitalNome:='';
        iLinhaH:='';
     end
     else
     begin
        iHospital:=cmpHospitalIni.KeyValue;
        iHospitalNome:=dbHospitalIniNome.value;
        iLinhaH:=' and Hospital=:Hosp ';
     end;

     with dmRelatorio do
     begin
         dbPro.Open;
         dbPro.First;
         qryGrafico.SQL.Clear;
         qryGrafico.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(cast(Complemento as integer)) as Complemento, '+
                                 '       sum(cast(Parcial as integer)) as Parcial, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  AtendHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

        qryGrafico.ParamByName('CliIni').asInteger:=iClienteIni;
        qryGrafico.ParamByName('AnoIni').asInteger:=iAno-1;
        qryGrafico.ParamByName('AnoFim').asInteger:=iAno;
        if not chkHospital.Checked then
            qryGrafico.ParamByName('Hosp').AsInteger:=iHospital;
        qryGrafico.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;

        dbGraficoAux.Insert;
        dbGraficoAuxRegiao.Value:=0;
        dbGraficoAux.Post;
        dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
             begin
                dbHospital.Next;
                Continue;
            end;
            dbGraficoAux.Edit;
            iHospital:=dbHospitalHospital.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to imeses do
            begin
                if qryGrafico.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    12:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa1.Value:=dbGraficoAuxGlosa1.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria1.Value:=dbGraficoAuxDiaria1.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    11:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa2.Value:=dbGraficoAuxGlosa2.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria2.Value:=dbGraficoAuxDiaria2.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    10:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor3.Value:=dbGraficoAuxVAlor3.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa3.Value:=dbGraficoAuxGlosa3.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria3.Value:=dbGraficoAuxDiaria3.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    9:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa4.Value:=dbGraficoAuxGlosa4.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria4.Value:=dbGraficoAuxDiaria4.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    8:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor5.Value:=dbGraficoAuxValor5.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa5.Value:=dbGraficoAuxGlosa5.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria5.Value:=dbGraficoAuxDiaria5.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    7:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor6.Value:=dbGraficoAuxValor6.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa6.Value:=dbGraficoAuxGlosa6.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria6.Value:=dbGraficoAuxDiaria6.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    6:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor7.Value:=dbGraficoAuxValor7.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa7.Value:=dbGraficoAuxGlosa7.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria7.Value:=dbGraficoAuxDiaria7.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    5:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor8.Value:=dbGraficoAuxValor8.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa8.Value:=dbGraficoAuxGlosa8.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria8.Value:=dbGraficoAuxDiaria8.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    4:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor9.Value:=dbGraficoAuxVAlor9.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa9.Value:=dbGraficoAuxGlosa9.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria9.Value:=dbGraficoAuxDiaria9.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    3:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor10.Value:=dbGraficoAuxValor10.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa10.Value:=dbGraficoAuxGlosa10.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria10.Value:=dbGraficoAuxDiaria10.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    2:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor11.Value:=dbGraficoAuxValor11.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa11.Value:=dbGraficoAuxGlosa11.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria11.Value:=dbGraficoAuxDiaria11.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    1:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor12.Value:=dbGraficoAuxValor12.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa12.Value:=dbGraficoAuxGlosa12.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria12.Value:=dbGraficoAuxDiaria12.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    end;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
         end;

         dbGraficoAux.First;
         dbGrafico.Open;
         dbGrafico.First;
         while dbGrafico.RecordCount<>0 do
            dbGrafico.Delete;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);

        for i:=1 to imeses do
        begin
            dbGrafico.Insert;
            dbGraficoTotal1.Value:=0;
            dbGraficoTotal2.Value:=0;
            dbGraficoNome.Value:=IntToStr(m)+'/'+IntToStr(a);
            dbGraficoOrdem.Value:=IntToStr(a)+ZeroEsq(m,2);
            dbGrafico.Post;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
           end;
        end;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);
        imin:=999999999;
        imax:=0;
        for i:=1 to imeses do
        begin
            dbGrafico.Locate('Ordem',IntToStr(a)+ZeroEsq(m,2),[]);
            dbGrafico.Edit;
            dbGraficoValor.Value:=0;
            case i of
            12:begin
                if dbGraficoAuxDiaria1.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value)/dbGraficoAuxDiaria1.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria1.Value;
            end;
            11:begin
                if dbGraficoAuxDiaria2.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value)/dbGraficoAuxDiaria2.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria2.Value;
            end;
            10:begin
                if dbGraficoAuxDiaria3.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value)/dbGraficoAuxDiaria3.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria3.Value;
            end;
            9:begin
                if dbGraficoAuxDiaria4.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value)/dbGraficoAuxDiaria4.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria4.Value;
             end;
            8:begin
                if dbGraficoAuxDiaria5.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value)/dbGraficoAuxDiaria5.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria5.Value;
            end;
            7:begin
                if dbGraficoAuxDiaria6.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value)/dbGraficoAuxDiaria6.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria6.Value;
            end;
            6:begin
                if dbGraficoAuxDiaria7.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value)/dbGraficoAuxDiaria7.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria7.Value;
            end;
            5:begin
                if dbGraficoAuxDiaria8.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value)/dbGraficoAuxDiaria8.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria8.Value;
            end;
            4:begin
                if dbGraficoAuxDiaria9.Value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value)/dbGraficoAuxDiaria9.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria9.Value;
            end;
            3:begin
                if dbGraficoAuxDiaria10.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value)/dbGraficoAuxDiaria10.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria10.Value;
             end;
            2:begin
                if dbGraficoAuxDiaria11.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value)/dbGraficoAuxDiaria11.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria11.Value;
            end;
            1:begin
                if dbGraficoAuxDiaria12.Value>0 then
                  dbGraficoValor.Value:=(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value)/dbGraficoAuxDiaria12.Value;
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxDiaria12.Value;
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
        imax:=imax*1.10;
        imin:=imin*0.90;
        grafico.LeftAxis.Automatic:= False ;
        grafico.LeftAxis.Minimum:=0;
        grafico.LeftAxis.Maximum:=999999999;
        grafico.LeftAxis.Minimum:=imin;
        grafico.LeftAxis.Maximum:=imax;
        grafico.Series[0].ValueFormat:='R$ ###,##0.00';
        dbGrafico.Refresh;
        dbGrafico.First;
        grafico.RefreshData;
        grafico.Refresh;

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
        frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução do Custo Médio por dia');
        frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
        frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
        frmMenu.rvBBAuditoria.SetParam('Hospital',iHospitalNome);
        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Analise','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Analise','Pos-Análise');
        end;
         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);
        frmMenu.rvBBAuditoria.SelectReport('grfEvolucao',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEvolucaoCustoR.cmdValorPagoClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao,imeses:integer;
var iLinhaA,iLinhaH,iHospitalNome,iRegiaoNome:string;
var iLinhaId,iclienteId:string;
var imax,imin:variant;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;

     if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:=' ';
    end;

     if chkHospital.Checked then
     begin
        iHospital:=0;
        iHospitalNome:='';
        iLinhaH:='';
     end
     else
     begin
        iHospital:=cmpHospitalIni.KeyValue;
        iHospitalNome:=dbHospitalIniNome.value;
        iLinhaH:=' and Hospital=:Hosp ';
     end;

     with dmRelatorio do
     begin
         dbPro.Open;
         dbPro.First;
         qryGrafico.SQL.Clear;
         qryGrafico.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(cast(Complemento as integer)) as Complemento, '+
                                 '       sum(cast(Parcial as integer)) as Parcial, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  AtendHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

        qryGrafico.ParamByName('CliIni').asInteger:=iClienteIni;
        qryGrafico.ParamByName('AnoIni').asInteger:=iAno-1;
        qryGrafico.ParamByName('AnoFim').asInteger:=iAno;
        if not chkHospital.Checked then
            qryGrafico.ParamByName('Hosp').AsInteger:=iHospital;
        qryGrafico.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;

        dbGraficoAux.Insert;
        dbGraficoAuxRegiao.Value:=0;
        dbGraficoAux.Post;
        dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
             begin
                dbHospital.Next;
                Continue;
            end;
            dbGraficoAux.Edit;
            iHospital:=dbHospitalHospital.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to imeses do
            begin
                if qryGrafico.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    12:begin
                        dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa1.Value:=dbGraficoAuxGlosa1.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria1.Value:=dbGraficoAuxDiaria1.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    11:begin
                        dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa2.Value:=dbGraficoAuxGlosa2.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria2.Value:=dbGraficoAuxDiaria2.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    10:begin
                        dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor3.Value:=dbGraficoAuxVAlor3.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa3.Value:=dbGraficoAuxGlosa3.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria3.Value:=dbGraficoAuxDiaria3.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    9:begin
                        dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa4.Value:=dbGraficoAuxGlosa4.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria4.Value:=dbGraficoAuxDiaria4.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    8:begin
                        dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor5.Value:=dbGraficoAuxValor5.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa5.Value:=dbGraficoAuxGlosa5.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria5.Value:=dbGraficoAuxDiaria5.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    7:begin
                        dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);;
                        dbGraficoAuxValor6.Value:=dbGraficoAuxValor6.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa6.Value:=dbGraficoAuxGlosa6.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria6.Value:=dbGraficoAuxDiaria6.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    6:begin
                        dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor7.Value:=dbGraficoAuxValor7.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa7.Value:=dbGraficoAuxGlosa7.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria7.Value:=dbGraficoAuxDiaria7.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    5:begin
                        dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor8.Value:=dbGraficoAuxValor8.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa8.Value:=dbGraficoAuxGlosa8.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria8.Value:=dbGraficoAuxDiaria8.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    4:begin
                        dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor9.Value:=dbGraficoAuxVAlor9.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa9.Value:=dbGraficoAuxGlosa9.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria9.Value:=dbGraficoAuxDiaria9.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    3:begin
                        dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor10.Value:=dbGraficoAuxValor10.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa10.Value:=dbGraficoAuxGlosa10.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria10.Value:=dbGraficoAuxDiaria10.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    2:begin
                        dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        dbGraficoAuxValor11.Value:=dbGraficoAuxValor11.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa11.Value:=dbGraficoAuxGlosa11.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria11.Value:=dbGraficoAuxDiaria11.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    1:begin
                        dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);;
                        dbGraficoAuxValor12.Value:=dbGraficoAuxValor12.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa12.Value:=dbGraficoAuxGlosa12.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria12.Value:=dbGraficoAuxDiaria12.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    end;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
         end;

         dbGraficoAux.First;
         dbGrafico.Open;
         dbGrafico.First;
         while dbGrafico.RecordCount<>0 do
            dbGrafico.Delete;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);

        for i:=1 to imeses do
        begin
            dbGrafico.Insert;
            dbGraficoTotal1.Value:=0;
            dbGraficoTotal2.Value:=0;
            dbGraficoNome.Value:=IntToStr(m)+'/'+IntToStr(a);
            dbGraficoOrdem.Value:=IntToStr(a)+ZeroEsq(m,2);
            dbGrafico.Post;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
           end;
        end;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);
        imin:=999999999;
        imax:=0;
        for i:=1 to imeses do
        begin
            dbGrafico.Locate('Ordem',IntToStr(a)+ZeroEsq(m,2),[]);
            dbGrafico.Edit;
            dbGraficoValor.Value:=0;
            case i of
            12:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente1.Value;
              end;
            11:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente2.Value;
              end;
            10:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente3.Value;
            end;
            9:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente4.Value;
              end;
            8:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente5.Value;
              end;
            7:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente6.Value;
              end;
            6:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente7.Value;
              end;
            5:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente8.Value;
              end;
            4:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente9.Value;
            end;
            3:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente10.Value;
              end;
            2:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente11.Value;
              end;
            1:begin
                dbGraficoValor.Value:=(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente12.Value;
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
        imax:=imax*1.10;
        imin:=imin*0.90;
        grafico.LeftAxis.Automatic:= False ;
        grafico.LeftAxis.Minimum:=0;
        grafico.LeftAxis.Maximum:=999999999;
        grafico.LeftAxis.Minimum:=imin;
        grafico.LeftAxis.Maximum:=imax;
        grafico.Series[0].ValueFormat:='R$ ###,##0.00';
        dbGrafico.Refresh;
        dbGrafico.First;
        grafico.RefreshData;
        grafico.Refresh;

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
        frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução do Valor Pago');
        frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
        frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
        frmMenu.rvBBAuditoria.SetParam('Hospital',iHospitalNome);
        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Analise','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Analise','Pos-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Analise','Pré/Pos-Análise');
        end;
         if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
         else
            frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);
        frmMenu.rvBBAuditoria.SelectReport('grfEvolucao',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEvolucaoCustoR.RvCustomConnectionGetCols(
  Connection: TRvCustomConnection);
begin
    with Connection do
    begin
        WriteField('CampoChart',dtGraphic,0,'CampoChart','');
    end;
end;

procedure TfrmRelEvolucaoCustoR.RvCustomConnectionGetRow(
  Connection: TRvCustomConnection);
begin
    WriteChartData(Connection,grafico);
end;


procedure TfrmRelEvolucaoCustoR.cmdRelDemoClick(Sender: TObject);
var iClienteIni,iRegiao,iConta,iQtd:integer;
var iDiaria:variant;
var iValor,iGlosa:currency;
var i,x,iMes,iAno,m,a,iHospital,imeses,iparcial:integer;
var iLinhaA,iLinhaH,iLinhaID,iClienteID,iRegiaoNome,iLinhaF,ititulo:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iClienteID:=dbClienteIDID.value;
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;
     iCompetencia:=StrToInt(Edit1.Text);
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     PB1.Position:=0;

     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

     if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

    if (frmRelEvolucaoCustoR.Tag=2) or
       (frmRelEvolucaoCustoR.Tag=3) then //indicadores anuais
    begin
        iMes:=12;
        iAno:=StrToInt(Edit2.Text);
        imeses:=12;
    end;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:=' ';
    end;

    case rdgCFor.ItemIndex of
    0:iLinhaF:=' and AtendHI.ComplementoF=1 ';
    1:iLinhaF:=' and AtendHI.ComplementoF=0';
    2:iLinhaF:='';
    end;

    with dmRelatorio do
    begin
        qryRelEvolucaoH.SQL.Clear;
        qryRelEvolucaoH.SQL.Text:= 'Select Hospital as Hospital, '+
                                  '       AnoCompetencia as Ano, '+
                                  '       MesCompetencia as Mes, '+
                                  '       count(Paciente) as Paciente, '+
                                  '       sum(cast(Complemento as integer)) as Complemento, '+
                                  '       sum(cast(AtendHI.Parcial as Integer)) as Parcial, '+
                                  '       sum(Valor) as Valor, '+
                                  '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                  '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                  '       sum(Diarias) as Diarias, '+
                                  '       sum(DiasUTI) as DiariasUTI, '+
                                  '       sum(DiariasGlosadas) as DiariasGlosadas, '+
                                  '       count(DISTINCT CASE WHEN DiasUTI>0 THEN (Paciente) END) as PacienteUTI, '+
                                  '       count(CASE WHEN DiasUTI>0 THEN Paciente END) as ContaUTI  '+
                                  'from  AtendHI '+
                                  'where AnoCompetencia>=:AnoIni and '+
                                  '      AnoCompetencia<=:AnoFim and '+
                                  '      MesCompetencia>=1 and '+
                                  '      MesCompetencia<=12 and '+
                                  '      Cliente=:CliIni '+iLinhaA+iLinhaID+iLinhaF+
                                  'group by Hospital,AnoCompetencia,MesCompetencia '+
                                  'order by Hospital,Ano,Mes ';

        qryRelEvolucaoH.ParamByName('CliIni').asInteger:=iClienteIni;
        qryRelEvolucaoH.ParamByName('AnoIni').asInteger:=iAno-1;
        qryRelEvolucaoH.ParamByName('AnoFim').asInteger:=iAno;
        qryRelEvolucaoH.Open;

//***************
         qryParcialMensal.SQL.Clear;    //soma o total de parciais reais
         qryParcialMensal.SQL.Text:='Select  AtendHI.AnoCompetencia, AtendHI.MesCompetencia, '+
                                    '        AtendHI.Hospital, '+
                                    '        AtendHI.Paciente, '+
                                    '        AtendHI.DataInicioP '+
                                    'from AtendHI '+
                                    'inner join  Hospital on AtendHI.Hospital=Hospital.Hospital '+
                                    'where AnoCompetencia>=:AnoIni and '+
                                    '      AnoCompetencia<=:AnoFim and '+
                                    '      MesCompetencia>=1 and '+
                                    '      MesCompetencia<=12 and '+
                                    '      DataInicioP is not null and Parcial=1 and '+
                                    '      Cliente=:CliIni '+iLinhaA+iLinhaID+iLinhaF+
                                    'group by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP '+
                                    'order by AtendHI.AnoCompetencia,AtendHI.MesCompetencia,  AtendHI.Hospital, Paciente,DataInicioP';

         qryParcialMensal.ParamByName('CliIni').asinteger:=iClienteIni;
         qryParcialMensal.ParamByName('AnoIni').asInteger:=iAno-1;
         qryParcialMensal.ParamByName('AnoFim').asInteger:=iAno;

         qryParcialMensal.Open;
//*****************

        dbRelEvolucao.tag:=0;
        dbRelEvolucao.Close;
        dbRelEvolucao.SQL.Text:='Delete from relEvolucaoCustoR';
        dbRelEvolucao.Execute;
        dbRelEvolucao.SQL.Text:='Select * from relEvolucaoCustoR';
        dbRelEvolucao.Open;
        PB1.Max:=dbHospital.RecordCount;

        qryRelEvolucaoH.First;
        dbHospital.Open;
        dbHospital.First;
        while not dbHospital.eof do
        begin
            iHospital:=dbHospitalHospital.value;
            m:=iMes;
            a:=iAno;
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
            begin
                dbHospital.Next;
                Continue;
            end;

            for i:=1 to imeses  do
            begin
                if qryRelEvolucaoH.Locate('Hospital;Ano;Mes',VarArrayof([iHospital,a,m]),[]) then
                begin
                    if dbRelEvolucao.Locate('Hospital',iHospital,[]) then
                        dbRelEvolucao.Edit
                    else
                        dbRelEvolucao.Insert;
                    dbRelEvolucaoHospital.value:=iHospital;
                    dbRelEvolucaoNome.value:=dbHospitalNome.value;
                    dbRelEvolucaoRegiao.value:=dbHospitalRegiao.value;
//***** Parcial
                    iparcial:=0;
                    if qryParcialMensal.Locate('AnoCompetencia;MesCompetencia;Hospital;',VarArrayof([a,m, iHospital]),[]) then
                    begin
                        while (qryParcialMensalAnoCompetencia.value=a) and
                              (qryParcialMensalMesCompetencia.value=m) and
                              (qryParcialMensalHospital.value=iHospital) and
                              (not qryParcialMensal.eof) do
                        begin
                            iparcial:=iparcial+1;
                            qryParcialMensal.Next;
                        end;
                    end;
//*****
                    case i of
                    12:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI1.Value:=dbRelEvolucaoPacienteUTI1.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente1.Value:=dbRelEvolucaoPaciente1.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI1.Value:=dbRelEvolucaoPacienteUTI1.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor1.Value:=dbRelEvolucaoValor1.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa1.Value:=dbRelEvolucaoGlosa1.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria1.Value:=dbRelEvolucaoDiaria1.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI1.Value:=dbRelEvolucaoDiariaUTI1.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    11:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI2.Value:=dbRelEvolucaoPacienteUTI2.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente2.Value:=dbRelEvolucaoPaciente2.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI2.Value:=dbRelEvolucaoPacienteUTI2.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor2.Value:=dbRelEvolucaoValor2.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa2.Value:=dbRelEvolucaoGlosa2.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria2.Value:=dbRelEvolucaoDiaria2.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI2.Value:=dbRelEvolucaoDiariaUTI2.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    10:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI3.Value:=dbRelEvolucaoPacienteUTI3.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente3.Value:=dbRelEvolucaoPaciente3.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI3.Value:=dbRelEvolucaoPacienteUTI3.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor3.Value:=dbRelEvolucaoVAlor3.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa3.Value:=dbRelEvolucaoGlosa3.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria3.Value:=dbRelEvolucaoDiaria3.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI3.Value:=dbRelEvolucaoDiariaUTI3.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    9:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI4.Value:=dbRelEvolucaoPacienteUTI4.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente4.Value:=dbRelEvolucaoPaciente4.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI4.Value:=dbRelEvolucaoPacienteUTI4.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor4.Value:=dbRelEvolucaoValor4.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa4.Value:=dbRelEvolucaoGlosa4.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria4.Value:=dbRelEvolucaoDiaria4.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI4.Value:=dbRelEvolucaoDiariaUTI4.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    8:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI5.Value:=dbRelEvolucaoPacienteUTI5.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente5.Value:=dbRelEvolucaoPaciente5.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI5.Value:=dbRelEvolucaoPacienteUTI5.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor5.Value:=dbRelEvolucaoValor5.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa5.Value:=dbRelEvolucaoGlosa5.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria5.Value:=dbRelEvolucaoDiaria5.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI5.Value:=dbRelEvolucaoDiariaUTI5.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    7:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI6.Value:=dbRelEvolucaoPacienteUTI6.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente6.Value:=dbRelEvolucaoPaciente6.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI6.Value:=dbRelEvolucaoPacienteUTI6.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor6.Value:=dbRelEvolucaoValor6.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa6.Value:=dbRelEvolucaoGlosa6.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria6.Value:=dbRelEvolucaoDiaria6.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI6.Value:=dbRelEvolucaoDiariaUTI6.Value+qryRelEvolucaoHDiariasUTI.Value;
                     end;
                    6:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI7.Value:=dbRelEvolucaoPacienteUTI7.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente7.Value:=dbRelEvolucaoPaciente7.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI7.Value:=dbRelEvolucaoPacienteUTI7.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor7.Value:=dbRelEvolucaoValor7.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa7.Value:=dbRelEvolucaoGlosa7.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria7.Value:=dbRelEvolucaoDiaria7.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI7.Value:=dbRelEvolucaoDiariaUTI7.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    5:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI8.Value:=dbRelEvolucaoPacienteUTI8.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente8.Value:=dbRelEvolucaoPaciente8.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI8.Value:=dbRelEvolucaoPacienteUTI8.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor8.Value:=dbRelEvolucaoValor8.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa8.Value:=dbRelEvolucaoGlosa8.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria8.Value:=dbRelEvolucaoDiaria8.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI8.Value:=dbRelEvolucaoDiariaUTI8.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    4:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI9.Value:=dbRelEvolucaoPacienteUTI9.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente9.Value:=dbRelEvolucaoPaciente9.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI9.Value:=dbRelEvolucaoPacienteUTI9.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor9.Value:=dbRelEvolucaoVAlor9.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa9.Value:=dbRelEvolucaoGlosa9.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria9.Value:=dbRelEvolucaoDiaria9.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI9.Value:=dbRelEvolucaoDiariaUTI9.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    3:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI10.Value:=dbRelEvolucaoPacienteUTI10.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente10.Value:=dbRelEvolucaoPaciente10.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI10.Value:=dbRelEvolucaoPacienteUTI10.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor10.Value:=dbRelEvolucaoValor10.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa10.Value:=dbRelEvolucaoGlosa10.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria10.Value:=dbRelEvolucaoDiaria10.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI10.Value:=dbRelEvolucaoDiariaUTI10.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    2:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI11.Value:=dbRelEvolucaoPacienteUTI11.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente11.Value:=dbRelEvolucaoPaciente11.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI11.Value:=dbRelEvolucaoPacienteUTI11.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor11.Value:=dbRelEvolucaoValor11.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa11.Value:=dbRelEvolucaoGlosa11.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria11.Value:=dbRelEvolucaoDiaria11.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI11.Value:=dbRelEvolucaoDiariaUTI11.Value+qryRelEvolucaoHDiariasUTI.Value;
                    end;
                    1:begin
                        if rdgMedia.ItemIndex=0 then
                        begin
                            dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger);
                            dbRelEvolucaoPacienteUTI12.Value:=dbRelEvolucaoPacienteUTI12.Value+qryRelEvolucaoHContaUTI.value;
                        end
                        else
                        begin
                            dbRelEvolucaoPaciente12.Value:=dbRelEvolucaoPaciente12.asInteger+(qryRelEvolucaoHPaciente.asInteger-qryRelEvolucaoHComplemento.asInteger)-
                                                          qryRelEvolucaoHParcial.value+iParcial;
                            dbRelEvolucaoPacienteUTI12.Value:=dbRelEvolucaoPacienteUTI12.Value+qryRelEvolucaoHPacienteUTI.Value;
                        end;
                        dbRelEvolucaoValor12.Value:=dbRelEvolucaoValor12.Value+qryRelEvolucaoHValor.Value;
                        dbRelEvolucaoGlosa12.Value:=dbRelEvolucaoGlosa12.Value+qryRelEvolucaoHValorGlosaE.Value+qryRelEvolucaoHValorGlosaM.Value;
                        dbRelEvolucaoDiaria12.Value:=dbRelEvolucaoDiaria12.Value+qryRelEvolucaoHDiarias.Value-qryRelEvolucaoHDiariasGlosadas.Value;
                        dbRelEvolucaoDiariaUTI12.Value:=dbRelEvolucaoDiariaUTI12.Value+qryRelEvolucaoHDiariasUTI.Value;
                     end;
                     end;
                    dbRelEvolucao.Post;
                    dbRelEvolucao.Refresh;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
            PB1.Position:=PB1.Position+1;
        end;
        if chkRegiao.Checked then
            dbRelEvolucao.IndexFieldNames:='Nome'
        else
            dbRelEvolucao.IndexFieldNames:='Regiao;Nome';

        dbRelEvolucao.First;
        if frmRelEvolucaoCustoR.tag=1 then
        begin
            frmMenu.ExcelExport.ExcelVisible:=true;
            dbRelEvolucaoPGlosa1.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa2.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa3.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa4.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa5.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa6.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa7.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa8.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa9.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa10.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa11.DisplayFormat:='##0.00';
            dbRelEvolucaoPGlosa12.DisplayFormat:='##0.00';
            frmMenu.ExcelExport.Dataset:=dbRelEvolucao;
            frmMenu.ExcelExport.ExportDataset;
            frmMenu.ExcelExport.Disconnect;
            dbRelEvolucao.Close;
        end;

        m:=iMes;
        a:=iAno;
        for i:=1 to 12 do
        begin
            case i of
            12:frmMenu.rvBBAuditoria.SetParam('Mes1',IntToStr(m)+'/'+IntToStr(a));
            11:frmMenu.rvBBAuditoria.SetParam('Mes2',IntToStr(m)+'/'+IntToStr(a));
            10:frmMenu.rvBBAuditoria.SetParam('Mes3',IntToStr(m)+'/'+IntToStr(a));
            9:frmMenu.rvBBAuditoria.SetParam('Mes4',IntToStr(m)+'/'+IntToStr(a));
            8:frmMenu.rvBBAuditoria.SetParam('Mes5',IntToStr(m)+'/'+IntToStr(a));
            7:frmMenu.rvBBAuditoria.SetParam('Mes6',IntToStr(m)+'/'+IntToStr(a));
            6:frmMenu.rvBBAuditoria.SetParam('Mes7',IntToStr(m)+'/'+IntToStr(a));
            5:frmMenu.rvBBAuditoria.SetParam('Mes8',IntToStr(m)+'/'+IntToStr(a));
            4:frmMenu.rvBBAuditoria.SetParam('Mes9',IntToStr(m)+'/'+IntToStr(a));
            3:frmMenu.rvBBAuditoria.SetParam('Mes10',IntToStr(m)+'/'+IntToStr(a));
            2:frmMenu.rvBBAuditoria.SetParam('Mes11',IntToStr(m)+'/'+IntToStr(a));
            1:frmMenu.rvBBAuditoria.SetParam('Mes12',IntToStr(m)+'/'+IntToStr(a));
            end;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
            end;
        end;
        ititulo:='';
        case rdgAnalise.ItemIndex of
        0:ititulo:=ititulo+'Pré-Análise';
        1:ititulo:=ititulo+'Pos-Análise';
        end;

        case rdgCFor.ItemIndex of
        0:iTitulo:=iTitulo+' - Complemento Fornecedor ';
        1:iTitulo:=iTitulo+' - Sem Complemento Fornecedor ';
        end;

        if chkRegiao.Checked then
            frmMenu.rvBBAuditoria.SetParam('Regiao','')
        else
            frmMenu.rvBBAuditoria.SetParam('Regiao',cmpRegiao.Text);

        frmMenu.rvBBAuditoria.SetParam('Analise',ititulo);
        frmMenu.rvBBAuditoria.SetParam('Titulo','Evolução dos Custos por Hospital');
        frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
        frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));

        if frmRelEvolucaoCustoR.tag=0 then
        begin
            if chkClienteID.Checked then
                frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
            else
                frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);

            if chkRegiao.Checked  then
            begin
                if imeses=6 then
                    frmMenu.rvBBAuditoria.SelectReport('relEvolucaoH',true);
                if imeses=12 then
                    frmMenu.rvBBAuditoria.SelectReport('relEvolucaoH12',true);
            end
            else
            begin
                if imeses=6 then
                    frmMenu.rvBBAuditoria.SelectReport('relEvolucaoHRegiao',true);
                if imeses=12 then
                    frmMenu.rvBBAuditoria.SelectReport('relEvolucaoHRegiao12',true);
            end;
            frmMenu.rvBBAuditoria.Execute;
        end;
    if (frmRelEvolucaoCustoR.Tag=2) or
       (frmRelEvolucaoCustoR.Tag=3) then //indicadores anuais
        begin
            iMes:=StrToInt(Edit1.Text);
            dbIndicador.Close;
            dbIndicador.SQL.Text:='Delete from relIndicadores';
            dbIndicador.Execute;
            dbIndicador.SQL.Text:='Select * from relIndicadores';
            dbIndicador.Open;
            PB1.Max:=dbRelEvolucao.RecordCount;
            PB1.Position:=0;

            dbRelEvolucao.First;
            while not dbRelEvolucao.eof do
            begin
                if chkHospital.Checked=false then
                    if dbRelEvolucaoHospital.value<>cmpHospitalIni.KeyValue then
                    begin
                        dbRelEvolucao.Next;
                        Continue;
                    end;
                iConta:=0;
                iValor:=0;
                iGlosa:=0;
                iDiaria:=0;
                for i:=1 to iMes do
                begin
                    if dbIndicador.Locate('Cliente;HospitalNome;Mes',VarArrayof([iClienteID,dbRelEvolucaoHospital.value,i]),[]) then
                        dbIndicador.Edit
                    else
                        dbIndicador.Insert;

                    dbIndicadorHospitalNome.value:=dbRelEvolucaoNome.value;
                    dbIndicadorCliente.value:=iClienteID;
                    dbIndicadorMes.value:=i;
                    dbIndicadorAno.value:=iAno;
                    case i of
                    1:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente1.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP1.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa1.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP1.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD1.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria1.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI1.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor1.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa1.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI1.value;
                        iConta:=iConta+dbRelEvolucaoPaciente1.value;
                        iValor:=iValor+dbRelEvolucaoValor1.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa1.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria1.value;
                      end;
                    2:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente2.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP2.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa2.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP2.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD2.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria2.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI2.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor2.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa2.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI2.value;
                        iConta:=iConta+dbRelEvolucaoPaciente2.value;
                        iValor:=iValor+dbRelEvolucaoValor2.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa2.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria2.value;
                      end;
                    3:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente3.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP3.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa3.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP3.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD3.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria3.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI3.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor3.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa3.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI3.value;
                        iConta:=iConta+dbRelEvolucaoPaciente3.value;
                        iValor:=iValor+dbRelEvolucaoValor3.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa3.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria3.value;
                      end;
                    4:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente4.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP4.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa4.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD4.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP4.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria4.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI4.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor4.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa4.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI4.value;
                        iConta:=iConta+dbRelEvolucaoPaciente4.value;
                        iValor:=iValor+dbRelEvolucaoValor4.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa4.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria4.value;
                      end;
                    5:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente5.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP5.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa5.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP5.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD5.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria5.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI5.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor5.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa5.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI5.value;
                        iConta:=iConta+dbRelEvolucaoPaciente5.value;
                        iValor:=iValor+dbRelEvolucaoValor5.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa5.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria5.value;
                      end;
                    6:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente6.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP6.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa6.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP6.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD6.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria6.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI6.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor6.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa6.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI6.value;
                        iConta:=iConta+dbRelEvolucaoPaciente6.value;
                        iValor:=iValor+dbRelEvolucaoValor6.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa6.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria6.value;
                      end;
                    7:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente7.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP7.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa7.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP7.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD7.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria7.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI7.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor7.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa7.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI7.value;
                        iConta:=iConta+dbRelEvolucaoPaciente7.value;
                        iValor:=iValor+dbRelEvolucaoValor7.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa7.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria7.value;
                      end;
                    8:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente8.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP8.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa8.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP8.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD8.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria8.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI8.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor8.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa8.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI8.value;
                        iConta:=iConta+dbRelEvolucaoPaciente8.value;
                        iValor:=iValor+dbRelEvolucaoValor8.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa8.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria8.value;
                      end;
                    9:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente9.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP9.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa9.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP9.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD9.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria9.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI9.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor9.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa9.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI9.value;
                        iConta:=iConta+dbRelEvolucaoPaciente9.value;
                        iValor:=iValor+dbRelEvolucaoValor9.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa9.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria9.value;
                      end;
                    10:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente10.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP10.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa10.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP10.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD10.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria10.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI10.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor10.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa10.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI10.value;
                        iConta:=iConta+dbRelEvolucaoPaciente10.value;
                        iValor:=iValor+dbRelEvolucaoValor10.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa10.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria10.value;
                      end;
                    11:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente11.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP11.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa11.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP11.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD11.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria11.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI11.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor11.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa11.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI11.value;
                        iConta:=iConta+dbRelEvolucaoPaciente11.value;
                        iValor:=iValor+dbRelEvolucaoValor11.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa11.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria11.value;
                      end;
                    12:begin
                        dbIndicadorContas.value:=dbRelEvolucaoPaciente12.value;
                        dbIndicadorTMI.value:=dbRelEvolucaoMediaP12.value;
                        dbIndicadorPGlosa.value:=dbRelEvolucaoPGlosa12.value;
                        dbIndicadorCMP.value:=dbRelEvolucaoCustoP12.value;
                        dbIndicadorCMD.value:=dbRelEvolucaoCustoD12.value;
                        dbIndicadorDiarias.value:=dbRelEvolucaoDiaria12.value;
                        dbIndicadorDiariasUTI.value:=dbRelEvolucaoDiariaUTI12.value;
                        dbIndicadorValor.value:=dbRelEvolucaoValor12.value;
                        dbIndicadorGlosa.value:=dbRelEvolucaoGlosa12.value;
                        dbIndicadorPacienteUTI.value:=dbRelEvolucaoPacienteUTI12.value;
                        iConta:=iConta+dbRelEvolucaoPaciente12.value;
                        iValor:=iValor+dbRelEvolucaoValor12.value;
                        iGlosa:=iGlosa+dbRelEvolucaoGlosa12.value;
                        iDiaria:=iDiaria+dbRelEvolucaoDiaria12.value;
                    end;
                    end;
                end;
                dbIndicador.Post;
                dbRelEvolucao.Next;
                PB1.Position:=PB1.Position+1;
            end;

            dbindicador.IndexFieldNames:='Cliente;HospitalNome;Ano;Mes';
            dbindicador.Refresh;
            dbindicador.First;

            dbIndicadorH.Execute;
            dbIndicadorH.Open;
            dbIndicadorH.First;

            dbIndicadorT.Execute;
            dbIndicadorT.Open;
            dbIndicadorT.First;

            if (frmRelEvolucaoCustoR.Tag=2) then //indicadores anuais
            begin
                frmMenu.rvBBAuditoria.SelectReport('relIndicadores',true);
                frmMenu.rvBBAuditoria.Execute;
            end;
            if (frmRelEvolucaoCustoR.Tag=3) then //indicadores anuais
            begin
                frmMenu.ExcelExport.Dataset:=dbIndicador;       //nao tem %
                frmMenu.ExcelExport.ExportDataset;
                frmMenu.ExcelExport.Disconnect;
            end;
        end;
     end;
end;

procedure TfrmRelEvolucaoCustoR.cmdExcelClick(Sender: TObject);
begin
    frmRelEvolucaoCustoR.Tag:=1;
    cmdRelResumoClick(sender);
    frmRelEvolucaoCustoR.tag:=0;
end;

procedure TfrmRelEvolucaoCustoR.cmdExcelDemoClick(Sender: TObject);
begin
    frmRelEvolucaoCustoR.Tag:=1;
    cmdRelDemoClick(sender);
    frmRelEvolucaoCustoR.tag:=0;
end;

procedure TfrmRelEvolucaoCustoR.cmpClienteIniCloseUp(Sender: TObject);
begin
    cmpClienteId.KeyValue:=dbClienteIDID.value;
end;

procedure TfrmRelEvolucaoCustoR.chkClienteIDClick(Sender: TObject);
begin
    if chkClienteID.Checked then
       cmpClienteID.Visible:=false
    else
       cmpClienteID.Visible:=true;
end;

procedure TfrmRelEvolucaoCustoR.cmdMediaPermanenciaClick(Sender: TObject);
var iClienteIni:integer;
var i,iMes,iAno,m,a,iHospital,iRegiao,imeses:integer;
var iLinhaA,iLinhaH,iHospitalNome,iRegiaoNome:string;
var iLinhaId,iclienteId:string;
var imax,imin:variant;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);
     iRegiao:=dbRegiaoRegiao.value;
     iRegiaoNome:=dbRegiaoDescricao.value;

     if rdgPeriodo.ItemIndex=0 then
        imeses:=6
     else
        imeses:=12;

    if chkClienteID.Checked then
       iLinhaID:=''
    else
       iLinhaID:=' and AtendHI.IDPaciente='''+iClienteID+''' ';

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=0 ';
    1:iLinhaA:=' and AtendHI.PosAnalise=1 ';
    2:iLinhaA:=' ';
    end;

     if chkHospital.Checked then
     begin
        iHospital:=0;
        iHospitalNome:='';
        iLinhaH:='';
     end
     else
     begin
        iHospital:=cmpHospitalIni.KeyValue;
        iHospitalNome:=dbHospitalIniNome.value;
        iLinhaH:=' and Hospital=:Hosp ';
     end;

     with dmRelatorio do
     begin
         dbPro.Open;
         dbPro.First;
         qryGrafico.SQL.Clear;
         qryGrafico.SQL.Text:= 'Select Hospital as Hospital, '+
                                 '       AnoCompetencia as Ano, '+
                                 '       MesCompetencia as Mes, '+
                                 '       count(Paciente) as Paciente, '+
                                 '       sum(cast(Complemento as integer)) as Complemento, '+
                                 '       sum(cast(Parcial as integer)) as Parcial, '+
                                 '       sum(Valor) as Valor, '+
                                 '       sum(ValorGlosadoM) as ValorGlosaM, '+
                                 '       sum(ValorGlosadoE) as ValorGlosaE, '+
                                 '       sum(Diarias) as Diarias, '+
                                 '       sum(DiariasGlosadas) as DiariasGlosadas '+
                                 'from  AtendHI '+
                                 'where AnoCompetencia>=:AnoIni and '+
                                 '      AnoCompetencia<=:AnoFim and '+
                                 '      Cliente=:CliIni '+iLinhaA+iLinhaH+iLinhaID+
                                 'group by Hospital,AnoCompetencia,MesCompetencia '+
                                 'order by Hospital,Ano,Mes ';

        qryGrafico.ParamByName('CliIni').asInteger:=iClienteIni;
        qryGrafico.ParamByName('AnoIni').asInteger:=iAno-1;
        qryGrafico.ParamByName('AnoFim').asInteger:=iAno;
        if not chkHospital.Checked then
            qryGrafico.ParamByName('Hosp').AsInteger:=iHospital;
        qryGrafico.Open;

        dbGraficoAux.Close;
        dbGraficoAux.SQL.Text:='Delete from relEvolucaoCustoR';
        dbGraficoAux.Execute;
        dbGraficoAux.SQL.Text:='Select * from relEvolucaoCustoR';
        dbGraficoAux.Open;

        dbGraficoAux.Insert;
        dbGraficoAuxRegiao.Value:=0;
        dbGraficoAux.Post;
        dbHospital.Open;

        dbHospital.First;
        while not dbHospital.eof do
        begin
            if (not chkRegiao.Checked) and
               (dbHospitalRegiao.value<>iRegiao) then
             begin
                dbHospital.Next;
                Continue;
            end;
            dbGraficoAux.Edit;
            iHospital:=dbHospitalHospital.Value;
            m:=iMes;
            a:=iAno;
            for i:=1 to imeses do
            begin
                if qryGrafico.Locate('Hospital;Ano;Mes',VarArrayOf([iHospital,a,m]),[]) then
                begin
                    case i of
                    12:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente1.Value:=dbGraficoAuxPaciente1.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor1.Value:=dbGraficoAuxValor1.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa1.Value:=dbGraficoAuxGlosa1.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria1.Value:=dbGraficoAuxDiaria1.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    11:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente2.Value:=dbGraficoAuxPaciente2.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor2.Value:=dbGraficoAuxValor2.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa2.Value:=dbGraficoAuxGlosa2.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria2.Value:=dbGraficoAuxDiaria2.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    10:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente3.Value:=dbGraficoAuxPaciente3.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor3.Value:=dbGraficoAuxVAlor3.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa3.Value:=dbGraficoAuxGlosa3.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria3.Value:=dbGraficoAuxDiaria3.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    9:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente4.Value:=dbGraficoAuxPaciente4.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor4.Value:=dbGraficoAuxValor4.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa4.Value:=dbGraficoAuxGlosa4.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria4.Value:=dbGraficoAuxDiaria4.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    8:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente5.Value:=dbGraficoAuxPaciente5.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor5.Value:=dbGraficoAuxValor5.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa5.Value:=dbGraficoAuxGlosa5.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria5.Value:=dbGraficoAuxDiaria5.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    7:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente6.Value:=dbGraficoAuxPaciente6.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor6.Value:=dbGraficoAuxValor6.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa6.Value:=dbGraficoAuxGlosa6.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria6.Value:=dbGraficoAuxDiaria6.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    6:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente7.Value:=dbGraficoAuxPaciente7.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor7.Value:=dbGraficoAuxValor7.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa7.Value:=dbGraficoAuxGlosa7.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria7.Value:=dbGraficoAuxDiaria7.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    5:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente8.Value:=dbGraficoAuxPaciente8.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor8.Value:=dbGraficoAuxValor8.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa8.Value:=dbGraficoAuxGlosa8.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria8.Value:=dbGraficoAuxDiaria8.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    4:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente9.Value:=dbGraficoAuxPaciente9.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor9.Value:=dbGraficoAuxVAlor9.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa9.Value:=dbGraficoAuxGlosa9.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria9.Value:=dbGraficoAuxDiaria9.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    3:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente10.Value:=dbGraficoAuxPaciente10.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor10.Value:=dbGraficoAuxValor10.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa10.Value:=dbGraficoAuxGlosa10.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria10.Value:=dbGraficoAuxDiaria10.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    2:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente11.Value:=dbGraficoAuxPaciente11.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor11.Value:=dbGraficoAuxValor11.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa11.Value:=dbGraficoAuxGlosa11.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria11.Value:=dbGraficoAuxDiaria11.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    1:begin
                        case rdgMedia.ItemIndex of
                        0:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger);
                        1:dbGraficoAuxPaciente12.Value:=dbGraficoAuxPaciente12.asInteger+(qryGraficoPaciente.asInteger-qryGraficoComplemento.asInteger-qryGraficoParcial.asinteger);
                        end;
                        dbGraficoAuxValor12.Value:=dbGraficoAuxValor12.Value+qryGraficoValor.Value;
                        dbGraficoAuxGlosa12.Value:=dbGraficoAuxGlosa12.Value+qryGraficoValorGlosaE.Value+qryGraficoValorGlosaM.Value;
                        dbGraficoAuxDiaria12.Value:=dbGraficoAuxDiaria12.Value+(qryGraficoDiarias.Value-qryGraficoDiariasGlosadas.Value);
                    end;
                    end;
                end;
                m:=m-1;
                if m=0 then
                begin
                    m:=12;
                    a:=a-1;
                end;
            end;
            dbHospital.Next;
            dbGraficoAux.Post;
            dbGraficoAux.Refresh;
         end;

         dbGraficoAux.First;
         dbGrafico.Open;
         dbGrafico.First;
         while dbGrafico.RecordCount<>0 do
            dbGrafico.Delete;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);

        for i:=1 to imeses do
        begin
            dbGrafico.Insert;
            dbGraficoTotal1.Value:=0;
            dbGraficoTotal2.Value:=0;
            dbGraficoNome.Value:=IntToStr(m)+'/'+IntToStr(a);
            dbGraficoOrdem.Value:=IntToStr(a)+ZeroEsq(m,2);
            dbGrafico.Post;
            m:=m-1;
            if m=0 then
            begin
                m:=12;
                a:=a-1;
           end;
        end;

        m:=StrToInt(Edit1.Text);
        a:=StrToInt(Edit2.Text);
        imin:=999999999;
        imax:=0;
        for i:=1 to imeses do
        begin
            dbGrafico.Locate('Ordem',IntToStr(a)+ZeroEsq(m,2),[]);
            dbGrafico.Edit;
            dbGraficoValor.Value:=0;
            case i of
            12:begin
                if dbGraficoAuxPaciente1.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria1.value/dbGraficoAuxPaciente1.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente1.Value;
              end;
            11:begin
                if dbGraficoAuxValor2.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria2.value/dbGraficoAuxPaciente2.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente2.Value;
              end;
            10:begin
                if dbGraficoAuxValor3.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria3.value/dbGraficoAuxPaciente3.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor3.Value-dbGraficoAuxGlosa3.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente3.Value;
            end;
            9:begin
                if dbGraficoAuxValor4.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria4.value/dbGraficoAuxPaciente4.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor4.Value-dbGraficoAuxGlosa4.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente4.Value;
              end;
            8:begin
                if dbGraficoAuxValor5.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria5.value/dbGraficoAuxPaciente5.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor5.Value-dbGraficoAuxGlosa5.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente5.Value;
              end;
            7:begin
                if dbGraficoAuxValor6.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria6.value/dbGraficoAuxPaciente6.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor6.Value-dbGraficoAuxGlosa6.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente6.Value;
              end;
            6:begin
                if dbGraficoAuxPaciente7.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria7.value/dbGraficoAuxPaciente7.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor7.Value-dbGraficoAuxGlosa7.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente7.Value;
              end;
            5:begin
                if dbGraficoAuxValor8.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria8.value/dbGraficoAuxPaciente8.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor8.Value-dbGraficoAuxGlosa8.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente8.Value;
              end;
            4:begin
                if dbGraficoAuxValor9.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria9.value/dbGraficoAuxPaciente9.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor9.Value-dbGraficoAuxGlosa9.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente9.Value;
            end;
            3:begin
                if dbGraficoAuxValor10.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria10.value/dbGraficoAuxPaciente10.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor10.Value-dbGraficoAuxGlosa10.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente10.Value;
              end;
            2:begin
                if dbGraficoAuxValor11.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria11.value/dbGraficoAuxPaciente11.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor11.Value-dbGraficoAuxGlosa11.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente11.Value;
              end;
            1:begin
                if dbGraficoAuxValor12.value>0 then
                    dbGraficoValor.Value:=(dbGraficoAuxDiaria12.value/dbGraficoAuxPaciente12.value);
                dbGraficoTotal1.Value:=dbGraficoTotal1.Value+(dbGraficoAuxValor12.Value-dbGraficoAuxGlosa12.Value);
                dbGraficoTotal2.Value:=dbGraficoTotal2.Value+dbGraficoAuxPaciente12.Value;
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
        imax:=imax*1.10;
        imin:=imin*0.90;
        grafico.LeftAxis.Automatic:= False ;
        grafico.LeftAxis.Minimum:=0;
        grafico.LeftAxis.Maximum:=1000;
        grafico.LeftAxis.Minimum:=imin;
        grafico.LeftAxis.Maximum:=imax;
        grafico.Series[0].ValueFormat:='###,##0.00';
        dbGrafico.Refresh;
        dbGrafico.First;
        grafico.RefreshData;
        grafico.Refresh;

        if chkClienteID.Checked then
            frmMenu.rvBBAuditoria.SetParam('Plano','Todos os Planos')
        else
            frmMenu.rvBBAuditoria.SetParam('Plano',dbClienteIDID.value);
        case rdgMedia.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo','Média de Permanência em dias - Base Capeantes');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo','Média de Permanência em dias - Base Pacientes');
        end;
        frmMenu.rvBBAuditoria.SetParam('ClienteNome',dbClienteIniNome.value);
        frmMenu.rvBBAuditoria.SetParam('Cliente',IntToStr(iClienteIni));
        frmMenu.rvBBAuditoria.SetParam('Hospital',iHospitalNome);
        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Analise','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Analise','Pos-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Analise','Pré/Pos-Análise');
        end;
        if chkRegiao.Checked then
           frmMenu.rvBBAuditoria.SetParam('Regiao','Todas as Regiões')
        else
           frmMenu.rvBBAuditoria.SetParam('Regiao','Região:'+iRegiaoNome);
        frmMenu.rvBBAuditoria.SelectReport('grfEvolucao',true);
        frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelEvolucaoCustoR.chkRegiaoClick(Sender: TObject);
begin
    if chkRegiao.Checked then
    begin
       cmpRegiao.Visible:=false;
       chkHospital.Checked:=true;
       chkHospital.Visible:=true;
       cmpHospitalIni.Visible:=false;
    end
    else
    begin
       cmpRegiao.Visible:=true;
       chkHospital.Visible:=false;
       cmpHospitalIni.Visible:=false;
    end;   
end;

procedure TfrmRelEvolucaoCustoR.cmdRelIndicadoresClick(Sender: TObject);
begin
     case rdgLogo.ItemIndex of
     0:iLogo:=1;
     1:iLogo:=2;
     end;

    frmRelEvolucaoCustoR.Tag:=2;
    cmdRelDemoClick(sender);
    frmRelEvolucaoCustoR.tag:=0;
end;


procedure TfrmRelEvolucaoCustoR.cmdExcelIndicadoresClick(Sender: TObject);
begin
    frmRelEvolucaoCustoR.Tag:=3;
    cmdRelDemoClick(sender);
    frmRelEvolucaoCustoR.tag:=0;
end;

end.
