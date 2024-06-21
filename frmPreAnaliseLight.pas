unit frmPreAnaliseLight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, StrUtils,
  Buttons, ToolWin, DateUtils, DBCtrls, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmPreAnalisesLight = class(TForm)
    dsProcesso: TDataSource;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorUsuario: TStringField;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
    dbHospitalCNPJ: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbAtendH: TMSQuery;
    dbAtendHCliente: TIntegerField;
    dbAtendHSequencial: TIntegerField;
    dbAtendHPaciente: TIntegerField;
    dbAtendHHospital: TIntegerField;
    dbAtendHMedico: TIntegerField;
    dbAtendHEnfermeiro: TIntegerField;
    dbAtendHMesCompetencia: TSmallintField;
    dbAtendHAnoCompetencia: TSmallintField;
    dbAtendHDiasUTI: TFloatField;
    dbAtendHDiarias: TFloatField;
    dbAtendHDiariasGlosadas: TFloatField;
    dbAtendHDiariasCalculadas: TIntegerField;
    dbAtendHValor: TCurrencyField;
    dbAtendHValorGlosadoM: TCurrencyField;
    dbAtendHValorGlosadoE: TCurrencyField;
    dbAtendHObservacao: TMemoField;
    dbAtendHComplemento: TBooleanField;
    dbAtendHNumeroParcial: TSmallintField;
    dbAtendHDayClinic: TBooleanField;
    dbAtendHIntercambio: TBooleanField;
    dbAtendHPosAnalise: TBooleanField;
    dbAtendHValorNaoAcordadoM: TCurrencyField;
    dbAtendHValorNaoAcordadoE: TCurrencyField;
    dbAtendHPacote: TBooleanField;
    dbAtendHMedicoACRM: TIntegerField;
    dbAtendHConclusao: TStringField;
    dbAtendHInternacao: TStringField;
    dbAtendHTratamento: TStringField;
    dbAtendHApto: TFloatField;
    dbAtendHEnfermaria: TFloatField;
    dbAtendHSemi: TFloatField;
    dbAtendHBercario: TFloatField;
    dbAtendHDayClinicQtd: TFloatField;
    dbAtendHIsolamento: TFloatField;
    dbAtendHCodAmb: TIntegerField;
    dbAtendHQtdAmb: TSmallintField;
    dbAtendHExtraAmb: TBooleanField;
    dbAtendHSenha: TStringField;
    dbAtendHCodAmb1: TIntegerField;
    dbAtendHQtdAmb1: TSmallintField;
    dbAtendHExtraAmb1: TBooleanField;
    dbAtendHSenha1: TStringField;
    dbAtendHRetorno: TIntegerField;
    dbAtendHRemessa: TIntegerField;
    dbAtendHVisita: TWordField;
    dbAtendHValorPago: TCurrencyField;
    dbAtendHObitoGravida: TStringField;
    dbAtendHQtdRNVivo: TSmallintField;
    dbAtendHQtdRNMorto: TSmallintField;
    dbAtendHQtdRNPrematuro: TSmallintField;
    dbAtendHAcidente: TStringField;
    dbAtendHUsuarioI: TStringField;
    dbAtendHDataInclusao: TDateTimeField;
    dbAtendHDataExclusao: TDateTimeField;
    dbAtendHUsuario: TStringField;
    dbAtendHDataAlteracao: TDateTimeField;
    dbAtendHUsuarioSite: TStringField;
    dbAtendHDataSite: TDateTimeField;
    dbAtendHDataFimP: TDateTimeField;
    dbAtendHGemelar: TWordField;
    dbAtendHDataAmb1: TDateTimeField;
    dbAtendHDataAmb2: TDateTimeField;
    dbAtendHDataAmb3: TDateTimeField;
    dbAtendHPAmb1: TFloatField;
    dbAtendHPAmb2: TFloatField;
    dbAtendHPAmb3: TFloatField;
    dbAtendHCodAmb3: TIntegerField;
    dbAtendHResponsavelH: TStringField;
    dbAtendHRN: TStringField;
    dbAtendHServico: TStringField;
    dbAtendHProdutividade: TIntegerField;
    dbAtendHIDPaciente: TStringField;
    dbAtendHDataFechamento: TDateTimeField;
    dbAtendHDataInternacao: TDateTimeField;
    dbAtendHDataAlta: TDateTimeField;
    dbAtendHParcial: TWordField;
    dbAtendHDataInicioP: TDateTimeField;
    dbPaciente: TMSQuery;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbPacienteCliente: TIntegerField;
    dbAtendHServicoC: TStringField;
    dbAtendHAtendimentoHI: TLargeintField;
    dbAtendHAtendimentoHIO: TLargeintField;
    dbAtendHComplementoF: TBooleanField;
    dbProcesso: TMSQuery;
    dbAtendHNABradesco: TStringField;
    dbAtendHDiariasLonga: TIntegerField;
    dbHospitalCodBradesco: TIntegerField;
    tabCliente: TTabControl;
    pagCadastro: TPageControl;
    tabNovo: TTabSheet;
    Splitter2: TSplitter;
    ProgressBar1: TProgressBar;
    tabFiltro: TTabControl;
    Label1: TLabel;
    DBText2: TDBText;
    grdProntuario: TDBGrid;
    CoolBar1: TCoolBar;
    cmpBusca: TEdit;
    DateTimePicker1: TDateTimePicker;
    Panel13: TPanel;
    cmdGrava: TBitBtn;
    cmdExclui: TBitBtn;
    tabInclusos: TTabSheet;
    CoolBar2: TCoolBar;
    tabOrdemRetorno: TTabControl;
    ProgressBar2: TProgressBar;
    dbProdCli: TMSTable;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dbProd: TMSQuery;
    dbProdAnoCompetencia: TSmallintField;
    dbProdMesCompetencia: TSmallintField;
    dbProdProdutividade: TIntegerField;
    dbProdDataInclusao: TDateTimeField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dsProd: TDataSource;
    dsPaciente: TDataSource;
    dsAuditor: TDataSource;
    dsHospital: TDataSource;
    dbProcessoCliente: TIntegerField;
    dbProcessoAnoCompetencia: TSmallintField;
    dbProcessoMesCompetencia: TSmallintField;
    dbProcessoHospital: TIntegerField;
    dbProcessoPacienteNome: TStringField;
    dbProcessoAtendimentoHI: TLargeintField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoServico: TStringField;
    dbProcessoSenha: TStringField;
    dbProcessoMedico: TIntegerField;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoDiarias: TFloatField;
    dbProcessoApto: TFloatField;
    dbProcessoVisita: TWordField;
    dbProcessoInternacao: TStringField;
    dbProcessoParcial: TWordField;
    dbProcessoNumeroParcial: TSmallintField;
    dbProcessoDataInicioP: TDateTimeField;
    dbProcessoDataFimP: TDateTimeField;
    dbProcessoComplemento: TBooleanField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoUsuario: TStringField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoUsuarioT: TStringField;
    dbProcessoDataTransf: TDateTimeField;
    dbProcessoHospitalNome: TStringField;
    dbProcessoPacienteBusca: TStringField;
    dbProcessoMedicoNome: TStringField;
    dbProcessoProcessa: TStringField;
    dbPacienteIDPaciente: TStringField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateTimeField;
    dbProcessoNotas: TMemoField;
    cmdNovo: TBitBtn;
    dbProcessoVisitaTexto: TStringField;
    dbProcessoComplementoTexto: TStringField;
    dbProcessoParcialTexto: TStringField;
    dbServico: TMSTable;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    dbServicoVinculado: TStringField;
    dbProcessoInternacaoTexto: TStringField;
    DBGrid1: TDBGrid;
    cmdAtualizar: TBitBtn;
    lblData: TDateTimePicker;
    dbProcessoTratamento: TStringField;
    dbProcessoTratamentoTexto: TStringField;
    Panel1: TPanel;
    cmdFiltro: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdProntuarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbProcessoGlosaAfterInsert(DataSet: TDataSet);
    procedure dbProcessoAfterInsert(DataSet: TDataSet);
    procedure cmdAtualizarClick(Sender: TObject);
    procedure dbPacienteBeforeInsert(DataSet: TDataSet);
    procedure cmdGravaClick(Sender: TObject);
    procedure cmdExcluiClick(Sender: TObject);
    procedure grdProntuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure dbProcessoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tabFiltroChange(Sender: TObject);
    procedure dbAtendHAfterInsert(DataSet: TDataSet);
    procedure pagCadastroChange(Sender: TObject);
    procedure cmdNovoClick(Sender: TObject);
    procedure dbServicoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbProcessoPacienteChange(Sender: TField);
    procedure dbProcessoBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoBeforePost(DataSet: TDataSet);
    procedure dbProcessoDataAltaChange(Sender: TField);
    procedure dbProcessoCalcFields(DataSet: TDataSet);
    procedure dbProcessoDataInternacaoChange(Sender: TField);
    procedure cmpBuscaChange(Sender: TObject);
    procedure dbAuditorFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cmdFiltroClick(Sender: TObject);
    procedure lblDataChange(Sender: TObject);
  private
    { Private declarations }
  public
    imes,iano,imedico,ihospital:integer;
    iservico:string;
    { Public declarations }
  end;

