program BMAud;

uses
  Forms,
  Windows,
  dmRelatorios in 'dmRelatorios.pas' {dmRelatorio: TDataModule},
  frmPrincipal in 'frmPrincipal.pas' {frmMenu},
  frmSobres in 'frmSobres.pas' {frmSobre},
  frmSenhas in 'frmSenhas.pas' {frmSenha},
  frmSenhasAltera in 'frmSenhasAltera.pas' {frmSenhaAltera},
  frmProprietarias in 'frmProprietarias.pas' {frmProprietaria},
  frmCadastros in 'frmCadastros.pas' {frmCadastro},
  frmPacientes in 'frmPacientes.pas' {frmPaciente},
  frmCorrecaos in 'frmCorrecaos.pas' {frmCorrecao},
  frmPreAnalises in 'frmPreAnalises.pas' {frmPreAnalise},
  frmRelEstatisticasPacienteH in 'frmRelEstatisticasPacienteH.pas' {frmRelEstatisticaPacienteH},
  frmRelEstatisticasPaciente in 'frmRelEstatisticasPaciente.pas' {frmRelEstatisticaPaciente},
  frmRelEstatisticasHospital in 'frmRelEstatisticasHospital.pas' {frmRelEstatisticaHospital},
  frmRelEvolucaoCustosR in 'frmRelEvolucaoCustosR.pas' {frmRelEvolucaoCustoR},
  frmRelProdParciais in 'frmRelProdParciais.pas' {frmRelProdParcial},
  frmRelAnalisesAmbPS in 'frmRelAnalisesAmbPS.pas' {frmRelAnaliseAmbPS},
  frmRelEvolucaoCustosRPS in 'frmRelEvolucaoCustosRPS.pas' {frmRelEvolucaoCustoRPS},
  frmRelRepresentatividadeContas in 'frmRelRepresentatividadeContas.pas' {frmRelRepresentatividadeConta},
  frmRelProdutividadesME in 'frmRelProdutividadesME.pas' {frmRelProdutividadeME},
  frmComplementos in 'frmComplementos.pas' {frmComplemento},
  frmHomeCareNovos in 'frmHomeCareNovos.pas' {frmHomeCareNovo},
  frmRelCustosTipoInternacao in 'frmRelCustosTipoInternacao.pas' {frmRelCustoTipoInternacao},
  frmRelProdutividadeFuncionarios in 'frmRelProdutividadeFuncionarios.pas' {frmRelProdutividadeFuncionario},
  frmRelDesempenhosCid in 'frmRelDesempenhosCid.pas' {frmRelDesempenhoCid},
  frmRelCustosAmb in 'frmRelCustosAmb.pas' {frmRelCustoAMB},
  frmRelCustosDiaria in 'frmRelCustosDiaria.pas' {frmRelCustoDiaria},
  frmRetornosHI in 'frmRetornosHI.pas' {frmRetornoHI},
  frmRelDistribuicaoHospitais in 'frmRelDistribuicaoHospitais.pas' {frmRelDistribuicaoHospital},
  frmRelDistribuicaoCIDs in 'frmRelDistribuicaoCIDs.pas' {frmRelDistribuicaoCID},
  frmRelControleVisitas in 'frmRelControleVisitas.pas' {frmRelControleVisita},
  frmRelSumarioVisitas in 'frmRelSumarioVisitas.pas' {frmRelSumarioVisita},
  frmRelRelacaoAuditorias in 'frmRelRelacaoAuditorias.pas' {frmRelRelacaoAuditoria},
  frmRelEstatisticasHospitalInt in 'frmRelEstatisticasHospitalInt.pas' {frmRelEstatisticaHospitalInt},
  frmRelDistribuicaoValoresCC in 'frmRelDistribuicaoValoresCC.pas' {frmRelDistribuicaoValorCC},
  frmRelInternacoesFE in 'frmRelInternacoesFE.pas' {frmRelInternacaoFE},
  frmRemessasHI in 'frmRemessasHI.pas' {frmRemessaHI},
  frmGeraRemessasHI in 'frmGeraRemessasHI.pas' {frmGeraRemessaHI},
  frmRelSenhasDuplicadas in 'frmRelSenhasDuplicadas.pas' {frmRelSenhaDuplicada},
  frmRelControlePaciente in 'frmRelControlePaciente.pas' {frmRelControlePacientes},
  frmRelMediaCapeante in 'frmRelMediaCapeante.pas' {frmRelMediaCapeantes},
  frmProdutividades in 'frmProdutividades.pas' {frmProdutividade},
  frmRelBradescoPacotes in 'frmRelBradescoPacotes.pas' {frmRelBradescoPacote},
  frmRelProdsNP in 'frmRelProdsNP.pas' {frmRelProdNP},
  frmProdCopias in 'frmProdCopias.pas' {frmProdCopia},
  frmLogs in 'frmLogs.pas' {frmLog},
  frmRelPacientesHospital in 'frmRelPacientesHospital.pas' {frmRelPacienteHospital},
  frmProdParciais in 'frmProdParciais.pas' {frmProdParcial},
  frmProdParciaisUnica in 'frmProdParciaisUnica.pas' {frmProdParcialUnica},
  frmProdComplementos in 'frmProdComplementos.pas' {frmProdComplemento},
  frmProdVisitas in 'frmProdVisitas.pas' {frmProdVisita},
  frmProdPSs in 'frmProdPSs.pas' {frmProdPS},
  frmRelProdsFunMensal in 'frmRelProdsFunMensal.pas' {frmRelProdFunMensal},
  frmRetornoHICompt in 'frmRetornoHICompt.pas' {frmRetornoCompt},
  frmRetornosPS in 'frmRetornosPS.pas' {frmRetornoPS},
  frmPreAnalisesAtu in 'frmPreAnalisesAtu.pas' {frmPreAnaliseAtu},
  frmProdAlteraME in 'frmProdAlteraME.pas' {frmProdsAlteraME},
  frmPreAnaliseLight in 'frmPreAnaliseLight.pas' {frmPreAnalisesLight},
  frmRelProdutividades in 'frmRelProdutividades.pas' {frmRelProdutividade},
  frmRelSenhas in 'frmRelSenhas.pas' {frmRelSenha};

{$R *.RES}
var
  Hwnd : THandle;  
begin
  Hwnd := FindWindow('TApplication', 'B+ Auditoria Médica');
  if Hwnd = 0 then
  begin
      Application.Initialize;
      Application.Title := 'B+ Auditoria Médica';
      Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
  end
  else
      SetForegroundWindow(Hwnd);
end.