var
  frmPreAnalisesLight: TfrmPreAnalisesLight;
  iUltimoPaciente:integer;
  narq:string;
implementation

uses frmPrincipal, dmRelatorios;

{$R *.dfm}


procedure TfrmPreAnalisesLight.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbCodigo.Close;
    dbPaciente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbServico.Close;
    dbProcesso.Close;
    dbAtendH.Close;

    dbProd.Close;
    dbProdCli.Close;
end;

procedure TfrmPreAnalisesLight.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
    dbCodigo.Open;
    dbServico.Open;
    dbPaciente.Open;
    dbHospital.OPen;
    dbAuditor.Open;
    tabCliente.TabIndex:=0;

    dbProcesso.Open;

    dbAtendH.Open;
    dbProd.Open;
    dbProdCli.Open;
    imes:=0;
    iano:=0;
    iservico:='';
    imedico:=0;
    ihospital:=0;
   finally
     lblData.Date:=date;
     tabFiltro.TabIndex:=0;
     pagCadastro.ActivePageIndex:=0;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmPreAnalisesLight.grdProntuarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProcessoProcessa.value='S' then
        grdProntuario.Canvas.Font.Color:=clGreen;
     if dbProcessoProcessa.value='N' then
        grdProntuario.Canvas.Font.Color:=clRed;

     grdProntuario.DefaultDrawDataCell(Rect,grdProntuario.Columns[DataCol].field,State);
end;

procedure TfrmPreAnalisesLight.dbProcessoGlosaAfterInsert(DataSet: TDataSet);
begin
//    dbProcessoGlosaDataAuditoria.Value:=date;
end;

procedure TfrmPreAnalisesLight.dbProcessoAfterInsert(DataSet: TDataSet);
begin
    dbProcessoAtendimentoHI.value:=0;
    dbProcessoCliente.value:= 27; //Porto Seguro
    dbProcessoVisita.value:=0;
    dbProcessoDiarias.Value:=0;
    dbProcessoApto.Value:=0;
    dbProcessoNumeroParcial.value:=0;
    dbProcessoComplemento.value:=false;
    dbProcessoVisita.value:=0;
    dbProcessoAnoCompetencia.value:=iano;
    dbProcessoMesCompetencia.value:=imes;
//    dbProcessoHospital.value:=ihospital;
//    dbProcessoMedico.value:=imedico;
//    dbProcessoServico.value:=iservico;
    dbProcessoProcessa.value:='A';
    dbProcessoParcialTexto.value:='S';
end;

procedure TfrmPreAnalisesLight.cmdAtualizarClick(Sender: TObject);
var iResultado,iCapeante,iPaciente:integer;
var iok:boolean;
begin
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    ProgressBar1.Max:=dbProcesso.RecordCount;
    ProgressBar1.Position:=1;
    iResultado:=Application.MessageBox('Confirme a inclusão dos lançamentos na Auditoria',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    dbAtendH.sql.Clear;
    dbAtendH.sql.text:='Select * from AtendHI where AtendimentoHI=0 ';
    dbAtendH.Open;

    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        ProgressBar1.Position:=ProgressBar1.Position+1;
        iok:=true;
        if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoAnoCompetencia.value,
                                                                     dbProcessoMesCompetencia.value]),[]) then
        begin
            if dbProdStatus.value='F' then
            begin
                ShowMessage('Produtividade fechada para esta competencia');
                iOk:=false;
            end
            else
            begin
                if dbProdCli.Locate('Cliente',dbProcessoCliente.value,[]) then
                begin
                    ShowMessage('Produtividade fechada para este Cliente/Competencia');
                    iOk:=false;
                end;
            end;
        end;
        if iOk=false then
        begin
            dbProcesso.tag:=1;
            dbProcesso.Edit;
            dbProcessoProcessa.value:='N';
            dbProcesso.Post;
            dbProcesso.Tag:=0;
            ShowMessage('Existem registros com problemas. Processamento interrompido');
            abort;
        end;

            dbCodigo.Refresh;
            dbCodigo.Locate('Campo','CLI27',[]);
            icapeante:=dbCodigoUltimo.Value+1;
            dbCodigo.Edit;
            dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
            dbCodigo.Post;

            dbAtendH.Insert;
            dbAtendHAtendimentoHI.value:=iCapeante;
            dbAtendHAtendimentoHIO.value:=iCapeante;
            dbAtendHCliente.value:=27;
            dbAtendHServico.value:=dbProcessoServico.value;
            dbAtendHMesCompetencia.value:=dbProcessoMesCompetencia.value;
            dbAtendHAnoCompetencia.value:=dbProcessoAnoCompetencia.value;

            dbAtendHPaciente.value:=dbProcessoPaciente.value;
            dbAtendHIDPaciente.value:='PORTO';
            dbAtendHHospital.value:=dbProcessoHospital.value;
            dbAtendHMedico.value:=dbProcessoMedico.value;
            dbAtendHDiarias.value:=dbProcessoDiarias.value;
            dbAtendHApto.value:=dbProcessoDiarias.value;
            dbAtendHSenha.value:=dbProcessoSenha.value;
            dbAtendHVisita.value:=dbProcessoVisita.value;
            dbAtendHInternacao.value:=dbProcessoInternacao.value;
            dbAtendHTratamento.value:=dbProcessoTratamento.value;
            dbAtendHDiariasCalculadas.value:=dbProcessoDiarias.asinteger;
                dbAtendHDataInternacao.value:=dbProcessoDataInternacao.value;
            dbAtendHDataAlta.value:=dbProcessoDataAlta.value;

            dbAtendHParcial.value:=dbProcessoParcial.value;
            if dbProcessoDataInicioP.value<StrToDate('01/01/1900') then
                dbAtendHDataInicioP.clear
            else
                dbAtendHDataInicioP.value:=dbProcessoDataInicioP.value;
            if dbProcessoDataFimP.value<StrToDate('01/01/1900') then
                dbAtendHDataFimP.clear
            else
                dbAtendHDataFimP.value:=dbProcessoDataFimP.value;
            dbAtendHNumeroParcial.value:=dbProcessoNumeroParcial.value;
            dbAtendHComplemento.value:=dbProcessoComplemento.value;

            dbAtendHDataInclusao.value:=date;
            dbAtendHUsuario.value:=iUsuario;
            dbAtendH.Post;

        dbProcesso.Tag:=1;
        dbProcesso.Edit;
        dbProcessoDataTransf.value:=date;
        dbProcessoUsuarioT.value:=iUsuario;
        dbProcessoAtendimentoHI.value:=iCapeante;

        dbProcesso.Post;   // filtro  - nao precisa next
    end;

    ShowMessage('Atualização dos dados processada com sucesso');
end;

procedure TfrmPreAnalisesLight.dbPacienteBeforeInsert(DataSet: TDataSet);
begin
    dbCodigo.Refresh;
    dbCodigo.Locate('Campo','Paciente',[]);
    iUltimoPaciente:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
end;

procedure TfrmPreAnalisesLight.cmdNovoClick(Sender: TObject);
begin
    dbProcesso.Insert;
end;

procedure TfrmPreAnalisesLight.cmdGravaClick(Sender: TObject);
begin
    dbProcesso.Post;
end;

procedure TfrmPreAnalisesLight.cmdExcluiClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão do Prontuário',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    dbProcesso.Delete;
end;

procedure TfrmPreAnalisesLight.grdProntuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_Delete) then
        abort;
end;

procedure TfrmPreAnalisesLight.dsProcessoStateChange(Sender: TObject);
begin
    cmdNovo.Enabled:=dbProcesso.State in [dsBrowse];
    cmdGrava.Enabled:=dbProcesso.State in [dsInsert,dsEdit];
    cmdExclui.Enabled:=dbProcesso.State in [dsBrowse];
end;

procedure TfrmPreAnalisesLight.cmdRelClick(Sender: TObject);
begin
{with dmRelatorio do
begin
    qryRetorno.SQL.clear;
    qryRetorno.SQL.Text:='select * from RetornoHI '+
                         'where Processa='+QuotedStr('N')+' and '+
                         '      Retorno=:iRet '+
                         'order by AtendimentoHI';
    qryRetorno.ParamByName('iRet').asinteger:=dbRetornoRetorno.value;
    qryRetorno.Open;
    if qryRetorno.RecordCount=0 then
    begin
        ShowMessage('Nenhum registro rejeitado');
        abort;
    end;
    frmMenu.RvBBAuditoria.SetParam('Titulo','Retornos Rejeitados:'+IntToStr(qryRetornoRetorno.asinteger));
    frmMenu.rvBBAuditoria.SelectReport('relRetornoRejeitado',true);
    frmMenu.rvBBAuditoria.Execute;
end;}
end;

procedure TfrmPreAnalisesLight.dbProcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case pagCadastro.TabIndex of
    0:accept:=dbProcessoAtendimentoHI.value=0;
    1:accept:=(dbProcessoAtendimentoHI.value<>0) and (dbProcessoDataTransf.value=Int(lblData.Date));
    end;
end;

procedure TfrmPreAnalisesLight.tabFiltroChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;

procedure TfrmPreAnalisesLight.dbAtendHAfterInsert(DataSet: TDataSet);
begin
    dbAtendHDayClinic.value:=false;
    dbAtendHParcial.value:=0;
    dbAtendHVisita.value:=0;

     dbAtendHDiarias.Value:=0;
     dbAtendHDiariasGlosadas.Value:=0;
     dbAtendHDiasUti.Value:=0;
     dbAtendHValor.Value:=0;
     dbAtendHValorGlosadoM.Value:=0;
     dbAtendHValorGlosadoE.Value:=0;
     dbAtendHValorNaoAcordadoM.Value:=0;
     dbAtendHValorNaoAcordadoE.Value:=0;
     dbAtendHApto.Value:=0;
     dbAtendHEnfermaria.Value:=0;
     dbAtendHSemi.Value:=0;
     dbAtendHBercario.Value:=0;
     dbAtendHDayClinicQtd.Value:=0;
     dbAtendHIsolamento.Value:=0;
     dbAtendHComplemento.value:=false;
     dbAtendHDayClinic.value:=false;
     dbAtendHIntercambio.value:=false;
     dbAtendHPosAnalise.value:=false;
     dbAtendHParcial.value:=0;
     dbAtendHPacote.value:=false;
     dbAtendHVisita.value:=0;
     dbAtendHExtraAmb.Value:=false;
     dbAtendHExtraAmb1.value:=false;
     dbAtendHGemelar.value:=0;
     dbAtendHRN.value:='N';
     dbAtendHProdutividade.value:=0;
     dbAtendHComplementoF.value:=false;
     dbAtendHEnfermeiro.value:=0;

end;

procedure TfrmPreAnalisesLight.pagCadastroChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;


procedure TfrmPreAnalisesLight.dbServicoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=(dbServicoValorizado.Value=true) and
            ((dbServicoVinculado.value='P') or (dbServicoVinculado.value='A'));
end;

procedure TfrmPreAnalisesLight.dbProcessoPacienteChange(Sender: TField);
begin
    if (dbProcessoPaciente.value<>0) and (dbProcesso.state in [dsInsert,dsEdit]) then
        dbProcessoPacienteNome.value:=dbPacienteNome.value;
end;

procedure TfrmPreAnalisesLight.dbProcessoBeforeInsert(DataSet: TDataSet);
begin
    iano:=dbProcessoAnoCompetencia.value;
    imes:=dbProcessoMesCompetencia.value;
    iHospital:=dbProcessoHospital.value;
    iMedico:=dbProcessoMedico.value;
    iServico:=dbProcessoServico.value;
end;

procedure TfrmPreAnalisesLight.dbProcessoBeforePost(DataSet: TDataSet);
begin
 if dbProcesso.tag=0 then
    begin
    dbProcessoParcialTexto.value:=UpperCase(dbProcessoParcialTexto.value);
    dbProcessoServico.value:=UpperCase(dbProcessoServico.value);
    dbProcessoVisitaTexto.value:=UpperCase(dbProcessoVisitaTexto.value);
    dbProcessoInternacao.value:=UpperCase(dbProcessoInternacao.value);
    dbProcessoTratamento.value:=UpperCase(dbProcessoTratamento.value);
    dbProcessoComplementoTexto.value:=UpperCase(dbProcessoComplementoTexto.value);

    if dbProcessoPacienteNome.value<>dbPacienteNome.value then
        dbProcessoPaciente.value:=0;

    if (dbProcessoMesCompetencia.value=0) or
       (dbProcessoMesCompetencia.value>12) then
    begin
        ShowMessage('Mês da Competencia inválido');
        abort;
    end;

    if (dbProcessoAnoCompetencia.value=0) or
       (dbProcessoAnoCompetencia.value<2019) then
    begin
        ShowMessage('Ano da Competencia inválido');
        abort;
    end;

    if dbProcessoPacienteNome.value='' then
    begin
        ShowMessage('Nome do Paciente inválido');
        abort;
    end;
    if dbProcessoHospital.value=0 then
    begin
        ShowMessage('Hospital inválido');
        abort;
    end;
    if dbProcessoMedico.value=0 then
    begin
        ShowMessage('Médico inválido');
        abort;
    end;
    if dbProcessoDataInternacao.isnull then
    begin
        ShowMessage('Data Internação inválida');
        abort;
    end;
    if dbProcessoDataAlta.isnull then
    begin
        ShowMessage('Data Alta inválida');
        abort;
    end;
    if dbProcessoDataInternacao.value>dbProcessoDataAlta.value then
    begin
        ShowMessage('Data Internação maior que Data da Alta');
        abort;
    end;
    if (dbProcessoVisitaTexto.value<>'S') and (dbProcessoVisitaTexto.value<>'N')  then
    begin
        ShowMessage('Opção válidas para Visita: [S]im ou [N]ão');
        abort;
    end;
    if (dbProcessoInternacao.value<>'C') and
       (dbProcessoInternacao.value<>'R') and
       (dbProcessoInternacao.value<>'') then
    begin
        ShowMessage('Opção válidas para Internação: [C]linica ou Ciru[R]urgica');
        abort;
    end;
    if (dbProcessoTratamento.value<>'E') and
       (dbProcessoTratamento.value<>'R') and
       (dbProcessoTratamento.value<>'A') and
       (dbProcessoTratamento.value<>'') then
    begin
        ShowMessage('Opção válidas para Tratamento: [E]letivo, U[R]gencia ou [A]cidente');
        abort;
    end;
    if (dbProcessoParcialTexto.value<>'S') and (dbProcessoParcialTexto.value<>'N')  then
    begin
        ShowMessage('Opção válidas para Parcial: [S]im ou [N]ão');
        abort;
    end;

    if (dbProcessoComplementoTexto.value<>'S') and (dbProcessoComplementoTexto.value<>'N')  then
    begin
        ShowMessage('Opção válidas para Complemento: [S]im ou [N]ão');
        abort;
    end;
    if (dbProcessoDataInicioP.value>dbProcessoDataFimP.value) and (not dbProcessoDataFimP.isnull) then
    begin
        ShowMessage('Data Inicio da Parcial maior que Data Final');
        abort;
    end;
    if not dbServico.Locate('Servico',dbProcessoServico.value,[]) then
    begin
        ShowMessage('Serviço não cadastrado');
        abort;
    end;

    if ((dbProcessoServico.value='VL') or (dbProcessoServico.value='VA')) and
        (dbProcessoSenha.value='')  then
    begin
        ShowMessage('Senha obrigatória para servicos [VL] e [VA]');
        abort;
    end;

    if (dbProcessoServico.value='VA') and
       (MonthOf(dbProcessoDataAlta.value)<>(dbProcessoMesCompetencia.value-1)) and
       (YearOf(dbProcessoDataAlta.value)<>(dbProcessoAnoCompetencia.value)) then
    begin
        ShowMessage('Data da Alta deve ser do mes anterior a competencia para Serviço [VA]');
        abort;
    end;
    if (dbProcessoServico.value='VL') and
       (MonthOf(dbProcessoDataAlta.value)<>(dbProcessoMesCompetencia.value)) and
       (YearOf(dbProcessoDataAlta.value)<>(dbProcessoAnoCompetencia.value)) then
    begin
        ShowMessage('Data da Alta deve ser do mesmo mes da competencia para Serviço [VL]');
        abort;
    end;

    dbAtendH.SQL.Clear;
    dbAtendH.SQL.Text:='Select * from AtendHI where cliente=27 and '+
                       'Hospital=:iHospital and '+
                       'Paciente=:iPaciente and '+
                       'DataInternacao=:iDataInt ';
    dbAtendH.ParamByName('iHospital').value:=dbProcessoHospital.value;
    dbAtendH.ParamByName('iPaciente').value:=dbProcessoPaciente.value;
    dbAtendH.ParamByName('iDataInt').value:=dbProcessoDataInternacao.value;
    dbAtendH.Open;
    if (dbAtendH.RecordCount>0) and
       ((dbProcessoServico.value<>'VA') or
       (dbProcessoComplementoTexto.Value='N')) then
    begin
        ShowMessage('Hospital+Paciente+Data Internação ja cadastrado. Servico deve ser [VA]+Complemento');
        abort;
    end;


//**************
    if dbProcessoVisitaTexto.value='S' then
        dbProcessoVisita.value:=1
    else
        dbProcessoVisita.value:=0;
    if dbProcessoParcialTexto.value='S' then
        dbProcessoParcial.value:=1
    else
        dbProcessoParcial.value:=0;
    if dbProcessoComplementoTexto.value='S' then
        dbProcessoComplemento.value:=true
    else
        dbProcessoComplemento.value:=false;
    if dbProcesso.state in [dsInsert] then
    begin
        dbProcessoUsuarioI.Value:=iUsuario;
        dbProcessoDataInclusao.value:=date;
    end
    else
    begin
        dbProcessoUsuario.Value:=iUsuario;
        dbProcessoDataAlteracao.value:=date;
    end;
    dbProcessoProcessa.value:='S';

    if dbProcessoPaciente.value=0 then
    begin
        dbPaciente.Insert;
        dbPacientePaciente.value:=iUltimoPaciente+1;
        dbPacienteNome.value:=dbProcessoPacienteNome.value;
        dbPacienteCliente.value:=27;
        dbPacienteIDPaciente.value:='PORTO';
        dbPaciente.Post;
        dbProcessoPaciente.value:=iUltimoPaciente+1;
    end;
end
else
    dbProcesso.tag:=0;
end;

procedure TfrmPreAnalisesLight.dbProcessoDataInternacaoChange(
  Sender: TField);
begin
    if dbProcesso.state in [dsInsert] then
        dbProcessoDataInicioP.value:=dbProcessoDataInternacao.value;

    if (not dbProcessoDataInternacao.isnull)  and
       (not dbProcessoDataAlta.IsNull) then
        dbProcessoDiarias.value:=(dbProcessoDataAlta.value-dbProcessoDataInternacao.value);
end;

procedure TfrmPreAnalisesLight.dbProcessoDataAltaChange(Sender: TField);
begin
    if dbProcesso.state in [dsInsert] then
        dbProcessoDataFimP.value:=dbProcessoDataAlta.value;

    if (not dbProcessoDataInternacao.isnull)  and
       (not dbProcessoDataAlta.IsNull) then
        dbProcessoDiarias.value:=(dbProcessoDataAlta.value-dbProcessoDataInternacao.value);
end;

procedure TfrmPreAnalisesLight.dbProcessoCalcFields(DataSet: TDataSet);
begin
    if dbProcessoInternacao.value='R' then
        dbProcessoInternacaoTexto.value:='Cirurgica'
    else
        if dbProcessoInternacao.value='C' then
            dbProcessoInternacaoTexto.value:='Clinica'
        else
            dbProcessoInternacaoTexto.Value:='';

    if dbProcessoTratamento.value='E' then
        dbProcessoTratamentoTexto.value:='Eletivo';
    if dbProcessoTratamento.value='R' then
        dbProcessoTratamentoTexto.value:='Urgência';
    if dbProcessoTratamento.value='A' then
        dbProcessoTratamentoTexto.value:='Acidente';
end;


procedure TfrmPreAnalisesLight.cmpBuscaChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;

procedure TfrmPreAnalisesLight.dbAuditorFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbAuditorDataFim.IsNull

end;

procedure TfrmPreAnalisesLight.cmdFiltroClick(Sender: TObject);
begin
    if not cmdFiltro.Checked then
    begin
        dbAuditor.Filtered:=false;
        dbAuditor.Refresh;
    end
    else
    begin
        dbAuditor.Filtered:=true;
        dbAuditor.Refresh;
    end;
    dbProcesso.Refresh;

end;

procedure TfrmPreAnalisesLight.lblDataChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;

end.
