unit dmRelatorios;

interface

uses
  SysUtils, Classes, DateUtils, RpCon, RpConDS,  DBTables, MSAccess,
   OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,  DB, Variants, Math,   RpDefine, RpBase, RpSystem;

type
  TdmRelatorio = class(TDataModule)
    dbCliente: TMSTable;
    dbClienteCliente: TIntegerField;
    dbClienteNome: TStringField;
    dbClienteEndereco: TStringField;
    dbClienteBairro: TStringField;
    dbClienteCidade: TStringField;
    dbClienteUF: TStringField;
    dbClienteCep: TStringField;
    dbClienteFone1: TStringField;
    dbClienteFone2: TStringField;
    dbClienteFax: TStringField;
    dbClienteCGC: TStringField;
    dbClienteContato: TStringField;
    dbClienteEmail: TStringField;
    dbClienteHomePage: TStringField;
    dbClienteUsuario: TStringField;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    dbEmpresa: TMSTable;
    dbEmpresaEmpresa: TIntegerField;
    dbEmpresaNome: TStringField;
    qryAudHC1: TMSQuery;
    qryAudHC1ClienteNome: TStringField;
    qryAudHC1HospitalNome: TStringField;
    qryAudHC1PacienteNome: TStringField;
    qryAudHC1EmpresaNome: TStringField;
    qryAudHC1Diag1: TStringField;
    qryAudHC1Diag2: TStringField;
    qryAudHC1Diag3: TStringField;
    qryAudHC1AuditorNome: TStringField;
    qryAudHC1PacienteAnoNascimento: TIntegerField;
    qryAudHC1PacienteIdade: TIntegerField;
    qryAudHC1PacienteUnidade: TStringField;
    dbItemHC1Diagnostico: TMSTable;
    dbItemHC1DiagnosticoAtendimentoHC1: TIntegerField;
    dbItemHC1DiagnosticoTipo: TStringField;
    dbItemHC1DiagnosticoItem: TIntegerField;
    dbItemHC1DiagnosticoDiagnostico: TIntegerField;
    dbItemHC1DiagnosticoPrincipal: TBooleanField;
    dbItemHC1DiagnosticoDiagnosticoTexto: TStringField;
    dbItemHC1DiagnosticoPrincipalTexto: TStringField;
    qryAudHC1DispneiaTexto: TStringField;
    qryAudHC1TosseTexto: TStringField;
    qryAudHC1SecrecaoPulmonarTexto: TStringField;
    qryAudHC1HabitoDigestivoTexto: TStringField;
    qryAudHC1EdemaTexto: TStringField;
    qryAudHC1HabitoUrinarioTexto: TStringField;
    qryAudHC1EstadoPacienteTexto: TStringField;
    dbItemHC1DiagnosticoCodCid: TStringField;
    dbItemHC1Medicamento: TMSTable;
    dbItemHC1MedicamentoAtendimentoHC1: TIntegerField;
    dbItemHC1MedicamentoTipo: TStringField;
    dbItemHC1MedicamentoMedicamento: TStringField;
    dbItemHC1MedicamentoVia: TStringField;
    dbItemHC1MedicamentoHorario: TStringField;
    dbItemHC1MedicamentoPeriodo: TStringField;
    dbItemHC1Exame: TMSTable;
    dbItemHC1ExameAtendimentoHC1: TIntegerField;
    dbItemHC1ExameTipo: TStringField;
    dbItemHC1ExameItem: TIntegerField;
    dbItemHC1ExameExame: TStringField;
    dbItemHC1ExameData: TDateField;
    dbItemHC1ExameResultado: TStringField;
    dbItemHC1ExameResultadoTexto: TStringField;
    qryAudHC1Med1: TStringField;
    qryAudHC1Med2: TStringField;
    qryAudHC1Med3: TStringField;
    qryAudHC1Med4: TStringField;
    qryAudHC1AssumeCuidadosTexto: TStringField;
    qryAudHC1RecebeInstrucoesTexto: TStringField;
    qryAudHC1CuidadorTexto: TStringField;
    qryAudHC1QuerAssumirTexto: TStringField;
    qryAudHC1Exame1: TStringField;
    qryAudHC1Exame2: TStringField;
    qryAudHC1Exame3: TStringField;
    qryAudHC1ClienteSatisfeitoTexto1: TStringField;
    dbItemHC1Conclusao: TMSTable;
    dbItemHC1ConclusaoAtendimentoHC1: TIntegerField;
    dbItemHC1ConclusaoTipo: TStringField;
    dbItemHC1ConclusaoItem: TIntegerField;
    dbItemHC1ConclusaoConclusao: TStringField;
    dbConclusao: TMSTable;
    dbConclusaoConclusao: TStringField;
    dbConclusaoNome: TStringField;
    dbConclusaoClinica: TBooleanField;
    dbConclusaoDomiciliar: TBooleanField;
    qryAudHC1Conclusao: TStringField;
    qryAudHC1DepStomiaCuidadorTexto: TStringField;
    qryAudHC1DepSondaCuidadorTexto: TStringField;
    qryAudHC1DepVenosoCuidadorTexto: TStringField;
    qryAudHC1DepMedicamentoCuidadorTexto: TStringField;
    qryAudHC1DepAparelhoCuidadorTexto: TStringField;
    qryAudHC1DepCurativoCuidadorTexto: TStringField;
    qryAudHC1DepHigieneCuidadorTexto: TStringField;
    qryAudHC1DepDietaCuidadorTexto: TStringField;
    qryAudHC1DepMobilizacaoCuidadorTexto: TStringField;
    qryAudHC1DepVigilanciaCuidadorTexto: TStringField;
    dbItemHC1ExameComplementar: TBooleanField;
    qryAudHC1AtendimentoHC1: TIntegerField;
    qryAudHC1Tipo: TStringField;
    qryAudHC1Item: TIntegerField;
    qryAudHC1Auditor: TIntegerField;
    qryAudHC1Informante: TStringField;
    qryAudHC1PA: TStringField;
    qryAudHC1Temperatura: TStringField;
    qryAudHC1QuadroClinico: TStringField;
    qryAudHC1Consciencia: TStringField;
    qryAudHC1Locomocao: TStringField;
    qryAudHC1Dispneia: TBooleanField;
    qryAudHC1Tosse: TBooleanField;
    qryAudHC1SecrecaoPulmonar: TBooleanField;
    qryAudHC1HabitoDigestivo: TBooleanField;
    qryAudHC1Edema: TBooleanField;
    qryAudHC1HabitoUrinario: TBooleanField;
    qryAudHC1SondaSVD: TBooleanField;
    qryAudHC1SondaSNG: TBooleanField;
    qryAudHC1SondaSNE: TBooleanField;
    qryAudHC1SondaUripem: TBooleanField;
    qryAudHC1StomiaTraqueo: TBooleanField;
    qryAudHC1StomiaGastro: TBooleanField;
    qryAudHC1StomiaColosto: TBooleanField;
    qryAudHC1StomiaOutro: TStringField;
    qryAudHC1Monitor: TBooleanField;
    qryAudHC1VentilacaoMecanica: TBooleanField;
    qryAudHC1O2: TBooleanField;
    qryAudHC1O2Continuo: TBooleanField;
    qryAudHC1O2Qtd: TIntegerField;
    qryAudHC1OxigenioContinuo: TBooleanField;
    qryAudHC1OxigenioIntermitente: TBooleanField;
    qryAudHC1OxigenioQtd: TIntegerField;
    qryAudHC1TrocaTorpedo: TBooleanField;
    qryAudHC1TrocaTorpedoQtd: TIntegerField;
    qryAudHC1TrocaTorpedoFreq: TStringField;
    qryAudHC1Trocanter1: TBooleanField;
    qryAudHC1Tamanho1: TStringField;
    qryAudHC1Aspecto1: TStringField;
    qryAudHC1Trocanter2: TBooleanField;
    qryAudHC1Tamanho2: TStringField;
    qryAudHC1Aspecto2: TStringField;
    qryAudHC1Sacral3: TBooleanField;
    qryAudHC1Tamanho3: TStringField;
    qryAudHC1Aspecto3: TStringField;
    qryAudHC1Escaras4: TStringField;
    qryAudHC1Local4: TStringField;
    qryAudHC1Tamanho4: TStringField;
    qryAudHC1Aspecto4: TStringField;
    qryAudHC1EvolucaoGeral: TStringField;
    qryAudHC1VMQtd: TIntegerField;
    qryAudHC1VMFreq: TStringField;
    qryAudHC1VMCurativo: TBooleanField;
    qryAudHC1VM24H: TBooleanField;
    qryAudHC1VMVisita: TBooleanField;
    qryAudHC1VMSegSex: TStringField;
    qryAudHC1VMSabDom: TStringField;
    qryAudHC1VMObs: TStringField;
    qryAudHC1VMAdequado: TStringField;
    qryAudHC1VEQtd: TIntegerField;
    qryAudHC1VEFreq: TStringField;
    qryAudHC1VECurativo: TBooleanField;
    qryAudHC1VE24H: TBooleanField;
    qryAudHC1VEVisita: TBooleanField;
    qryAudHC1VESegSex: TStringField;
    qryAudHC1VESabDom: TStringField;
    qryAudHC1VEObs: TStringField;
    qryAudHC1VEAdequado: TStringField;
    qryAudHC1EnfQtd: TIntegerField;
    qryAudHC1EnfFreq: TStringField;
    qryAudHC1EnfCurativo: TBooleanField;
    qryAudHC1EnfInjecao: TBooleanField;
    qryAudHC1EnfAspiracao: TBooleanField;
    qryAudHC1EnfAparelho: TBooleanField;
    qryAudHC1EnfHigiene: TBooleanField;
    qryAudHC1EnfObs: TStringField;
    qryAudHC1EnfAdequado: TStringField;
    qryAudHC1FisioMQtd: TIntegerField;
    qryAudHC1FisioMFreq: TStringField;
    qryAudHC1FisioMObs: TStringField;
    qryAudHC1FisioMAdequado: TStringField;
    qryAudHC1FisioRQtd: TIntegerField;
    qryAudHC1FisioRFreq: TStringField;
    qryAudHC1FisioRObs: TStringField;
    qryAudHC1FisioRAdequado: TStringField;
    qryAudHC1FonoQtd: TIntegerField;
    qryAudHC1FonoFreq: TStringField;
    qryAudHC1FonoObs: TStringField;
    qryAudHC1FonoAdequado: TStringField;
    qryAudHC1Outros: TStringField;
    qryAudHC1OutrosObs: TStringField;
    qryAudHC1Alimentacao: TBooleanField;
    qryAudHC1AlimentacaoTipo: TStringField;
    qryAudHC1AlimentacaoQtd: TIntegerField;
    qryAudHC1Bomba: TBooleanField;
    qryAudHC1BombaQtd: TIntegerField;
    qryAudHC1Curativo: TBooleanField;
    qryAudHC1CurativoPQtd: TIntegerField;
    qryAudHC1CurativoMQtd: TIntegerField;
    qryAudHC1CurativoGQtd: TIntegerField;
    qryAudHC1Aspiracao: TBooleanField;
    qryAudHC1AspiracaoQtd: TIntegerField;
    qryAudHC1FraldasQtd: TIntegerField;
    qryAudHC1OutrosMateriais: TStringField;
    qryAudHC1LeitoHospitalar: TBooleanField;
    qryAudHC1LeitoHospitalarProprio: TBooleanField;
    qryAudHC1CadeiraRodas: TBooleanField;
    qryAudHC1CadeiraRodasProprio: TBooleanField;
    qryAudHC1Andador: TBooleanField;
    qryAudHC1AndadorProprio: TBooleanField;
    qryAudHC1Aspirador: TBooleanField;
    qryAudHC1AspiradorProprio: TBooleanField;
    qryAudHC1ColchaoAgua: TBooleanField;
    qryAudHC1ColchaoAguaProprio: TBooleanField;
    qryAudHC1ColchaoOvos: TBooleanField;
    qryAudHC1ColchaoOvosProprio: TBooleanField;
    qryAudHC1Inalador: TBooleanField;
    qryAudHC1InaladorProprio: TBooleanField;
    qryAudHC1SuporteSoro: TBooleanField;
    qryAudHC1SuporteSoroProprio: TBooleanField;
    qryAudHC1Oximetro: TBooleanField;
    qryAudHC1OximetroProprio: TBooleanField;
    qryAudHC1Equipamento1: TBooleanField;
    qryAudHC1Equipamento1Nome: TStringField;
    qryAudHC1Equipamento1Proprio: TBooleanField;
    qryAudHC1DepSonda: TSmallintField;
    qryAudHC1DepSondaCuidador: TBooleanField;
    qryAudHC1DepStomias: TSmallintField;
    qryAudHC1DepStomiasCuidador: TBooleanField;
    qryAudHC1DepVenoso: TSmallintField;
    qryAudHC1DepVenosoCuidador: TBooleanField;
    qryAudHC1DepMedicamento: TSmallintField;
    qryAudHC1DepMedicamentoCuidador: TBooleanField;
    qryAudHC1DepAparelho: TSmallintField;
    qryAudHC1DepAparelhoCuidador: TBooleanField;
    qryAudHC1DepCurativo: TSmallintField;
    qryAudHC1DepCurativoCuidador: TBooleanField;
    qryAudHC1DepHigiene: TSmallintField;
    qryAudHC1DepHigieneCuidador: TBooleanField;
    qryAudHC1DepDieta: TSmallintField;
    qryAudHC1DepDietaCuidador: TBooleanField;
    qryAudHC1DepMobilizacao: TSmallintField;
    qryAudHC1DepMobilizacaoCuidador: TBooleanField;
    qryAudHC1DepVigilancia: TSmallintField;
    qryAudHC1DepVigilanciaCuidador: TBooleanField;
    qryAudHC1DepMedia: TSmallintField;
    qryAudHC1Cuidador: TBooleanField;
    qryAudHC1CuidadorNome: TStringField;
    qryAudHC1CuidadorM: TBooleanField;
    qryAudHC1CuidadorT: TBooleanField;
    qryAudHC1CuidadorN: TBooleanField;
    qryAudHC1RecebeInstrucoes: TBooleanField;
    qryAudHC1AssumeCuidados: TBooleanField;
    qryAudHC1QuerAssumir: TBooleanField;
    qryAudHC1ClienteSatisfeito: TBooleanField;
    qryAudHC1ClienteSatisfeitoTexto: TMemoField;
    qryAudHC1Observacoes: TMemoField;
    qryAudHC1Usuario: TStringField;
    qryAudHC1AtendimentoHC1_1: TIntegerField;
    qryAudHC1Tipo_1: TStringField;
    qryAudHC1Cliente: TIntegerField;
    qryAudHC1Empresa: TIntegerField;
    qryAudHC1Paciente: TIntegerField;
    qryAudHC1Hospital: TIntegerField;
    qryAudHC1UltimaVisita: TIntegerField;
    qryAudHC1MotivoAlta: TStringField;
    qryAudHC1Usuario_1: TStringField;
    qryAudHC1Processa: TStringField;
    qryAudHC1AtendimentoHC1A: TIntegerField;
    qryAudHC1AuditorCRM: TStringField;
    qryAudHC1VMVisitaTexto: TStringField;
    qryAudHC1VM24HTexto: TStringField;
    qryAudHC1VMCurativoTexto: TStringField;
    qryAudHC1VEVisitaTexto: TStringField;
    qryAudHC1VE24HTexto: TStringField;
    qryAudHC1VECurativoTexto: TStringField;
    qryAudHC1EnfCurativoTexto: TStringField;
    qryAudHC1EnfInjecaoTexto: TStringField;
    qryAudHC1EnfAspiracaoTexto: TStringField;
    qryAudHC1EnfAparelhoTexto: TStringField;
    qryAudHC1EnfHigieneTexto: TStringField;
    qryAudHC1Exame4: TStringField;
    dbItemHC1ExameComplementarTexto: TStringField;
    dbProprietario: TMSTable;
    dbProprietarioEndereco: TStringField;
    dbProprietarioCidade: TStringField;
    dbProprietarioUF: TStringField;
    dbProprietarioCep: TStringField;
    dbProprietarioCGC: TStringField;
    dbProprietarioIE: TStringField;
    dbProprietarioTelefone: TStringField;
    dbProprietarioFax: TStringField;
    dbProprietarioNumSusep: TStringField;
    dbProprietarioUltimoArqMS: TIntegerField;
    qryAudHC1Escara1: TStringField;
    qryAudHC1Escara2: TStringField;
    qryAudHC1Escara3: TStringField;
    qryAudHC1StomiasOutrosTexto: TStringField;
    qryAudHC1Legenda1: TStringField;
    qryAudHC1Legenda2: TStringField;
    dbItemHC1MedicamentoOrigem: TStringField;
    dbItemHC1MedicamentoItem: TIntegerField;
    qryAudHC1Med5: TStringField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    qryRelCustoTipoInternacao: TMSQuery;
    qryRelCustoTipoInternacaocliente: TIntegerField;
    qryRelCustoTipoInternacaohospital: TIntegerField;
    qryRelCustoTipoInternacaointernacao: TStringField;
    qryRelCustoTipoInternacaovalor: TCurrencyField;
    qryRelCustoTipoInternacaoglosam: TCurrencyField;
    qryRelCustoTipoInternacaoglosae: TCurrencyField;
    qryRelCustoTipoInternacaoNome: TStringField;
    qryRelFunHC: TMSQuery;
    qryRelFunHI: TMSQuery;
    qryRelFunPS: TMSQuery;
    qryRelFunHCUsuarioi: TStringField;
    qryRelFunHCQtd: TIntegerField;
    qryRelFun: TMSQuery;
    qryRelFunUsuario: TStringField;
    qryRelFunqtdHomeCare: TIntegerField;
    qryRelFunqtdEstat: TIntegerField;
    qryRelFunqtdPS: TIntegerField;
    qryRelFunTotal: TIntegerField;
    qryRelCustoTipoInternacaoClienteNome: TStringField;
    qryRelCustoTipoInternacaoTipoTexto: TStringField;
    qryRelCustoTipoInternacaoValorPago: TCurrencyField;
    qryRelQtdDiarias: TMSQuery;
    qryRelQtdDiariascliente: TIntegerField;
    qryRelQtdDiariashospital: TIntegerField;
    qryRelQtdDiariasapto: TFloatField;
    qryRelQtdDiariasenfermaria: TFloatField;
    qryRelQtdDiariasbercario: TFloatField;
    qryRelQtdDiariasuti: TFloatField;
    qryRelQtdDiariassemi: TFloatField;
    qryRelQtdDiariasisolamento: TFloatField;
    qryRelQtdDiariasdayclinici: TFloatField;
    qryRelQtdDiariasNome: TStringField;
    qryRelQtdDiariasClienteNome: TStringField;
    qryRelCustoCID: TMSQuery;
    qryRelCustoCIDcliente: TIntegerField;
    qryRelCustoCIDhospital: TIntegerField;
    qryRelCustoCIDvalor: TCurrencyField;
    qryRelCustoCIDglosam: TCurrencyField;
    qryRelCustoCIDglosae: TCurrencyField;
    qryRelCustoCIDNome: TStringField;
    qryRelCustoCIDDiagnosticoTexto: TStringField;
    dbAmb: TMSTable;
    dbAmbCodAMB: TIntegerField;
    dbAmbDescricaoAMB: TStringField;
    qryRelCustoCIDClienteNome: TStringField;
    qryRelCustoCIDValorPago: TCurrencyField;
    qryRelCustoTipoInternacaoqtd: TIntegerField;
    qryRelCustoCIDqtd: TIntegerField;
    qryRelQtdDiariasdiarias: TFloatField;
    qryRelFunHC1: TMSQuery;
    qryRelFunHI1: TMSQuery;
    qryRelFunPS1: TMSQuery;
    qryRelFunqtdPS1: TIntegerField;
    qryRelFunqtdEstat1: TIntegerField;
    qryRelFunqtdHomeCare1: TIntegerField;
    qryRelFunTotal1: TIntegerField;
    qryRelFunTotalG: TIntegerField;
    qryRelFunPS1Usuario: TStringField;
    qryRelFunPS1qtd: TIntegerField;
    qryRelFunHC1Usuario: TStringField;
    qryRelFunHC1Qtd: TIntegerField;
    qryRelFunHI1Usuario: TStringField;
    qryRelFunHI1qtd: TIntegerField;
    qryRelCustoTipoInternacao1: TMSQuery;
    qryRelCustoTipoInternacao1cliente: TIntegerField;
    qryRelCustoTipoInternacao1hospital: TIntegerField;
    qryRelCustoTipoInternacao1valor: TCurrencyField;
    qryRelCustoTipoInternacao1glosam: TCurrencyField;
    qryRelCustoTipoInternacao1glosae: TCurrencyField;
    qryRelCustoTipoInternacao1qtd: TIntegerField;
    qryRelCustoTipoInternacaovalorP: TFloatField;
    qryRelCustoTipoInternacaoglosamP: TFloatField;
    qryRelCustoTipoInternacaoglosaeP: TFloatField;
    qryRelCustoTipoInternacaoqtdP: TFloatField;
    qryRelCustoTipoInternacaoValorPagoP: TFloatField;
    qryRelCustoTipoInternacao2: TMSQuery;
    qryRelCustoTipoInternacao2cliente: TIntegerField;
    qryRelCustoTipoInternacao2internacao: TStringField;
    qryRelCustoTipoInternacao2valor: TCurrencyField;
    qryRelCustoTipoInternacao2glosam: TCurrencyField;
    qryRelCustoTipoInternacao2glosae: TCurrencyField;
    qryRelCustoTipoInternacao2qtd: TIntegerField;
    qryRelCustoTipoInternacao2TipoTexto: TStringField;
    qryRelCustoTipoInternacao2ValorPago: TCurrencyField;
    qryRelCustoTipoInternacao2valorP: TFloatField;
    qryRelCustoTipoInternacao2glosamP: TFloatField;
    qryRelCustoTipoInternacao2glosaeP: TFloatField;
    qryRelCustoTipoInternacao2qtdP: TFloatField;
    qryRelCustoTipoInternacao2ValorPagoP: TFloatField;
    qryRelCustoTipoInternacao3: TMSQuery;
    qryRelCustoTipoInternacao3cliente: TIntegerField;
    qryRelCustoTipoInternacao3valor: TCurrencyField;
    qryRelCustoTipoInternacao3glosam: TCurrencyField;
    qryRelCustoTipoInternacao3glosae: TCurrencyField;
    qryRelCustoTipoInternacao3qtd: TIntegerField;
    qryRelQtdDiarias1: TMSQuery;
    qryRelQtdDiarias1cliente: TIntegerField;
    qryRelQtdDiarias1uti: TFloatField;
    qryRelQtdDiarias1dayclinici: TFloatField;
    qryRelQtdDiarias1diarias: TFloatField;
    qryRelQtdDiarias1PUti: TFloatField;
    qryRelQtdDiarias1PDay: TFloatField;
    qryRelQtdDiariasPUti: TFloatField;
    qryRelQtdDiariasPDay: TFloatField;
    qryRelCustoCIDGlosa: TCurrencyField;
    qryRelCustoCIDPValor: TFloatField;
    qryRelCustoCIDPValorPago: TFloatField;
    qryRelCustoHospital: TMSQuery;
    qryRelCustoHospitalcliente: TIntegerField;
    qryRelCustoHospitalhospital: TIntegerField;
    qryRelCustoHospitalvalor: TCurrencyField;
    qryRelCustoHospitalglosam: TCurrencyField;
    qryRelCustoHospitalglosae: TCurrencyField;
    qryRelQtdDiariasinternacao: TStringField;
    qryRelQtdDiariasTipoTexto: TStringField;
    dbRelCustoCid: TMSTable;
    dbRelCustoCidCliente: TIntegerField;
    dbRelCustoCidHospitalNome: TStringField;
    dbRelCustoCidCodCid: TStringField;
    dbRelCustoCidValor: TCurrencyField;
    dbRelCustoCidGlosa: TCurrencyField;
    dbRelCustoCidQtd: TIntegerField;
    dbRelCustoCidPValor: TFloatField;
    dbRelCustoCidPValorPago: TFloatField;
    dbRelCustoCidCodCidNome: TStringField;
    dbRelCustoCidValorPago: TCurrencyField;
    dbRelCustoCidClienteNome: TStringField;
    dbRelCustoCidHospital: TIntegerField;
    qryEstatPaciente: TMSQuery;
    qryEstatHospital: TMSQuery;
    qryEstatHospitalCliente: TIntegerField;
    qryEstatHospitalHospital: TIntegerField;
    qryEstatHospitalNome: TStringField;
    qryEstatHospitalPaciente: TIntegerField;
    qryEstatHospitalDiarias: TFloatField;
    qryEstatHospitalValor: TCurrencyField;
    qryEstatHospitalValorPago: TCurrencyField;
    qryEstatHospitalGlosaPorc: TFloatField;
    qryEstatHospitalMedia: TFloatField;
    qryEstatHospitalMediana: TFloatField;
    qryEstatHospitalCustoPaciente: TCurrencyField;
    qryEstatHospitalCustoDia: TCurrencyField;
    qryEstatHospitalPaciente1: TIntegerField;
    qryEstatHospitalDiariasGlosadas: TFloatField;
    qryEstatHospitalDiariasPagas: TFloatField;
    qryEstatHospitalValorNaoAcordadoM: TCurrencyField;
    qryEstatHospitalValorNaoAcordadoE: TCurrencyField;
    qryEstatHospitalValorNaoAcordado: TCurrencyField;
    qryEstatHospitalClienteNome: TStringField;
    dbRegiao: TMSTable;
    dbRegiaoRegiao: TIntegerField;
    dbRegiaoDescricao: TStringField;
    qryGrafico: TMSQuery;
    qryGraficoHospital: TIntegerField;
    qryGraficoMes: TIntegerField;
    qryGraficoAno: TIntegerField;
    qryGraficoValor: TCurrencyField;
    qryGraficoValorGlosaM: TCurrencyField;
    qryGraficoValorGlosaE: TCurrencyField;
    qryGraficoDiarias: TFloatField;
    qryGraficoPaciente: TIntegerField;
    qryGraficoDiariasGlosadas: TFloatField;
    dbGrafico: TMSTable;
    dbGraficoOrdem: TStringField;
    dbGraficoNome: TStringField;
    dbGraficoValor: TFloatField;
    dbGraficoTotal1: TFloatField;
    dbGraficoTotal2: TFloatField;
    dbGraficoMedia: TFloatField;
    qryGraficoDiariasPagas: TFloatField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCNPJ: TStringField;
    qryEstatHospitalDiariasNaoProrroga: TFloatField;
    qryEstatHospital4: TMSQuery;
    qryEstatHospital4Cliente: TIntegerField;
    qryEstatHospital4Hospital: TIntegerField;
    qryEstatHospital4Diarias: TFloatField;
    qryEstatPacienteD: TMSQuery;
    qryEstatPacienteDCliente: TIntegerField;
    qryEstatPacienteDPaciente: TIntegerField;
    qryEstatPacienteDHospital: TIntegerField;
    qryEstatPacienteDMedico: TIntegerField;
    qryEstatPacienteDEnfermeiro: TIntegerField;
    qryEstatPacienteDMesCompetencia: TIntegerField;
    qryEstatPacienteDAnoCompetencia: TIntegerField;
    qryEstatPacienteDValor: TCurrencyField;
    qryEstatPacienteDValorGlosadoM: TCurrencyField;
    qryEstatPacienteDValorGlosadoE: TCurrencyField;
    qryEstatPacienteDComplemento: TBooleanField;
    qryEstatPacienteDNumeroParcial: TIntegerField;
    qryEstatPacienteDDayClinic: TBooleanField;
    qryEstatPacienteDIntercambio: TBooleanField;
    qryEstatPacienteDUsuario: TStringField;
    qryEstatPacienteDObservacao: TMemoField;
    qryEstatPacienteDNome: TStringField;
    qryEstatPacienteDParcialTexto: TStringField;
    qryEstatPacienteDValorPago: TCurrencyField;
    qryEstatPacienteDDayClinicTexto: TStringField;
    qryEstatPacienteDComplementoTexto: TStringField;
    qryEstatPacienteDDayClinicSum: TIntegerField;
    qryEstatPacienteDParcialSum: TIntegerField;
    qryEstatPacienteDComplementoSum: TIntegerField;
    qryEstatPacienteDDiasUTI: TFloatField;
    qryEstatPacienteDDiarias: TFloatField;
    qryEstatPacienteDDiariasGlosadas: TFloatField;
    qryEstatPacienteDPacote: TBooleanField;
    qryEstatPacienteDPacoteTexto: TStringField;
    qryEstatPacienteDPacoteSum: TIntegerField;
    qryEstatPacienteD1: TMSQuery;
    qryEstatPacienteD1Cliente: TIntegerField;
    qryEstatPacienteD1Hospital: TIntegerField;
    qryEstatPacienteD1Valor: TCurrencyField;
    qryEstatPacienteD1ValorGlosadoE: TCurrencyField;
    qryEstatPacienteD1ValorGlosadoM: TCurrencyField;
    qryEstatPacienteD1Diarias: TFloatField;
    qryEstatPacienteD1DiasUTI: TFloatField;
    qryEstatPacienteD1Nome: TStringField;
    qryEstatPacienteD1ValorPago: TCurrencyField;
    qryEstatPacienteD1Qtd: TIntegerField;
    qryEstatPacienteD2: TMSQuery;
    qryEstatPacienteD2Cliente: TIntegerField;
    qryEstatPacienteD2Hospital: TIntegerField;
    qryEstatPacienteD2Valor: TCurrencyField;
    qryEstatPacienteD2ValorGlosadoE: TCurrencyField;
    qryEstatPacienteD2ValorGlosadoM: TCurrencyField;
    qryEstatPacienteD2Diarias: TFloatField;
    qryEstatPacienteD2DiasUTI: TFloatField;
    qryEstatPacienteD2Nome: TStringField;
    qryEstatPacienteD2ValorPago: TCurrencyField;
    qryEstatPacienteDClienteNome: TStringField;
    qryEstatPacienteDHospitalNome: TStringField;
    qryEstatPacienteDDiagnostico: TStringField;
    dbItemHIDiagnostico: TMSTable;
    dbItemHIDiagnosticoCliente: TIntegerField;
    dbItemHIDiagnosticoDiagnostico: TIntegerField;
    dbItemHIDiagnosticoAtendimentoHC: TIntegerField;
    dbItemHIDiagnosticoItem: TIntegerField;
    dbItemHIDiagnosticoPrincipal: TBooleanField;
    dbItemHIDiagnosticoCodCid: TStringField;
    dbItemHIDiagnosticoDiagnosticoTexto: TStringField;
    qryEstatPacienteDQtd1: TIntegerField;
    qryEstatPacienteDValorPago1: TCurrencyField;
    qryEstatPacienteDDiarias1: TFloatField;
    qryEstatPacienteDDiasUTI1: TFloatField;
    dbClienteMaximoCobrado1: TCurrencyField;
    dbClienteDiagnostico1: TBooleanField;
    dbClienteCor1: TStringField;
    dbClienteMaximoCobrado2: TCurrencyField;
    dbClienteDiagnostico2: TBooleanField;
    dbClienteCor2: TStringField;
    dbClienteMaximoCobrado3: TCurrencyField;
    dbClienteDiagnostico3: TBooleanField;
    dbClienteCor3: TStringField;
    dbClienteDiarias: TIntegerField;
    dbClienteCorDiaria: TStringField;
    dbClienteDiariasUTI: TIntegerField;
    dbClienteCorDiariaUTI: TStringField;
    qryEstatPacienteDMaxCob1cli: TCurrencyField;
    qryEstatPacienteDMaxCob2Cli: TCurrencyField;
    qryEstatPacienteDMaxCob3Cli: TCurrencyField;
    qryEstatPacienteDDiariasCli: TFloatField;
    qryEstatPacienteDDiariasUTICli: TFloatField;
    qryEstatPacienteDIntercambioTexto: TStringField;
    qryEstatPacienteDIntercambioSum: TIntegerField;
    qryRetorno: TMSQuery;
    qryRetornoRetorno: TIntegerField;
    qryRetornoCliente: TIntegerField;
    qryRetornoPaciente: TIntegerField;
    qryRetornoNomePaciente: TStringField;
    qryRetornoCodigoPaciente: TStringField;
    qryRetornoHospital: TIntegerField;
    qryRetornoHospitalCNPJ: TStringField;
    qryRetornoMedicoCRM: TIntegerField;
    qryRetornoMedico: TIntegerField;
    qryRetornoMedicoNome: TStringField;
    qryRetornoMesCompetencia: TIntegerField;
    qryRetornoAnoCompetencia: TIntegerField;
    qryRetornoSenha: TStringField;
    qryRetornoNotas: TMemoField;
    qryRetornoClienteNome: TStringField;
    qryRetornoHospitalNome: TStringField;
    qryDistribuicaoH: TMSQuery;
    qryDistribuicaoHValorPago: TCurrencyField;
    qryDistribuicaoHhospital: TIntegerField;
    qryDistribuicaoHmes: TIntegerField;
    qryDistribuicaoHano: TIntegerField;
    qryDistribuicaoHvalor: TCurrencyField;
    qryDistribuicaoHglosam: TCurrencyField;
    qryDistribuicaoHglosae: TCurrencyField;
    qryDistribuicaoHcapeantes: TIntegerField;
    qryDistribuicaoHHospitalNome: TStringField;
    qryDistribuicaoCid: TMSQuery;
    qryDistribuicaoCidValorPago: TCurrencyField;
    qryDistribuicaoCidgrupocid: TStringField;
    qryDistribuicaoCidmes: TIntegerField;
    qryDistribuicaoCidano: TIntegerField;
    qryDistribuicaoCidvalor: TCurrencyField;
    qryDistribuicaoCidglosam: TCurrencyField;
    qryDistribuicaoCidglosae: TCurrencyField;
    qryDistribuicaoCidcapeantes: TIntegerField;
    qryGeral: TMSQuery;
    qryRepContaT: TMSQuery;
    qryRepContaTHospital: TIntegerField;
    qryRepContaTPaciente: TIntegerField;
    qryRepContaTValorTot: TCurrencyField;
    qryRepContaTValorGlosadoM: TCurrencyField;
    qryRepContaTValorGlosadoE: TCurrencyField;
    qryRepContaTValor: TCurrencyField;
    qryGeralvalor1: TCurrencyField;
    qryGeralvalor2: TCurrencyField;
    qryGeralvalor3: TCurrencyField;
    qryGeralvalor4: TCurrencyField;
    qryGeralRepConta: TFloatField;
    qryGeralMesAtual: TFloatField;
    qryGeralMesAnterior: TFloatField;
    qryCompMes: TMSQuery;
    qryCompMesHospital: TIntegerField;
    qryCompMesMes: TIntegerField;
    qryCompMesAno: TIntegerField;
    qryCompMesValor: TCurrencyField;
    qryCompMesValorGlosaM: TCurrencyField;
    qryCompMesValorGlosaE: TCurrencyField;
    qryCompMesPaciente: TIntegerField;
    qryCompMesDiarias: TFloatField;
    qryCompMesDiariasGlosadas: TFloatField;
    qryGeral1: TMSQuery;
    qryGeral1valor1: TCurrencyField;
    qryGeral1valor2: TCurrencyField;
    qryGeral1diaria1: TFloatField;
    qryGeral1diaria2: TFloatField;
    qryGeral1glosa1: TCurrencyField;
    qryGeral1glosa2: TCurrencyField;
    qryGeral1CustoPaciente1: TFloatField;
    qryGeral1CustoPaciente2: TFloatField;
    qryGeral1CustoDiaria1: TFloatField;
    qryGeral1CustoDiaria2: TFloatField;
    qryGeral1Permanencia1: TFloatField;
    qryGeral1Permanencia2: TFloatField;
    qryGeral1PGlosa1: TFloatField;
    qryGeral1PGlosa2: TFloatField;
    qryGeral1CMD: TFloatField;
    qryGeral1CMP: TFloatField;
    qryGeral1PGlosa: TFloatField;
    qryGeral1MP: TFloatField;
    qryRestricao: TMSQuery;
    qryRestricaoCliente: TIntegerField;
    qryRestricaoJustProrroga: TIntegerField;
    qryRestricaoqtd: TIntegerField;
    qryRestricaoProrrogaNome: TStringField;
    qryRestricaoClienteNome: TStringField;
    qryRestricaoPorcentagem: TFloatField;
    qryRestricao1: TMSQuery;
    qryRestricao1Cliente: TIntegerField;
    qryRestricao1qtd: TIntegerField;
    qryDistribuicaoH1: TMSQuery;
    qryDistribuicaoH1hospital: TIntegerField;
    qryDistribuicaoH1mes: TIntegerField;
    qryDistribuicaoH1ano: TIntegerField;
    qryDistribuicaoH1valor: TCurrencyField;
    qryDistribuicaoH1glosam: TCurrencyField;
    qryDistribuicaoH1glosae: TCurrencyField;
    qryDistribuicaoH1capeantes: TIntegerField;
    qryDistribuicaoCid1: TMSQuery;
    qryDistribuicaoCid1grupocid: TStringField;
    qryDistribuicaoCid1mes: TIntegerField;
    qryDistribuicaoCid1ano: TIntegerField;
    qryDistribuicaoCid1valor: TCurrencyField;
    qryDistribuicaoCid1glosam: TCurrencyField;
    qryDistribuicaoCid1glosae: TCurrencyField;
    qryDistribuicaoCid1capeantes: TIntegerField;
    qrySumarioVisita: TMSQuery;
    qryEstatPacienteDParcial: TIntegerField;
    qrySumarioVisitahospital: TIntegerField;
    qrySumarioVisitames: TIntegerField;
    qrySumarioVisitaano: TIntegerField;
    qrySumarioVisitacapeantes: TIntegerField;
    qrySumarioVisita1: TMSQuery;
    qrySumarioVisita1hospital: TIntegerField;
    qrySumarioVisita1mes: TIntegerField;
    qrySumarioVisita1ano: TIntegerField;
    qrySumarioVisitaparcial1: TIntegerField;
    qrySumarioVisitaHospitalnome: TStringField;
    qrySumarioVisita1cliente: TIntegerField;
    qrySumarioVisitacliente: TIntegerField;
    qrySumarioVisitaClienteNome: TStringField;
    qrySumarioVisitanaovisita: TIntegerField;
    qryRepConta: TMSQuery;
    qryRepContaHospital: TIntegerField;
    qryRepContaMes: TIntegerField;
    qryRepContaAno: TIntegerField;
    qryRepContaPaciente: TIntegerField;
    qryRepContaValorTot: TCurrencyField;
    qryRepContaValorGlosadoM: TCurrencyField;
    qryRepContaValorGlosadoE: TCurrencyField;
    qryRepContaValor: TFloatField;
    qryDistribuicaoCC: TMSQuery;
    qryDistribuicaoCCCliente: TIntegerField;
    qryDistribuicaoCCGlosaI: TStringField;
    qryDistribuicaoCCGlosa: TCurrencyField;
    qryDistribuicaoCCValor: TCurrencyField;
    qryDistribuicaoCCValorPago: TCurrencyField;
    dbGlosaI: TMSTable;
    dbGlosaIGlosaI: TStringField;
    dbGlosaINome: TStringField;
    dbGlosaIResponsavel: TStringField;
    qryDistribuicaoCCGlosaNome: TStringField;
    qryDistribuicaoCCClienteNome: TStringField;
    qryEstatPacienteDAnoNascimento: TIntegerField;
    qryEstatPacienteDIdade: TIntegerField;
    qryEstatPacienteDSexo: TStringField;
    qryDistribuicaoCCHospital: TIntegerField;
    qryDistribuicaoCCHospitalNome: TStringField;
    qryRepContaTMes: TIntegerField;
    qryRepContaTAno: TIntegerField;
    qryAnalisePS: TMSQuery;
    qryAnalisePSCliente: TIntegerField;
    qryAnalisePSValor: TCurrencyField;
    qryAnalisePSValorGlosado: TCurrencyField;
    qryAnalisePSValorPago: TCurrencyField;
    qryAnalisePSPorcGlosa: TFloatField;
    qryAnalisePSCustoConsulta: TCurrencyField;
    qryAnalisePSRegiao: TIntegerField;
    qryAnalisePSValorNA: TCurrencyField;
    qryAnalisePSTot: TMSQuery;
    qryAnalisePSTotCliente: TIntegerField;
    qryAnalisePSTotValorNA: TCurrencyField;
    qryAnalisePSTotValor: TCurrencyField;
    qryAnalisePSTotValorGlosado: TCurrencyField;
    qryAnalisePSTotValorPago: TCurrencyField;
    qryAnalisePSTotCustoConsulta: TCurrencyField;
    qryAnalisePSTotPorcGlosa: TFloatField;
    qryAnalisePSClienteNome: TStringField;
    qryAnalisePSHospital: TIntegerField;
    qryAnalisePSNome: TStringField;
    dbRelEvolucao: TMSTable;
    dbRelEvolucaoPaciente1: TIntegerField;
    dbRelEvolucaoValor1: TCurrencyField;
    dbRelEvolucaoGlosa1: TCurrencyField;
    dbRelEvolucaoPaciente2: TIntegerField;
    dbRelEvolucaoValor2: TCurrencyField;
    dbRelEvolucaoGlosa2: TCurrencyField;
    dbRelEvolucaoPaciente3: TIntegerField;
    dbRelEvolucaoValor3: TCurrencyField;
    dbRelEvolucaoGlosa3: TCurrencyField;
    dbRelEvolucaoPaciente4: TIntegerField;
    dbRelEvolucaoValor4: TCurrencyField;
    dbRelEvolucaoGlosa4: TCurrencyField;
    dbRelEvolucaoPaciente5: TIntegerField;
    dbRelEvolucaoValor5: TCurrencyField;
    dbRelEvolucaoGlosa5: TCurrencyField;
    dbRelEvolucaoPaciente6: TIntegerField;
    dbRelEvolucaoValor6: TCurrencyField;
    dbRelEvolucaoGlosa6: TCurrencyField;
    dbRelEvolucaoAutorizado1: TCurrencyField;
    dbRelEvolucaoAutorizado2: TCurrencyField;
    dbRelEvolucaoAutorizado3: TCurrencyField;
    dbRelEvolucaoAutorizado4: TCurrencyField;
    dbRelEvolucaoAutorizado5: TCurrencyField;
    dbRelEvolucaoAutorizado6: TCurrencyField;
    dbRelEvolucaoPGlosa1: TFloatField;
    dbRelEvolucaoPGlosa2: TFloatField;
    dbRelEvolucaoPGlosa3: TFloatField;
    dbRelEvolucaoPGlosa4: TFloatField;
    dbRelEvolucaoPGlosa5: TFloatField;
    dbRelEvolucaoPGlosa6: TFloatField;
    dbRelEvolucaoHospital: TIntegerField;
    dbRelEvolucaoNome: TStringField;
    dbRelEvolucaoDiaria2: TFloatField;
    dbRelEvolucaoDiaria3: TFloatField;
    dbRelEvolucaoDiaria4: TFloatField;
    dbRelEvolucaoDiaria5: TFloatField;
    dbRelEvolucaoDiaria6: TFloatField;
    dbRelEvolucaoCustoP1: TCurrencyField;
    dbRelEvolucaoCustoP2: TCurrencyField;
    dbRelEvolucaoCustoP3: TCurrencyField;
    dbRelEvolucaoCustoP4: TCurrencyField;
    dbRelEvolucaoCustoP5: TCurrencyField;
    dbRelEvolucaoCustoP6: TCurrencyField;
    dbRelEvolucaoCustoD1: TCurrencyField;
    dbRelEvolucaoCustoD2: TCurrencyField;
    dbRelEvolucaoCustoD3: TCurrencyField;
    dbRelEvolucaoCustoD4: TCurrencyField;
    dbRelEvolucaoCustoD5: TCurrencyField;
    dbRelEvolucaoCustoD6: TCurrencyField;
    dbRelEvolucaoMediaP1: TFloatField;
    dbRelEvolucaoMediaP2: TFloatField;
    dbRelEvolucaoMediaP3: TFloatField;
    dbRelEvolucaoMediaP4: TFloatField;
    dbRelEvolucaoMediaP5: TFloatField;
    dbRelEvolucaoMediaP6: TFloatField;
    qryRelCustoAmb: TMSQuery;
    qryRelCustoAmbcliente: TIntegerField;
    qryRelCustoAmbhospital: TIntegerField;
    qryRelCustoAmbCodAmb: TIntegerField;
    qryRelCustoAmbvalor: TCurrencyField;
    qryRelCustoAmbglosam: TCurrencyField;
    qryRelCustoAmbglosae: TCurrencyField;
    qryRelCustoAmbqtd: TIntegerField;
    qryRelCustoAmbNome: TStringField;
    qryRelCustoAmbValorPago: TCurrencyField;
    qryRelCustoAmbClienteNome: TStringField;
    qryRelCustoAmbDescricaoAmb: TStringField;
    qryRelCustoAmbGlosa: TCurrencyField;
    qryRelCustoAmbPValor: TFloatField;
    qryRelCustoAmbPValorPago: TFloatField;
    qryRelCustoAmbValorMedio: TCurrencyField;
    qrySenhaDup: TMSQuery;
    qrySenhaDupSenha: TStringField;
    qrySenhaDupqtd: TIntegerField;
    qryHI: TMSQuery;
    qryHICliente: TIntegerField;
    qryHIPaciente: TIntegerField;
    qryHIHospital: TIntegerField;
    qryHIParcial: TIntegerField;
    qryHIClienteNome: TStringField;
    qryHIPacienteNome: TStringField;
    qryHIHospitalNome: TStringField;
    qryHIParcialTexto: TStringField;
    qryHIMesCompetencia: TIntegerField;
    qryHIAnoCompetencia: TIntegerField;
    qryHIComplemento: TBooleanField;
    qryHISenha: TStringField;
    qryParcial: TMSQuery;
    qryParcialCliente: TIntegerField;
    qryParcialPaciente: TIntegerField;
    qryParcialHospital: TIntegerField;
    qryEstatHospitaliparcial: TIntegerField;
    qryEstatHospitalValorGlosadoM: TCurrencyField;
    qryEstatHospitalValorGlosadoE: TCurrencyField;
    qryEstatHospitalValorGlosado: TCurrencyField;
    qryControlP: TMSQuery;
    qryControlPCliente: TIntegerField;
    qryControlPHospital: TIntegerField;
    qryControlPCapeantes: TIntegerField;
    dbControlP: TMSTable;
    dbControlPHospital: TStringField;
    dbControlPCliente1: TIntegerField;
    dbControlPCapeante1: TIntegerField;
    dbControlPCliente2: TIntegerField;
    dbControlPCapeante2: TIntegerField;
    dbControlPCliente3: TIntegerField;
    dbControlPCapeante3: TIntegerField;
    dbControlPCliente4: TIntegerField;
    dbControlPCapeante4: TIntegerField;
    dbControlPCliente5: TIntegerField;
    dbControlPCapeante5: TIntegerField;
    dbControlPCliente6: TIntegerField;
    dbControlPCapeante6: TIntegerField;
    dbControlPCliente7: TIntegerField;
    dbControlPCapeante7: TIntegerField;
    dbControlPCliente8: TIntegerField;
    dbControlPCapeante8: TIntegerField;
    dbControlPCliente9: TIntegerField;
    dbControlPCapeante9: TIntegerField;
    dbControlPCliente10: TIntegerField;
    dbControlPCapeante10: TIntegerField;
    dbControlPCliente11: TIntegerField;
    dbControlPCapeante11: TIntegerField;
    dbControlPCliente12: TIntegerField;
    dbControlPCapeante12: TIntegerField;
    dbControlPTotal: TIntegerField;
    dbControlPClienteNome1: TStringField;
    dbControlPClienteNome2: TStringField;
    dbControlPClienteNome3: TStringField;
    dbControlPClienteNome4: TStringField;
    dbControlPClienteNome5: TStringField;
    dbControlPClienteNome6: TStringField;
    dbControlPClienteNome7: TStringField;
    dbControlPClienteNome8: TStringField;
    dbControlPClienteNome9: TStringField;
    dbControlPClienteNome10: TStringField;
    dbControlPClienteNome11: TStringField;
    dbControlPClienteNome12: TStringField;
    qryControlPClienteNome: TStringField;
    qryControlPHospitalNome: TStringField;
    qryControlPMeses: TIntegerField;
    qryControlPMedia: TFloatField;
    dbPro: TMSTable;
    dbProCliente: TIntegerField;
    dbProPaciente: TIntegerField;
    dbProHospital: TIntegerField;
    dbProDiasUTI: TFloatField;
    dbProDiarias: TFloatField;
    dbProDiariasGlosadas: TFloatField;
    dbProApto: TFloatField;
    dbProEnfermaria: TFloatField;
    dbProSemi: TFloatField;
    dbProBercario: TFloatField;
    dbProDayClinicQtd: TFloatField;
    dbProIsolamento: TFloatField;
    dbProSequencial: TAutoIncField;
    dbProIDPaciente: TStringField;
    dbProMedico: TIntegerField;
    dbProEnfermeiro: TIntegerField;
    dbProMesCompetencia: TIntegerField;
    dbProAnoCompetencia: TIntegerField;
    dbProDiariasCalculadas: TIntegerField;
    dbProValor: TCurrencyField;
    dbProValorGlosadoM: TCurrencyField;
    dbProValorGlosadoE: TCurrencyField;
    dbProObservacao: TMemoField;
    dbProComplemento: TBooleanField;
    dbProParcial: TIntegerField;
    dbProNumeroParcial: TIntegerField;
    dbProDayClinic: TBooleanField;
    dbProIntercambio: TBooleanField;
    dbProPosAnalise: TBooleanField;
    dbProValornaoacordadom: TCurrencyField;
    dbProValornaoacordadoe: TCurrencyField;
    dbProPacote: TBooleanField;
    dbProMedicoACRM: TIntegerField;
    dbProConclusao: TStringField;
    dbProInternacao: TStringField;
    dbProTratamento: TStringField;
    dbProCodAmb: TIntegerField;
    dbProQtdAmb: TIntegerField;
    dbProExtraAmb: TBooleanField;
    dbProSenha: TStringField;
    dbProCodAmb1: TIntegerField;
    dbProQtdAmb1: TIntegerField;
    dbProExtraAmb1: TBooleanField;
    dbProSenha1: TStringField;
    dbProRetorno: TIntegerField;
    dbProRemessa: TIntegerField;
    dbProVisita: TIntegerField;
    dbProValorPago: TCurrencyField;
    dbProObitoGravida: TStringField;
    dbProQtdRNVivo: TIntegerField;
    dbProQtdRNMorto: TIntegerField;
    dbProQtdRNPrematuro: TIntegerField;
    dbProAcidente: TStringField;
    dbProUsuarioI: TStringField;
    dbProUsuario: TStringField;
    dbProUsuarioSite: TStringField;
    qryEstatHospitalLinha: TIntegerField;
    qryAnalisePSLinha: TIntegerField;
    qryExcelBradesco: TMSQuery;
    qryExcelBradescoCliente: TIntegerField;
    qryExcelBradescoIDPaciente: TStringField;
    qryExcelBradescoPaciente: TIntegerField;
    qryExcelBradescoDiasUTI: TFloatField;
    qryExcelBradescoDiarias: TFloatField;
    qryExcelBradescoValor: TCurrencyField;
    qryExcelBradescoValorGlosadoM: TCurrencyField;
    qryExcelBradescoValorGlosadoE: TCurrencyField;
    qryExcelBradescoConclusao: TStringField;
    qryExcelBradescoApto: TFloatField;
    qryExcelBradescoEnfermaria: TFloatField;
    qryExcelBradescoSemi: TFloatField;
    qryExcelBradescoBercario: TFloatField;
    qryExcelBradescoDayClinicQtd: TFloatField;
    qryExcelBradescoIsolamento: TFloatField;
    qryExcelBradescoCodAmb: TIntegerField;
    qryExcelBradescoSenha: TStringField;
    qryExcelBradescoNome: TStringField;
    qryExcelBradescoCidade: TStringField;
    qryExcelBradescoUF: TStringField;
    qryExcelBradescoCNPJ: TStringField;
    qryExcelBradescoNomePaciente: TStringField;
    qryExcelBradescoCartaoSegurado: TStringField;
    qryExcelBradescoInternacaoTexto: TStringField;
    qryExcelBradescoInternacao: TStringField;
    qryExcelBradescoValorGlosado: TCurrencyField;
    qryExcelBradescoValorPago: TCurrencyField;
    qryExcelBradescoAlta: TStringField;
    qryExcelBradescoCid10: TStringField;
    qryExcelBradescoEmpresaAuditoria: TStringField;
    qryExcelBradescoUFEmpresaAuditoria: TStringField;
    qryExcelBradescoInicioFatura: TDateField;
    qryExcelBradescoFimFatura: TDateField;
    qryExcelBradescoParcial: TIntegerField;
    qryExcelBradescoParcialTexto: TStringField;
    dbProDiag: TMSTable;
    dbProDiagCliente: TIntegerField;
    dbProDiagDiagnostico: TIntegerField;
    dbProDiagAtendimentoHC: TIntegerField;
    dbProDiagItem: TIntegerField;
    dbProDiagPrincipal: TBooleanField;
    dbProDiagCodCid: TStringField;
    dbProDiagGrupocid: TStringField;
    dbProGlosa: TMSTable;
    dbProGlosaCliente: TIntegerField;
    dbProGlosaTipo: TStringField;
    dbProGlosaGlosaI: TStringField;
    dbProGlosaValor: TCurrencyField;
    dbProGlosaValorApresentado: TCurrencyField;
    qryExcelBradescoMaterial: TCurrencyField;
    qryExcelBradescoMaterialPago: TCurrencyField;
    qryExcelBradescoMaterialE: TCurrencyField;
    qryExcelBradescoMaterialEPago: TCurrencyField;
    qryExcelBradescoMedicamento: TCurrencyField;
    qryExcelBradescoMedicamentoPago: TCurrencyField;
    qryExcelBradescoTaxas: TCurrencyField;
    qryExcelBradescoTaxasPago: TCurrencyField;
    qryExcelBradescoExames: TCurrencyField;
    qryExcelBradescoExamesPago: TCurrencyField;
    qryExcelBradescoHonorarios: TCurrencyField;
    qryExcelBradescoHonorariosPago: TCurrencyField;
    qryExcelBradescoGases: TCurrencyField;
    qryExcelBradescoGasesPago: TCurrencyField;
    qryExcelBradescoHemo: TCurrencyField;
    qryExcelBradescoHemoPago: TCurrencyField;
    qryExcelBradescoPacotes: TCurrencyField;
    qryExcelBradescoPacotesPago: TCurrencyField;
    qryExcelBradescoFim: TStringField;
    qryExcelBradescoTratamento: TStringField;
    qryExcelBradescoTratamentoTexto: TStringField;
    qryExcelBradescoMedicoACRM: TIntegerField;
    qryExcelBradescoDiasAcompanhante: TFloatField;
    qryExcelBradescoValorAcompanhante: TCurrencyField;
    qryExcelBradescoValorAcompanhantePago: TCurrencyField;
    qryExcelBradescoValorApto: TCurrencyField;
    qryExcelBradescoValorAptoPago: TCurrencyField;
    qryExcelBradescoValorUTI: TCurrencyField;
    qryExcelBradescoValorUTIPago: TCurrencyField;
    qryExcelBradescoValorEnfermaria: TCurrencyField;
    qryExcelBradescoValorEnfermariaPago: TCurrencyField;
    qryExcelBradescoValorBercario: TCurrencyField;
    qryExcelBradescoValorBercarioPago: TCurrencyField;
    qryExcelBradescoValorDayClinic: TCurrencyField;
    qryExcelBradescoValorDayClinicPago: TCurrencyField;
    qryExcelBradescoMedicoA: TStringField;
    qryExcelBradescoMedicoAEspec: TStringField;
    qryExcelBradescoValorSemi: TCurrencyField;
    qryExcelBradescoValorSemiPago: TCurrencyField;
    qryExcelBradescoValorIsolamento: TCurrencyField;
    qryExcelBradescoValorIsolamentoPago: TCurrencyField;
    qryExcelBradescoValorDiaria: TCurrencyField;
    qryExcelBradescoValorDiariaPago: TCurrencyField;
    dbEnfermeiro: TMSTable;
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    qryAudHC1HistoricoPatologico: TMemoField;
    qryAudHC1SondaSVA: TBooleanField;
    qryAudHC1SondaSVAQtd: TIntegerField;
    qryAudHC1StomiaTraqueoD: TDateField;
    qryAudHC1StomiaGastroD: TDateField;
    qryAudHC1Respirador: TStringField;
    qryAudHC1BIPAP: TBooleanField;
    qryAudHC1BIPAPQtd: TIntegerField;
    qryAudHC1CFAP: TBooleanField;
    qryAudHC1CFAPQtd: TIntegerField;
    qryAudHC1NutriQtd: TIntegerField;
    qryAudHC1NutriFreq: TStringField;
    qryAudHC1NutriObs: TStringField;
    qryAudHC1NutriAdequado: TStringField;
    qryAudHC1OutrosAdequado: TStringField;
    qryAudHC1BombaNum: TIntegerField;
    qryAudHC1CuidadorTreino: TBooleanField;
    qryAudHC1UsuarioI: TStringField;
    qryAudHC1PacienteEndereco: TStringField;
    qryAudHC1PacienteCep: TStringField;
    qryAudHC1PacienteFone: TStringField;
    qryAudHC1CuidadorTreinoTexto: TStringField;
    dbServico: TMSTable;
    qryExcelCesp: TMSQuery;
    qryExcelCespPaciente: TIntegerField;
    qryExcelCespCodAmb: TIntegerField;
    qryExcelCespHospital: TIntegerField;
    qryExcelCespNome: TStringField;
    qryExcelCespCidade: TStringField;
    qryExcelCespQtdRNVivo: TIntegerField;
    qryExcelCespQtdRNMorto: TIntegerField;
    qryExcelCespQtdRNPrematuro: TIntegerField;
    qryExcelCespValor: TCurrencyField;
    qryExcelCespValorGlosadoM: TCurrencyField;
    qryExcelCespValorGlosadoE: TCurrencyField;
    qryExcelCespFim: TStringField;
    qryExcelCespNomePaciente: TStringField;
    qryExcelCespMatriculaPaciente: TStringField;
    qryExcelCespCid10: TStringField;
    qryExcelCespCid10Texto: TStringField;
    dbProDiagDiagnosticoTexto: TStringField;
    qryExcelCespCliente: TIntegerField;
    qryExcelCespAmbTexto: TStringField;
    qryExcelCespDataAltaTexto: TStringField;
    qryExcelCespValorPago: TCurrencyField;
    qryExcelCespTaxas: TCurrencyField;
    qryExcelCespTaxasPago: TCurrencyField;
    qryExcelCespGases: TCurrencyField;
    qryExcelCespGasesPago: TCurrencyField;
    qryExcelCespHonorarios: TCurrencyField;
    qryExcelCespHonorariosPago: TCurrencyField;
    qryExcelCespMedicamento: TCurrencyField;
    qryExcelCespMedicamentoPago: TCurrencyField;
    qryExcelCespMaterial: TCurrencyField;
    qryExcelCespMaterialPago: TCurrencyField;
    qryExcelCespDiarias: TCurrencyField;
    qryExcelCespDiariasPago: TCurrencyField;
    qryExcelCespSADT: TCurrencyField;
    qryExcelCespSADTPago: TCurrencyField;
    qryExcelCespAmbTextoAlta: TStringField;
    qryExcelCespCodAmbAlta: TIntegerField;
    qryExcelCespParto: TStringField;
    qryExcelCespDiasUTINeonatal: TFloatField;
    qryExcelCespDiasUTI: TFloatField;
    qryExcelCespRN: TStringField;
    qryExcelCespSenha: TStringField;
    qryBradescoPacote: TMSQuery;
    qryBradescoPacoteCliente: TIntegerField;
    qryBradescoPacoteIDPaciente: TStringField;
    qryBradescoPacotePaciente: TIntegerField;
    qryBradescoPacoteHospital: TIntegerField;
    qryBradescoPacoteValor: TCurrencyField;
    qryBradescoPacoteValorGlosadoM: TCurrencyField;
    qryBradescoPacoteValorGlosadoE: TCurrencyField;
    qryBradescoPacotePacote: TBooleanField;
    qryBradescoPacotePAberto: TSmallintField;
    qryBradescoPacotePExcedente: TSmallintField;
    qryBradescoPacotePAbertoMotivo: TStringField;
    qryBradescoPacoteCodAmb: TIntegerField;
    qryBradescoPacoteSenha: TStringField;
    qryBradescoPacoteHospitalNome: TStringField;
    qryBradescoPacoteDescricaoAmb: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    qryBradescoPacoteHospitalBradesco: TIntegerField;
    qryBradescoPacoteNome: TStringField;
    qryBradescoPacoteCodigoPaciente: TStringField;
    qryBradescoPacoteValorGlosado: TCurrencyField;
    qryBradescoPacoteValorPago: TCurrencyField;
    qryBradescoPacoteClienteNome: TStringField;
    qryBradescoPacoteObservacao: TMemoField;
    qryBradescoPacotePAbertoTexto: TStringField;
    qryBradescoPacotePComplicacao: TStringField;
    qryBradescoPacotePProcedimento: TStringField;
    qryBradescoPacotePOutros: TStringField;
    qryBradescoPacotePExcedenteTexto: TStringField;
    qryBradescoPacoteR: TMSQuery;
    qryBradescoPacoteRCliente: TIntegerField;
    qryBradescoPacoteRHospital: TIntegerField;
    qryBradescoPacoteRNome: TStringField;
    qryBradescoPacoteRCodBradesco: TIntegerField;
    qryBradescoPacoteRQtd: TIntegerField;
    qryBradescoPacoteRValor: TCurrencyField;
    qryBradescoPacoteRValorGlosadoE: TCurrencyField;
    qryBradescoPacoteRValorGlosadoM: TCurrencyField;
    qryBradescoPacoteRValorGlosado: TCurrencyField;
    qryBradescoPacoteRPGlosa: TFloatField;
    qryBradescoPacoteRPAplic: TFloatField;
    qryBradescoPacoteRValorPago: TCurrencyField;
    qryBradescoPH: TMSQuery;
    qryBradescoPHCliente: TIntegerField;
    qryBradescoPHHospital: TIntegerField;
    qryBradescoPHQtd: TIntegerField;
    qryBradescoPacoteRQtdPacote: TIntegerField;
    qryBradescoPacoteRQtdPacotePuro: TIntegerField;
    qryBradescoPacoteFim: TStringField;
    qryBradescoPacoteRFim: TStringField;
    dbRelEvolucaoRegiao: TIntegerField;
    dbRelEvolucaoRegiaoTexto: TStringField;
    qryEstatHospitalR: TMSQuery;
    qryEstatHospitalRCliente: TIntegerField;
    qryEstatHospitalRClienteNome: TStringField;
    qryEstatHospitalRLinha: TIntegerField;
    qryEstatHospitalRHospital: TIntegerField;
    qryEstatHospitalRNome: TStringField;
    qryEstatHospitalRPaciente: TIntegerField;
    qryEstatHospitalRDiarias: TFloatField;
    qryEstatHospitalRValor: TCurrencyField;
    qryEstatHospitalRValorPago: TCurrencyField;
    qryEstatHospitalRGlosaPorc: TFloatField;
    qryEstatHospitalRMedia: TFloatField;
    qryEstatHospitalRMediana: TFloatField;
    qryEstatHospitalRCustoPaciente: TCurrencyField;
    qryEstatHospitalRCustoDia: TCurrencyField;
    qryEstatHospitalRPaciente1: TIntegerField;
    qryEstatHospitalRNaoContabilizado: TIntegerField;
    qryEstatHospitalRNaoValorizado: TIntegerField;
    qryEstatHospitalRDiariasGlosadas: TFloatField;
    qryEstatHospitalRDiariasPagas: TFloatField;
    qryEstatHospitalRValorNaoAcordadoM: TCurrencyField;
    qryEstatHospitalRValorNaoAcordadoE: TCurrencyField;
    qryEstatHospitalRValorNaoAcordado: TCurrencyField;
    qryEstatHospitalRDiariasNaoProrroga: TFloatField;
    qryEstatHospitalRiparcial: TIntegerField;
    qryEstatHospitalRValorGlosadoM: TCurrencyField;
    qryEstatHospitalRValorGlosadoE: TCurrencyField;
    qryEstatHospitalRValorGlosado: TCurrencyField;
    qryEstatHospitalRParcial: TFloatField;
    qryEstatHospitalRComplemento: TFloatField;
    qryEstatHospitalRRegiao: TIntegerField;
    qryEstatHospitalRRegiaoTexto: TStringField;
    qryEstatHospital3R: TMSQuery;
    qryEstatHospital3RCliente: TIntegerField;
    qryEstatHospital3RPaciente: TIntegerField;
    qryEstatHospital3RDiarias: TFloatField;
    qryEstatHospital3RValor: TCurrencyField;
    qryEstatHospital3RValorGlosado: TCurrencyField;
    qryEstatHospital3RComplemento: TFloatField;
    qryEstatHospital3RParcial: TFloatField;
    qryEstatHospital3RValorNaoAcordadoE: TCurrencyField;
    qryEstatHospital3RValorNaoAcordadoM: TCurrencyField;
    qryEstatHospital3RDiariasGlosadas: TFloatField;
    qryEstatHospital3RDiariasPagas: TFloatField;
    qryEstatHospital3RValorNaoAcordado: TCurrencyField;
    qryEstatHospital3RValorPago: TCurrencyField;
    qryEstatHospital3RPaciente1: TIntegerField;
    qryEstatHospital3RCustoDia: TCurrencyField;
    qryEstatHospital3RCustoPaciente: TCurrencyField;
    qryEstatHospital3RMedia: TFloatField;
    qryEstatHospital3RGlosaPorc: TFloatField;
    qryEstatHospital3RDiariasNaoProrroga: TFloatField;
    qryEstatHospital3Riparcial: TIntegerField;
    qryRepContaD: TMSQuery;
    qryRepContaDHospital: TIntegerField;
    qryRepContaDMes: TIntegerField;
    qryRepContaDAno: TIntegerField;
    qryRepContaDPaciente: TIntegerField;
    qryRepContaDValorTot: TCurrencyField;
    qryRepContaDParcial: TIntegerField;
    qryRepContaDPacienteNome: TStringField;
    qryEstatHospitalRegiao: TIntegerField;
    qryEstatHospitalRegiaoNome: TStringField;
    qryRelEvolucaoH: TMSQuery;
    qryRelEvolucaoHHospital: TIntegerField;
    qryRelEvolucaoHMes: TIntegerField;
    qryRelEvolucaoHAno: TIntegerField;
    qryRelEvolucaoHPaciente: TIntegerField;
    qryRelEvolucaoHValor: TCurrencyField;
    qryRelEvolucaoHValorGlosaM: TCurrencyField;
    qryRelEvolucaoHValorGlosaE: TCurrencyField;
    qryRelEvolucaoHDiarias: TFloatField;
    qryRelEvolucaoHDiariasGlosadas: TFloatField;
    qryRelEvolucao: TMSQuery;
    qryRelCustoAmbD: TMSQuery;
    qryRelCustoAmbDcliente: TIntegerField;
    qryRelCustoAmbDhospital: TIntegerField;
    qryRelCustoAmbDCodAmb: TIntegerField;
    qryRelCustoAmbDPaciente: TIntegerField;
    qryRelCustoAmbDvalor: TCurrencyField;
    qryRelCustoAmbDglosam: TCurrencyField;
    qryRelCustoAmbDglosae: TCurrencyField;
    qryRelCustoAmbDNome: TStringField;
    qryRelCustoAmbDValorMedio: TCurrencyField;
    qryRelCustoAmbDPValorPago: TFloatField;
    qryRelCustoAmbDPValor: TFloatField;
    qryRelCustoAmbDGlosa: TCurrencyField;
    qryRelCustoAmbDDescricaoAmb: TStringField;
    qryRelCustoAmbDClienteNome: TStringField;
    qryRelCustoAmbDValorPago: TCurrencyField;
    qryRelCustoAmbDPacienteNome: TStringField;
    qryProdM: TMSQuery;
    qryProdMCliente: TIntegerField;
    qryProdMMedico: TIntegerField;
    qryProdMNome: TStringField;
    qryProdMPaciente: TIntegerField;
    qryProdMDiarias: TFloatField;
    qryProdMDiariasGlosadas: TFloatField;
    qryProdMValor: TCurrencyField;
    qryProdMValorGlosadoM: TCurrencyField;
    qryProdMValorGlosadoE: TCurrencyField;
    qryProdMValorNaoAcordadoM: TCurrencyField;
    qryProdMValorNaoAcordadoE: TCurrencyField;
    qryProdMValorPago: TCurrencyField;
    qryProdMValorGlosado: TCurrencyField;
    qryProdMDiariasPagas: TFloatField;
    qryProdMValorNaoAcordado: TCurrencyField;
    qryProdMPGlosaM: TFloatField;
    qryProdMValorPacote: TCurrencyField;
    qryProdM1: TMSQuery;
    qryProdM1Cliente: TIntegerField;
    qryProdM1Medico: TIntegerField;
    qryProdM1Nome: TStringField;
    qryProdM1Paciente: TIntegerField;
    qryProdM1Diarias: TFloatField;
    qryProdM1DiariasGlosadas: TFloatField;
    qryProdM1Valor: TCurrencyField;
    qryProdM1ValorGlosadoM: TCurrencyField;
    qryProdM1ValorGlosadoE: TCurrencyField;
    qryProdM1ValorNaoAcordadoM: TCurrencyField;
    qryProdM1ValorNaoAcordadoE: TCurrencyField;
    dsRelProdM: TDataSource;
    qryProdM2: TMSQuery;
    qryProdM2Cliente: TIntegerField;
    qryProdM2Medico: TIntegerField;
    qryProdM2Nome: TStringField;
    qryProdM2Valor: TCurrencyField;
    qryProdM2ValorGlosadoM: TCurrencyField;
    qryProdM2ValorGlosadoE: TCurrencyField;
    qryProdM2ValorPago: TCurrencyField;
    qryProdE: TMSQuery;
    qryProdECliente: TIntegerField;
    qryProdENome: TStringField;
    qryProdEPaciente: TIntegerField;
    qryProdEDiarias: TFloatField;
    qryProdEDiariasGlosadas: TFloatField;
    qryProdEValor: TCurrencyField;
    qryProdEValorGlosadoM: TCurrencyField;
    qryProdEValorGlosadoE: TCurrencyField;
    qryProdEValorNaoAcordadoM: TCurrencyField;
    qryProdEValorNaoAcordadoE: TCurrencyField;
    qryProdEValorPago: TCurrencyField;
    qryProdEValorGlosado: TCurrencyField;
    qryProdEDiariasPagas: TFloatField;
    qryProdEValorNaoAcordado: TCurrencyField;
    qryProdEPGlosaM: TFloatField;
    qryProdEValorPacote: TCurrencyField;
    qryProdEEnfermeiro: TIntegerField;
    qryProdE1: TMSQuery;
    qryProdE1Cliente: TIntegerField;
    qryProdE1Nome: TStringField;
    qryProdE1Paciente: TIntegerField;
    qryProdE1Diarias: TFloatField;
    qryProdE1DiariasGlosadas: TFloatField;
    qryProdE1Valor: TCurrencyField;
    qryProdE1ValorGlosadoM: TCurrencyField;
    qryProdE1ValorGlosadoE: TCurrencyField;
    qryProdE1ValorNaoAcordadoM: TCurrencyField;
    qryProdE1ValorNaoAcordadoE: TCurrencyField;
    qryProdE1Enfermeiro: TIntegerField;
    qryProdE2: TMSQuery;
    qryProdE2Cliente: TIntegerField;
    qryProdE2Nome: TStringField;
    qryProdE2Valor: TCurrencyField;
    qryProdE2ValorGlosadoM: TCurrencyField;
    qryProdE2ValorGlosadoE: TCurrencyField;
    qryProdE2ValorPago: TCurrencyField;
    qryProdE2Enfermeiro: TIntegerField;
    dsProdE: TDataSource;
    qryProdMClienteNome: TStringField;
    qryProdEClienteNome: TStringField;
    qryProdMD: TMSQuery;
    qryProdMDCliente: TIntegerField;
    qryProdMDClienteNome: TStringField;
    qryProdMDMedico: TIntegerField;
    qryProdMDNome: TStringField;
    qryProdMDPaciente: TIntegerField;
    qryProdMDValor: TCurrencyField;
    qryProdMDValorPacote: TCurrencyField;
    qryProdMDDiarias: TFloatField;
    qryProdMDDiariasGlosadas: TFloatField;
    qryProdMDValorNaoAcordadoM: TCurrencyField;
    qryProdMDPGlosaM: TFloatField;
    qryProdMDValorNaoAcordado: TCurrencyField;
    qryProdMDDiariasPagas: TFloatField;
    qryProdMDValorPago: TCurrencyField;
    qryProdMDValorGlosado: TCurrencyField;
    qryProdMDValorGlosadoM: TCurrencyField;
    qryProdMDValorGlosadoE: TCurrencyField;
    qryProdMDValorNaoAcordadoE: TCurrencyField;
    dsRelProdMD: TDataSource;
    qryProdMD2: TMSQuery;
    qryProdMD2Cliente: TIntegerField;
    qryProdMD2Medico: TIntegerField;
    qryProdMD2Nome: TStringField;
    qryProdMD2Valor: TCurrencyField;
    qryProdMD2ValorGlosadoM: TCurrencyField;
    qryProdMD2ValorGlosadoE: TCurrencyField;
    qryProdMD2ValorPago: TCurrencyField;
    qryProdMDHospital: TIntegerField;
    qryProdMD2Hospital: TIntegerField;
    qryProdED: TMSQuery;
    qryProdEDCliente: TIntegerField;
    qryProdEDClienteNome: TStringField;
    qryProdEDEnfermeiro: TIntegerField;
    qryProdEDNome: TStringField;
    qryProdEDPaciente: TIntegerField;
    qryProdEDValor: TCurrencyField;
    qryProdEDValorPacote: TCurrencyField;
    qryProdEDDiarias: TFloatField;
    qryProdEDDiariasGlosadas: TFloatField;
    qryProdEDValorGlosadoE: TCurrencyField;
    qryProdEDPGlosaM: TFloatField;
    qryProdEDValorGlosadoM: TCurrencyField;
    qryProdEDValorNaoAcordado: TCurrencyField;
    qryProdEDDiariasPagas: TFloatField;
    qryProdEDValorPago: TCurrencyField;
    qryProdEDValorGlosado: TCurrencyField;
    qryProdEDValorNaoAcordadoE: TCurrencyField;
    qryProdEDValorNaoAcordadoM: TCurrencyField;
    dsProdED: TDataSource;
    qryProdED2: TMSQuery;
    qryProdED2Cliente: TIntegerField;
    qryProdED2Nome: TStringField;
    qryProdED2Valor: TCurrencyField;
    qryProdED2ValorGlosadoM: TCurrencyField;
    qryProdED2ValorGlosadoE: TCurrencyField;
    qryProdED2ValorPago: TCurrencyField;
    qryProdED2Enfermeiro: TIntegerField;
    qryProdEDHospital: TIntegerField;
    qryProdED2Hospital: TIntegerField;
    qryRepContaDHospitalNome: TStringField;
    qryRepContaDRegiao: TIntegerField;
    qryRepContaDRegiaoNome: TStringField;
    qryBradescoPacotePagoPacoteSim: TStringField;
    qryBradescoGlosa: TMSQuery;
    qryBradescoPacotePagoPacoteNao: TStringField;
    qryBradescoPacoteValorHM: TFloatField;
    qryBradescoPacoteValorPT: TFloatField;
    qryBradescoPacotePMaterialTexto: TStringField;
    qryBradescoPacotePMaterial: TStringField;
    qryBradescoGlosaCliente: TIntegerField;
    qryBradescoGlosaTipo: TStringField;
    qryBradescoGlosaGlosaI: TStringField;
    qryBradescoGlosaValor: TCurrencyField;
    qryBradescoGlosaValorApresentado: TCurrencyField;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorCPF: TStringField;
    dbAuditorRG: TStringField;
    dbAuditorRGEmissor: TStringField;
    dbAuditorEmail: TStringField;
    dbAuditorClienteTipo: TStringField;
    dbAuditorObservacao: TMemoField;
    dbAuditorUsuario: TStringField;
    dbRelEvolucaoPaciente7: TIntegerField;
    dbRelEvolucaoValor7: TCurrencyField;
    dbRelEvolucaoGlosa7: TCurrencyField;
    dbRelEvolucaoDiaria7: TFloatField;
    dbRelEvolucaoPaciente8: TIntegerField;
    dbRelEvolucaoValor8: TCurrencyField;
    dbRelEvolucaoGlosa8: TCurrencyField;
    dbRelEvolucaoDiaria8: TFloatField;
    dbRelEvolucaoPaciente9: TIntegerField;
    dbRelEvolucaoValor9: TCurrencyField;
    dbRelEvolucaoGlosa9: TCurrencyField;
    dbRelEvolucaoDiaria9: TFloatField;
    dbRelEvolucaoPaciente10: TIntegerField;
    dbRelEvolucaoValor10: TCurrencyField;
    dbRelEvolucaoGlosa10: TCurrencyField;
    dbRelEvolucaoDiaria10: TFloatField;
    dbRelEvolucaoPaciente11: TIntegerField;
    dbRelEvolucaoValor11: TCurrencyField;
    dbRelEvolucaoGlosa11: TCurrencyField;
    dbRelEvolucaoDiaria11: TFloatField;
    dbRelEvolucaoAutorizado7: TCurrencyField;
    dbRelEvolucaoAutorizado8: TCurrencyField;
    dbRelEvolucaoAutorizado9: TCurrencyField;
    dbRelEvolucaoAutorizado10: TCurrencyField;
    dbRelEvolucaoAutorizado11: TCurrencyField;
    dbRelEvolucaoPGlosa7: TFloatField;
    dbRelEvolucaoPGlosa8: TFloatField;
    dbRelEvolucaoPGlosa9: TFloatField;
    dbRelEvolucaoPGlosa10: TFloatField;
    dbRelEvolucaoPGlosa11: TFloatField;
    dbRelEvolucaoCustoP7: TCurrencyField;
    dbRelEvolucaoCustoP8: TCurrencyField;
    dbRelEvolucaoCustoP9: TCurrencyField;
    dbRelEvolucaoCustoP10: TCurrencyField;
    dbRelEvolucaoCustoP11: TCurrencyField;
    dbRelEvolucaoCustoD8: TCurrencyField;
    dbRelEvolucaoCustoD9: TCurrencyField;
    dbRelEvolucaoCustoD10: TCurrencyField;
    dbRelEvolucaoCustoD11: TCurrencyField;
    dbRelEvolucaoMediaP7: TFloatField;
    dbRelEvolucaoMediaP8: TFloatField;
    dbRelEvolucaoMediaP9: TFloatField;
    dbRelEvolucaoMediaP10: TFloatField;
    dbRelEvolucaoMediaP11: TFloatField;
    dbRelEvolucaoCustoD7: TCurrencyField;
    dbServicoServico: TStringField;
    dbServicoNome: TStringField;
    dbServicoValorizado: TBooleanField;
    qryExcelBradescoCodBradesco: TIntegerField;
    dbClienteDataInicio: TDateTimeField;
    dbClienteDataFim: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbAuditorNascimento: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbItemHIDiagnosticoDataAuditoria: TDateTimeField;
    dbProDataFechamento: TDateTimeField;
    dbProDataInternacao: TDateTimeField;
    dbProDataAlta: TDateTimeField;
    dbProDataInicioP: TDateTimeField;
    dbProDataInclusao: TDateTimeField;
    dbProDataExclusao: TDateTimeField;
    dbProDataAlteracao: TDateTimeField;
    dbProDataSite: TDateTimeField;
    dbProDataFimP: TDateTimeField;
    dbProDiagDataAuditoria: TDateTimeField;
    dbPaciente: TMSQuery;
    dbPacientePaciente: TIntegerField;
    dbPacienteNome: TStringField;
    dbPacienteEndereco: TStringField;
    dbPacienteBairro: TStringField;
    dbPacienteCidade: TStringField;
    dbPacienteUF: TStringField;
    dbPacienteCep: TStringField;
    dbPacienteFone1: TStringField;
    dbPacienteFone2: TStringField;
    dbPacienteFax: TStringField;
    dbPacienteDocumento: TStringField;
    dbPacienteContato: TStringField;
    dbPacienteAnoNascimento: TSmallintField;
    dbPacienteDataNascimento: TDateTimeField;
    dbPacienteRegiao: TIntegerField;
    dbPacienteCliente: TIntegerField;
    dbPacienteIDPaciente: TStringField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateTimeField;
    dbPacienteSexo: TStringField;
    rvRelCustoTipoInternacao: TRvDataSetConnection;
    rvRelQtdDiarias: TRvDataSetConnection;
    rvRelQtdDiarias1: TRvDataSetConnection;
    rvRelCustoAmb: TRvDataSetConnection;
    rvRelCustoAmbD: TRvDataSetConnection;
    rvRelCustoCid: TRvDataSetConnection;
    rvCustoCid: TRvDataSetConnection;
    rvBradescoPacote: TRvDataSetConnection;
    rvBradescoPacoteR: TRvDataSetConnection;
    rvAudHC1: TRvDataSetConnection;
    rvRelFun: TRvDataSetConnection;
    rvDistribuicaoHospital: TRvDataSetConnection;
    rvGrafico: TRvDataSetConnection;
    rvEstatPaciente: TRvDataSetConnection;
    rvEstatHospitalR: TRvDataSetConnection;
    rvEstatHospital3R: TRvDataSetConnection;
    rvEstatHospital: TRvDataSetConnection;
    rvProprietario: TRvDataSetConnection;
    rvEstatPacienteD: TRvDataSetConnection;
    RrvRelCustoTipoInternacao2: TRvDataSetConnection;
    rvDistribuicaoCC: TRvDataSetConnection;
    rvGeral: TRvDataSetConnection;
    rvRepContaD: TRvDataSetConnection;
    rvGeral1: TRvDataSetConnection;
    rvSumarioVisita: TRvDataSetConnection;
    rvControlP: TRvDataSetConnection;
    rvRestricao: TRvDataSetConnection;
    rvAnalisePS: TRvDataSetConnection;
    rvAnalisePSTot: TRvDataSetConnection;
    rvSenhaDup: TRvDataSetConnection;
    rvControlPDemo: TRvDataSetConnection;
    rvHI: TRvDataSetConnection;
    rvProdM: TRvDataSetConnection;
    rvRetorno: TRvDataSetConnection;
    rvProdE: TRvDataSetConnection;
    rvProdMD: TRvDataSetConnection;
    rvProdED: TRvDataSetConnection;
    qryEstatPacienteDDataFechamento: TDateTimeField;
    qryEstatPacienteDDataInternacao: TDateTimeField;
    qryEstatPacienteDDataAlta: TDateTimeField;
    qryEstatPacienteDDataNascimento: TDateTimeField;
    qryEstatPacienteDDataInicioP: TDateTimeField;
    qryEstatPacienteD2DataInicioP: TDateTimeField;
    qryEstatHospitalParcial: TIntegerField;
    qryParcialDataInicioP: TDateTimeField;
    qryEstatHospital4DiariasCalculadas: TIntegerField;
    qryEstatHospitalComplemento: TIntegerField;
    qryEstatHospital3: TMSQuery;
    rvEstatHospital3: TRvDataSetConnection;
    qryEstatHospital3DiariasPagas: TFloatField;
    qryEstatHospital3ValorNaoAcordado: TCurrencyField;
    qryEstatHospital3ValorPago: TCurrencyField;
    qryEstatHospital3Paciente1: TIntegerField;
    qryEstatHospital3CustoDia: TCurrencyField;
    qryEstatHospital3CustoPaciente: TCurrencyField;
    qryEstatHospital3Media: TFloatField;
    qryEstatHospital3GlosaPorc: TFloatField;
    qryEstatHospital3DiariasNaoProrroga: TFloatField;
    qryEstatHospital3iparcial: TIntegerField;
    qryEstatHospital3Cliente: TIntegerField;
    qryEstatHospital3Paciente: TIntegerField;
    qryEstatHospital3Diarias: TFloatField;
    qryEstatHospital3DiariasGlosadas: TFloatField;
    qryEstatHospital3Valor: TCurrencyField;
    qryEstatHospital3ValorNaoAcordadoM: TCurrencyField;
    qryEstatHospital3ValorNaoAcordadoE: TCurrencyField;
    qryEstatHospital3ValorGlosado: TCurrencyField;
    qryEstatHospital3Parcial: TIntegerField;
    qryEstatHospital3Complemento: TIntegerField;
    qryExcelBradescoDataAlta: TDateTimeField;
    qryExcelBradescoDataInicioP: TDateTimeField;
    qryExcelBradescoDataInternacao: TDateTimeField;
    qryExcelCespDataInternacao: TDateTimeField;
    qryExcelCespDataAlta: TDateTimeField;
    qryAudHC1DataAuditoria: TDateTimeField;
    qryAudHC1DataUltimaVisita: TDateTimeField;
    qryAudHC1DataUltimaInternacao: TDateTimeField;
    qryAudHC1DataInclusao: TDateTimeField;
    qryAudHC1DataAlteracao: TDateTimeField;
    qryAudHC1DataUltimaInternacaoC: TStringField;
    qryAudHC1DataInternacao: TDateTimeField;
    qryAudHC1DataAlta: TDateTimeField;
    qryAudHC1DataUltimaVisita_1: TDateTimeField;
    qryAudHC1DataInclusao_1: TDateTimeField;
    qryAudHC1PacienteDataNascimento: TDateField;
    qryRelEvolucaoHComplemento: TIntegerField;
    rvRelEvolucao: TRvDataSetConnection;
    qryGraficoComplemento: TIntegerField;
    qryRelEvolucaoMes: TSmallintField;
    qryRelEvolucaoAno: TSmallintField;
    qryRelEvolucaoPaciente: TIntegerField;
    qryRelEvolucaoComplemento: TIntegerField;
    qryRelEvolucaoValor: TCurrencyField;
    qryRelEvolucaoValorGlosaM: TCurrencyField;
    qryRelEvolucaoValorGlosaE: TCurrencyField;
    qryRelEvolucaoDiarias: TFloatField;
    qryRelEvolucaoDiariasGlosadas: TFloatField;
    dbRelEvolucaoPaciente12: TIntegerField;
    dbRelEvolucaoValor12: TCurrencyField;
    dbRelEvolucaoGlosa12: TCurrencyField;
    dbRelEvolucaoDiaria12: TFloatField;
    dbRelEvolucaoAutorizado12: TCurrencyField;
    dbRelEvolucaoPGlosa12: TFloatField;
    dbRelEvolucaoCustoP12: TCurrencyField;
    dbRelEvolucaoCustoD12: TCurrencyField;
    dbRelEvolucaoMediaP12: TFloatField;
    dbRelEvolucaoDiaria1: TFloatField;
    qryCompMesComplemento: TIntegerField;
    qryGeral1paciente1: TIntegerField;
    qryGeral1paciente2: TIntegerField;
    qryGeralpaciente1: TIntegerField;
    qryGeralpaciente3: TIntegerField;
    qryRepContaDDataInternacao: TDateTimeField;
    qryRepContaDDataAlta: TDateTimeField;
    qryRelCustoCIDCodCid: TStringField;
    qryBradescoPacoteDataInternacao: TDateTimeField;
    qryBradescoPacoteDataAlta: TDateTimeField;
    qryBradescoPacoteRPAberto: TIntegerField;
    qryBradescoPacoteRPExcedente: TIntegerField;
    qryProdMPacote: TIntegerField;
    qryProdEPacote: TIntegerField;
    qryProdE1Pacote: TIntegerField;
    qryProdMDPacote: TIntegerField;
    qryProdEDPacote: TIntegerField;
    qryProdM1Pacote: TIntegerField;
    qryRelPacienteHospital: TMSQuery;
    rvPacienteHospital: TRvDataSetConnection;
    qryRelPacienteHospitalPaciente: TIntegerField;
    qryRelPacienteHospitalqtd: TIntegerField;
    qryRelPacienteHospitalNome: TStringField;
    rvAtendimentoHI: TRvDataSetConnection;
    dbAtendimentoHI: TMSQuery;
    dbAtendimentoHICliente: TIntegerField;
    dbAtendimentoHIPaciente: TIntegerField;
    dbAtendimentoHIHospital: TIntegerField;
    dbAtendimentoHIDataInternacao: TDateTimeField;
    dbAtendimentoHIDataAlta: TDateTimeField;
    dbAtendimentoHIValor: TCurrencyField;
    dbAtendimentoHIValorGlosadoM: TCurrencyField;
    dbAtendimentoHIValorGlosadoE: TCurrencyField;
    dbAtendimentoHIMesCompetencia: TSmallintField;
    dbAtendimentoHIAnoCompetencia: TSmallintField;
    dbAtendimentoHIValorPago: TCurrencyField;
    dbAtendimentoHIClienteNome: TStringField;
    dbAtendimentoHIHospitalNome: TStringField;
    dsRelPacienteHospital: TDataSource;
    qrySumarioVisitavisitas: TIntegerField;
    qrySumarioVisitaparcial: TIntegerField;
    qrySumarioVisita1parcial1: TIntegerField;
    qryAnalisePSConsultas: TIntegerField;
    qryAnalisePSTotConsultas: TIntegerField;
    qryRetornoDataFechamento: TDateTimeField;
    qryRetornoDataInternacao: TDateTimeField;
    qryRetornoDataAlta: TDateTimeField;
    qryHIDataInternacao: TDateTimeField;
    qryHIDataAlta: TDateTimeField;
    dsSenhaDup: TDataSource;
    qryControlPParcial: TIntegerField;
    qryEvolucaoPS: TMSQuery;
    qryEvolucaoPSHospital: TIntegerField;
    qryEvolucaoPSMes: TIntegerField;
    qryEvolucaoPSAno: TIntegerField;
    qryEvolucaoPSValor: TCurrencyField;
    qryEvolucaoPSValorGlosa: TCurrencyField;
    rvEvolucaoPS: TRvDataSetConnection;
    qryEvolucaoPSPaciente: TIntegerField;
    qryEstatPacienteDIDPaciente_1: TStringField;
    qryEstatHospital4DiariasUTI: TFloatField;
    qryEstatHospital3DiariasUTI: TFloatField;
    qryEstatHospitalDiariasUTI: TFloatField;
    qryAnalisePSQtd: TIntegerField;
    qryDemoPS: TMSQuery;
    rvDemoPS: TRvDataSetConnection;
    qryDemoPSAtendimentoPS: TIntegerField;
    qryDemoPSSequencial: TIntegerField;
    qryDemoPSTipo: TStringField;
    qryDemoPSCliente: TIntegerField;
    qryDemoPSHospital: TIntegerField;
    qryDemoPSMedico: TIntegerField;
    qryDemoPSEnfermeiro: TIntegerField;
    qryDemoPSDataFechamento: TDateTimeField;
    qryDemoPSMesCompetencia: TSmallintField;
    qryDemoPSAnoCompetencia: TSmallintField;
    qryDemoPSQtdAtendimento: TSmallintField;
    qryDemoPSValor: TCurrencyField;
    qryDemoPSValorGlosado: TCurrencyField;
    qryDemoPSValorNaoAcordado: TCurrencyField;
    qryDemoPSPosAnalise: TBooleanField;
    qryDemoPSNome: TStringField;
    qryDemoPSRegiao: TIntegerField;
    qryDemoPSValorPago: TCurrencyField;
    qryDemoPSPorcGlosa: TFloatField;
    qryDemoPSCustoConsulta: TCurrencyField;
    qryDemoPSClienteNome: TStringField;
    qryDemoPSMedicoNome: TStringField;
    qryDemoPSEnfermeiroNome: TStringField;
    qryAudHC1Enfermeiro: TIntegerField;
    qryAudHC1EnfermeiroNome: TStringField;
    qryAudHC1Coren: TStringField;
    qryGraficoParcial: TIntegerField;
    qryExcelBradescoComplementoF: TBooleanField;
    qryExcelBradescoCompFornecedor: TStringField;
    qryEstatHospitalC: TMSQuery;
    qryEstatHospitalCLinha: TIntegerField;
    qryEstatHospitalCHospital: TIntegerField;
    qryEstatHospitalCNome: TStringField;
    qryEstatHospitalCPaciente: TIntegerField;
    qryEstatHospitalCDiarias: TFloatField;
    qryEstatHospitalCDiariasUTI: TFloatField;
    qryEstatHospitalCValor: TCurrencyField;
    qryEstatHospitalCValorPago: TCurrencyField;
    qryEstatHospitalCGlosaPorc: TFloatField;
    qryEstatHospitalCMedia: TFloatField;
    qryEstatHospitalCMediana: TFloatField;
    qryEstatHospitalCCustoPaciente: TCurrencyField;
    qryEstatHospitalCCustoDia: TCurrencyField;
    qryEstatHospitalCPaciente1: TIntegerField;
    qryEstatHospitalCDiariasGlosadas: TFloatField;
    qryEstatHospitalCDiariasPagas: TFloatField;
    qryEstatHospitalCValorNaoAcordadoM: TCurrencyField;
    qryEstatHospitalCValorNaoAcordadoE: TCurrencyField;
    qryEstatHospitalCValorNaoAcordado: TCurrencyField;
    qryEstatHospitalCDiariasNaoProrroga: TFloatField;
    qryEstatHospitalCiparcial: TIntegerField;
    qryEstatHospitalCValorGlosadoM: TCurrencyField;
    qryEstatHospitalCValorGlosadoE: TCurrencyField;
    qryEstatHospitalCValorGlosado: TCurrencyField;
    qryEstatHospitalCParcial: TIntegerField;
    qryEstatHospitalCComplemento: TIntegerField;
    rvEstatHospitalC: TRvDataSetConnection;
    qryEstatHospitalC4: TMSQuery;
    qryEstatHospitalC4Hospital: TIntegerField;
    qryEstatHospitalC4Diarias: TFloatField;
    qryEstatHospitalC4DiariasCalculadas: TIntegerField;
    qryEstatHospitalC4DiariasUTI: TFloatField;
    qryParcialC: TMSQuery;
    qryParcialCHospital: TIntegerField;
    qryParcialCPaciente: TIntegerField;
    qryParcialCDataInicioP: TDateTimeField;
    qryEstatHospitalC3: TMSQuery;
    qryEstatHospitalC3DiariasPagas: TFloatField;
    qryEstatHospitalC3ValorNaoAcordado: TCurrencyField;
    qryEstatHospitalC3ValorPago: TCurrencyField;
    qryEstatHospitalC3Paciente1: TIntegerField;
    qryEstatHospitalC3CustoDia: TCurrencyField;
    qryEstatHospitalC3CustoPaciente: TCurrencyField;
    qryEstatHospitalC3Media: TFloatField;
    qryEstatHospitalC3GlosaPorc: TFloatField;
    qryEstatHospitalC3DiariasNaoProrroga: TFloatField;
    qryEstatHospitalC3iparcial: TIntegerField;
    qryEstatHospitalC3Paciente: TIntegerField;
    qryEstatHospitalC3Diarias: TFloatField;
    qryEstatHospitalC3DiariasGlosadas: TFloatField;
    qryEstatHospitalC3Valor: TCurrencyField;
    qryEstatHospitalC3ValorNaoAcordadoM: TCurrencyField;
    qryEstatHospitalC3ValorNaoAcordadoE: TCurrencyField;
    qryEstatHospitalC3ValorGlosado: TCurrencyField;
    qryEstatHospitalC3Parcial: TIntegerField;
    qryEstatHospitalC3Complemento: TIntegerField;
    qryEstatHospitalC3DiariasUTI: TFloatField;
    rvEstatHospitalC3: TRvDataSetConnection;
    dbProdFun: TMSQuery;
    dbAtendimentoHIUsuarioI: TStringField;
    dbAtendimentoHIDataInclusao: TDateTimeField;
    dbAtendimentoHIUsuario: TStringField;
    dbAtendimentoHIDataAlteracao: TDateTimeField;
    dbProdFunUsuario: TStringField;
    dbProdFunD1: TIntegerField;
    dbProdFunD2: TIntegerField;
    dbProdFunD3: TIntegerField;
    dbProdFunD4: TIntegerField;
    dbProdFunD5: TIntegerField;
    dbProdFunD6: TIntegerField;
    dbProdFunD7: TIntegerField;
    dbProdFunD8: TIntegerField;
    dbProdFunD9: TIntegerField;
    dbProdFunD10: TIntegerField;
    dbProdFunD11: TIntegerField;
    dbProdFunD12: TIntegerField;
    dbProdFunD13: TIntegerField;
    dbProdFunD14: TIntegerField;
    dbProdFunD15: TIntegerField;
    dbProdFunD16: TIntegerField;
    dbProdFunD17: TIntegerField;
    dbProdFunD18: TIntegerField;
    dbProdFunD19: TIntegerField;
    dbProdFunD20: TIntegerField;
    dbProdFunD21: TIntegerField;
    dbProdFunD22: TIntegerField;
    dbProdFunD23: TIntegerField;
    dbProdFunD24: TIntegerField;
    dbProdFunD25: TIntegerField;
    dbProdFunD26: TIntegerField;
    dbProdFunD27: TIntegerField;
    dbProdFunD28: TIntegerField;
    dbProdFunD29: TIntegerField;
    dbProdFunD30: TIntegerField;
    dbProdFunD31: TIntegerField;
    dbProdFunMedia1: TFloatField;
    dbProdFunMedia2: TFloatField;
    dbProdFunTotal: TIntegerField;
    dbAtendimentoPS: TMSQuery;
    dbAtendimentoPSAtendimentoPS: TIntegerField;
    dbAtendimentoPSSequencial: TIntegerField;
    dbAtendimentoPSTipo: TStringField;
    dbAtendimentoPSUsuario: TStringField;
    dbAtendimentoPSDataInclusao: TDateTimeField;
    dbAtendimentoPSDataAlteracao: TDateTimeField;
    dbAtendimentoPSUsuarioI: TStringField;
    qryEstatHospitalGlosaPorcM: TFloatField;
    qryEstatHospitalGlosaPorcE: TFloatField;
    qryEstatHospital3GlosaPorcM: TFloatField;
    qryEstatHospital3GlosaPorcE: TFloatField;
    qryEstatHospital3ValorGlosadoM: TCurrencyField;
    qryEstatHospital3ValorGlosadoE: TCurrencyField;
    qryEstatHospitalTipoMedia: TIntegerField;
    qryEstatHospitalValorDiaria: TCurrencyField;
    qryEstatHospitalValorTaxa: TCurrencyField;
    qryEstatHospitalValorMaterial: TCurrencyField;
    qryEstatHospitalValorMedicamento: TCurrencyField;
    qryEstatHospitalValorGases: TCurrencyField;
    qryEstatHospitalValorSADT: TCurrencyField;
    qryEstatHospitalValorPacote: TCurrencyField;
    qryEstatHospitalPorcDiaria: TFloatField;
    qryEstatHospitalPorcTaxa: TFloatField;
    qryEstatHospitalPorcMaterial: TFloatField;
    qryEstatHospitalPorcMedicamento: TFloatField;
    qryEstatHospitalPorcGases: TFloatField;
    qryEstatHospitalPorcSADT: TFloatField;
    qryEstatHospitalPorcPacote: TFloatField;
    qryEstatHospital3ValorDiaria: TCurrencyField;
    qryEstatHospital3ValorTaxa: TCurrencyField;
    qryEstatHospital3ValorMaterial: TCurrencyField;
    qryEstatHospital3ValorMedicamento: TCurrencyField;
    qryEstatHospital3ValorGases: TCurrencyField;
    qryEstatHospital3ValorSADT: TCurrencyField;
    qryEstatHospital3ValorPacote: TCurrencyField;
    qryEstatHospital3PorcDiaria: TFloatField;
    qryEstatHospital3PorcTaxa: TFloatField;
    qryEstatHospital3PorcMaterial: TFloatField;
    qryEstatHospital3PorcMedicamento: TFloatField;
    qryEstatHospital3PorcGases: TFloatField;
    qryEstatHospital3PorcSADT: TFloatField;
    qryEstatHospital3PorcPacote: TFloatField;
    qryEstatHospitalClienteLonga: TIntegerField;
    qryEstatHospital3ClienteLonga: TIntegerField;
    qryEstatHospital2: TMSQuery;
    qryEstatHospital2Cliente: TIntegerField;
    qryEstatHospital2Hospital: TIntegerField;
    qryEstatHospital2Internacao: TStringField;
    qryEstatHospital2Paciente: TIntegerField;
    qryEstatHospital2Diarias: TFloatField;
    qryEstatHospital2DiariasUTI: TFloatField;
    qryEstatHospital2DiariasGlosadas: TFloatField;
    qryEstatHospitalDiariaCirurgica: TFloatField;
    qryEstatHospitalDiariaClinica: TFloatField;
    qryEstatHospital1: TMSQuery;
    qryEstatHospital1Cliente: TIntegerField;
    qryEstatHospital1Hospital: TIntegerField;
    qryEstatHospital1Paciente: TIntegerField;
    qryEstatHospitalDiariaLonga: TFloatField;
    qryEstatHospitalDiariaCurta: TFloatField;
    qryEstatHospitalMediaUTI: TFloatField;
    qryEstatHospitalMediaCurta: TFloatField;
    qryEstatHospitalMediaLonga: TFloatField;
    qryEstatHospitalMediaCirurgica: TFloatField;
    qryEstatHospitalMediaClinica: TFloatField;
    qryEstatHospital3DiariaCirurgica: TFloatField;
    qryEstatHospital3DiariaClinica: TFloatField;
    qryEstatHospital3DiariaLonga: TFloatField;
    qryEstatHospital3DiariaCurta: TFloatField;
    qryEstatHospital3MediaUTI: TFloatField;
    qryEstatHospital3MediaCurta: TFloatField;
    qryEstatHospital3MediaLonga: TFloatField;
    qryEstatHospital3MediaCirurgica: TFloatField;
    qryEstatHospital3MediaClinica: TFloatField;
    qryEstatHospitalPacienteLonga: TIntegerField;
    qryEstatHospitalPacienteCurta: TIntegerField;
    qryEstatHospitalPacienteCirurgica: TIntegerField;
    qryEstatHospitalPacienteClinica: TIntegerField;
    qryEstatHospital3PacienteLonga: TIntegerField;
    qryEstatHospital3PacienteCurta: TIntegerField;
    qryEstatHospital3PacienteCirurgica: TIntegerField;
    qryEstatHospital3PacienteClinica: TIntegerField;
    qryParcial2: TMSQuery;
    qryParcial2Cliente: TIntegerField;
    qryParcial2Hospital: TIntegerField;
    qryParcial2Internacao: TStringField;
    qryParcial2Paciente: TIntegerField;
    qryParcial2DataInicioP: TDateTimeField;
    qryParcial1: TMSQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    qryEstatHospital2Parcial: TIntegerField;
    qryEstatHospital2Complemento: TIntegerField;
    qryEstatHospital2PacienteC: TIntegerField;
    qryEstatHospital2PacienteR: TIntegerField;
    qryEstatHospital1Parcial: TIntegerField;
    qryEstatHospital1Complemento: TIntegerField;
    qryParcialMensal: TMSQuery;
    qryParcialMensalAnoCompetencia: TSmallintField;
    qryParcialMensalMesCompetencia: TSmallintField;
    qryParcialMensalHospital: TIntegerField;
    qryParcialMensalPaciente: TIntegerField;
    qryParcialMensalDataInicioP: TDateTimeField;
    qryRelEvolucaoHParcial: TIntegerField;
    qryRelEvolucaoParcial: TIntegerField;
    dbIndicador: TMSTable;
    rvIndicador: TRvDataSetConnection;
    dbIndicadorCliente: TStringField;
    dbIndicadorHospitalNome: TStringField;
    dbIndicadorMes: TIntegerField;
    dbIndicadorContas: TIntegerField;
    dbIndicadorTMI: TFloatField;
    dbIndicadorPGlosa: TFloatField;
    dbIndicadorGlosa: TCurrencyField;
    dbIndicadorDiarias: TFloatField;
    dbIndicadorAno: TIntegerField;
    dbIndicadorCMP: TCurrencyField;
    dbIndicadorValor: TCurrencyField;
    dbIndicadorMesTexto: TStringField;
    dbIndicadorH: TMSQuery;
    dbIndicadorHHospitalNome: TStringField;
    dbIndicadorHContas: TIntegerField;
    dbIndicadorHDiarias: TFloatField;
    dbIndicadorHValor: TCurrencyField;
    dbIndicadorHGlosa: TCurrencyField;
    dbIndicadorT: TMSQuery;
    dbIndicadorTContas: TIntegerField;
    dbIndicadorTDiarias: TFloatField;
    dbIndicadorTValor: TCurrencyField;
    dbIndicadorTGlosa: TCurrencyField;
    rvIndicadorT: TRvDataSetConnection;
    dbIndicadorHTMI: TFloatField;
    dbIndicadorHCMP: TFloatField;
    dbIndicadorHPGlosa: TFloatField;
    dbIndicadorTTMI: TFloatField;
    dbIndicadorTCMP: TFloatField;
    dbIndicadorTPGlosa: TFloatField;
    dbIndicadorHCliente: TStringField;
    dbIndicadorContasH: TIntegerField;
    dbIndicadorTMIH: TFloatField;
    dbIndicadorPGlosaH: TFloatField;
    dbIndicadorCMPH: TCurrencyField;
    qryEstatHospitalCMPDiaria: TCurrencyField;
    qryEstatHospitalCMPTaxa: TCurrencyField;
    qryEstatHospitalCMPMaterial: TCurrencyField;
    qryEstatHospitalCMPMedicamento: TCurrencyField;
    qryEstatHospitalCMPSADT: TCurrencyField;
    qryEstatHospital3CMPDiaria: TCurrencyField;
    qryEstatHospital3CMPTaxa: TCurrencyField;
    qryEstatHospital3CMPMaterial: TCurrencyField;
    qryEstatHospital3CMPMedicamento: TCurrencyField;
    qryEstatHospital3CMPSADT: TCurrencyField;
    dbItemHIDiagnosticoAtendimentoHI: TLargeintField;
    dbProAtendimentoHI: TLargeintField;
    dbProDiagAtendimentoHI: TLargeintField;
    dbProGlosaAtendimentoHI: TLargeintField;
    qryEstatPacienteDAtendimentoHI: TLargeintField;
    qryExcelBradescoAtendimentoHI: TLargeintField;
    qryExcelCespAtendimentoHI: TLargeintField;
    qryHIAtendimentoHI: TLargeintField;
    dbAtendimentoHIAtendimentoHI: TLargeintField;
    qryRetornoAtendimentoHI: TLargeintField;
    qryBradescoPacoteAtendimentoHI: TLargeintField;
    qryBradescoGlosaAtendimentoHI: TLargeintField;
    qryExcelBradescoAtendHITexto: TStringField;
    qryExcelCespAtendHITexto: TStringField;
    qryBradescoPacoteAtendHITexto: TStringField;
    qryEstatPacienteB: TMSQuery;
    qryEstatPacienteBSenha: TStringField;
    qryEstatPacienteBCodigoPacienteok: TStringField;
    qryEstatPacienteBPaciente: TIntegerField;
    qryEstatPacienteBNome: TStringField;
    qryEstatPacienteBHospital: TIntegerField;
    qryEstatPacienteBHospitalNome: TStringField;
    qryEstatPacienteBCodBradesco: TStringField;
    qryEstatPacienteBDataInternacao: TDateTimeField;
    qryEstatPacienteBDataAlta: TDateTimeField;
    qryEstatPacienteBDiarias: TFloatField;
    qryEstatPacienteBDiasUTI: TFloatField;
    qryEstatPacienteBDiariasGlosadas: TFloatField;
    qryEstatPacienteBDiariasCalculadas: TIntegerField;
    qryEstatPacienteBDiariasNaoProrroga: TFloatField;
    qryEstatPacienteBValor: TCurrencyField;
    qryEstatPacienteBValorGlosadoM: TCurrencyField;
    qryEstatPacienteBValorGlosadoE: TCurrencyField;
    qryEstatPacienteBValorGlosado: TCurrencyField;
    qryEstatPacienteBValorPago: TCurrencyField;
    qryEstatPacienteBCodAmb: TIntegerField;
    qryEstatPacienteBDescricaoAmb: TStringField;
    qryEstatPacienteBApto: TFloatField;
    qryEstatPacienteBEnfermaria: TFloatField;
    qryEstatPacienteBSemi: TFloatField;
    qryEstatPacienteBBercario: TFloatField;
    qryEstatPacienteBDayClinicQtd: TFloatField;
    qryEstatPacienteBIsolamento: TFloatField;
    qryEstatPacienteBDiariaEnf: TFloatField;
    qryEstatPacienteBDiariaApto: TFloatField;
    qryEstatPacienteBJustBradesco: TStringField;
    qryEstatPacienteBAtendimentoHI: TLargeintField;
    qryEstatPacienteBCodigoPaciente: TStringField;
    qryEstatPacienteBFim: TStringField;
    qryEstatPacienteBAuditoria: TStringField;
    qryEstatPacienteBPago: TStringField;
    qryEstatPacienteBCompetencia: TStringField;
    qryEstatPacienteBMesCompetencia: TSmallintField;
    qryEstatPacienteBAnoCompetencia: TSmallintField;
    qryEstatPacienteBNABradesco: TStringField;
    qryEstatPacienteBSituacao: TStringField;
    dbIndicadorContasHM: TFloatField;
    dbIndicadorTContasM: TFloatField;
    qryRelFunD1: TIntegerField;
    qryRelFunNomeUsuario: TStringField;
    qryRelFunHIUsuarioi: TStringField;
    qryRelFunHIqtd: TIntegerField;
    qryRelFunPSUsuarioi: TStringField;
    qryRelFunPSqtd: TIntegerField;
    qryEstatPacienteBRamoCod: TStringField;
    qryEstatPacienteBValorAuditoria: TCurrencyField;
    qryEstatPacienteBPacote: TStringField;
    qryEstatPacienteBNaoLocalizada: TStringField;
    qryEstatPacienteBDayClinic: TStringField;
    qryEstatPacienteBProcDispAud: TStringField;
    qryEstatPacienteBDuplicidade: TStringField;
    qryEstatHospital3DiariasLongaCalculada: TIntegerField;
    qryEstatHospital1DiariasLongaCalculada: TIntegerField;
    dbGraficoAux: TMSQuery;
    dbGraficoAuxRegiao: TIntegerField;
    dbGraficoAuxNC: TSmallintField;
    dbGraficoAuxHospital: TIntegerField;
    dbGraficoAuxLegenda: TStringField;
    dbGraficoAuxNome: TStringField;
    dbGraficoAuxPaciente3: TIntegerField;
    dbGraficoAuxRepConta: TFloatField;
    dbGraficoAuxMesAtual: TFloatField;
    dbGraficoAuxMesAnterior: TFloatField;
    dbGraficoAuxValor1: TCurrencyField;
    dbGraficoAuxPaciente1: TIntegerField;
    dbGraficoAuxGlosa1: TCurrencyField;
    dbGraficoAuxDiaria1: TFloatField;
    dbGraficoAuxPaciente2: TIntegerField;
    dbGraficoAuxValor2: TCurrencyField;
    dbGraficoAuxGlosa2: TCurrencyField;
    dbGraficoAuxDiaria2: TFloatField;
    dbGraficoAuxValor3: TCurrencyField;
    dbGraficoAuxGlosa3: TCurrencyField;
    dbGraficoAuxDiaria3: TFloatField;
    dbGraficoAuxPaciente4: TIntegerField;
    dbGraficoAuxValor4: TCurrencyField;
    dbGraficoAuxGlosa4: TCurrencyField;
    dbGraficoAuxDiaria4: TFloatField;
    dbGraficoAuxPaciente5: TIntegerField;
    dbGraficoAuxValor5: TCurrencyField;
    dbGraficoAuxGlosa5: TCurrencyField;
    dbGraficoAuxDiaria5: TFloatField;
    dbGraficoAuxPaciente6: TIntegerField;
    dbGraficoAuxValor6: TCurrencyField;
    dbGraficoAuxGlosa6: TCurrencyField;
    dbGraficoAuxDiaria6: TFloatField;
    dbGraficoAuxPaciente7: TIntegerField;
    dbGraficoAuxValor7: TCurrencyField;
    dbGraficoAuxGlosa7: TCurrencyField;
    dbGraficoAuxDiaria7: TFloatField;
    dbGraficoAuxPaciente8: TIntegerField;
    dbGraficoAuxValor8: TCurrencyField;
    dbGraficoAuxGlosa8: TCurrencyField;
    dbGraficoAuxDiaria8: TFloatField;
    dbGraficoAuxPaciente9: TIntegerField;
    dbGraficoAuxValor9: TCurrencyField;
    dbGraficoAuxGlosa9: TCurrencyField;
    dbGraficoAuxDiaria9: TFloatField;
    dbGraficoAuxPaciente10: TIntegerField;
    dbGraficoAuxValor10: TCurrencyField;
    dbGraficoAuxGlosa10: TCurrencyField;
    dbGraficoAuxDiaria10: TFloatField;
    dbGraficoAuxPaciente11: TIntegerField;
    dbGraficoAuxValor11: TCurrencyField;
    dbGraficoAuxGlosa11: TCurrencyField;
    dbGraficoAuxDiaria11: TFloatField;
    dbGraficoAuxPaciente12: TIntegerField;
    dbGraficoAuxValor12: TCurrencyField;
    dbGraficoAuxGlosa12: TCurrencyField;
    dbGraficoAuxDiaria12: TFloatField;
    dbGraficoAuxMP: TFloatField;
    dbGraficoAuxPGlosa: TFloatField;
    dbGraficoAuxCMP: TFloatField;
    dbGraficoAuxCMD: TFloatField;
    dbGraficoAuxPGlosa2: TFloatField;
    dbGraficoAuxPGlosa1: TFloatField;
    dbGraficoAuxPermanencia2: TFloatField;
    dbGraficoAuxPermanencia1: TFloatField;
    dbGraficoAuxCustoDiaria2: TFloatField;
    dbGraficoAuxCustoDiaria1: TFloatField;
    dbGraficoAuxCustoPaciente2: TFloatField;
    dbGraficoAuxCustoPaciente1: TFloatField;
    dbGraficoAuxR3: TFloatField;
    dbGraficoAuxR2: TFloatField;
    dbGraficoAuxR1: TFloatField;
    dbGraficoAuxNTC3: TFloatField;
    dbGraficoAuxNTC2: TFloatField;
    dbGraficoAuxNTC1: TFloatField;
    dbGraficoAuxFT3: TFloatField;
    dbGraficoAuxFT2: TFloatField;
    dbGraficoAuxFT1: TFloatField;
    dbGraficoAuxValorTotal: TCurrencyField;
    dbGraficoAuxGlosaTotal: TCurrencyField;
    dbGraficoAuxPT: TFloatField;
    dbGraficoAuxP1: TFloatField;
    dbGraficoAuxP2: TFloatField;
    dbGraficoAuxP3: TFloatField;
    dbGraficoAuxP4: TFloatField;
    dbGraficoAuxP5: TFloatField;
    dbGraficoAuxP6: TFloatField;
    dbGraficoAuxP7: TFloatField;
    dbGraficoAuxP8: TFloatField;
    dbGraficoAuxP9: TFloatField;
    dbGraficoAuxP10: TFloatField;
    dbGraficoAuxP11: TFloatField;
    dbGraficoAuxP12: TFloatField;
    qryRetornoPS: TMSQuery;
    rvRetornoPS: TRvDataSetConnection;
    qryRetornoPSRetorno: TIntegerField;
    qryRetornoPSAtendimentoPS: TIntegerField;
    qryRetornoPSSequencial: TIntegerField;
    qryRetornoPSTipo: TStringField;
    qryRetornoPSCliente: TIntegerField;
    qryRetornoPSClienteCNPJ: TStringField;
    qryRetornoPSClienteNome: TStringField;
    qryRetornoPSHospital: TIntegerField;
    qryRetornoPSHospitalCNPJ: TStringField;
    qryRetornoPSHospitalNome: TStringField;
    qryRetornoPSMedico: TIntegerField;
    qryRetornoPSMedicoCRM: TIntegerField;
    qryRetornoPSMedicoNome: TStringField;
    qryRetornoPSEnfermeiro: TIntegerField;
    qryRetornoPSEnfermeiroCoren: TIntegerField;
    qryRetornoPSEnfermeiroNome: TStringField;
    qryRetornoPSDataFechamento: TDateTimeField;
    qryRetornoPSMesCompetencia: TSmallintField;
    qryRetornoPSAnoCompetencia: TSmallintField;
    qryRetornoPSQtdAtendimento: TSmallintField;
    qryRetornoPSValor: TCurrencyField;
    qryRetornoPSValorGlosado: TCurrencyField;
    qryRetornoPSValorNaoAcordado: TCurrencyField;
    qryRetornoPSUsuario: TStringField;
    qryRetornoPSObservacao: TMemoField;
    qryRetornoPSDataInclusao: TDateTimeField;
    qryRetornoPSPosAnalise: TBooleanField;
    qryRetornoPSDataAlteracao: TDateTimeField;
    qryRetornoPSUsuarioI: TStringField;
    qryRetornoPSNotas: TMemoField;
    qryRetornoPSProcessa: TStringField;
    rvProdME: TRvDataSetConnection;
    dbProdME: TMSTable;
    dbProdMEAno: TSmallintField;
    dbProdMEMes: TSmallintField;
    dbProdMECliente: TIntegerField;
    dbProdMEHospital: TIntegerField;
    dbProdMEMedEnf: TIntegerField;
    dbProdMENome: TStringField;
    dbProdMEPaciente: TIntegerField;
    dbProdMEDiarias: TFloatField;
    dbProdMEValorGlosado: TCurrencyField;
    dbProdMEPacote: TIntegerField;
    dbProdMEValorNaoAcordado: TCurrencyField;
    dbProdMEDiariasGlosadas: TFloatField;
    dbProdMEValor: TCurrencyField;
    dbProdMEClienteNome: TStringField;
    dbProdMEValorPacote: TCurrencyField;
    dbProdMEPGlosa: TFloatField;
    qryProdMDHospitalNOme: TStringField;
    qryProdEDHospitalNome: TStringField;
    dbProdMEHospitalNome: TStringField;
    rvEstatHospital1: TRvDataSetConnection;
    qryEstatHospital1TMI: TFloatField;
    qryEstatHospital1Nome: TStringField;
    qryEstatHospital3TMI: TFloatField;
    qryEstatHospital1Diarias: TFloatField;
    qryEstatHospital1DiariasGlosadas: TFloatField;
    qryEstatHospital1DiariasAutorizadas: TFloatField;
    qryEstatHospital1Longa: TIntegerField;
    qryEstatPacienteAtendHITexto: TStringField;
    qryEstatPacienteCliente: TIntegerField;
    qryEstatPacienteClienteNome: TStringField;
    qryEstatPacienteSequencial: TIntegerField;
    qryEstatPacienteCompFornecedor: TStringField;
    qryEstatPacienteServico: TStringField;
    qryEstatPacienteSenha: TStringField;
    qryEstatPacienteCodigoPaciente: TStringField;
    qryEstatPacienteCodigoPacienteok: TStringField;
    qryEstatPacientePaciente: TIntegerField;
    qryEstatPacienteIDPaciente: TStringField;
    qryEstatPacienteNome: TStringField;
    qryEstatPacienteAnoNascimento: TIntegerField;
    qryEstatPacienteDataNascimento: TDateTimeField;
    qryEstatPacienteIdade: TIntegerField;
    qryEstatPacienteUnidade: TStringField;
    qryEstatPacienteRN: TStringField;
    qryEstatPacienteHospital: TIntegerField;
    qryEstatPacienteCodBradesco: TStringField;
    qryEstatPacienteMedico: TIntegerField;
    qryEstatPacienteMedicoNome: TStringField;
    qryEstatPacienteEnfermeiro: TIntegerField;
    qryEstatPacienteEnfermeiroNome: TStringField;
    qryEstatPacienteMesCompetencia: TIntegerField;
    qryEstatPacienteAnoCompetencia: TIntegerField;
    qryEstatPacienteDataFechamento: TDateTimeField;
    qryEstatPacienteDataInternacao: TDateTimeField;
    qryEstatPacienteDataAlta: TDateTimeField;
    qryEstatPacienteDiarias: TFloatField;
    qryEstatPacienteDiariasLonga: TIntegerField;
    qryEstatPacienteDiasUTI: TFloatField;
    qryEstatPacienteDiariasGlosadas: TFloatField;
    qryEstatPacienteDiariasCalculadas: TIntegerField;
    qryEstatPacienteDiariasNaoProrroga: TFloatField;
    qryEstatPacienteValor: TCurrencyField;
    qryEstatPacienteValorGlosadoM: TCurrencyField;
    qryEstatPacienteValorGlosadoE: TCurrencyField;
    qryEstatPacienteValorGlosado: TCurrencyField;
    qryEstatPacienteValorPago: TCurrencyField;
    qryEstatPacienteVisita: TIntegerField;
    qryEstatPacienteVisitaTexto: TStringField;
    qryEstatPacienteInternacao: TStringField;
    qryEstatPacienteInternacaoTexto: TStringField;
    qryEstatPacienteCodAmb: TIntegerField;
    qryEstatPacienteDescricaoAmb: TStringField;
    qryEstatPacienteCodCid: TStringField;
    qryEstatPacienteDescricaoCid: TStringField;
    qryEstatPacienteApto: TFloatField;
    qryEstatPacienteEnfermaria: TFloatField;
    qryEstatPacienteSemi: TFloatField;
    qryEstatPacienteBercario: TFloatField;
    qryEstatPacienteDayClinicQtd: TFloatField;
    qryEstatPacienteIsolamento: TFloatField;
    qryEstatPacienteParcial: TIntegerField;
    qryEstatPacienteParcialTexto: TStringField;
    qryEstatPacienteNumeroParcial: TIntegerField;
    qryEstatPacienteDataInicioP: TDateTimeField;
    qryEstatPacienteDataFimP: TDateTimeField;
    qryEstatPacienteComplemento: TBooleanField;
    qryEstatPacienteComplementoTexto: TStringField;
    qryEstatPacientePacote: TBooleanField;
    qryEstatPacientePacoteTexto: TStringField;
    qryEstatPacienteProdutividade: TIntegerField;
    qryEstatPacienteDataInclusao_1: TDateTimeField;
    qryEstatPacienteDiariaEnf: TFloatField;
    qryEstatPacienteDiariaApto: TFloatField;
    qryEstatPacienteComplementoF: TBooleanField;
    qryEstatPacienteUsuarioI: TStringField;
    qryEstatPacienteUsuario_1: TStringField;
    qryEstatPacienteAtendimentoHI: TLargeintField;
    qryEstatPacienteNABradesco: TStringField;
    qryEstatPacienteJustBradesco: TStringField;
    qryEstatPacienteTratamentoTexto: TStringField;
    qryEstatPacienteTratamento: TStringField;
    qryEstatPacienteDataFimPCalculada: TDateField;
    qryEstatPacienteDiariasP: TFloatField;
    qryEstatPacienteNome_1: TStringField;
    qryRelEvolucaoDiariasUTI: TFloatField;
    dbRelEvolucaoDiariaUTI1: TFloatField;
    dbRelEvolucaoDiariaUTI2: TFloatField;
    dbRelEvolucaoDiariaUTI3: TFloatField;
    dbRelEvolucaoDiariaUTI4: TFloatField;
    dbRelEvolucaoDiariaUTI5: TFloatField;
    dbRelEvolucaoDiariaUTI6: TFloatField;
    dbRelEvolucaoDiariaUTI7: TFloatField;
    dbRelEvolucaoDiariaUTI8: TFloatField;
    dbRelEvolucaoDiariaUTI9: TFloatField;
    dbRelEvolucaoDiariaUTI10: TFloatField;
    dbRelEvolucaoDiariaUTI11: TFloatField;
    dbRelEvolucaoDiariaUTI12: TFloatField;
    dbRelEvolucaoTMIUTIG1: TFloatField;
    dbRelEvolucaoTMIUTIG2: TFloatField;
    dbRelEvolucaoTMIUTIG3: TFloatField;
    dbRelEvolucaoTMIUTIG4: TFloatField;
    dbRelEvolucaoTMIUTIG5: TFloatField;
    dbRelEvolucaoTMIUTIG6: TFloatField;
    dbRelEvolucaoTMIUTIG7: TFloatField;
    dbRelEvolucaoTMIUTIG8: TFloatField;
    dbRelEvolucaoTMIUTIG9: TFloatField;
    dbRelEvolucaoTMIUTIG10: TFloatField;
    dbRelEvolucaoTMIUTIG11: TFloatField;
    dbRelEvolucaoTMIUTIG12: TFloatField;
    qryRelEvolucaoPacienteUTI: TIntegerField;
    qryRelEvolucaoHDiariasUTI: TFloatField;
    dbIndicadorDiariasUTI: TFloatField;
    dbIndicadorTMIUTI: TFloatField;
    dbIndicadorCMD: TCurrencyField;
    dbIndicadorCMDH: TCurrencyField;
    dbIndicadorGlosaH: TCurrencyField;
    dbIndicadorTMIUTIH: TFloatField;
    dbIndicadorHDiariasUTI: TFloatField;
    dbIndicadorHCMD: TFloatField;
    dbIndicadorTDiariasUTI: TFloatField;
    dbIndicadorTCMD: TCurrencyField;
    dbIndicadorTGlosaMedia: TCurrencyField;
    dbIndicadorTTMIUTI: TFloatField;
    qryRelEvolucaoContaUTI: TIntegerField;
    dbRelEvolucaoPacienteUTI1: TIntegerField;
    dbRelEvolucaoPacienteUTI2: TIntegerField;
    dbRelEvolucaoPacienteUTI3: TIntegerField;
    dbRelEvolucaoPacienteUTI4: TIntegerField;
    dbRelEvolucaoPacienteUTI5: TIntegerField;
    dbRelEvolucaoPacienteUTI6: TIntegerField;
    dbRelEvolucaoPacienteUTI7: TIntegerField;
    dbRelEvolucaoPacienteUTI8: TIntegerField;
    dbRelEvolucaoPacienteUTI9: TIntegerField;
    dbRelEvolucaoPacienteUTI10: TIntegerField;
    dbRelEvolucaoPacienteUTI11: TIntegerField;
    dbRelEvolucaoPacienteUTI12: TIntegerField;
    dbRelEvolucaoTMIUTII1: TFloatField;
    dbRelEvolucaoTMIUTII2: TFloatField;
    dbRelEvolucaoTMIUTII3: TFloatField;
    dbRelEvolucaoTMIUTII4: TFloatField;
    dbRelEvolucaoTMIUTII5: TFloatField;
    dbRelEvolucaoTMIUTII6: TFloatField;
    dbRelEvolucaoTMIUTII7: TFloatField;
    dbRelEvolucaoTMIUTII8: TFloatField;
    dbRelEvolucaoTMIUTII9: TFloatField;
    dbRelEvolucaoTMIUTII10: TFloatField;
    dbRelEvolucaoTMIUTII11: TFloatField;
    dbRelEvolucaoTMIUTII12: TFloatField;
    qryRelEvolucaoHPacienteUTI: TIntegerField;
    qryRelEvolucaoHContaUTI: TIntegerField;
    dbIndicadorPacienteUTI: TIntegerField;
    dbIndicadorHPacienteUTI: TIntegerField;
    dbIndicadorTPacienteUTI: TIntegerField;
    dbIndicadorTMIUTII: TFloatField;
    dbIndicadorTMIUTIIH: TFloatField;
    dbIndicadorTTMIUTII: TFloatField;
    dbRelEvolucaoHospitalNome: TStringField;
    qryEstatHospitalLogotipo: TIntegerField;
    qryEstatHospital1Logotipo: TIntegerField;
    qryEstatHospitalCLogotipo: TIntegerField;
    dbRelEvolucaoLogotipo: TIntegerField;
    dbIndicadorLogotipo: TIntegerField;
    dbGraficoAuxLogotipo: TIntegerField;
    qryAnalisePSLogotipo: TIntegerField;
    qryDemoPSLogotipo: TIntegerField;
    qryRelSenha: TMSTable;
    rvRelSenha: TRvDataSetConnection;
    qryRelSenhaDiariasPagas: TFloatField;
    qryRelSenhaValorGlosado: TCurrencyField;
    qryRelSenhaValorPago: TCurrencyField;
    qryRelSenhaClienteNome: TStringField;
    qryAtendHI: TMSQuery;
    rvAtendHI: TRvDataSetConnection;
    qryAtendHICliente: TIntegerField;
    qryAtendHIAtendimentoHI: TLargeintField;
    qryAtendHIIDPaciente: TStringField;
    qryAtendHIPaciente: TIntegerField;
    qryAtendHIHospital: TIntegerField;
    qryAtendHIMedico: TIntegerField;
    qryAtendHIEnfermeiro: TIntegerField;
    qryAtendHIMesCompetencia: TSmallintField;
    qryAtendHIAnoCompetencia: TSmallintField;
    qryAtendHIDataInternacao: TDateTimeField;
    qryAtendHIDataAlta: TDateTimeField;
    qryAtendHIDiasUTI: TFloatField;
    qryAtendHIDiarias: TFloatField;
    qryAtendHIDiariasGlosadas: TFloatField;
    qryAtendHIValor: TCurrencyField;
    qryAtendHIValorGlosadoM: TCurrencyField;
    qryAtendHIValorGlosadoE: TCurrencyField;
    qryAtendHISenha: TStringField;
    qryAtendHIDiariasPagas: TFloatField;
    qryAtendHIValorGlosado: TCurrencyField;
    qryAtendHIValorPago: TCurrencyField;
    qryParcialSenha: TMSQuery;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    DateTimeField2: TDateTimeField;
    qryParcialSenhaSenha: TStringField;
    qryRelSenhaE: TMSTable;
    qryRelSenhaCliente: TIntegerField;
    qryRelSenhaHospital: TIntegerField;
    qryRelSenhaSenha: TStringField;
    qryRelSenhaPaciente: TIntegerField;
    qryRelSenhaNomePaciente: TStringField;
    qryRelSenhaNomeHospital: TStringField;
    qryRelSenhaQtd: TIntegerField;
    qryRelSenhaDiarias: TFloatField;
    qryRelSenhaDiariasUTI: TFloatField;
    qryRelSenhaDiariasGlosadas: TFloatField;
    qryRelSenhaDiariasLongaCalculada: TIntegerField;
    qryRelSenhaValor: TCurrencyField;
    qryRelSenhaValorNaoAcordadoM: TCurrencyField;
    qryRelSenhaValorNaoAcordadoE: TCurrencyField;
    qryRelSenhaValorGlosadoM: TCurrencyField;
    qryRelSenhaValorGlosadoE: TCurrencyField;
    qryRelSenhaParcial: TIntegerField;
    qryRelSenhaComplemento: TIntegerField;
    qryRelSenhaDataInternacaoIni: TDateTimeField;
    qryRelSenhaDataInternacaoFim: TDateTimeField;
    qryRelSenhaECliente: TIntegerField;
    qryRelSenhaEHospital: TIntegerField;
    qryRelSenhaESenha: TStringField;
    qryRelSenhaEDatainternacaoIni: TDateTimeField;
    qryRelSenhaEDataInternacaoFim: TDateTimeField;
    qryRelSenhaEPaciente: TIntegerField;
    qryRelSenhaEDiarias: TFloatField;
    qryRelSenhaEDiariasUTI: TFloatField;
    qryRelSenhaEDiariasGlosadas: TFloatField;
    qryRelSenhaEValor: TCurrencyField;
    qryRelSenhaEValorNaoAcordadoM: TCurrencyField;
    qryRelSenhaEValorNaoAcordadoE: TCurrencyField;
    qryRelSenhaEValorGlosadoM: TCurrencyField;
    qryRelSenhaEValorGlosadoE: TCurrencyField;
    qryRelSenhaEParcial: TIntegerField;
    qryRelSenhaEComplemento: TIntegerField;
    qryRelSenhaEPacienteUTI: TIntegerField;
    qryRelSenhaEContaUTI: TIntegerField;
    qryRelSenhaEDiariasLongaCalculada: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryAudHC1CalcFields(DataSet: TDataSet);
    procedure dbItemHC1DiagnosticoCalcFields(DataSet: TDataSet);
    procedure dbItemHC1ExameCalcFields(DataSet: TDataSet);
    procedure dbConclusaoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryRelFunHCalcFields(DataSet: TDataSet);
    procedure qryRelCustoTipoInternacaoCalcFields(DataSet: TDataSet);
    procedure qryRelCustoCIDCalcFields(DataSet: TDataSet);
    procedure qryRelCustoTipoInternacao2CalcFields(DataSet: TDataSet);
    procedure qryRelQtdDiarias1CalcFields(DataSet: TDataSet);
    procedure qryRelQtdDiariasCalcFields(DataSet: TDataSet);
    procedure qryRelCustoAmbCalcFields(DataSet: TDataSet);
    procedure dbRelCustoCidCalcFields(DataSet: TDataSet);
    procedure qryEstatHospitalCalcFields(DataSet: TDataSet);
    procedure qryEstatHospital3CalcFields(DataSet: TDataSet);
    procedure qryGraficoCalcFields(DataSet: TDataSet);
    procedure qryEstatPacienteCalcFields(DataSet: TDataSet);
    procedure qryEstatPacienteDCalcFields(DataSet: TDataSet);
    procedure qryEstatPacienteD1CalcFields(DataSet: TDataSet);
    procedure qryEstatPacienteD2CalcFields(DataSet: TDataSet);
    procedure qryDistribuicaoHCalcFields(DataSet: TDataSet);
    procedure dbGraficoAuxCalcFields(DataSet: TDataSet);
    procedure qryDistribuicaoCidCalcFields(DataSet: TDataSet);
    procedure dbGraficoAuxAfterInsert(DataSet: TDataSet);
    procedure dbGraficoAuxFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryRepContaTCalcFields(DataSet: TDataSet);
    procedure qryRepContaCalcFields(DataSet: TDataSet);
    procedure qryGeralCalcFields(DataSet: TDataSet);
    procedure qryGeral1CalcFields(DataSet: TDataSet);
    procedure qryRestricaoCalcFields(DataSet: TDataSet);
    procedure qrySumarioVisitaCalcFields(DataSet: TDataSet);
    procedure qryDistribuicaoCCCalcFields(DataSet: TDataSet);
    procedure qryAnalisePSCalcFields(DataSet: TDataSet);
    procedure qryAnalisePSTotCalcFields(DataSet: TDataSet);
    procedure dbRelEvolucaoCalcFields(DataSet: TDataSet);
    procedure dbRelEvolucaoAfterInsert(DataSet: TDataSet);
    procedure qrySenhaDupFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryHICalcFields(DataSet: TDataSet);
    procedure dbControlPCalcFields(DataSet: TDataSet);
    procedure qryControlPCalcFields(DataSet: TDataSet);
    procedure qryExcelBradescoCalcFields(DataSet: TDataSet);
    procedure qryExcelCespCalcFields(DataSet: TDataSet);
    procedure qryBradescoPacoteRCalcFields(DataSet: TDataSet);
    procedure qryBradescoPacoteCalcFields(DataSet: TDataSet);
    procedure qryEstatHospitalRCalcFields(DataSet: TDataSet);
    procedure qryEstatHospital3RCalcFields(DataSet: TDataSet);
    procedure qryRelCustoAmbDCalcFields(DataSet: TDataSet);
    procedure qryProdMCalcFields(DataSet: TDataSet);
    procedure qryProdM2CalcFields(DataSet: TDataSet);
    procedure qryProdECalcFields(DataSet: TDataSet);
    procedure qryProdE2CalcFields(DataSet: TDataSet);
    procedure qryProdMDCalcFields(DataSet: TDataSet);
    procedure qryProdMD2CalcFields(DataSet: TDataSet);
    procedure qryProdEDCalcFields(DataSet: TDataSet);
    procedure qryProdED2CalcFields(DataSet: TDataSet);
    procedure qryDemoPSCalcFields(DataSet: TDataSet);
    procedure dbItemHIDiagnosticoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure qryEstatHospitalCCalcFields(DataSet: TDataSet);
    procedure qryEstatHospitalC3CalcFields(DataSet: TDataSet);
    procedure dbProdFunCalcFields(DataSet: TDataSet);
    procedure dbIndicadorCalcFields(DataSet: TDataSet);
    procedure dbIndicadorHCalcFields(DataSet: TDataSet);
    procedure dbIndicadorTCalcFields(DataSet: TDataSet);
    procedure qryEstatPacienteBCalcFields(DataSet: TDataSet);
    procedure qryEstatHospital1CalcFields(DataSet: TDataSet);
    procedure qryRelSenhaCalcFields(DataSet: TDataSet);
    procedure qryAtendHICalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorio: TdmRelatorio;

implementation

uses frmPrincipal, frmHomeCareNovos,
     frmRelRepresentatividadeContas, frmRelEstatisticasHospital,
     frmRelMediaCapeante, frmRelProdsFunMensal, frmRelEvolucaoCustosR, frmRelControleVisitas,
  frmRelDistribuicaoValoresCC, frmRelAnalisesAmbPS,
  frmRelEvolucaoCustosRPS, frmRelSenhas;

{$R *.dfm}

procedure TdmRelatorio.DataModuleCreate(Sender: TObject);
begin
// **** View 29/04/2019
    dbPaciente.Open;
    dbHospital.Open;
    dbAmb.Open;
    dbDiagnostico.Open;
// *****
    dbCliente.Open;
    dbAuditor.Open;
    dbEnfermeiro.Open;
    dbServico.Open;
    dbEmpresa.Open;
    dbConclusao.Open;
    dbProprietario.Open;
    dbRegiao.Open;
    dbGlosaI.Open;
end;

procedure TdmRelatorio.DataModuleDestroy(Sender: TObject);
begin
    dbPaciente.Close;
    dbCliente.Close;
    dbHospital.Close;
    dbAuditor.Close;
    dbEnfermeiro.Close;
    dbServico.Close;
    dbDiagnostico.Close;
    dbEmpresa.Close;
    dbConclusao.Close;
    dbProprietario.Close;
    dbAmb.Close;
    dbRegiao.Close;
    dbGlosaI.Close;
    dbItemHC1Diagnostico.Close;
    dbItemHC1Medicamento.Close;
    dbItemHC1Exame.Close;
    dbItemHC1Conclusao.Close;
    dbItemHIDiagnostico.Close;
    dbPro.Close;
    dbProGlosa.Close;
    dbProDiag.Close;

    qryGeral.Close;
end;

procedure TdmRelatorio.qryAudHC1CalcFields(DataSet: TDataSet);
var ano,mes,dia,anon,mesn,dian:word;
var tot:integer;
var tot1:variant;
begin
    DecodeDate(date,ano,mes,dia);
    if not qryAudHC1PacienteDataNascimento.IsNull then
       DecodeDate(qryAudHC1PacienteDataNascimento.Value,anon,mesn,dian)
    else
        anon:=qryAudHC1PacienteAnoNascimento.Value;

    qryAudHC1PacienteIdade.Value:=ano-anon;
    if (qryAudHC1PacienteIdade.Value<=2) and
       (not qryAudHC1PacienteDataNascimento.IsNull) then
    begin
       qryAudHC1PacienteIdade.Value:=mes-mesn;
       if qryAudHC1PacienteIdade.Value<1 then
          qryAudHC1PacienteIdade.Value:=qryAudHC1PacienteIdade.Value+12;
       if ano-anon=2 then
          qryAudHC1PacienteIdade.Value:=qryAudHC1PacienteIdade.Value+12;
       qryAudHC1PacienteUnidade.Value:='mes(es)';
    end
    else
       qryAudHC1PacienteUnidade.Value:='ano(s)';

    qryAudHC1Diag1.Clear;
    qryAudHC1Diag2.Clear;
    qryAudHC1Diag3.Clear;
    dbItemHC1Diagnostico.Locate('AtendimentoHC1;Tipo;Item',VarArrayof([qryAudHC1AtendimentoHC1.value,
                                  qryAudHC1Tipo.value,
                                  qryAudHC1Item.value]),[]);
    while (dbItemHC1DiagnosticoAtendimentoHC1.value=qryAudHC1AtendimentoHC1.value) and
          (dbItemHC1DiagnosticoItem.value=qryAudHC1Item.value) and
          (dbItemHC1DiagnosticoTipo.value=qryAudHC1Tipo.value) and
          (not dbItemHC1Diagnostico.eof) do
    begin
        qryAudHC1Diag1.Text:=qryAudHC1Diag1.Text+
                             dbItemHC1DiagnosticoCodCid.value+#13;
        qryAudHC1Diag2.Text:=qryAudHC1Diag2.Text+
                             dbItemHC1DiagnosticoDiagnosticoTexto.value+#13;
        qryAudHC1Diag3.Text:=qryAudHC1Diag3.Text+
                             dbItemHC1DiagnosticoPrincipalTexto.value+#13;
        dbItemHC1Diagnostico.Next;
   end;

    qryAudHC1Med1.Clear;
    qryAudHC1Med2.Clear;
    qryAudHC1Med3.Clear;
    qryAudHC1Med4.Clear;
    qryAudHC1Med5.Clear;
    dbItemHC1Medicamento.Locate('AtendimentoHC1;Tipo;Item',VarArrayof([qryAudHC1AtendimentoHC1.value,
                                  qryAudHC1Tipo.value,
                                  qryAudHC1Item.value]),[]);
    tot:=0;
    while (dbItemHC1MedicamentoAtendimentoHC1.value=qryAudHC1AtendimentoHC1.value) and
          (dbItemHC1MedicamentoItem.value=qryAudHC1Item.value) and
          (dbItemHC1MedicamentoTipo.value=qryAudHC1Tipo.value) and
          (not dbItemHC1Medicamento.eof) do
    begin
        qryAudHC1Med1.Text:=qryAudHC1Med1.Text+
                             dbItemHC1MedicamentoMedicamento.value+#13;
        qryAudHC1Med2.Text:=qryAudHC1Med2.Text+
                             dbItemHC1MedicamentoVia.value+#13;
        qryAudHC1Med3.Text:=qryAudHC1Med3.Text+
                             dbItemHC1MedicamentoHorario.value+#13;
        qryAudHC1Med4.Text:=qryAudHC1Med4.Text+
                             dbItemHC1MedicamentoPeriodo.value+#13;
        if dbItemHC1MedicamentoOrigem.value='F' then
            qryAudHC1Med5.Text:=qryAudHC1Med5.Text+'Familiar'+#13;
        if dbItemHC1MedicamentoOrigem.value='E' then
            qryAudHC1Med5.Text:=qryAudHC1Med5.Text+'Empresa'+#13;

        tot:=tot+1;
        dbItemHC1Medicamento.Next;
   end;
   if tot=0 then
        qryAudHC1Med1.Text:='Nenhum medicamento prescrito';

    qryAudHC1Conclusao.Clear;
    dbItemHC1Conclusao.Locate('AtendimentoHC1;Tipo;Item',VarArrayof([qryAudHC1AtendimentoHC1.value,
                                  qryAudHC1Tipo.value,
                                  qryAudHC1Item.value]),[]);
    while (dbItemHC1ConclusaoAtendimentoHC1.value=qryAudHC1AtendimentoHC1.value) and
          (dbItemHC1ConclusaoItem.value=qryAudHC1Item.value) and
          (dbItemHC1ConclusaoTipo.value=qryAudHC1Tipo.value) and
          (not dbItemHC1Conclusao.eof) do
    begin
        qryAudHC1Conclusao.Text:=qryAudHC1Conclusao.Text+
                             dbItemHC1ConclusaoConclusao.value+'  ';
        dbItemHC1Conclusao.Next;
   end;

    qryAudHC1Legenda1.Clear;
    qryAudHC1Legenda2.Clear;
    tot1:=RoundTo(dbConclusao.RecordCount/2,0);
    tot:=1;
    dbConclusao.First;
    while (not dbConclusao.eof) do
    begin
        if tot<=tot1 then
            qryAudHC1Legenda1.Text:=qryAudHC1Legenda1.Text+
                                    dbConclusaoConclusao.Text+' - '+
                                    dbConclusaoNome.value+#13
        else
            qryAudHC1Legenda2.Text:=qryAudHC1Legenda2.Text+
                                    dbConclusaoConclusao.Text+' - '+
                                    dbConclusaoNome.value+#13;
        tot:=tot+1;
        dbConclusao.Next;
   end;

    qryAudHC1Exame1.Clear;
    qryAudHC1Exame2.Clear;
    qryAudHC1Exame3.Clear;
    qryAudHC1Exame4.Clear;
    dbItemHC1Exame.Locate('AtendimentoHC1;Tipo;Item',VarArrayof([qryAudHC1AtendimentoHC1.value,
                                  qryAudHC1Tipo.value,
                                  qryAudHC1Item.value]),[]);
    tot:=0;
    while (dbItemHC1ExameAtendimentoHC1.value=qryAudHC1AtendimentoHC1.value) and
          (dbItemHC1ExameItem.value=qryAudHC1Item.value) and
          (dbItemHC1ExameTipo.value=qryAudHC1Tipo.value) and
          (not dbItemHC1Exame.eof) do
    begin
        qryAudHC1Exame1.Text:=qryAudHC1Exame1.Text+
                             dbItemHC1ExameExame.value+#13;
        qryAudHC1Exame2.Text:=qryAudHC1Exame2.Text+
                             DateToStr(dbItemHC1ExameData.value)+#13;
        qryAudHC1Exame3.Text:=qryAudHC1Exame3.Text+
                             dbItemHC1ExameResultadoTexto.value+#13;
        qryAudHC1Exame4.Text:=qryAudHC1Exame4.Text+
                             dbItemHC1ExameComplementarTexto.value+#13;
        tot:=tot+1;
        dbItemHC1Exame.Next;
   end;
   if tot=0 then
        qryAudHC1Exame1.Text:='Nenhum exame realizado';

   if (qryAudHC1Tamanho1.value<>'') or (qryAudHC1Aspecto1.value<>'') then
       qryAudHC1Escara1.value:='Trocanter Direito'
   else qryAudHC1Escara1.value:='';
   if (qryAudHC1Tamanho2.value<>'') or (qryAudHC1Aspecto2.value<>'') then
       qryAudHC1Escara2.value:='Trocanter Esquerdo'
   else qryAudHC1Escara2.value:='';
   if (qryAudHC1Tamanho3.value<>'') or (qryAudHC1Aspecto3.value<>'') then
       qryAudHC1Escara3.value:='Sacral'
   else qryAudHC1Escara3.value:='';

    if qryAudHC1Dispneia.Value=true then
       qryAudHC1DispneiaTexto.Value:='Sim'
    else
       qryAudHC1DispneiaTexto.Value:='Não';

    if qryAudHC1Tosse.Value=true then
       qryAudHC1TosseTexto.Value:='Sim'
    else
       qryAudHC1TosseTexto.Value:='Não';

    if qryAudHC1SecrecaoPulmonar.Value=true then
       qryAudHC1SecrecaoPulmonarTexto.Value:='Sim'
    else
       qryAudHC1SecrecaoPulmonarTexto.Value:='Não';

    if qryAudHC1HabitoDigestivo.Value=true then
       qryAudHC1HabitoDigestivoTexto.Value:='Sim'
    else
       qryAudHC1HabitoDigestivoTexto.Value:='Não';

    if qryAudHC1Edema.Value=true then
       qryAudHC1EdemaTexto.Value:='Sim'
    else
       qryAudHC1EdemaTexto.Value:='Não';

    if qryAudHC1HabitoUrinario.Value=true then
       qryAudHC1HabitoUrinarioTexto.Value:='Sim'
    else
       qryAudHC1HabitoUrinarioTexto.Value:='Não';

    if qryAudHC1EvolucaoGeral.Value='M' then
       qryAudHC1EstadoPacienteTexto.Value:='Melhorou';
    if qryAudHC1EvolucaoGeral.Value='P' then
       qryAudHC1EstadoPacienteTexto.Value:='Piorou';
    if qryAudHC1EvolucaoGeral.Value='N' then
       qryAudHC1EstadoPacienteTexto.Value:='Inalterado';


    if qryAudHC1Cuidador.Value=true then
       qryAudHC1CuidadorTexto.Value:='Sim'
    else
       qryAudHC1CuidadorTexto.Value:='Não';

    if qryAudHC1CuidadorTreino.Value=true then
       qryAudHC1CuidadorTreinoTexto.Value:='Sim'
    else
       qryAudHC1CuidadorTreinoTexto.Value:='Não';

    if qryAudHC1RecebeInstrucoes.Value=true then
       qryAudHC1RecebeInstrucoesTexto.Value:='Sim'
    else
       qryAudHC1RecebeInstrucoesTexto.Value:='Não';

    if qryAudHC1AssumeCuidados.Value=true then
       qryAudHC1AssumeCuidadosTexto.Value:='Sim'
    else
       qryAudHC1AssumeCuidadosTexto.Value:='Não';

    if qryAudHC1QuerAssumir.Value=true then
       qryAudHC1QuerAssumirTexto.Value:='Sim'
    else
       qryAudHC1QuerAssumirTexto.Value:='Não';

    if qryAudHC1ClienteSatisfeito.Value=true then
       qryAudHC1ClienteSatisfeitoTexto1.Value:='Sim'
    else
       qryAudHC1ClienteSatisfeitoTexto1.Value:='';

    if qryAudHC1DepSonda.value=0 then
       qryAudHC1DepSondaCuidadorTexto.Value:=''
    else
        if qryAudHC1DepSondaCuidador.Value=true then
            qryAudHC1DepSondaCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepSondaCuidadorTexto.Value:='Não';

    if qryAudHC1DepStomias.value=0 then
       qryAudHC1DepStomiaCuidadorTexto.Value:=''
    else
        if qryAudHC1DepStomiasCuidador.Value=true then
            qryAudHC1DepStomiaCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepStomiaCuidadorTexto.Value:='Não';

    if qryAudHC1DepVenoso.value=0 then
       qryAudHC1DepVenosoCuidadorTexto.Value:=''
    else
        if qryAudHC1DepVenosoCuidador.Value=true then
            qryAudHC1DepVenosoCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepVenosoCuidadorTexto.Value:='Não';

    if qryAudHC1DepMedicamento.value=0 then
       qryAudHC1DepMedicamentoCuidadorTexto.Value:=''
    else
        if qryAudHC1DepMedicamentoCuidador.Value=true then
            qryAudHC1DepMedicamentoCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepMedicamentoCuidadorTexto.Value:='Não';

    if qryAudHC1DepAparelho.value=0 then
       qryAudHC1DepAparelhoCuidadorTexto.Value:=''
    else
        if qryAudHC1DepAparelhoCuidador.Value=true then
            qryAudHC1DepAparelhoCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepAparelhoCuidadorTexto.Value:='Não';

    if qryAudHC1DepCurativo.value=0 then
       qryAudHC1DepCurativoCuidadorTexto.Value:=''
    else
        if qryAudHC1DepCurativoCuidador.Value=true then
            qryAudHC1DepCurativoCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepCurativoCuidadorTexto.Value:='Não';

    if qryAudHC1DepHigiene.value=0 then
       qryAudHC1DepHigieneCuidadorTexto.Value:=''
    else
        if qryAudHC1DepHigieneCuidador.Value=true then
            qryAudHC1DepHigieneCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepHigieneCuidadorTexto.Value:='Não';

    if qryAudHC1DepDieta.value=0 then
       qryAudHC1DepDietaCuidadorTexto.Value:=''
    else
        if qryAudHC1DepDietaCuidador.Value=true then
            qryAudHC1DepDietaCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepDietaCuidadorTexto.Value:='Não';

    if qryAudHC1DepMobilizacao.value=0 then
       qryAudHC1DepMobilizacaoCuidadorTexto.Value:=''
    else
        if qryAudHC1DepMobilizacaoCuidador.Value=true then
            qryAudHC1DepMobilizacaoCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepMobilizacaoCuidadorTexto.Value:='Não';

    if qryAudHC1DepVigilancia.value=0 then
       qryAudHC1DepVigilanciaCuidadorTexto.Value:='Sim'
    else
        if qryAudHC1DepVigilanciaCuidador.Value=true then
            qryAudHC1DepVigilanciaCuidadorTexto.Value:='Sim'
        else
            qryAudHC1DepVigilanciaCuidadorTexto.Value:='Não';

    if qryAudHC1StomiaOutro.IsNull then
       qryAudHC1StomiasOutrosTexto.Value:='Não'
    else
       qryAudHC1StomiasOutrosTexto.Value:='Sim';

    if qryAudHC1VMVisita.Value=true then
       qryAudHC1VMVisitaTexto.Value:='Sim'
    else
       qryAudHC1VMVisitaTexto.Value:='Não';
    if qryAudHC1VM24H.Value=true then
       qryAudHC1VM24HTexto.Value:='Sim'
    else
       qryAudHC1VM24HTexto.Value:='Não';
    if qryAudHC1VMCurativo.Value=true then
       qryAudHC1VMCurativoTexto.Value:='Sim'
    else
       qryAudHC1VMCurativoTexto.Value:='Não';
    if qryAudHC1VEVisita.Value=true then
       qryAudHC1VEVisitaTexto.Value:='Sim'
    else
       qryAudHC1VEVisitaTexto.Value:='Não';
    if qryAudHC1VE24H.Value=true then
       qryAudHC1VE24HTexto.Value:='Sim'
    else
       qryAudHC1VE24HTexto.Value:='Não';
    if qryAudHC1VECurativo.Value=true then
       qryAudHC1VECurativoTexto.Value:='Sim'
    else
       qryAudHC1VECurativoTexto.Value:='Não';
    if qryAudHC1EnfCurativo.Value=true then
       qryAudHC1EnfCurativoTexto.Value:='Sim'
    else
       qryAudHC1EnfCurativoTexto.Value:='Não';
    if qryAudHC1EnfInjecao.Value=true then
       qryAudHC1EnfInjecaoTexto.Value:='Sim'
    else
       qryAudHC1EnfInjecaoTexto.Value:='Não';
    if qryAudHC1EnfAspiracao.Value=true then
       qryAudHC1EnfAspiracaoTexto.Value:='Sim'
    else
       qryAudHC1EnfAspiracaoTexto.Value:='Não';
    if qryAudHC1EnfAparelho.Value=true then
       qryAudHC1EnfAparelhoTexto.Value:='Sim'
    else
       qryAudHC1EnfAparelhoTexto.Value:='Não';
    if qryAudHC1EnfHigiene.Value=true then
       qryAudHC1EnfHigieneTexto.Value:='Sim'
    else
       qryAudHC1EnfHigieneTexto.Value:='Não';

end;

procedure TdmRelatorio.dbItemHC1DiagnosticoCalcFields(DataSet: TDataSet);
begin
    if dbItemHC1DiagnosticoPrincipal.value=true then
       dbItemHC1DiagnosticoPrincipalTexto.value:='Principal'
    else
       dbItemHC1DiagnosticoPrincipalTexto.value:='Secundário';

end;

procedure TdmRelatorio.dbItemHC1ExameCalcFields(DataSet: TDataSet);
begin
    if dbItemHC1ExameResultado.value='N' then
       dbItemHC1ExameResultadoTexto.value:='Normal';
    if dbItemHC1ExameResultado.value='A' then
       dbItemHC1ExameResultadoTexto.value:='Alterado';
    if dbItemHC1ExameComplementar.value=true then
       dbItemHC1ExameComplementarTexto.value:='Sim'
    else
       dbItemHC1ExameComplementarTexto.value:='Não';
end;

procedure TdmRelatorio.dbConclusaoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if frmHomeCareNovo=nil then
        accept:=true
    else
    begin
        if frmHomeCareNovos.iTipo='C' then
            accept:=dbConclusaoClinica.value=true;
        if frmHomeCareNovos.iTipo='D' then
            accept:=dbConclusaoDomiciliar.value=true;
    end;
end;

procedure TdmRelatorio.qryRelFunHCalcFields(DataSet: TDataSet);
begin
    if qryRelFunHC.Active=true then
        if qryRelFunHC.Locate('UsuarioI',qryRelFunUsuario.value,[]) then
           qryRelFunqtdHomeCare.value:=qryRelFunHCQtd.value;
    if qryRelFunHI.Active=true then
        if qryRelFunHI.Locate('UsuarioI',qryRelFunUsuario.value,[]) then
           qryRelFunqtdEstat.value:=qryRelFunHIQtd.value;
    if qryRelFunPS.Active=true then
        if qryRelFunPS.Locate('UsuarioI',qryRelFunUsuario.value,[]) then
           qryRelFunQtdPS.value:=qryRelFunPSQtd.value;

    if qryRelFunHC1.Active=true then
        if qryRelFunHC1.Locate('Usuario',qryRelFunUsuario.value,[]) then
           qryRelFunqtdHomeCare1.value:=qryRelFunHCQtd.value;
    if qryRelFunHI1.Active=true then
        if qryRelFunHI1.Locate('Usuario',qryRelFunUsuario.value,[]) then
           qryRelFunqtdEstat1.value:=qryRelFunHIQtd.value;
    if qryRelFunPS1.Active=true then
        if qryRelFunPS1.Locate('Usuario',qryRelFunUsuario.value,[]) then
           qryRelFunQtdPS1.value:=qryRelFunPSQtd.value;

    qryRelFunTotal.value:=qryRelFunqtdHomeCare.value+
                          qryRelFunqtdEstat.value+
                          qryRelFunqtdPS.value;

    qryRelFunTotal1.value:=qryRelFunqtdHomeCare1.value+
                          qryRelFunqtdEstat1.value+
                          qryRelFunqtdPS1.value;
    qryRelFunTotalG.value:=qryRelFunqtdHomeCare.value+
                          qryRelFunqtdEstat.value+
                          qryRelFunqtdPS.value+
                          qryRelFunqtdHomeCare1.value+
                          qryRelFunqtdEstat1.value+
                          qryRelFunqtdPS1.value;
end;

procedure TdmRelatorio.qryRelCustoTipoInternacaoCalcFields(
  DataSet: TDataSet);
begin
    if qryRelCustoTipoInternacaoInternacao.value='C' then
       qryRelCustoTipoInternacaoTipoTexto.value:='Clínica';
    if qryRelCustoTipoInternacaoInternacao.value='R' then
       qryRelCustoTipoInternacaoTipoTexto.value:='Cirúrgica';
    if qryRelCustoTipoInternacaoInternacao.value='' then
       qryRelCustoTipoInternacaoTipoTexto.value:='Tipo não classificado';
    qryRelCustoTipoInternacaoValorPago.value:=qryRelCustoTipoInternacaoValor.value-
                                              qryRelCustoTipoInternacaoGlosaE.value-
                                              qryRelCustoTipoInternacaoGlosaM.value;
    if qryRelCustoTipoInternacao1.Active=true then
    begin
        if qryRelCustoTipoInternacao1.Locate('Cliente;Hospital',VarArrayof([qryRelCustoTipoInternacaoCliente.value,
                                                                 qryRelCustoTipoInternacaoHospital.value]),[]) then
        begin
            if qryRelCustoTipoInternacao1Valor.value>0 then
                qryRelCustoTipoInternacaoValorP.value:=qryRelCustoTipoInternacaoValor.value/qryRelCustoTipoInternacao1Valor.value*100
            else
                qryRelCustoTipoInternacaoValorP.value:=0;
            if qryRelCustoTipoInternacao1qtd.value>0 then
                qryRelCustoTipoInternacaoqtdP.value:=qryRelCustoTipoInternacaoqtd.value/qryRelCustoTipoInternacao1qtd.value*100
            else
                qryRelCustoTipoInternacaoqtdP.value:=0;
            if qryRelCustoTipoInternacao1glosam.value>0 then
                qryRelCustoTipoInternacaoglosamP.value:=qryRelCustoTipoInternacaoglosam.value/qryRelCustoTipoInternacao1glosam.value*100
            else
                qryRelCustoTipoInternacaoglosamP.value:=0;
            if qryRelCustoTipoInternacao1glosae.value>0 then
                qryRelCustoTipoInternacaoglosaeP.value:=qryRelCustoTipoInternacaoglosae.value/qryRelCustoTipoInternacao1glosae.value*100
            else
                 qryRelCustoTipoInternacaoglosaeP.value:=0;
            if (qryRelCustoTipoInternacao1Valor.value-
                qryRelCustoTipoInternacao1GlosaE.value-
                qryRelCustoTipoInternacao1GlosaM.value)>0 then
                qryRelCustoTipoInternacaoValorPagoP.value:=qryRelCustoTipoInternacaoValorPago.value/
                                                           (qryRelCustoTipoInternacao1Valor.value-
                                                            qryRelCustoTipoInternacao1GlosaE.value-
                                                            qryRelCustoTipoInternacao1GlosaM.value)*100
            else
                qryRelCustoTipoInternacaoValorPagoP.value:=0;
        end;
    end;
end;

procedure TdmRelatorio.qryRelCustoCIDCalcFields(DataSet: TDataSet);
begin
    qryRelCustoCidValorPago.value:=qryRelCustoCidValor.value-
                                   qryRelCustoCidGlosaE.value-
                                   qryRelCustoCidGlosaM.value;
    qryRelCustoCidGlosa.value:=qryRelCustoCidGlosaE.value+
                               qryRelCustoCidGlosaM.value;
    if qryRelCustoHospital.Active=true then
    if qryRelCustoHospital.Locate('Cliente;Hospital',VarArrayof([qryRelCustoCidCliente.value,qryRelCustoCidHospital.value]),[]) then
    begin
        if qryRelCustoHospitalValor.value>0 then
            qryRelCustoCidPValor.value:=qryRelCustoCidValor.value/qryRelCustoHospitalValor.value*100
        else
            qryRelCustoCidPValor.value:=0;
        if (qryRelCustoHospitalValor.value-
            qryRelCustoHospitalGlosaE.value-
            qryRelCustoHospitalGlosaM.value)>0 then
            qryRelCustoCidPValorPago.value:=(qryRelCustoCidValor.value-
                                             qryRelCustoCidGlosaE.value-
                                             qryRelCustoCidGlosaM.value)/
                                            (qryRelCustoHospitalValor.value-
                                             qryRelCustoHospitalGlosaE.value-
                                             qryRelCustoHospitalGlosaM.value)*100
        else
            qryRelCustoCidPValorPago.value:=0;
    end;
end;

procedure TdmRelatorio.qryRelCustoTipoInternacao2CalcFields(
  DataSet: TDataSet);
begin
    if qryRelCustoTipoInternacao2Internacao.value='C' then
       qryRelCustoTipoInternacao2TipoTexto.value:='Clínica';
    if qryRelCustoTipoInternacao2Internacao.value='R' then
       qryRelCustoTipoInternacao2TipoTexto.value:='Cirúrgica';
    if qryRelCustoTipoInternacao2Internacao.value='' then
       qryRelCustoTipoInternacao2TipoTexto.value:='Tipo não classificado';
    qryRelCustoTipoInternacao2ValorPago.value:=qryRelCustoTipoInternacao2Valor.value-
                                              qryRelCustoTipoInternacao2GlosaE.value-
                                              qryRelCustoTipoInternacao2GlosaM.value;
    if qryRelCustoTipoInternacao3.Active=true then
    begin
        if qryRelCustoTipoInternacao3.Locate('Cliente',qryRelCustoTipoInternacao2Cliente.value,[]) then
        begin
            if qryRelCustoTipoInternacao3Valor.value>0 then
                qryRelCustoTipoInternacao2ValorP.value:=qryRelCustoTipoInternacao2Valor.value/qryRelCustoTipoInternacao3Valor.value*100
            else
                qryRelCustoTipoInternacao2ValorP.value:=0;
            if qryRelCustoTipoInternacao3qtd.value>0 then
                qryRelCustoTipoInternacao2qtdP.value:=qryRelCustoTipoInternacao2qtd.value/qryRelCustoTipoInternacao3qtd.value*100
            else
                qryRelCustoTipoInternacao2qtdP.value:=0;
            if qryRelCustoTipoInternacao3glosam.value>0 then
                qryRelCustoTipoInternacao2glosamP.value:=qryRelCustoTipoInternacao2glosam.value/qryRelCustoTipoInternacao3glosam.value*100
            else
                qryRelCustoTipoInternacao2glosamP.value:=0;
            if qryRelCustoTipoInternacao3glosae.value>0 then
                qryRelCustoTipoInternacao2glosaeP.value:=qryRelCustoTipoInternacao2glosae.value/qryRelCustoTipoInternacao3glosae.value*100
            else
                qryRelCustoTipoInternacao2glosaeP.value:=0;
            if (qryRelCustoTipoInternacao3Valor.value-
                qryRelCustoTipoInternacao3GlosaE.value-
                qryRelCustoTipoInternacao3GlosaM.value)>0 then
                qryRelCustoTipoInternacao2ValorPagoP.value:=qryRelCustoTipoInternacao2ValorPago.value/
                                                           (qryRelCustoTipoInternacao3Valor.value-
                                                            qryRelCustoTipoInternacao3GlosaE.value-
                                                            qryRelCustoTipoInternacao3GlosaM.value)*100
            else
                qryRelCustoTipoInternacao2ValorPagoP.value:=0;
        end;
    end;

end;

procedure TdmRelatorio.qryRelQtdDiarias1CalcFields(DataSet: TDataSet);
begin
    if qryRelQtdDiarias1Diarias.value>0 then
        qryRelQtdDiarias1puti.value:=qryRelQtdDiarias1Uti.value/
                                     qryRelQtdDiarias1Diarias.value*100
    else
        qryRelQtdDiarias1puti.value:=0;

    if qryRelQtdDiarias1Diarias.value>0 then
        qryRelQtdDiarias1pday.value:=qryRelQtdDiarias1dayclinici.value/
                                     qryRelQtdDiarias1Diarias.value*100
    else
        qryRelQtdDiarias1pday.value:=0
end;

procedure TdmRelatorio.qryRelQtdDiariasCalcFields(DataSet: TDataSet);
begin
    if qryRelQtdDiariasInternacao.value='C' then
       qryRelQtdDiariasTipoTexto.value:='Clínica';
    if qryRelQtdDiariasInternacao.value='R' then
       qryRelQtdDiariasTipoTexto.value:='Cirúrgica';
    if qryRelQtdDiariasInternacao.value='' then
       qryRelQtdDiariasTipoTexto.value:='Tipo não classificado';

    if qryRelQtdDiariasDiarias.value>0 then
        qryRelQtdDiariasputi.value:=qryRelQtdDiariasUti.value/
                                     qryRelQtdDiariasDiarias.value*100
    else
        qryRelQtdDiariasputi.value:=0;

    if qryRelQtdDiariasDiarias.value>0 then
        qryRelQtdDiariaspday.value:=qryRelQtdDiariasdayclinici.value/
                                     qryRelQtdDiariasDiarias.value*100
    else
        qryRelQtdDiariaspday.value:=0
end;

procedure TdmRelatorio.qryRelCustoAmbCalcFields(DataSet: TDataSet);
begin
    qryRelCustoAmbValorPago.value:=qryRelCustoAmbValor.value-
                                   qryRelCustoAmbGlosaE.value-
                                   qryRelCustoAmbGlosaM.value;
    qryRelCustoAmbGlosa.value:=qryRelCustoAmbGlosaE.value+
                               qryRelCustoAmbGlosaM.value;
    if qryRelCustoHospital.Active=true then
    if qryRelCustoHospital.Locate('Cliente;Hospital',VarArrayof([qryRelCustoAmbCliente.value,qryRelCustoAmbHospital.value]),[]) then
    begin
        if qryRelCustoHospitalValor.value>0 then
            qryRelCustoAmbPValor.value:=qryRelCustoAmbValor.value/qryRelCustoHospitalValor.value*100
        else
            qryRelCustoAmbPValor.value:=0;

        if (qryRelCustoHospitalValor.value-
            qryRelCustoHospitalGlosaE.value-
            qryRelCustoHospitalGlosaM.value)>0 then
            qryRelCustoAmbPValorPago.value:=(qryRelCustoAmbValor.value-
                                             qryRelCustoAmbGlosaE.value-
                                             qryRelCustoAmbGlosaM.value)/
                                            (qryRelCustoHospitalValor.value-
                                             qryRelCustoHospitalGlosaE.value-
                                             qryRelCustoHospitalGlosaM.value)*100
        else
            qryRelCustoAmbPValorPago.value:=0;
    end;
    if qryRelCustoAmbQtd.value=0 then
        qryRelCustoAmbValorMedio.value:=0
    else
        qryRelCustoAmbValorMedio.value:=qryRelCustoAmbValorPago.value/qryRelCustoAmbqtd.value;
end;

procedure TdmRelatorio.dbRelCustoCidCalcFields(DataSet: TDataSet);
begin
    dbRelCustoCidValorPago.value:=dbRelCustoCidValor.value-
                                   dbRelCustoCidGlosa.value;
    if qryRelCustoHospital.Active=true then
    if qryRelCustoHospital.Locate('Cliente;Hospital',VarArrayof([dbRelCustoCidCliente.value,dbRelCustoCidHospital.value]),[]) then
    begin
        if qryRelCustoHospitalValor.value>0 then
            dbRelCustoCidPValor.value:=dbRelCustoCidValor.value/qryRelCustoHospitalValor.value*100
        else
            dbRelCustoCidPValor.value:=0;

        if (qryRelCustoHospitalValor.value-
            qryRelCustoHospitalGlosaE.value-
            qryRelCustoHospitalGlosaM.value)>0 then
            dbRelCustoCidPValorPago.value:=(dbRelCustoCidValor.value-
                                             dbRelCustoCidGlosa.value)/
                                            (qryRelCustoHospitalValor.value-
                                             qryRelCustoHospitalGlosaE.value-
                                             qryRelCustoHospitalGlosaM.value)*100
        else
            dbRelCustoCidPValorPago.value:=0;
    end;
    dbDiagnostico.IndexFieldNames:='CodCid';
    if dbDiagnostico.Locate('CodCid',dbRelCustoCidCodCid.value+'00',[]) then
       dbRelCustoCidCodCidNome.value:=dbDiagnosticoNome.value
    else
       dbRelCustoCidCodCidNOme.value:='Não cadastrado';
end;

procedure TdmRelatorio.qryEstatHospitalCalcFields(DataSet: TDataSet);
var iparcial,iparcialc,iparcialr:integer;
begin                                                          
    qryEstatHospitalLogotipo.value:=1; //B&B
    if frmRelEstatisticaHospital<>nil then
        qryEstatHospitalLogotipo.value:=frmRelEstatisticaHospital.iLogo;;

    iparcial:=0;
    iparcialc:=0;
    iparcialr:=0;
    qryEstatHospitalLinha.value:=qryEstatHospital.RecNo;
    qryEstatHospitalValorGlosado.Value:=qryEstatHospitalValorGlosadoM.value+qryEstatHospitalValorGlosadoE.value;
    qryEstatHospitalDiariasPagas.Value:=qryEstatHospitalDiarias.Value-qryEstatHospitalDiariasGlosadas.Value;

    qryEstatHospitalDiariasNaoProrroga.Value:=0;
    if qryEstatHospital4.Active=true then
        if qryEstatHospital4.Locate('Cliente;Hospital',VarArrayof([qryEstatHospitalCliente.value,
                                                                   qryEstatHospitalHospital.value]),[]) then
            qryEstatHospitalDiariasNaoProrroga.Value:=qryEstatHospital4DiariasCalculadas.value-
                                                      qryEstatHospital4Diarias.value;

    qryEstatHospitalPaciente1.Value:=qryEstatHospitalPaciente.asInteger-qryEstatHospitalComplemento.asInteger;
    qryEstatHospitalValorPago.Value:=qryEstatHospitalValor.Value-
                                     qryEstatHospitalValorGlosado.Value;

    if (frmRelEstatisticaHospital<>nil) then
        qryEstatHospitalTipoMedia.value:=frmRelEstatisticaHospital.rdgMedia.ItemIndex;


//****** Acerto das parciais - se Pacientes ou Capeantes
    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
    begin
        if qryParcial.Locate('Cliente;Hospital;',VarArrayof([qryEstatHospitalCliente.Value,
                                                             qryEstatHospitalHospital.Value]),[]) then
        begin
            while (qryParcialCliente.value=qryEstatHospitalCliente.value) and
                  (qryParcialHospital.value=qryEstatHospitalHospital.value) and
                  (not qryParcial.eof) do
            begin
                iparcial:=iparcial+1;
                qryParcial.Next;
            end;
        end;
        qryEstatHospitaliParcial.value:=iparcial;

        qryEstatHospitalPaciente1.Value:=qryEstatHospitalPaciente.asInteger-qryEstatHospitalComplemento.asInteger-
                                         qryEstatHospitalParcial.AsInteger+iparcial;
    end;
//***** Detalhado - visita
//***** Acerto das parciais de visitas  - se Pacientes ou Capeantes

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
    begin
        if qryParcial2.Locate('Cliente;Hospital;Internacao',VarArrayof([qryEstatHospitalCliente.Value,
                                                                        qryEstatHospitalHospital.Value,'C']),[]) then
        begin
            while (qryParcial2Cliente.value=qryEstatHospitalCliente.value) and
                  (qryParcial2Hospital.value=qryEstatHospitalHospital.value) and
                  (qryParcial2Internacao.value='C') and
                  (not qryParcial2.eof) do
            begin
                iparcialc:=iparcialc+1;
                qryParcial2.Next;
            end;
            if iparcialc=0 then
                iparcialr:=iparcial
            else
                iparcialr:=iparcial-iparcialc;
        end;
    end;

    qryEstatHospitalDiariaClinica.value:=0;
    qryEstatHospitalDiariaCirurgica.Value:=0;
    qryEstatHospitalPacienteClinica.value:=0;
    qryEstatHospitalPacienteCirurgica.Value:=0;
    if qryEstatHospital2.Active=true then
    begin
        if qryEstatHospital2.Locate('Cliente;Hospital;Internacao',VarArrayof([qryEstatHospitalCliente.value,
                                                                              qryEstatHospitalHospital.value,'C']),[]) then
        begin
            qryEstatHospitalDiariaClinica.Value:=qryEstatHospital2Diarias.value-qryEstatHospital2DiariasGlosadas.value;
            if (frmRelEstatisticaHospital<>nil) and
               (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
                   qryEstatHospitalPacienteClinica.Value:=qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger-
                                                          qryEstatHospital2Parcial.AsInteger+iparcialc
            else
                qryEstatHospitalPacienteClinica.Value:=qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger;
        end;
        if qryEstatHospital2.Locate('Cliente;Hospital;Internacao',VarArrayof([qryEstatHospitalCliente.value,
                                                                              qryEstatHospitalHospital.value,'R']),[]) then
        begin
            qryEstatHospitalDiariaCirurgica.Value:=qryEstatHospital2Diarias.value-qryEstatHospital2DiariasGlosadas.value;
            if (frmRelEstatisticaHospital<>nil) and
               (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
                qryEstatHospitalPacienteCirurgica.Value:=qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger-
                                                         qryEstatHospital2Parcial.AsInteger+iparcialr
            else
                qryEstatHospitalPacienteCirurgica.Value:=qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger;
        end;
    end;

    qryEstatHospitalDiariaLonga.value:=0;
    qryEstatHospitalDiariaCurta.Value:=0;
    qryEstatHospitalPacienteLonga.value:=0;
    qryEstatHospitalPacienteCurta.Value:=0;

    if qryEstatHospital1.Active=true then
    begin
        if qryEstatHospital1.Locate('Cliente;Hospital',VarArrayof([qryEstatHospitalCliente.value,
                                                                   qryEstatHospitalHospital.value]),[]) then
        begin
            qryEstatHospitalDiariaLonga.Value:=qryEstatHospital1Diarias.value-qryEstatHospital1DiariasGlosadas.value;
            qryEstatHospitalPacienteLonga.value:=qryEstatHospital1Paciente.asInteger-qryEstatHospital1Complemento.asInteger;

            qryEstatHospitalDiariaCurta.Value:=qryEstatHospitalDiariasPagas.value-qryEstatHospitalDiariaLonga.value;
            qryEstatHospitalPacienteCurta.value:=qryEstatHospitalPaciente1.value-qryEstatHOspitalPacienteLonga.value;

{            qryEstatHospitalDiariaLonga.Value:=qryEstatHospital1Diarias.value-qryEstatHospital1DiariasGlosadas.value;
            qryEstatHospitalPacienteLonga.value:=qryEstatHospital1Paciente.asInteger-qryEstatHospital1Complemento.asInteger;

            qryEstatHospitalDiariaCurta.Value:=qryEstatHospitalDiariasPagas.value-qryEstatHospitalDiariaLonga.value;
            qryEstatHospitalPacienteCurta.value:=qryEstatHospitalPaciente1.value-qryEstatHOspitalPacienteLonga.value;}
        end
        else
        begin
            qryEstatHospitalDiariaLonga.value:=0;
            qryEstatHospitalPacienteLonga.value:=0;
            qryEstatHospitalDiariaCurta.Value:=qryEstatHospitalDiariasPagas.value;
            qryEstatHOspitalPacienteCurta.value:=qryEstatHospitalPaciente1.value;
        end;
    end;

    qryEstatHospitalMediaUTI.Value:=0;
    qryEstatHospitalMediaLonga.Value:=0;
    qryEstatHospitalMediaCurta.Value:=0;
    qryEstatHospitalMediaCirurgica.Value:=0;
    qryEstatHospitalMediaClinica.Value:=0;
    if qryEstatHospitalPaciente1.Value<>0 then
       qryEstatHospitalMediaUTI.Value:=qryEstatHospitalDiariasUTI.Value/qryEstatHospitalPaciente1.Value;

    if qryEstatHospitalPacienteCurta.Value<>0 then
       qryEstatHospitalMediaCurta.Value:=qryEstatHospitalDiariaCurta.Value/qryEstatHospitalPacienteCurta.Value;
    if qryEstatHospitalPacienteLonga.Value<>0 then
       qryEstatHospitalMediaLonga.Value:=qryEstatHospitalDiariaLonga.Value/qryEstatHospitalPacienteLonga.Value;

    if qryEstatHospitalPacienteCirurgica.Value<>0 then
       qryEstatHospitalMediaCirurgica.Value:=qryEstatHospitalDiariaCirurgica.Value/qryEstatHospitalPacienteCirurgica.Value;
    if qryEstatHospitalPacienteClinica.Value<>0 then
       qryEstatHospitalMediaClinica.Value:=qryEstatHospitalDiariaClinica.Value/qryEstatHospitalPacienteClinica.Value;

//**** Detalhado - Pre Analise
    if (frmRelEstatisticaHospital<>nil) and (qryDistribuicaoCC.active=true) then
    begin
        if qryDistribuicaoCC.Locate('Cliente;Hospital',VarArrayof([qryEstatHospitalCliente.value,
                                                                   qryEstatHospitalHospital.value]),[]) then
        begin
            while (qryDistribuicaoCCCliente.value=qryEstatHospitalCliente.value) and
                  (qryDistribuicaoCCHospital.value=qryEstatHospitalHospital.value) and
                  (not qryDistribuicaoCC.Eof) do
            begin
                if (qryDistribuicaoCCGlosaI.value='AP') or
                   (qryDistribuicaoCCGlosaI.value='BE') or
                   (qryDistribuicaoCCGlosaI.value='DC') or
                   (qryDistribuicaoCCGlosaI.value='DI') or
                   (qryDistribuicaoCCGlosaI.value='EN') or
                   (qryDistribuicaoCCGlosaI.value='IS') or
                   (qryDistribuicaoCCGlosaI.value='SE') or
                   (qryDistribuicaoCCGlosaI.value='UT') then
                    qryEstatHospitalValorDiaria.value:=qryEstatHospitalValorDiaria.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='TX') or
                   (qryDistribuicaoCCGlosaI.value='DA') then
                    qryEstatHospitalValorTaxa.value:=qryEstatHospitalValorTaxa.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='MT') or
                   (qryDistribuicaoCCGlosaI.value='ME') then
                    qryEstatHospitalValorMaterial.value:=qryEstatHospitalValorMaterial.value+
                                                       qryDistribuicaoCCValorPago.value;
                if (qryDistribuicaoCCGlosaI.value='MD') then
                    qryEstatHospitalValorMedicamento.value:=qryEstatHospitalValorMedicamento.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='GA') then
                    qryEstatHospitalValorGases.value:=qryEstatHospitalValorGases.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='DT') or
                   (qryDistribuicaoCCGlosaI.value='HM') or
                   (qryDistribuicaoCCGlosaI.value='FI') or
                   (qryDistribuicaoCCGlosaI.value='PR') or
                   (qryDistribuicaoCCGlosaI.value='HE') then
                    qryEstatHospitalValorSADT.value:=qryEstatHospitalValorSADT.value+
                                                      qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='PT') then
                    qryEstatHospitalValorPacote.value:=qryEstatHospitalValorPacote.value+
                                                       qryDistribuicaoCCValorPago.value;
                qryDistribuicaoCC.Next;
            end;
            if qryEstatHospitalValorPago.Value<>0 then
            begin
              qryEstatHospitalPorcDiaria.Value:=qryEstatHospitalValorDiaria.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcTaxa.Value:=qryEstatHospitalValorTaxa.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcMaterial.Value:=qryEstatHospitalValorMaterial.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcMedicamento.Value:=qryEstatHospitalValorMedicamento.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcGases.Value:=qryEstatHospitalValorGases.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcSADT.Value:=qryEstatHospitalValorSADT.Value/
                                                qryEstatHospitalValorPago.Value*100;
              qryEstatHospitalPorcPacote.Value:=qryEstatHospitalValorPacote.Value/
                                                qryEstatHospitalValorPago.Value*100;
            end
            else
            begin
               qryEstatHospitalPorcDiaria.Value:=0;
               qryEstatHospitalPorcTaxa.Value:=0;
               qryEstatHospitalPorcMaterial.Value:=0;
               qryEstatHospitalPorcMedicamento.Value:=0;
               qryEstatHospitalPorcGases.Value:=0;
               qryEstatHospitalPorcSADT.Value:=0;
               qryEstatHospitalPorcPacote.Value:=0;

            end;
        end;
    end;
//*****
    if qryEstatHospitalValor.Value<>0 then
       qryEstatHospitalGlosaPorc.Value:=qryEstatHospitalValorGlosado.Value/
                                        qryEstatHospitalValor.Value*100
    else
       qryEstatHospitalGlosaPorc.Value:=0;

    if qryEstatHospitalValor.Value<>0 then
       qryEstatHospitalGlosaPorcM.Value:=qryEstatHospitalValorGlosadoM.Value/
                                    qryEstatHospitalValor.Value*100
    else
       qryEstatHospitalGlosaPorcM.Value:=0;

    if qryEstatHospitalValor.Value<>0 then
       qryEstatHospitalGlosaPorcE.Value:=qryEstatHospitalValorGlosadoE.Value/
                                    qryEstatHospitalValor.Value*100
    else
       qryEstatHospitalGlosaPorcE.Value:=0;

    if qryEstatHospitalPaciente1.Value<>0 then
       qryEstatHospitalMedia.Value:=(qryEstatHospitalDiarias.Value-qryEstatHospitalDiariasGlosadas.Value)/
                                     qryEstatHospitalPaciente1.Value
    else
       qryEstatHospitalMedia.Value:=0;

    qryEstatHospitalMediana.Value:=0;

    if qryEstatHospitalPaciente1.Value<>0 then
    begin
        qryEstatHospitalCustoPaciente.Value:=qryEstatHospitalValorPago.Value/
                                             qryEstatHospitalPaciente1.Value;
        qryEstatHospitalCMPDiaria.Value:=qryEstatHospitalValorDiaria.Value/
                                         qryEstatHospitalPaciente1.Value;
        qryEstatHospitalCMPTaxa.Value:=qryEstatHospitalValorTaxa.Value/
                                         qryEstatHospitalPaciente1.Value;
        qryEstatHospitalCMPMaterial.Value:=qryEstatHospitalValorMaterial.Value/
                                         qryEstatHospitalPaciente1.Value;
        qryEstatHospitalCMPMedicamento.Value:=qryEstatHospitalValorMedicamento.Value/
                                         qryEstatHospitalPaciente1.Value;
        qryEstatHospitalCMPSADT.Value:=qryEstatHospitalValorSADT.Value/
                                         qryEstatHospitalPaciente1.Value;
    end
    else
    begin
        qryEstatHospitalCustoPaciente.Value:=0;
        qryEstatHospitalCMPDiaria.value:=0;
        qryEstatHospitalCMPTaxa.value:=0;
        qryEstatHospitalCMPMaterial.value:=0;
        qryEstatHospitalCMPMedicamento.value:=0;
        qryEstatHospitalCMPSADT.value:=0;
    end;

    if (qryEstatHospitalDiarias.Value-qryEstatHospitalDiariasGlosadas.Value)<>0 then
        qryEstatHospitalCustoDia.Value:=qryEstatHospitalValorPago.Value/
                                       (qryEstatHospitalDiarias.Value-qryEstatHospitalDiariasGlosadas.Value)
    else
        qryEstatHospitalCustoDia.Value:=0;

    qryEstatHospitalValorNaoAcordado.value:=qryEstatHospitalValorNaoAcordadoM.value+
                                            qryEstatHospitalValorNaoAcordadoE.value;

end;

procedure TdmRelatorio.qryEstatHospital3CalcFields(DataSet: TDataSet);
var iparcialc,iparcialr:integer;
begin
    iparcialc:=0;
    iparcialr:=0;
    qryEstatHospital3DiariasPagas.Value:=qryEstatHospital3Diarias.Value-qryEstatHospital3DiariasGlosadas.Value;

    qryEstatHospital3Paciente1.Value:=qryEstatHospital3Paciente.asInteger-qryEstatHospital3Complemento.asInteger;

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
        qryestatHospital3Paciente1.Value:=qryestatHospital3Paciente.asInteger-qryestatHospital3Complemento.asInteger-
                                          qryestatHospital3Parcial.AsInteger+qryParcial.RecordCount; //total por cliente - usa parcial principal

    if (frmRelEstatisticaHospital<>nil) then
        qryEstatHospital3iparcial.Value:=qryParcial.RecordCount
    else
        qryEstatHospital3iparcial.Value:=0;

    qryEstatHospital3ValorPago.Value:=qryEstatHospital3Valor.Value-
                                      qryEstatHospital3ValorGlosado.Value;
//***** Detalhado - visita
//***** Acerto das parciais de visitas  - se Pacientes ou Capeantes

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
    begin
        if qryParcial2.Locate('Cliente',qryEstatHospital3Cliente.Value,[]) then
        begin
            while (qryParcial2Cliente.value=qryEstatHospital3Cliente.value) and
                  (not qryParcial2.eof) do
            begin
                if  qryParcial2Internacao.value='C' then
                    iparcialc:=iparcialc+1;
                if  qryParcial2Internacao.value='R' then
                    iparcialr:=iparcialr+1;
                qryParcial2.Next;
            end;
        end;
    end;

//**** Detalhado - visita
    qryEstatHospital3DiariaClinica.value:=0;
    qryEstatHospital3DiariaCirurgica.Value:=0;
    qryEstatHospital3PacienteClinica.value:=0;
    qryEstatHospital3PacienteCirurgica.Value:=0;
    if qryEstatHospital2.Active=true then
    begin
        qryEstatHospital2.Locate('Cliente',qryEstatHospital3Cliente.value,[]);
        while (qryEstatHospital2Cliente.value=qryEstatHospital3Cliente.value) and
              (not qryEstatHospital2.eof) do
        begin
            if qryEstatHospital2Internacao.value='C' then
            begin
                qryEstatHospital3DiariaClinica.Value:=(qryEstatHospital3DiariaClinica.Value)+
                                                      (qryEstatHospital2Diarias.value-qryEstatHospital2DiariasGlosadas.value);
                if (frmRelEstatisticaHospital<>nil) and
                   (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
                       qryEstatHospital3PacienteClinica.Value:=(qryEstatHospital3PacienteClinica.Value)+
                                                               (qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger-
                                                                qryEstatHospital2Parcial.AsInteger)
                else
                    qryEstatHospital3PacienteClinica.Value:=(qryEstatHospital3PacienteClinica.Value)+
                                                            (qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger);
            end;
            if qryEstatHospital2Internacao.value='R' then
            begin
                qryEstatHospital3DiariaCirurgica.Value:=(qryEstatHospital3DiariaCirurgica.Value)+
                                                        (qryEstatHospital2Diarias.value-qryEstatHospital2DiariasGlosadas.value);
                if (frmRelEstatisticaHospital<>nil) and
                   (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
                    qryEstatHospital3PacienteCirurgica.Value:=(qryEstatHospital3PacienteCirurgica.Value)+
                                                              (qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger-
                                                               qryEstatHospital2Parcial.AsInteger)
                else
                    qryEstatHospital3PacienteCirurgica.Value:=(qryEstatHospital3PacienteCirurgica.Value)+
                                                              (qryEstatHospital2Paciente.asInteger-qryEstatHospital2Complemento.asInteger);
            end;
            qryEstatHospital2.Next;
        end;
    end;

    qryEstatHospital3DiariaLonga.value:=0;
    qryEstatHospital3DiariaCurta.Value:=0;
    qryEstatHospital3PacienteLonga.value:=0;
    qryEstatHospital3PacienteCurta.Value:=0;
    if qryEstatHospital1.Active=true then
    begin
        if qryEstatHospital1.Locate('Cliente',qryEstatHospital3Cliente.value,[]) then
        begin
            while (qryEstatHospital1Cliente.value=qryEstatHospital3Cliente.value) and
                  (not qryEstatHospital1.Eof) do
            begin
                qryEstatHospital3DiariaLonga.Value:=qryEstatHospital3DiariaLonga.Value+qryEstatHospital1Diarias.value-qryEstatHospital1DiariasGlosadas.value;
                qryEstatHospital3PacienteLonga.value:=(qryEstatHospital3PacienteLonga.value)+qryEstatHospital1Paciente.asInteger-qryEstatHospital1Complemento.asInteger;
                qryEstatHospital1.Next;
            end;
            qryEstatHospital3DiariaCurta.Value:=qryEstatHospital3DiariaCurta.Value+qryEstatHospital3DiariasPagas.value-qryEstatHospital3DiariaLonga.value;
            qryEstatHospital3PacienteCurta.value:=qryEstatHospital3Paciente1.Value-qryEstatHospital3PacienteLonga.value;
        end
        else
        begin
            qryEstatHospital3DiariaLonga.value:=0;
            qryEstatHospital3PacienteLonga.value:=0;
            qryEstatHospital3DiariaCurta.Value:=qryEstatHospital3DiariasPagas.value;
            qryEstatHospital3PacienteCurta.value:=qryEstatHospital3Paciente1.value;
        end;
    end;

    qryEstatHospital3MediaUTI.Value:=0;
    qryEstatHospital3MediaLonga.Value:=0;
    qryEstatHospital3MediaCurta.Value:=0;
    qryEstatHospital3MediaCirurgica.Value:=0;
    if qryEstatHospital3Paciente1.Value<>0 then
       qryEstatHospital3MediaUTI.Value:=qryEstatHospital3DiariasUTI.Value/qryEstatHospital3Paciente1.Value;
    if qryEstatHospital3PacienteCurta.Value<>0 then
       qryEstatHospital3MediaCurta.Value:=qryEstatHospital3DiariaCurta.Value/qryEstatHospital3PacienteCurta.Value;
    if qryEstatHospital3PacienteLonga.Value<>0 then
       qryEstatHospital3MediaLonga.Value:=qryEstatHospital3DiariaLonga.Value/qryEstatHospital3PacienteLonga.Value;

    if qryEstatHospital3PacienteCirurgica.Value<>0 then
       qryEstatHospital3MediaCirurgica.Value:=qryEstatHospital3DiariaCirurgica.Value/(qryEstatHospital3PacienteCirurgica.Value+iparcialr);
    if qryEstatHospital3PacienteClinica.Value<>0 then
       qryEstatHospital3MediaClinica.Value:=qryEstatHospital3DiariaClinica.Value/(qryEstatHospital3PacienteClinica.Value+iparcialc);

///**** Detalhado - pre analise
    if (frmRelEstatisticaHospital<>nil) and (qryDistribuicaoCC.active=true) then
    begin
        if qryDistribuicaoCC.Locate('Cliente',qryEstatHospital3Cliente.value,[]) then
        begin
            while (qryDistribuicaoCCCliente.value=qryEstatHospital3Cliente.value) and
                  (not qryDistribuicaoCC.Eof) do
            begin
                if (qryDistribuicaoCCGlosaI.value='AP') or
                   (qryDistribuicaoCCGlosaI.value='BE') or
                   (qryDistribuicaoCCGlosaI.value='DC') or
                   (qryDistribuicaoCCGlosaI.value='DI') or
                   (qryDistribuicaoCCGlosaI.value='EN') or
                   (qryDistribuicaoCCGlosaI.value='IS') or
                   (qryDistribuicaoCCGlosaI.value='SE') or
                   (qryDistribuicaoCCGlosaI.value='UT') then
                    qryEstatHospital3ValorDiaria.value:=qryEstatHospital3ValorDiaria.value+
                                                        qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='TX') or
                   (qryDistribuicaoCCGlosaI.value='DA') then
                    qryEstatHospital3ValorTaxa.value:=qryEstatHospital3ValorTaxa.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='MT') or
                   (qryDistribuicaoCCGlosaI.value='ME') then
                    qryEstatHospital3ValorMaterial.value:=qryEstatHospital3ValorMaterial.value+
                                                       qryDistribuicaoCCValorPago.value;
                if (qryDistribuicaoCCGlosaI.value='MD') then
                    qryEstatHospital3ValorMedicamento.value:=qryEstatHospital3ValorMedicamento.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='GA') then
                    qryEstatHospital3ValorGases.value:=qryEstatHospital3ValorGases.value+
                                                       qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='DT') or
                   (qryDistribuicaoCCGlosaI.value='HM') or
                   (qryDistribuicaoCCGlosaI.value='FI') or
                   (qryDistribuicaoCCGlosaI.value='PR') or
                   (qryDistribuicaoCCGlosaI.value='HE') then
                    qryEstatHospital3ValorSADT.value:=qryEstatHospital3ValorSADT.value+
                                                      qryDistribuicaoCCValorPago.value;

                if (qryDistribuicaoCCGlosaI.value='PT') then
                    qryEstatHospital3ValorPacote.value:=qryEstatHospital3ValorPacote.value+
                                                       qryDistribuicaoCCValorPago.value;
                qryDistribuicaoCC.Next;
            end;
            if qryEstatHospital3ValorPago.Value<>0 then
            begin
              qryEstatHospital3PorcDiaria.Value:=qryEstatHospital3ValorDiaria.Value/
                                                 qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcTaxa.Value:=qryEstatHospital3ValorTaxa.Value/
                                               qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcMaterial.Value:=qryEstatHospital3ValorMaterial.Value/
                                                   qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcMedicamento.Value:=qryEstatHospital3ValorMedicamento.Value/
                                                      qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcGases.Value:=qryEstatHospital3ValorGases.Value/
                                                qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcSADT.Value:=qryEstatHospital3ValorSADT.Value/
                                               qryEstatHospital3ValorPago.Value*100;
              qryEstatHospital3PorcPacote.Value:=qryEstatHospital3ValorPacote.Value/
                                                 qryEstatHospital3ValorPago.Value*100;
            end
            else
            begin
               qryEstatHospital3PorcDiaria.Value:=0;
               qryEstatHospital3PorcTaxa.Value:=0;
               qryEstatHospital3PorcMaterial.Value:=0;
               qryEstatHospital3PorcMedicamento.Value:=0;
               qryEstatHospital3PorcGases.Value:=0;
               qryEstatHospital3PorcSADT.Value:=0;
               qryEstatHospital3PorcPacote.Value:=0;
            end;
        end;
    end;

    if qryEstatHospital3Valor.Value<>0 then
       qryEstatHospital3GlosaPorc.Value:=qryEstatHospital3ValorGlosado.Value/
                                    qryEstatHospital3Valor.Value*100
    else
       qryEstatHospital3GlosaPorc.Value:=0;

    if qryEstatHospital3Valor.Value<>0 then
       qryEstatHospital3GlosaPorcM.Value:=qryEstatHospital3ValorGlosadoM.Value/
                                          qryEstatHospital3Valor.Value*100
    else
       qryEstatHospital3GlosaPorcM.Value:=0;

    if qryEstatHospital3Valor.Value<>0 then
       qryEstatHospital3GlosaPorcE.Value:=qryEstatHospital3ValorGlosadoE.Value/
                                          qryEstatHospital3Valor.Value*100
    else
       qryEstatHospital3GlosaPorcE.Value:=0;


    if qryEstatHospital3Paciente1.Value<>0 then
    begin
       qryEstatHospital3Media.Value:=(qryEstatHospital3Diarias.Value-qryEstatHospital3DiariasGlosadas.Value)/
                                      qryEstatHospital3Paciente1.Value;
        qryEstatHospital3CMPDiaria.Value:=qryEstatHospital3ValorDiaria.Value/
                                         qryEstatHospital3Paciente1.Value;
        qryEstatHospital3CMPTaxa.Value:=qryEstatHospital3ValorTaxa.Value/
                                         qryEstatHospital3Paciente1.Value;
        qryEstatHospital3CMPMaterial.Value:=qryEstatHospital3ValorMaterial.Value/
                                         qryEstatHospital3Paciente1.Value;
        qryEstatHospital3CMPMedicamento.Value:=qryEstatHospital3ValorMedicamento.Value/
                                         qryEstatHospital3Paciente1.Value;
        qryEstatHospital3CMPSADT.Value:=qryEstatHospital3ValorSADT.Value/
                                         qryEstatHospital3Paciente1.Value;
    end
    else
    begin
       qryEstatHospital3Media.Value:=0;
       qryEstatHospital3CMPDiaria.Value:=0;
       qryEstatHospital3CMPTaxa.Value:=0;
       qryEstatHospital3CMPMaterial.Value:=0;
       qryEstatHospital3CMPMedicamento.Value:=0;
       qryEstatHospital3CMPSADT.Value:=0;
    end;


    if qryEstatHospital3Paciente1.Value<>0 then
        qryEstatHospital3CustoPaciente.Value:=qryEstatHospital3ValorPago.Value/
                                              qryEstatHospital3Paciente1.Value
    else
        qryEstatHospital3CustoPaciente.Value:=0;

    if (qryEstatHospital3Diarias.Value-qryEstatHospital3DiariasGlosadas.Value)<>0 then
        qryEstatHospital3CustoDia.Value:=qryEstatHospital3ValorPago.Value/
                                        (qryEstatHospital3Diarias.Value-qryEstatHospital3DiariasGlosadas.Value)
    else
        qryEstatHospital3CustoDia.Value:=0;

    qryEstatHospital3ValorNaoAcordado.value:=qryEstatHospital3ValorNaoAcordadoM.value+
                                         qryEstatHospital3ValorNaoAcordadoE.value;

    if qryEstatHospital3Paciente.Value<>0 then
       qryEstatHospital3TMI.Value:=(qryEstatHospital3Diarias.Value-qryEstatHospital3DiariasGlosadas.Value)/
                                      qryEstatHospital3Paciente.Value;
end;

procedure TdmRelatorio.qryGraficoCalcFields(DataSet: TDataSet);
begin
    qryGraficoDiariasPagas.value:=qryGraficoDiarias.value-qryGraficoDiariasGlosadas.value;
end;

procedure TdmRelatorio.qryEstatPacienteCalcFields(DataSet: TDataSet);
var ano,mes,dia,anon,mesn,dian:word;
begin
    DecodeDate(date,ano,mes,dia);
    if (not qryEstatPacienteDataNascimento.IsNull) and
       (qryEstatPacienteDataNascimento.value>0) then
       DecodeDate(qryEstatPacienteDataNascimento.Value,anon,mesn,dian)
    else
        anon:=qryEstatPacienteAnoNascimento.Value;

    qryEstatPacienteIdade.Value:=ano-anon;
    if (qryEstatPacienteIdade.Value<=2) and
       (not qryEstatPacienteDataNascimento.IsNull) then
    begin
       qryEstatPacienteIdade.Value:=mes-mesn;
       if qryEstatPacienteIdade.Value<1 then
          qryEstatPacienteIdade.Value:=qryEstatPacienteIdade.Value+12;
       if ano-anon=2 then
          qryEstatPacienteIdade.Value:=qryEstatPacienteIdade.Value+12;
       qryEstatPacienteUnidade.Value:='mes(es)';
    end
    else
       qryEstatPacienteUnidade.Value:='ano(s)';

    qryEstatPacienteDiariasNaoProrroga.Value:=qryEstatPacienteDiariasCalculadas.Value-qryEstatPacienteDiarias.Value;

    if qryEstatPacienteInternacao.value='C' then
       qryEstatPacienteInternacaoTexto.value:='Clínica';
    if qryEstatPacienteInternacao.value='R' then
       qryEstatPacienteInternacaoTexto.value:='Cirúrgica';

    if qryEstatPacienteTratamento.value='E' then
       qryEstatPacienteTratamentoTexto.value:='Eletivo';
    if qryEstatPacienteTratamento.value='R' then
        qryEstatPacienteTratamentoTexto.value:='Urgência';
    if qryEstatPacienteTratamento.value='A' then
       qryEstatPacienteTratamentoTexto.value:='Acidente Pessoal';


    if qryEstatPacienteVisita.value=0 then
       qryEstatPacienteVisitaTexto.value:='Não'
    else
       qryEstatPacienteVisitaTexto.value:='Sim';

    if qryEstatPacienteParcial.value=0 then
       qryEstatPacienteParcialTexto.value:='Não'
    else
       qryEstatPacienteParcialTexto.value:='Sim';

    if qryEstatPacientePacote.value=false then
       qryEstatPacientePacoteTexto.value:='Não'
    else
       qryEstatPacientePacoteTexto.value:='Sim';

    if qryEstatPacienteComplemento.value=false then
       qryEstatPacienteComplementoTexto.value:='Não'
    else
       qryEstatPacienteComplementoTexto.value:='Sim';

    if qryEstatPacienteComplementoF.value=true then
        qryEstatPacienteCompFornecedor.value:='Sim'
    else
        qryEstatPacienteCompFornecedor.value:='Não';

    if dbItemHIDiagnostico.Active then
    begin
        if dbItemHIDiagnostico.Locate('Cliente;AtendimentoHI',VarArrayof([qryEstatPacienteCliente.value,qryEstatPacienteAtendimentoHI.value]),[]) then
            while (dbItemHIDiagnosticoCliente.value=qryEstatPacienteCliente.value) and
                  (dbItemHIDiagnosticoAtendimentoHI.value=qryEstatPacienteAtendimentoHI.value) and
                  (not dbItemHIDiagnostico.eof) do
            begin
                if dbItemHIDiagnosticoPrincipal.value=true then
                    qryEstatPacienteCodCid.value:=dbItemHIDiagnosticoCodCid.value;
                dbItemHIDiagnostico.Next;
            end;
    end;

    if dbDiagnostico.Locate('CodCid',qryEstatPacienteCodCid.value,[]) then
        qryEstatPacienteDescricaoCid.value:=dbDiagnosticoNome.value
    else
        qryEstatPacienteDescricaoCid.value:='';

    qryEstatPacienteValorGlosado.value:=qryEstatPacienteValorGlosadoM.value+qryEstatPacienteValorGlosadoE.value;
    qryEstatPacienteValorPago.value:=qryEstatPacienteValor.value-qryEstatPacienteValorGlosadoM.value-qryEstatPacienteValorGlosadoE.value;
    qryEstatPacienteCodigoPacienteok.value:='*'+qryEstatPacienteCodigoPaciente.Value;

    qryEstatPacienteDiariaApto.value:=qryEstatPacienteDiasUti.value+qryEstatPacienteSemi.value;
    qryEstatPacienteDiariaEnf.value:=qryEstatPacienteApto.value+qryEstatPacienteEnfermaria.value+
                                     qryEstatPacienteBercario.value+qryEstatPacienteIsolamento.value+
                                     qryEstatPacienteDayClinicQtd.value+
                                     qryEstatPacienteDiasUti.value+qryEstatPacienteSemi.value;

    qryEstatPacienteAtendHITexto.value:=qryEstatPacienteAtendimentoHI.asstring;

    qryEstatPacienteJustBradesco.value:='';
    if qryEstatPacienteNABradesco.value='E' then
       qryEstatPacienteJustBradesco.value:='Cobrança de Excedente (Pacote+)';
    if qryEstatPacienteNABradesco.value='O' then
       qryEstatPacienteJustBradesco.value:='OPME';
    if qryEstatPacienteNABradesco.value='C' then
       qryEstatPacienteJustBradesco.value:='Procedimentos combinados';
    if qryEstatPacienteNABradesco.value='P' then
       qryEstatPacienteJustBradesco.value:='Prorrogação';
    if qryEstatPacienteNABradesco.value='R' then
       qryEstatPacienteJustBradesco.value:='Rede perfil';

    if frmRelControleVisita=nil then
    begin
       qryEstatPacienteDataFimPCalculada.value:=qryEstatPacienteDataFimP.value;
       qryEstatPacienteDiariasP.value:=qryEstatPacienteDataFimP.value-qryEstatPacienteDataInicioP.value;
    end
    else
    begin
        if qryEstatPacienteDataFimP.isnull then
        begin
            mes:=StrToInt(frmRelControleVisita.Edit3.text);
            ano:=StrToInt(frmRelControleVisita.Edit4.text);
            qryEstatPacienteDataFimPCalculada.value:=EndOfAMonth(ano,mes);
        end
        else
            qryEstatPacienteDataFimPCalculada.value:=qryEstatPacienteDataFimP.value;
       qryEstatPacienteDiariasP.value:=qryEstatPacienteDataFimPCalculada.value-qryEstatPacienteDataInicioP.value;
    end;
end;

procedure TdmRelatorio.qryEstatPacienteDCalcFields(DataSet: TDataSet);
var ano,mes,dia,anon,mesn,dian:word;
begin
    if qryEstatPacienteDDayClinic.Value=true then
       qryEstatPacienteDDayClinicTexto.Value:='X'
    else
       qryEstatPacienteDDayClinicTexto.Value:='';

    if qryEstatPacienteDDayClinic.Value=true then
       qryEstatPacienteDDayClinicSum.Value:=1
    else
       qryEstatPacienteDDayClinicSum.Value:=0;

    if qryEstatPacienteDParcial.Value=1 then
       qryEstatPacienteDParcialTexto.Value:='X'
    else
       qryEstatPacienteDParcialTexto.Value:='';

    if qryEstatPacienteDParcial.Value=1 then
       qryEstatPacienteDParcialSum.Value:=1
    else
       qryEstatPacienteDParcialSum.Value:=0;

    if qryEstatPacienteDComplemento.Value=true then
       qryEstatPacienteDComplementoTexto.Value:='X'
    else
       qryEstatPacienteDComplementoTexto.Value:='';

    if qryEstatPacienteDComplemento.Value=true then
       qryEstatPacienteDComplementoSum.Value:=1
    else
       qryEstatPacienteDComplementoSum.Value:=0;

    if qryEstatPacienteDPacote.Value=true then
       qryEstatPacienteDPacoteTexto.Value:='X'
    else
       qryEstatPacienteDPacoteTexto.Value:='';

    if qryEstatPacienteDPacote.Value=true then
       qryEstatPacienteDPacoteSum.Value:=1
    else
       qryEstatPacienteDPacoteSum.Value:=0;

    if qryEstatPacienteDIntercambio.Value=true then
       qryEstatPacienteDIntercambioTexto.Value:='X'
    else
       qryEstatPacienteDIntercambioTexto.Value:='';

    if qryEstatPacienteDIntercambio.Value=true then
       qryEstatPacienteDIntercambioSum.Value:=1
    else
       qryEstatPacienteDIntercambioSum.Value:=0;


    qryEstatPacienteDValorPago.Value:=qryEstatPacienteDValor.Value-
                                 qryEstatPacienteDValorGlosadoM.Value-
                                 qryEstatPacienteDValorGlosadoE.Value;

    qryEstatPacienteDDiagnostico.Clear;
    dbItemHIDiagnostico.Locate('Cliente;AtendimentoHI',VarArrayof([qryEstatPacienteDCliente.value,
                                                                   qryEstatPacienteDAtendimentoHI.value]),[]);
    while (not dbItemHIDiagnostico.eof) and
          (dbItemHIDiagnosticoAtendimentoHI.value=qryEstatPacienteDAtendimentoHI.value) and
          (dbItemHIDiagnosticoCliente.value=qryEstatPacienteDCliente.value) do
    begin
        qryEstatPacienteDDiagnostico.value:=qryEstatPacienteDDiagnostico.value+
                                            dbItemHIDiagnosticoDiagnosticoTexto.value+#13;
        dbItemHIDiagnostico.Next;
    end;

    DecodeDate(date,ano,mes,dia);
    if (not qryestatPacienteDDataNascimento.IsNull) and
       (qryestatPacienteDDataNascimento.value>0) then
       DecodeDate(qryestatPacienteDDataNascimento.Value,anon,mesn,dian)
    else
        anon:=qryestatPacienteDAnoNascimento.Value;

    qryestatPacienteDIdade.Value:=ano-anon;
end;

procedure TdmRelatorio.qryEstatPacienteD1CalcFields(DataSet: TDataSet);
begin
    qryEstatPacienteD1ValorPago.Value:=qryEstatPacienteD1Valor.Value-
                                       qryEstatPacienteD1ValorGlosadoM.Value-
                                       qryEstatPacienteD1ValorGlosadoE.Value;
end;

procedure TdmRelatorio.qryEstatPacienteD2CalcFields(DataSet: TDataSet);
begin
    qryEstatPacienteD2ValorPago.Value:=qryEstatPacienteD2Valor.Value-
                                       qryEstatPacienteD2ValorGlosadoM.Value-
                                       qryEstatPacienteD2ValorGlosadoE.Value;
end;

procedure TdmRelatorio.qryDistribuicaoHCalcFields(DataSet: TDataSet);
begin
    qryDistribuicaoHValorPago.Value:=qryDistribuicaoHValor.Value-
                                     qryDistribuicaoHGlosaM.Value-
                                     qryDistribuicaoHGlosaE.Value;
end;

procedure TdmRelatorio.dbGraficoAuxCalcFields(DataSet: TDataSet);
begin
// campos calculados exclusivos do Relatorio de Distribuicao por Hospital
    dbGraficoAuxLogotipo.value:=1;
    if frmRelDistribuicaoValorCC<>nil then
        dbGraficoAuxLogotipo.value:=frmRelDistribuicaoValorCC.iLogo;;

    if dbGraficoAuxGlosa1.value>0 then
        dbGraficoAuxFT1.value:=dbGraficoAuxValor1.value/dbGraficoAuxGlosa1.value*100;
    if dbGraficoAuxDiaria1.value>0 then
        dbGraficoAuxNTC1.value:=dbGraficoAuxPaciente1.value/dbGraficoAuxDiaria1.value*100;
    if  dbGraficoAuxNTC1.value>0 then
        dbGraficoAuxR1.value:=dbGraficoAuxFT1.value/dbGraficoAuxNTC1.value;

    if dbGraficoAuxGlosa2.value>0 then
        dbGraficoAuxFT2.value:=dbGraficoAuxValor2.value/dbGraficoAuxGlosa2.value*100;
    if dbGraficoAuxDiaria2.value>0 then
        dbGraficoAuxNTC2.value:=dbGraficoAuxPaciente2.value/dbGraficoAuxDiaria2.value*100;
    if  dbGraficoAuxNTC2.value>0 then
        dbGraficoAuxR2.value:=dbGraficoAuxFT2.value/dbGraficoAuxNTC2.value;

    if dbGraficoAuxGlosa3.value>0 then
        dbGraficoAuxFT3.value:=dbGraficoAuxValor3.value/dbGraficoAuxGlosa3.value*100;
    if dbGraficoAuxDiaria3.value>0 then
        dbGraficoAuxNTC3.value:=dbGraficoAuxPaciente3.value/dbGraficoAuxDiaria3.value*100;
    if  dbGraficoAuxNTC3.value>0 then
        dbGraficoAuxR3.value:=dbGraficoAuxFT3.value/dbGraficoAuxNTC3.value;

// campos calculados exclusivos do Relatorio de Representatividade Conta
    if  dbGraficoAuxPaciente1.value>0 then
        dbGraficoAuxRepConta.value:=dbGraficoAuxPaciente3.value/dbGraficoAuxPaciente1.value*100;
    if  dbGraficoAuxValor1.value>0 then
        dbGraficoAuxMesAtual.value:=dbGraficoAuxValor3.value/dbGraficoAuxValor1.value*100;
    if  dbGraficoAuxValor2.value>0 then
        dbGraficoAuxMesAnterior.value:=dbGraficoAuxValor4.value/dbGraficoAuxValor2.value*100;

// campos calculados exclusivos do Relatorio Comparativo mes anterior
    if dbGraficoAuxPaciente1.Value=0  then
       dbGraficoAuxCustoPaciente1.Value:=0
    else
        dbGraficoAuxCustoPaciente1.Value:=(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value)/dbGraficoAuxPaciente1.Value;

    if dbGraficoAuxPaciente2.Value=0  then
       dbGraficoAuxCustoPaciente2.Value:=0
    else
        dbGraficoAuxCustoPaciente2.Value:=(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value)/dbGraficoAuxPaciente2.Value;

    if dbGraficoAuxDiaria1.Value=0  then
       dbGraficoAuxCustoDiaria1.Value:=0
    else
        dbGraficoAuxCustoDiaria1.Value:=(dbGraficoAuxValor1.Value-dbGraficoAuxGlosa1.Value)/dbGraficoAuxDiaria1.Value;

    if dbGraficoAuxDiaria2.Value=0  then
       dbGraficoAuxCustoDiaria2.Value:=0
    else
        dbGraficoAuxCustoDiaria2.Value:=(dbGraficoAuxValor2.Value-dbGraficoAuxGlosa2.Value)/dbGraficoAuxDiaria2.Value;

    if dbGraficoAuxPaciente1.Value=0  then
        dbGraficoAuxPermanencia1.Value:=0
    else
        dbGraficoAuxPermanencia1.Value:=dbGraficoAuxDiaria1.value/dbGraficoAuxPaciente1.Value;

    if dbGraficoAuxPaciente2.Value=0  then
        dbGraficoAuxPermanencia2.Value:=0
    else
        dbGraficoAuxPermanencia2.Value:=dbGraficoAuxDiaria2.value/dbGraficoAuxPaciente2.Value;

    if dbGraficoAuxValor1.Value=0 then
        dbGraficoAuxPGlosa1.Value:=0
    else
        dbGraficoAuxPGlosa1.Value:=dbGraficoAuxGlosa1.Value/dbGraficoAuxValor1.Value*100;
    if dbGraficoAuxValor2.Value=0 then
        dbGraficoAuxPGlosa2.Value:=0
    else
        dbGraficoAuxPGlosa2.Value:=dbGraficoAuxGlosa2.Value/dbGraficoAuxValor2.Value*100;

    if dbGraficoAuxCustoPaciente2.value>0 then
        dbGraficoAuxCMP.value:=(dbGraficoAuxCustoPaciente1.value/dbGraficoAuxCustoPaciente2.value-1)*100;

    if dbGraficoAuxCustoDiaria2.value>0 then
        dbGraficoAuxCMD.value:=(dbGraficoAuxCustoDiaria1.value/dbGraficoAuxCustoDiaria2.value-1)*100;

    dbGraficoAuxPGlosa.value:=dbGraficoAuxPGlosa1.value-dbGraficoAuxPGlosa2.value;
    dbGraficoAuxMP.value:=dbGraficoAuxPermanencia1.value-dbGraficoAuxPermanencia2.value;

    // campos calculados exclusivos do Relatorio de Distribuicao por Centro de Custo

    dbGraficoAuxValorTotal.value:=dbGraficoAuxValor1.value+dbGraficoAuxValor2.Value+
                                  dbGraficoAuxValor3.value+dbGraficoAuxValor4.Value+
                                  dbGraficoAuxValor5.value+dbGraficoAuxValor6.Value+
                                  dbGraficoAuxValor7.value+dbGraficoAuxValor8.Value+
                                  dbGraficoAuxValor9.value+dbGraficoAuxValor10.value+
                                  dbGraficoAuxValor11.value+dbGraficoAuxValor12.value;
    dbGraficoAuxGlosaTotal.value:=dbGraficoAuxGlosa1.value+dbGraficoAuxGlosa2.Value+
                                  dbGraficoAuxGlosa3.value+dbGraficoAuxGlosa4.Value+
                                  dbGraficoAuxGlosa5.value+dbGraficoAuxGlosa6.Value+
                                  dbGraficoAuxGlosa7.value+dbGraficoAuxGlosa8.Value+
                                  dbGraficoAuxGlosa9.value+dbGraficoAuxGlosa10.value+
                                  dbGraficoAuxGlosa11.value+dbGraficoAuxGlosa12.value;
    if dbGraficoAuxGlosaTotal.value>0 then
        dbGraficoAuxPT.value:=(1-dbGraficoAuxValorTotal.value/dbGraficoAuxGlosaTotal.value)*100;

end;

procedure TdmRelatorio.qryDistribuicaoCidCalcFields(DataSet: TDataSet);
begin
    qryDistribuicaoCidValorPago.Value:=qryDistribuicaoCidValor.Value-
                                       qryDistribuicaoCidGlosaM.Value-
                                       qryDistribuicaoCidGlosaE.Value;

end;

procedure TdmRelatorio.dbGraficoAuxAfterInsert(DataSet: TDataSet);
begin
    dbGraficoAuxPaciente1.Value:=0;
    dbGraficoAuxPaciente2.value:=0;
    dbGraficoAuxPaciente3.value:=0;
    dbGraficoAuxPaciente4.Value:=0;
    dbGraficoAuxPaciente5.value:=0;
    dbGraficoAuxPaciente6.value:=0;
    dbGraficoAuxPaciente7.Value:=0;
    dbGraficoAuxPaciente8.value:=0;
    dbGraficoAuxPaciente9.value:=0;
    dbGraficoAuxPaciente10.Value:=0;
    dbGraficoAuxPaciente11.value:=0;
    dbGraficoAuxPaciente12.value:=0;
    dbGraficoAuxValor1.value:=0;
    dbGraficoAuxValor2.value:=0;
    dbGraficoAuxValor3.Value:=0;
    dbGraficoAuxValor4.value:=0;
    dbGraficoAuxValor5.value:=0;
    dbGraficoAuxValor6.Value:=0;
    dbGraficoAuxValor7.value:=0;
    dbGraficoAuxValor8.value:=0;
    dbGraficoAuxValor9.Value:=0;
    dbGraficoAuxValor10.value:=0;
    dbGraficoAuxValor11.value:=0;
    dbGraficoAuxValor12.Value:=0;
    dbGraficoAuxGlosa1.value:=0;
    dbGraficoAuxGlosa2.value:=0;
    dbGraficoAuxGlosa3.Value:=0;
    dbGraficoAuxGlosa4.value:=0;
    dbGraficoAuxGlosa5.value:=0;
    dbGraficoAuxGlosa6.Value:=0;
    dbGraficoAuxGlosa7.value:=0;
    dbGraficoAuxGlosa8.value:=0;
    dbGraficoAuxGlosa9.Value:=0;
    dbGraficoAuxGlosa10.value:=0;
    dbGraficoAuxGlosa11.value:=0;
    dbGraficoAuxGlosa12.Value:=0;
    dbGraficoAuxP1.value:=0;
    dbGraficoAuxP2.value:=0;
    dbGraficoAuxP3.Value:=0;
    dbGraficoAuxP4.value:=0;
    dbGraficoAuxP5.value:=0;
    dbGraficoAuxP6.Value:=0;
    dbGraficoAuxP7.value:=0;
    dbGraficoAuxP8.value:=0;
    dbGraficoAuxP9.Value:=0;
    dbGraficoAuxP10.value:=0;
    dbGraficoAuxP11.value:=0;
    dbGraficoAuxP12.Value:=0;
end;

procedure TdmRelatorio.dbGraficoAuxFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if dbGraficoAux.Tag=1 then //Representatividade Conta
        accept:=dbGraficoAuxPaciente3.Value>0;
    if dbGraficoAux.Tag=2 then //Comparativo Mes anterior
        accept:=(dbGraficoAuxDiaria2.Value)>0;
end;

procedure TdmRelatorio.qryRepContaTCalcFields(DataSet: TDataSet);
begin
    qryRepContaTValor.value:=qryRepContaTValorTot.value-
                             qryRepContaTValorGlosadoM.value-
                             qryRepContaTValorGlosadoE.value;
end;

procedure TdmRelatorio.qryRepContaCalcFields(DataSet: TDataSet);
begin
    qryRepContaValor.value:=qryRepContaValorTot.value-
                            qryRepContaValorGlosadoM.value-
                            qryRepContaValorGlosadoE.value;
end;

procedure TdmRelatorio.qryGeralCalcFields(DataSet: TDataSet);
begin
    if  qryGeralPaciente1.value>0 then
        qryGeralRepConta.value:=qryGeralPaciente3.value/qryGeralPaciente1.value*100;
    if  qryGeralValor1.value>0 then
        qryGeralMesAtual.value:=qryGeralValor3.value/qryGeralValor1.value*100;
    if  qryGeralValor2.value>0 then
        qryGeralMesAnterior.value:=qryGeralValor4.value/qryGeralValor2.value*100;
end;

procedure TdmRelatorio.qryGeral1CalcFields(DataSet: TDataSet);
begin
    if qryGeral1Paciente1.Value=0  then
       qryGeral1CustoPaciente1.Value:=0
    else
        qryGeral1CustoPaciente1.Value:=(qryGeral1Valor1.Value-qryGeral1Glosa1.Value)/qryGeral1Paciente1.Value;

    if qryGeral1Paciente2.Value=0  then
       qryGeral1CustoPaciente2.Value:=0
    else
        qryGeral1CustoPaciente2.Value:=(qryGeral1Valor2.Value-qryGeral1Glosa2.Value)/qryGeral1Paciente2.Value;

    if qryGeral1Diaria1.Value=0  then
       qryGeral1CustoDiaria1.Value:=0
    else
        qryGeral1CustoDiaria1.Value:=(qryGeral1Valor1.Value-qryGeral1Glosa1.Value)/qryGeral1Diaria1.Value;

    if qryGeral1Diaria2.Value=0  then
       qryGeral1CustoDiaria2.Value:=0
    else
        qryGeral1CustoDiaria2.Value:=(qryGeral1Valor2.Value-qryGeral1Glosa2.Value)/qryGeral1Diaria2.Value;

    if qryGeral1Paciente1.Value=0  then
        qryGeral1Permanencia1.Value:=0
    else
        qryGeral1Permanencia1.Value:=qryGeral1Diaria1.value/qryGeral1Paciente1.Value;

    if qryGeral1Paciente2.Value=0  then
        qryGeral1Permanencia2.Value:=0
    else
        qryGeral1Permanencia2.Value:=qryGeral1Diaria2.value/qryGeral1Paciente2.Value;

    if qryGeral1Valor1.Value=0 then
        qryGeral1PGlosa1.Value:=0
    else
        qryGeral1PGlosa1.Value:=qryGeral1Glosa1.Value/qryGeral1Valor1.Value*100;
    if qryGeral1Valor2.Value=0 then
        qryGeral1PGlosa2.Value:=0
    else
        qryGeral1PGlosa2.Value:=qryGeral1Glosa2.Value/qryGeral1Valor2.Value*100;

    if qryGeral1CustoPaciente2.value>0 then
        qryGeral1CMP.value:=(qryGeral1CustoPaciente1.value/qryGeral1CustoPaciente2.value-1)*100;

    if qryGeral1CustoDiaria2.value>0 then
        qryGeral1CMD.value:=(qryGeral1CustoDiaria1.value/qryGeral1CustoDiaria2.value-1)*100;

    qryGeral1PGlosa.value:=qryGeral1PGlosa1.value-qryGeral1PGlosa2.value;
    qryGeral1MP.value:=qryGeral1Permanencia1.value-qryGeral1Permanencia2.value;

end;

procedure TdmRelatorio.qryRestricaoCalcFields(DataSet: TDataSet);
begin
    if qryRestricao1.Active=true then
    begin
        qryRestricao1.Locate('Cliente',qryRestricaoCliente.value,[]);
        if qryRestricao1Qtd.value>0 then
            qryRestricaoPorcentagem.Value:=(qryRestricaoQtd.Value/qryRestricao1Qtd.Value)*100;
    end;
end;

procedure TdmRelatorio.qrySumarioVisitaCalcFields(DataSet: TDataSet);
begin
    if qrySumarioVisita1.Active=true then
    begin
        if qrySumarioVisita1.Locate('Cliente;Hospital;Ano;Mes',VarArrayof([qrySumarioVisitaCliente.value,
                                                                   qrySumarioVisitaHospital.value,
                                                                   qrySumarioVisitaAno.value,
                                                                   qrySumarioVisitaMes.value]),[]) then
            qrySumarioVisitaParcial1.asinteger:=qrySumarioVisita1Parcial1.asinteger
        else
            qrySumarioVisitaParcial1.value:=0;
    end;
    qrySumarioVisitaNaoVisita.asinteger:=qrySumarioVisitaCapeantes.asinteger-qrySumarioVisitavisitas.asinteger;
end;

procedure TdmRelatorio.qryDistribuicaoCCCalcFields(DataSet: TDataSet);
begin
    qryDistribuicaoCCValorPago.value:=qryDistribuicaoCCValor.value-qryDistribuicaoCCGlosa.value;
end;

procedure TdmRelatorio.qryAnalisePSCalcFields(DataSet: TDataSet);
begin
    qryAnalisePSLogotipo.value:=1; //B&B
    if frmRelAnaliseAmbPS<>nil then
        qryAnalisePSLogotipo.value:=frmRelAnaliseAmbPS.iLogo;;


    qryAnalisePSLinha.value:=qryAnalisePS.RecNo;
    qryAnalisePSValorPago.Value:=qryAnalisePSValor.Value-
                                 qryAnalisePSValorGlosado.Value;
    if qryAnalisePSValor.Value<>0 then
       qryAnalisePSPorcGlosa.Value:=qryAnalisePSValorGlosado.Value/
                                    qryAnalisePSValor.Value*100
    else
       qryAnalisePSPorcGlosa.Value:=0;

    if qryAnalisePSConsultas.Value<>0 then
        qryAnalisePSCustoConsulta.Value:=qryAnalisePSValorPago.Value/
                                         qryAnalisePSConsultas.Value
    else
        qryAnalisePSCustoConsulta.Value:=0;
end;

procedure TdmRelatorio.qryAnalisePSTotCalcFields(DataSet: TDataSet);
begin
    qryAnalisePSTotValorPago.Value:=qryAnalisePSTotValor.Value-
                                 qryAnalisePSTotValorGlosado.Value;
    if qryAnalisePSTotValor.Value<>0 then
       qryAnalisePSTotPorcGlosa.Value:=qryAnalisePSTotValorGlosado.Value/
                                    qryAnalisePSTotValor.Value*100
    else
       qryAnalisePSTotPorcGlosa.Value:=0;

    if qryAnalisePSTotConsultas.Value<>0 then
        qryAnalisePSTotCustoConsulta.Value:=qryAnalisePSTotValorPago.Value/
                                            qryAnalisePSTotConsultas.Value
    else
        qryAnalisePSTotCustoConsulta.Value:=0;

end;

procedure TdmRelatorio.dbRelEvolucaoCalcFields(DataSet: TDataSet);
begin
    dbRelEvolucaoLogotipo.value:=1; //B&B
    if dbRelEvolucao.tag=0 then  // vindo do RelEvolução da Auditoria
        if frmRelEvolucaoCustoR<>nil then
            dbRelEvolucaoLogotipo.value:=frmRelEvolucaoCustoR.iLogo;;

    if dbRelEvolucao.tag=2 then  // vindo do RelEvolução do PS
        if frmRelEvolucaoCustoRPS<>nil then
            dbRelEvolucaoLogotipo.value:=frmRelEvolucaoCustoRPS.iLogo;;


   dbRelEvolucaoAutorizado1.value:=dbRelEvolucaoValor1.value-dbRelEvolucaoGlosa1.value;
   dbRelEvolucaoAutorizado2.value:=dbRelEvolucaoValor2.value-dbRelEvolucaoGlosa2.value;
   dbRelEvolucaoAutorizado3.value:=dbRelEvolucaoValor3.value-dbRelEvolucaoGlosa3.value;
   dbRelEvolucaoAutorizado4.value:=dbRelEvolucaoValor4.value-dbRelEvolucaoGlosa4.value;
   dbRelEvolucaoAutorizado5.value:=dbRelEvolucaoValor5.value-dbRelEvolucaoGlosa5.value;
   dbRelEvolucaoAutorizado6.value:=dbRelEvolucaoValor6.value-dbRelEvolucaoGlosa6.value;
   dbRelEvolucaoAutorizado7.value:=dbRelEvolucaoValor7.value-dbRelEvolucaoGlosa7.value;
   dbRelEvolucaoAutorizado8.value:=dbRelEvolucaoValor8.value-dbRelEvolucaoGlosa8.value;
   dbRelEvolucaoAutorizado9.value:=dbRelEvolucaoValor9.value-dbRelEvolucaoGlosa9.value;
   dbRelEvolucaoAutorizado10.value:=dbRelEvolucaoValor10.value-dbRelEvolucaoGlosa10.value;
   dbRelEvolucaoAutorizado11.value:=dbRelEvolucaoValor11.value-dbRelEvolucaoGlosa11.value;
   dbRelEvolucaoAutorizado12.value:=dbRelEvolucaoValor12.value-dbRelEvolucaoGlosa12.value;

   dbRelEvolucaoPGlosa1.value:=0;                           
   dbRelEvolucaoPGlosa2.value:=0;
   dbRelEvolucaoPGlosa3.value:=0;
   dbRelEvolucaoPGlosa4.value:=0;
   dbRelEvolucaoPGlosa5.value:=0;
   dbRelEvolucaoPGlosa6.value:=0;
   dbRelEvolucaoPGlosa7.value:=0;
   dbRelEvolucaoPGlosa8.value:=0;
   dbRelEvolucaoPGlosa9.value:=0;
   dbRelEvolucaoPGlosa10.value:=0;
   dbRelEvolucaoPGlosa11.value:=0;
   dbRelEvolucaoPGlosa12.value:=0;

   dbRelEvolucaoCustoP1.value:=0;
   dbRelEvolucaoCustoP2.value:=0;
   dbRelEvolucaoCustoP3.value:=0;
   dbRelEvolucaoCustoP4.value:=0;
   dbRelEvolucaoCustoP5.value:=0;
   dbRelEvolucaoCustoP6.value:=0;
   dbRelEvolucaoCustoP7.value:=0;
   dbRelEvolucaoCustoP8.value:=0;
   dbRelEvolucaoCustoP9.value:=0;
   dbRelEvolucaoCustoP10.value:=0;
   dbRelEvolucaoCustoP11.value:=0;
   dbRelEvolucaoCustoP12.value:=0;

   dbRelEvolucaoCustoD1.value:=0;
   dbRelEvolucaoCustoD2.value:=0;
   dbRelEvolucaoCustoD3.value:=0;
   dbRelEvolucaoCustoD4.value:=0;
   dbRelEvolucaoCustoD5.value:=0;
   dbRelEvolucaoCustoD6.value:=0;
   dbRelEvolucaoCustoD7.value:=0;
   dbRelEvolucaoCustoD8.value:=0;
   dbRelEvolucaoCustoD9.value:=0;
   dbRelEvolucaoCustoD10.value:=0;
   dbRelEvolucaoCustoD11.value:=0;
   dbRelEvolucaoCustoD12.value:=0;

   dbRelEvolucaoMediaP1.value:=0;
   dbRelEvolucaoMediaP2.value:=0;
   dbRelEvolucaoMediaP3.value:=0;
   dbRelEvolucaoMediaP4.value:=0;
   dbRelEvolucaoMediaP5.value:=0;
   dbRelEvolucaoMediaP6.value:=0;
   dbRelEvolucaoMediaP7.value:=0;
   dbRelEvolucaoMediaP8.value:=0;
   dbRelEvolucaoMediaP9.value:=0;
   dbRelEvolucaoMediaP10.value:=0;
   dbRelEvolucaoMediaP11.value:=0;
   dbRelEvolucaoMediaP12.value:=0;

   dbRelEvolucaoTMIUTIG1.value:=0;
   dbRelEvolucaoTMIUTIG2.value:=0;
   dbRelEvolucaoTMIUTIG3.value:=0;
   dbRelEvolucaoTMIUTIG4.value:=0;
   dbRelEvolucaoTMIUTIG5.value:=0;
   dbRelEvolucaoTMIUTIG6.value:=0;
   dbRelEvolucaoTMIUTIG7.value:=0;
   dbRelEvolucaoTMIUTIG8.value:=0;
   dbRelEvolucaoTMIUTIG9.value:=0;
   dbRelEvolucaoTMIUTIG10.value:=0;
   dbRelEvolucaoTMIUTIG11.value:=0;
   dbRelEvolucaoTMIUTIG12.value:=0;


   if dbRelEvolucaoValor1.value>0 then
       dbRelEvolucaoPGlosa1.value:=dbRelEvolucaoGlosa1.value/dbRelEvolucaoValor1.value*100;
   if dbRelEvolucaoValor2.value>0 then
       dbRelEvolucaoPGlosa2.value:=dbRelEvolucaoGlosa2.value/dbRelEvolucaoValor2.value*100;
   if dbRelEvolucaoValor3.value>0 then
       dbRelEvolucaoPGlosa3.value:=dbRelEvolucaoGlosa3.value/dbRelEvolucaoValor3.value*100;
   if dbRelEvolucaoValor4.value>0 then
       dbRelEvolucaoPGlosa4.value:=dbRelEvolucaoGlosa4.value/dbRelEvolucaoValor4.value*100;
   if dbRelEvolucaoValor5.value>0 then
       dbRelEvolucaoPGlosa5.value:=dbRelEvolucaoGlosa5.value/dbRelEvolucaoValor5.value*100;
   if dbRelEvolucaoValor6.value>0 then
       dbRelEvolucaoPGlosa6.value:=dbRelEvolucaoGlosa6.value/dbRelEvolucaoValor6.value*100;
   if dbRelEvolucaoValor7.value>0 then
       dbRelEvolucaoPGlosa7.value:=dbRelEvolucaoGlosa7.value/dbRelEvolucaoValor7.value*100;
   if dbRelEvolucaoValor8.value>0 then
       dbRelEvolucaoPGlosa8.value:=dbRelEvolucaoGlosa8.value/dbRelEvolucaoValor8.value*100;
   if dbRelEvolucaoValor9.value>0 then
       dbRelEvolucaoPGlosa9.value:=dbRelEvolucaoGlosa9.value/dbRelEvolucaoValor9.value*100;
   if dbRelEvolucaoValor10.value>0 then
       dbRelEvolucaoPGlosa10.value:=dbRelEvolucaoGlosa10.value/dbRelEvolucaoValor10.value*100;
   if dbRelEvolucaoValor11.value>0 then
       dbRelEvolucaoPGlosa11.value:=dbRelEvolucaoGlosa11.value/dbRelEvolucaoValor11.value*100;
   if dbRelEvolucaoValor12.value>0 then
       dbRelEvolucaoPGlosa12.value:=dbRelEvolucaoGlosa12.value/dbRelEvolucaoValor12.value*100;


   if dbRelEvolucaoPaciente1.value>0 then
       dbRelEvolucaoCustoP1.value:=dbRelEvolucaoAutorizado1.value/dbRelEvolucaoPaciente1.value;
   if dbRelEvolucaoPaciente2.value>0 then
       dbRelEvolucaoCustoP2.value:=dbRelEvolucaoAutorizado2.value/dbRelEvolucaoPaciente2.value;
   if dbRelEvolucaoPaciente3.value>0 then
       dbRelEvolucaoCustoP3.value:=dbRelEvolucaoAutorizado3.value/dbRelEvolucaoPaciente3.value;
   if dbRelEvolucaoPaciente4.value>0 then
       dbRelEvolucaoCustoP4.value:=dbRelEvolucaoAutorizado4.value/dbRelEvolucaoPaciente4.value;
   if dbRelEvolucaoPaciente5.value>0 then
       dbRelEvolucaoCustoP5.value:=dbRelEvolucaoAutorizado5.value/dbRelEvolucaoPaciente5.value;
   if dbRelEvolucaoPaciente6.value>0 then
       dbRelEvolucaoCustoP6.value:=dbRelEvolucaoAutorizado6.value/dbRelEvolucaoPaciente6.value;
   if dbRelEvolucaoPaciente7.value>0 then
       dbRelEvolucaoCustoP7.value:=dbRelEvolucaoAutorizado7.value/dbRelEvolucaoPaciente7.value;
   if dbRelEvolucaoPaciente8.value>0 then
       dbRelEvolucaoCustoP8.value:=dbRelEvolucaoAutorizado8.value/dbRelEvolucaoPaciente8.value;
   if dbRelEvolucaoPaciente9.value>0 then
       dbRelEvolucaoCustoP9.value:=dbRelEvolucaoAutorizado9.value/dbRelEvolucaoPaciente9.value;
   if dbRelEvolucaoPaciente10.value>0 then
       dbRelEvolucaoCustoP10.value:=dbRelEvolucaoAutorizado10.value/dbRelEvolucaoPaciente10.value;
   if dbRelEvolucaoPaciente11.value>0 then
       dbRelEvolucaoCustoP11.value:=dbRelEvolucaoAutorizado11.value/dbRelEvolucaoPaciente11.value;
   if dbRelEvolucaoPaciente12.value>0 then
       dbRelEvolucaoCustoP12.value:=dbRelEvolucaoAutorizado12.value/dbRelEvolucaoPaciente12.value;

   if dbRelEvolucaoDiaria1.value>0 then
       dbRelEvolucaoCustoD1.value:=dbRelEvolucaoAutorizado1.value/dbRelEvolucaoDiaria1.value;
   if dbRelEvolucaoDiaria2.value>0 then
       dbRelEvolucaoCustoD2.value:=dbRelEvolucaoAutorizado2.value/dbRelEvolucaoDiaria2.value;
   if dbRelEvolucaoDiaria3.value>0 then
       dbRelEvolucaoCustoD3.value:=dbRelEvolucaoAutorizado3.value/dbRelEvolucaoDiaria3.value;
   if dbRelEvolucaoDiaria4.value>0 then
       dbRelEvolucaoCustoD4.value:=dbRelEvolucaoAutorizado4.value/dbRelEvolucaoDiaria4.value;
   if dbRelEvolucaoDiaria5.value>0 then
       dbRelEvolucaoCustoD5.value:=dbRelEvolucaoAutorizado5.value/dbRelEvolucaoDiaria5.value;
   if dbRelEvolucaoDiaria6.value>0 then
       dbRelEvolucaoCustoD6.value:=dbRelEvolucaoAutorizado6.value/dbRelEvolucaoDiaria6.value;
   if dbRelEvolucaoDiaria7.value>0 then
       dbRelEvolucaoCustoD7.value:=dbRelEvolucaoAutorizado7.value/dbRelEvolucaoDiaria7.value;
   if dbRelEvolucaoDiaria8.value>0 then
       dbRelEvolucaoCustoD8.value:=dbRelEvolucaoAutorizado8.value/dbRelEvolucaoDiaria8.value;
   if dbRelEvolucaoDiaria9.value>0 then
       dbRelEvolucaoCustoD9.value:=dbRelEvolucaoAutorizado9.value/dbRelEvolucaoDiaria9.value;
   if dbRelEvolucaoDiaria10.value>0 then
       dbRelEvolucaoCustoD10.value:=dbRelEvolucaoAutorizado10.value/dbRelEvolucaoDiaria10.value;
   if dbRelEvolucaoDiaria11.value>0 then
       dbRelEvolucaoCustoD11.value:=dbRelEvolucaoAutorizado11.value/dbRelEvolucaoDiaria11.value;
   if dbRelEvolucaoDiaria12.value>0 then
       dbRelEvolucaoCustoD12.value:=dbRelEvolucaoAutorizado12.value/dbRelEvolucaoDiaria12.value;

   if dbRelEvolucaoPaciente1.value>0 then
       dbRelEvolucaoMediaP1.value:=dbRelEvolucaoDiaria1.value/dbRelEvolucaoPaciente1.value;
   if dbRelEvolucaoPaciente2.value>0 then
       dbRelEvolucaoMediaP2.value:=dbRelEvolucaoDiaria2.value/dbRelEvolucaoPaciente2.value;
   if dbRelEvolucaoPaciente3.value>0 then
       dbRelEvolucaoMediaP3.value:=dbRelEvolucaoDiaria3.value/dbRelEvolucaoPaciente3.value;
   if dbRelEvolucaoPaciente4.value>0 then
       dbRelEvolucaoMediaP4.value:=dbRelEvolucaoDiaria4.value/dbRelEvolucaoPaciente4.value;
   if dbRelEvolucaoPaciente5.value>0 then
       dbRelEvolucaoMediaP5.value:=dbRelEvolucaoDiaria5.value/dbRelEvolucaoPaciente5.value;
   if dbRelEvolucaoPaciente6.value>0 then
       dbRelEvolucaoMediaP6.value:=dbRelEvolucaoDiaria6.value/dbRelEvolucaoPaciente6.value;
   if dbRelEvolucaoPaciente7.value>0 then
       dbRelEvolucaoMediaP7.value:=dbRelEvolucaoDiaria7.value/dbRelEvolucaoPaciente7.value;
   if dbRelEvolucaoPaciente8.value>0 then
       dbRelEvolucaoMediaP8.value:=dbRelEvolucaoDiaria8.value/dbRelEvolucaoPaciente8.value;
   if dbRelEvolucaoPaciente9.value>0 then
       dbRelEvolucaoMediaP9.value:=dbRelEvolucaoDiaria9.value/dbRelEvolucaoPaciente9.value;
   if dbRelEvolucaoPaciente10.value>0 then
       dbRelEvolucaoMediaP10.value:=dbRelEvolucaoDiaria10.value/dbRelEvolucaoPaciente10.value;
   if dbRelEvolucaoPaciente11.value>0 then
       dbRelEvolucaoMediaP11.value:=dbRelEvolucaoDiaria11.value/dbRelEvolucaoPaciente11.value;
   if dbRelEvolucaoPaciente12.value>0 then
       dbRelEvolucaoMediaP12.value:=dbRelEvolucaoDiaria12.value/dbRelEvolucaoPaciente12.value;

   if dbRelEvolucaoPaciente1.value>0 then
       dbRelEvolucaoTMIUTIG1.value:=dbRelEvolucaoDiariaUTI1.value/dbRelEvolucaoPaciente1.value;
   if dbRelEvolucaoPaciente2.value>0 then
       dbRelEvolucaoTMIUTIG2.value:=dbRelEvolucaoDiariaUTI2.value/dbRelEvolucaoPaciente2.value;
   if dbRelEvolucaoPaciente3.value>0 then
       dbRelEvolucaoTMIUTIG3.value:=dbRelEvolucaoDiariaUTI3.value/dbRelEvolucaoPaciente3.value;
   if dbRelEvolucaoPaciente4.value>0 then
       dbRelEvolucaoTMIUTIG4.value:=dbRelEvolucaoDiariaUTI4.value/dbRelEvolucaoPaciente4.value;
   if dbRelEvolucaoPaciente5.value>0 then
       dbRelEvolucaoTMIUTIG5.value:=dbRelEvolucaoDiariaUTI5.value/dbRelEvolucaoPaciente5.value;
   if dbRelEvolucaoPaciente6.value>0 then
       dbRelEvolucaoTMIUTIG6.value:=dbRelEvolucaoDiariaUTI6.value/dbRelEvolucaoPaciente6.value;
   if dbRelEvolucaoPaciente7.value>0 then
       dbRelEvolucaoTMIUTIG7.value:=dbRelEvolucaoDiariaUTI7.value/dbRelEvolucaoPaciente7.value;
   if dbRelEvolucaoPaciente8.value>0 then
       dbRelEvolucaoTMIUTIG8.value:=dbRelEvolucaoDiariaUTI8.value/dbRelEvolucaoPaciente8.value;
   if dbRelEvolucaoPaciente9.value>0 then
       dbRelEvolucaoTMIUTIG9.value:=dbRelEvolucaoDiariaUTI9.value/dbRelEvolucaoPaciente9.value;
   if dbRelEvolucaoPaciente10.value>0 then
       dbRelEvolucaoTMIUTIG10.value:=dbRelEvolucaoDiariaUTI10.value/dbRelEvolucaoPaciente10.value;
   if dbRelEvolucaoPaciente11.value>0 then
       dbRelEvolucaoTMIUTIG11.value:=dbRelEvolucaoDiariaUTI11.value/dbRelEvolucaoPaciente11.value;
   if dbRelEvolucaoPaciente12.value>0 then
       dbRelEvolucaoTMIUTIG12.value:=dbRelEvolucaoDiariaUTI12.value/dbRelEvolucaoPaciente12.value;


   if dbRelEvolucaoPacienteUTI1.value>0 then
       dbRelEvolucaoTMIUTII1.value:=dbRelEvolucaoDiariaUTI1.value/dbRelEvolucaoPacienteUTI1.value;
   if dbRelEvolucaoPacienteUTI2.value>0 then
       dbRelEvolucaoTMIUTII2.value:=dbRelEvolucaoDiariaUTI2.value/dbRelEvolucaoPacienteUTI2.value;
   if dbRelEvolucaoPacienteUTI3.value>0 then
       dbRelEvolucaoTMIUTII3.value:=dbRelEvolucaoDiariaUTI3.value/dbRelEvolucaoPacienteUTI3.value;
   if dbRelEvolucaoPacienteUTI4.value>0 then
       dbRelEvolucaoTMIUTII4.value:=dbRelEvolucaoDiariaUTI4.value/dbRelEvolucaoPacienteUTI4.value;
   if dbRelEvolucaoPacienteUTI5.value>0 then
       dbRelEvolucaoTMIUTII5.value:=dbRelEvolucaoDiariaUTI5.value/dbRelEvolucaoPacienteUTI5.value;
   if dbRelEvolucaoPacienteUTI6.value>0 then
       dbRelEvolucaoTMIUTII6.value:=dbRelEvolucaoDiariaUTI6.value/dbRelEvolucaoPacienteUTI6.value;
   if dbRelEvolucaoPacienteUTI7.value>0 then
       dbRelEvolucaoTMIUTII7.value:=dbRelEvolucaoDiariaUTI7.value/dbRelEvolucaoPacienteUTI7.value;
   if dbRelEvolucaoPacienteUTI8.value>0 then
       dbRelEvolucaoTMIUTII8.value:=dbRelEvolucaoDiariaUTI8.value/dbRelEvolucaoPacienteUTI8.value;
   if dbRelEvolucaoPacienteUTI9.value>0 then
       dbRelEvolucaoTMIUTII9.value:=dbRelEvolucaoDiariaUTI9.value/dbRelEvolucaoPacienteUTI9.value;
   if dbRelEvolucaoPacienteUTI10.value>0 then
       dbRelEvolucaoTMIUTII10.value:=dbRelEvolucaoDiariaUTI10.value/dbRelEvolucaoPacienteUTI10.value;
   if dbRelEvolucaoPacienteUTI11.value>0 then
       dbRelEvolucaoTMIUTII11.value:=dbRelEvolucaoDiariaUTI11.value/dbRelEvolucaoPacienteUTI11.value;
   if dbRelEvolucaoPacienteUTI12.value>0 then
       dbRelEvolucaoTMIUTII12.value:=dbRelEvolucaoDiariaUTI12.value/dbRelEvolucaoPacienteUTI12.value;
end;

procedure TdmRelatorio.dbRelEvolucaoAfterInsert(DataSet: TDataSet);
begin
    dbRelEvolucaoPaciente1.value:=0;
    dbRelEvolucaoValor1.value:=0;
    dbRelEvolucaoGlosa1.value:=0;
    dbRelEvolucaoDiaria1.value:=0;

    dbRelEvolucaoPaciente2.value:=0;
    dbRelEvolucaoValor2.value:=0;
    dbRelEvolucaoGlosa2.value:=0;
    dbRelEvolucaoDiaria2.value:=0;

    dbRelEvolucaoPaciente3.value:=0;
    dbRelEvolucaoValor3.value:=0;
    dbRelEvolucaoGlosa3.value:=0;
    dbRelEvolucaoDiaria3.value:=0;

    dbRelEvolucaoPaciente4.value:=0;
    dbRelEvolucaoValor4.value:=0;
    dbRelEvolucaoGlosa4.value:=0;
    dbRelEvolucaoDiaria4.value:=0;

    dbRelEvolucaoPaciente5.value:=0;
    dbRelEvolucaoValor5.value:=0;
    dbRelEvolucaoGlosa5.value:=0;
    dbRelEvolucaoDiaria5.value:=0;

    dbRelEvolucaoPaciente6.value:=0;
    dbRelEvolucaoValor6.value:=0;
    dbRelEvolucaoGlosa6.value:=0;
    dbRelEvolucaoDiaria6.value:=0;

    dbRelEvolucaoPaciente7.value:=0;
    dbRelEvolucaoValor7.value:=0;
    dbRelEvolucaoGlosa7.value:=0;
    dbRelEvolucaoDiaria7.value:=0;

    dbRelEvolucaoPaciente8.value:=0;
    dbRelEvolucaoValor8.value:=0;
    dbRelEvolucaoGlosa8.value:=0;
    dbRelEvolucaoDiaria8.value:=0;

    dbRelEvolucaoPaciente9.value:=0;
    dbRelEvolucaoValor9.value:=0;
    dbRelEvolucaoGlosa9.value:=0;
    dbRelEvolucaoDiaria9.value:=0;

    dbRelEvolucaoPaciente10.value:=0;
    dbRelEvolucaoValor10.value:=0;
    dbRelEvolucaoGlosa10.value:=0;
    dbRelEvolucaoDiaria10.value:=0;

    dbRelEvolucaoPaciente11.value:=0;
    dbRelEvolucaoValor11.value:=0;
    dbRelEvolucaoGlosa11.value:=0;
    dbRelEvolucaoDiaria11.value:=0;

    dbRelEvolucaoPaciente12.value:=0;
    dbRelEvolucaoValor12.value:=0;
    dbRelEvolucaoGlosa12.value:=0;
    dbRelEvolucaoDiaria12.value:=0;


    dbRelEvolucaoDiariaUTI1.value:=0;
    dbRelEvolucaoPacienteUTI1.value:=0;
    dbRelEvolucaoDiariaUTI2.value:=0;
    dbRelEvolucaoPacienteUTI2.value:=0;
    dbRelEvolucaoDiariaUTI3.value:=0;
    dbRelEvolucaoPacienteUTI3.value:=0;
    dbRelEvolucaoDiariaUTI4.value:=0;
    dbRelEvolucaoPacienteUTI4.value:=0;
    dbRelEvolucaoDiariaUTI5.value:=0;
    dbRelEvolucaoPacienteUTI5.value:=0;
    dbRelEvolucaoDiariaUTI6.value:=0;
    dbRelEvolucaoPacienteUTI6.value:=0;
    dbRelEvolucaoDiariaUTI7.value:=0;
    dbRelEvolucaoPacienteUTI1.value:=0;
    dbRelEvolucaoDiariaUTI8.value:=0;
    dbRelEvolucaoPacienteUTI8.value:=0;
    dbRelEvolucaoDiariaUTI9.value:=0;
    dbRelEvolucaoPacienteUTI9.value:=0;
    dbRelEvolucaoDiariaUTI10.value:=0;
    dbRelEvolucaoPacienteUTI10.value:=0;
    dbRelEvolucaoDiariaUTI11.value:=0;
    dbRelEvolucaoPacienteUTI11.value:=0;
    dbRelEvolucaoDiariaUTI11.value:=0;
    dbRelEvolucaoPacienteUTI11.value:=0;
end;

procedure TdmRelatorio.qrySenhaDupFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//    accept:=(qrySenhaDupQtd.value>1)
//        and (qrySenhaDupSenha.value<>'');
end;

procedure TdmRelatorio.qryHICalcFields(DataSet: TDataSet);
begin
    if qryHIParcial.value=0 then
       qryHIParcialTexto.value:='Não'
    else
       qryHIParcialTexto.value:='Sim';
end;

procedure TdmRelatorio.dbControlPCalcFields(DataSet: TDataSet);
begin
    dbControlPTotal.value:=dbControlPCapeante1.value+
                           dbControlPCapeante2.value+
                           dbControlPCapeante3.value+
                           dbControlPCapeante4.value+
                           dbControlPCapeante5.value+
                           dbControlPCapeante6.value+
                           dbControlPCapeante7.value+
                           dbControlPCapeante8.value+
                           dbControlPCapeante9.value+
                           dbControlPCapeante10.value+
                           dbControlPCapeante11.value+
                           dbControlPCapeante12.value;
end;

procedure TdmRelatorio.qryControlPCalcFields(DataSet: TDataSet);
begin
    if frmRelMediaCapeantes=nil then
        qryControlPMeses.value:=1
    else
        qryControlPMeses.value:=frmRelMediaCapeantes.imeses;

    qryControlPMedia.value:=qryControlPCapeantes.value/qryControlPMeses.value;
end;

procedure TdmRelatorio.qryExcelBradescoCalcFields(DataSet: TDataSet);
begin
    qryExcelBradescoFim.value:='***';

    qryExcelBradescoValorGlosado.value:=qryExcelBradescoValorGlosadoM.value+qryExcelBradescoValorGlosadoE.value;
    qryExcelBradescoValorPago.value:=qryExcelBradescoValor.value-qryExcelBradescoValorGlosadoM.value-qryExcelBradescoValorGlosadoE.value;

    if qryExcelBradescoInternacao.value='C' then
       qryExcelBradescoInternacaoTexto.value:='Clínica';
    if qryExcelBradescoInternacao.value='R' then
       qryExcelBradescoInternacaoTexto.value:='Cirúrgica';

    if qryExcelBradescoTratamento.value='E' then
       qryExcelBradescoTratamentoTexto.value:='Eletivo';
    if qryExcelBradescoTratamento.value='R' then
        qryExcelBradescoTratamentoTexto.value:='Urgência';
    if qryExcelBradescoTratamento.value='A' then
       qryExcelBradescoTratamentoTexto.value:='Acidente Pessoal';


    if qryExcelBradescoConclusao.value='A' then
       qryExcelBradescoAlta.value:='Alta Normal';
    if qryExcelBradescoConclusao.value='O' then
        qryExcelBradescoAlta.value:='Óbito';
    if qryExcelBradescoConclusao.value='T' then
       qryExcelBradescoAlta.value:='Transferência';
    if qryExcelBradescoConclusao.value='H' then
        qryExcelBradescoAlta.value:='Home Care';
    if qryExcelBradescoConclusao.value='C' then
       qryExcelBradescoAlta.value:='Curado';
    if qryExcelBradescoConclusao.value='M' then
        qryExcelBradescoAlta.value:='Melhorado';
    if qryExcelBradescoConclusao.value='P' then
       qryExcelBradescoAlta.value:='Pedido';

    qryExcelBradescoEmpresaAuditoria.value:='B+ Auditoria Médica';
    qryExcelBradescoUFEmpresaAuditoria.value:='SP';

    if qryExcelBradescoParcial.value=1 then
        qryExcelBradescoParcialTexto.value:='Sim'
    else
        qryExcelBradescoParcialTexto.value:='Não';

    if qryExcelBradescoComplementoF.value=true then
        qryExcelBradescoCompFornecedor.value:='Sim'
    else
        qryExcelBradescoCompFornecedor.value:='Não';

    dbProDiag.SQL.Text:='Select * from AtendHIDiagnostico where Cliente=:xCli and AtendimentoHI=:xAtend';
    dbProDiag.ParamByName('xCli').value:=qryExcelBradescoCliente.value;
    dbProDiag.ParamByName('xAtend').value:=qryExcelBradescoAtendimentoHI.value;
    dbProDiag.Open;
    dbProDiag.First;
//    dbProDiag.Locate('Cliente;AtendimentoHI',VarArrayof([qryExcelBradescoCliente.value,qryExcelBradescoAtendimentoHI.value]),[]);
    while (dbProDiagCliente.value=qryExcelBradescoCliente.value) and
          (dbProDiagAtendimentoHI.value=qryExcelBradescoAtendimentoHI.value) and
          (not dbProDiag.eof) do
    begin
        if dbProDiagPrincipal.value=true then
            qryExcelBradescoCid10.value:=dbProDiagCodCid.value;
        dbProDiag.Next;
    end;

    qryExcelBradescoMaterial.value:=0;
    qryExcelBradescoMaterialPago.value:=0;
    qryExcelBradescoMaterialE.value:=0;
    qryExcelBradescoMaterialEPago.value:=0;
    qryExcelBradescoMedicamento.value:=0;
    qryExcelBradescoMedicamentoPago.value:=0;
    qryExcelBradescoTaxas.value:=0;
    qryExcelBradescoTaxasPago.value:=0;
    qryExcelBradescoExames.value:=0;
    qryExcelBradescoExamesPago.value:=0;
    qryExcelBradescoHonorarios.value:=0;
    qryExcelBradescoHonorariosPago.value:=0;
    qryExcelBradescoGases.value:=0;
    qryExcelBradescoGasesPago.value:=0;
    qryExcelBradescoHemo.value:=0;
    qryExcelBradescoHemoPago.value:=0;
    qryExcelBradescoPacotes.value:=0;
    qryExcelBradescoPacotesPago.value:=0;
    qryExcelBradescoValorApto.value:=0;
    qryExcelBradescoValorAptoPago.value:=0;
    qryExcelBradescoValorEnfermaria.value:=0;
    qryExcelBradescoValorEnfermariaPago.value:=0;
    qryExcelBradescoValorSemi.value:=0;
    qryExcelBradescoValorSemiPago.value:=0;
    qryExcelBradescoValorUTI.value:=0;
    qryExcelBradescoValorUTIPago.value:=0;
    qryExcelBradescoValorIsolamento.value:=0;
    qryExcelBradescoValorIsolamentoPago.value:=0;
    qryExcelBradescoValorBercario.value:=0;
    qryExcelBradescoValorBercarioPago.value:=0;
    qryExcelBradescoValorDayClinic.value:=0;
    qryExcelBradescoValorDayClinicPago.value:=0;
    qryExcelBradescoValorAcompanhante.value:=0;
    qryExcelBradescoValorAcompanhantePago.value:=0;
    qryExcelBradescoValorDiaria.value:=0;
    qryExcelBradescoValorDiariaPago.value:=0;

    qryExcelBradescoDiasAcompanhante.value:=0;

    dbProGlosa.SQL.Text:='Select * from AtendHIGlosa where Cliente=:xCli and AtendimentoHI=:xAtend';
    dbProGlosa.ParamByName('xCli').value:=qryExcelBradescoCliente.value;
    dbProGlosa.ParamByName('xAtend').value:=qryExcelBradescoAtendimentoHI.value;
    dbProGlosa.Open;
    dbProGlosa.First;
//    dbProGlosa.Locate('Cliente;AtendimentoHI',VarArrayof([qryExcelBradescoCliente.value,qryExcelBradescoAtendimentoHI.value]),[]);
    while (dbProGlosaCliente.value=qryExcelBradescoCliente.value) and
          (dbProGlosaAtendimentoHI.value=qryExcelBradescoAtendimentoHI.value) and
          (not dbProGlosa.eof) do
    begin
        if dbProGlosaGlosaI.value='MT' then
        begin
            qryExcelBradescoMaterial.value:=qryExcelBradescoMaterial.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoMaterialPago.value:=qryExcelBradescoMaterialPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='ME' then
        begin
            qryExcelBradescoMaterialE.value:=qryExcelBradescoMaterialE.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoMaterialEPago.value:=qryExcelBradescoMaterialEPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='MD' then
        begin
            qryExcelBradescoMedicamento.value:=qryExcelBradescoMedicamento.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoMedicamentoPago.value:=qryExcelBradescoMedicamentoPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='TX' then
        begin
            qryExcelBradescoTaxas.value:=qryExcelBradescoTaxas.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoTaxasPago.value:=qryExcelBradescoTaxasPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DT' then
        begin
            qryExcelBradescoExames.value:=qryExcelBradescoExames.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoExamesPago.value:=qryExcelBradescoExamesPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='HM' then
        begin
            qryExcelBradescoHonorarios.value:=qryExcelBradescoHonorarios.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoHonorariosPago.value:=qryExcelBradescoHonorariosPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='GA' then
        begin
            qryExcelBradescoGases.value:=qryExcelBradescoGases.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoGasesPago.value:=qryExcelBradescoGasesPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='HE' then
        begin
            qryExcelBradescoHemo.value:=qryExcelBradescoHemo.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoHemoPago.value:=qryExcelBradescoHemoPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='PT' then
        begin
            qryExcelBradescoPacotes.value:=qryExcelBradescoPacotes.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoPacotesPago.value:=qryExcelBradescoPacotesPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='AP' then
        begin
            qryExcelBradescoValorApto.value:=qryExcelBradescoValorApto.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorAptoPago.value:=qryExcelBradescoValorAptoPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='EN' then
        begin
            qryExcelBradescoValorEnfermaria.value:=qryExcelBradescoValorEnfermaria.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorEnfermariaPago.value:=qryExcelBradescoValorEnfermariaPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='SE' then
        begin
            qryExcelBradescoValorSemi.value:=qryExcelBradescoValorSemi.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorSemiPago.value:=qryExcelBradescoValorSemiPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='UT' then
        begin
            qryExcelBradescoValorUTI.value:=qryExcelBradescoValorUTI.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorUTIPago.value:=qryExcelBradescoValorUTIPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='IS' then
        begin
            qryExcelBradescoValorIsolamento.value:=qryExcelBradescoValorIsolamento.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorIsolamentoPago.value:=qryExcelBradescoValorIsolamentoPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='BE' then
        begin
            qryExcelBradescoValorBercario.value:=qryExcelBradescoValorBercario.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorBercarioPago.value:=qryExcelBradescoValorBercarioPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DC' then
        begin
            qryExcelBradescoValorDayClinic.value:=qryExcelBradescoValorDayClinic.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorDayClinicPago.value:=qryExcelBradescoValorDayClinicPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DA' then
        begin
            qryExcelBradescoValorAcompanhante.value:=qryExcelBradescoValorAcompanhante.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorAcompanhantePago.value:=qryExcelBradescoValorAcompanhantePago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DI' then
        begin
            qryExcelBradescoValorDiaria.value:=qryExcelBradescoValorDiaria.value+dbProGlosaValorApresentado.value;
            qryExcelBradescoValorDiariaPago.value:=qryExcelBradescoValorDiariaPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        dbProGlosa.Next;
    end;

    if qryExcelBradescoParcial.value=1 then
    begin
        qryExcelBradescoInicioFatura.value:=qryExcelBradescoDataInicioP.value;
        qryExcelBradescoFimFatura.clear;
    end
    else
    begin
        qryExcelBradescoInicioFatura.value:=qryExcelBradescoDataInternacao.value;
        qryExcelBradescoFimFatura.value:=qryExcelBradescoDataAlta.value;;
    end;

    qryExcelBradescoAtendHITexto.value:=qryExcelBradescoAtendimentoHI.asstring;
end;

procedure TdmRelatorio.qryExcelCespCalcFields(DataSet: TDataSet);
var d,m,a:word;
begin
    qryExcelCespFim.value:='FIM';
    qryExcelCespCodAmbAlta.value:=qryExcelCespCodAmb.value;
    qryExcelCespAmbTextoAlta.value:=qryExcelCespAmbTexto.value;

    qryExcelCespParto.value:='';
    if (qryExcelCespCodAmb.value=91090040) or
       (qryExcelCespCodAmb.value=60451677) then
        qryExcelCespParto.value:='NORMAL';
    if (qryExcelCespCodAmb.value=60451699) or
       (qryExcelCespCodAmb.value=45080186) or
       (qryExcelCespCodAmb.value=60450543) then
        qryExcelCespParto.value:='CESÁREA';

    if qryExcelCespRN.value='S' then
        qryExcelCespDiasUTINeonatal.value:=qryExcelCespDiasUti.value
    else
        qryExcelCespDiasUTINeonatal.value:=0;

    dbProGlosa.Open;

    dbProDiag.Locate('Cliente;AtendimentoHI',VarArrayof([qryExcelCespCliente.value,qryExcelCespAtendimentoHI.value]),[]);
    while (dbProDiagCliente.value=qryExcelCespCliente.value) and
          (dbProDiagAtendimentoHI.value=qryExcelCespAtendimentoHI.value) and
          (not dbProDiag.eof) do
    begin
        if dbProDiagPrincipal.value=true then
        begin
            qryExcelCespCid10.value:=dbProDiagCodCid.value;
            qryExcelCespCid10Texto.value:=dbProDiagDiagnosticoTexto.value;
        end;
        dbProDiag.Next;
    end;

    if qryExcelCespDataAlta.IsNull then
        qryExcelCespDataAltaTexto.value:='INTERNADO'
    else
    begin
        DecodeDate(qryExcelCespDataAlta.value,a,m,d);
        qryExcelCespDataAltaTexto.value:=IntToStr(m)+'/'+IntToStr(d)+'/'+IntToStr(a);
    end;

    qryExcelCespValorPago.value:=qryExcelCespValor.value-qryExcelCespValorGlosadoM.value-qryExcelCespValorGlosadoE.value;

    qryExcelCespMaterial.value:=0;
    qryExcelCespMaterialPago.value:=0;
    qryExcelCespMedicamento.value:=0;
    qryExcelCespMedicamentoPago.value:=0;
    qryExcelCespTaxas.value:=0;
    qryExcelCespTaxasPago.value:=0;
    qryExcelCespSADT.value:=0;
    qryExcelCespSADTPago.value:=0;
    qryExcelCespHonorarios.value:=0;
    qryExcelCespHonorariosPago.value:=0;
    qryExcelCespGases.value:=0;
    qryExcelCespGasesPago.value:=0;
    qryExcelCespDiarias.value:=0;
    qryExcelCespDiariasPago.value:=0;

    dbProGlosa.Locate('Cliente;AtendimentoHI',VarArrayof([qryExcelCespCliente.value,qryExcelCespAtendimentoHI.value]),[]);
    while (dbProGlosaCliente.value=qryExcelCespCliente.value) and
          (dbProGlosaAtendimentoHI.value=qryExcelCespAtendimentoHI.value) and
          (not dbProGlosa.eof) do
    begin
        if dbProGlosaGlosaI.value='MT' then
        begin
            qryExcelCespMaterial.value:=qryExcelCespMaterial.value+dbProGlosaValorApresentado.value;
            qryExcelCespMaterialPago.value:=qryExcelCespMaterialPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='MD' then
        begin
            qryExcelCespMedicamento.value:=qryExcelCespMedicamento.value+dbProGlosaValorApresentado.value;
            qryExcelCespMedicamentoPago.value:=qryExcelCespMedicamentoPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='TX' then
        begin
            qryExcelCespTaxas.value:=qryExcelCespTaxas.value+dbProGlosaValorApresentado.value;
            qryExcelCespTaxasPago.value:=qryExcelCespTaxasPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DT' then
        begin
            qryExcelCespSADT.value:=qryExcelCespSADT.value+dbProGlosaValorApresentado.value;
            qryExcelCespSADTPago.value:=qryExcelCespSADTPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='HM' then
        begin
            qryExcelCespHonorarios.value:=qryExcelCespHonorarios.value+dbProGlosaValorApresentado.value;
            qryExcelCespHonorariosPago.value:=qryExcelCespHonorariosPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='GA' then
        begin
            qryExcelCespGases.value:=qryExcelCespGases.value+dbProGlosaValorApresentado.value;
            qryExcelCespGasesPago.value:=qryExcelCespGasesPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        if dbProGlosaGlosaI.value='DI' then
        begin
            qryExcelCespDiarias.value:=qryExcelCespDiarias.value+dbProGlosaValorApresentado.value;
            qryExcelCespDiariasPago.value:=qryExcelCespDiariasPago.value+(dbProGlosaValorApresentado.value-dbProGlosaValor.value);
        end;
        dbProGlosa.Next;
    end;

    qryExcelCespAtendHITexto.value:=qryExcelCespAtendimentoHI.asstring;

end;

procedure TdmRelatorio.qryBradescoPacoteRCalcFields(DataSet: TDataSet);
begin
    qryBradescoPacoteRFim.value:='***';
    qryBradescoPacoteRValorGlosado.value:=qryBradescoPacoteRValorGlosadoM.value+qryBradescoPacoteRValorGlosadoE.value;
    qryBradescoPacoteRValorPago.value:=qryBradescoPacoteRValor.value-qryBradescoPacoteRValorGlosadoM.value-qryBradescoPacoteRValorGlosadoE.value;
    if qryBradescoPacoteRValor.value=0 then
        qryBradescoPacoteRPGlosa.value:=0
    else
        qryBradescoPacoteRPGlosa.value:=(qryBradescoPacoteRValorGlosado.value/qryBradescoPacoteRValor.value)*100;
    qryBradescoPacoteRQtdPacotePuro.value:=qryBradescoPacoteRQtdPacote.value-qryBradescoPacoteRPExcedente.asinteger;
    if qryBradescoPacoteRQtdPacotePuro.value=0 then
        qryBradescoPacoteRPAplic.value:=0
    else
        qryBradescoPacoteRPAplic.value:=(qryBradescoPacoteRQtdPacotePuro.value-qryBradescoPacoteRPAberto.value)/
                                         qryBradescoPacoteRQtdPacotePuro.value*100;
end;

procedure TdmRelatorio.qryBradescoPacoteCalcFields(DataSet: TDataSet);
begin
    qryBradescoPacoteFim.value:='***';
    qryBradescoPacoteValorGlosado.value:=qryBradescoPacoteValorGlosadoM.value+qryBradescoPacoteValorGlosadoE.value;
    qryBradescoPacoteValorPago.value:=qryBradescoPacoteValor.value-qryBradescoPacoteValorGlosadoM.value-qryBradescoPacoteValorGlosadoE.value;

    if qryBradescoPacotePAberto.value=1 then
        qryBradescoPacotePAbertoTexto.value:='X'
    else
        qryBradescoPacotePAbertoTexto.value:='';

    if qryBradescoPacotePExcedente.value=1 then
        qryBradescoPacotePExcedenteTexto.value:='X'
    else
        qryBradescoPacotePExcedenteTexto.value:='';

    if qryBradescoPacotePAbertoMotivo.value='M' then
        qryBradescoPacotePMaterial.value:='X'
    else
        qryBradescoPacotePMaterial.value:='';

    if qryBradescoPacotePAbertoMotivo.value='C' then
        qryBradescoPacotePComplicacao.value:='X'
    else
        qryBradescoPacotePComplicacao.value:='';

    if qryBradescoPacotePAbertoMotivo.value='P' then
        qryBradescoPacotePPRocedimento.value:='X'
    else
        qryBradescoPacotePProcedimento.value:='';

    if qryBradescoPacotePAbertoMotivo.value='O' then
        qryBradescoPacotePOutros.value:='X'
    else
        qryBradescoPacotePOutros.value:='';

    qryBradescoPacoteValorHM.value:=0;
    qryBradescoPacoteValorPT.value:=0;
    qryBradescoPacotePagoPacoteSim.value:='';
    qryBradescoPacotePagoPacoteNao.value:='';
    qryBradescoPacotePMaterialTexto.value:='';

    if qryBradescoGlosa.Locate('Cliente;AtendimentoHI;Tipo;GlosaI',
                               VarArrayof([qryBradescoPacoteCliente.value,
                                           qryBradescoPacoteAtendimentoHI.value,
                                           'G','HM']),[]) then
        qryBradescoPacoteValorHM.value:=qryBradescoGlosaValorApresentado.value;
    if qryBradescoGlosa.Locate('Cliente;AtendimentoHI;Tipo;GlosaI',
                               VarArrayof([qryBradescoPacoteCliente.value,
                                           qryBradescoPacoteAtendimentoHI.value,
                                           'G','PT']),[]) then
        qryBradescoPacoteValorPT.value:=qryBradescoGlosaValorApresentado.value;

    if qryBradescoGlosa.Locate('Cliente;AtendimentoHI;Tipo;GlosaI',
                               VarArrayof([qryBradescoPacoteCliente.value,
                                           qryBradescoPacoteAtendimentoHI.value,
                                           'G','MT']),[]) then
        qryBradescoPacotePMaterialTexto.value:='X';

    if qryBradescoPacotePacote.value=true then
        qryBradescoPacotePagoPacoteSim.value:='X'
    else
        qryBradescoPacotePagoPacoteNao.value:='X';

    if qryBradescoPacotePExcedente.value=1 then
        qryBradescoPacotePExcedenteTexto.value:='X'
    else
        qryBradescoPacotePExcedenteTexto.value:='';

    if qryBradescoPacotePAberto.value=1 then
        qryBradescoPacotePAbertoTexto.value:='X'
    else
        qryBradescoPacotePAbertoTexto.value:='';

    qryBradescoPacoteAtendHITexto.value:=qryBradescoPacoteAtendimentoHI.asstring;

end;

procedure TdmRelatorio.qryEstatHospitalRCalcFields(DataSet: TDataSet);
var iparcial:integer;
begin
    qryEstatHospitalRLinha.value:=qryEstatHospitalR.RecNo;
    qryEstatHospitalRValorGlosado.Value:=qryEstatHospitalRValorGlosadoM.value+qryEstatHospitalRValorGlosadoE.value;
    qryEstatHospitalRDiariasPagas.Value:=qryEstatHospitalRDiarias.Value-qryEstatHospitalRDiariasGlosadas.Value;

    qryEstatHospitalRDiariasNaoProrroga.Value:=0;

    qryEstatHospitalRPaciente1.Value:=qryEstatHospitalRPaciente.asInteger-qryEstatHospitalRComplemento.asInteger;

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
    begin
        iparcial:=0;
        if qryParcial.Locate('Cliente;Hospital;',VarArrayof([qryEstatHospitalRCliente.Value,
                                                             qryEstatHospitalRHospital.Value]),[]) then
        begin
            while (qryParcialCliente.value=qryEstatHospitalRCliente.value) and
                  (qryParcialHospital.value=qryEstatHospitalRHospital.value) and
                  (not qryParcial.eof) do
            begin
                iparcial:=iparcial+1;
                qryParcial.Next;
            end;
        end;
        qryEstatHospitalRiParcial.value:=iparcial;
        qryEstatHospitalRPaciente1.Value:=qryEstatHospitalRPaciente.asInteger-qryEstatHospitalRComplemento.asInteger-
                                          qryEstatHospitalRParcial.AsInteger+iparcial;
    end;



    qryEstatHospitalRValorPago.Value:=qryEstatHospitalRValor.Value-
                                     qryEstatHospitalRValorGlosado.Value;
    if qryEstatHospitalRValor.Value<>0 then
       qryEstatHospitalRGlosaPorc.Value:=qryEstatHospitalRValorGlosado.Value/
                                    qryEstatHospitalRValor.Value*100
    else
       qryEstatHospitalRGlosaPorc.Value:=0;

    if qryEstatHospitalRPaciente1.Value<>0 then
       qryEstatHospitalRMedia.Value:=(qryEstatHospitalRDiarias.Value-qryEstatHospitalRDiariasGlosadas.Value)/
                                qryEstatHospitalRPaciente1.Value
    else
       qryEstatHospitalRMedia.Value:=0;

    qryEstatHospitalRMediana.Value:=0;

    if qryEstatHospitalRPaciente1.Value<>0 then
        qryEstatHospitalRCustoPaciente.Value:=qryEstatHospitalRValorPago.Value/
                                             qryEstatHospitalRPaciente1.Value
    else
        qryEstatHospitalRCustoPaciente.Value:=0;

    if (qryEstatHospitalRDiarias.Value-qryEstatHospitalRDiariasGlosadas.Value)<>0 then
        qryEstatHospitalRCustoDia.Value:=qryEstatHospitalRValorPago.Value/
                                       (qryEstatHospitalRDiarias.Value-qryEstatHospitalRDiariasGlosadas.Value)
    else
        qryEstatHospitalRCustoDia.Value:=0;

    qryEstatHospitalRValorNaoAcordado.value:=qryEstatHospitalRValorNaoAcordadoM.value+
                                            qryEstatHospitalRValorNaoAcordadoE.value;

end;

procedure TdmRelatorio.qryEstatHospital3RCalcFields(DataSet: TDataSet);
begin
    qryEstatHospital3RDiariasPagas.Value:=qryEstatHospital3RDiarias.Value-qryEstatHospital3RDiariasGlosadas.Value;

    qryEstatHospital3RPaciente1.Value:=qryEstatHospital3RPaciente.asInteger-qryEstatHospital3RComplemento.asInteger;

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
        qryEstatHospital3RPaciente1.Value:=qryEstatHospital3RPaciente.asInteger-qryEstatHospital3RComplemento.asInteger-
                                          qryEstatHospital3RParcial.AsInteger+qryParcial.RecordCount; //total por cliente - usa parcial principal


    if (frmRelEstatisticaHospital<>nil) then
        qryEstatHospital3Riparcial.Value:=qryParcial.RecordCount
    else
        qryEstatHospital3Riparcial.Value:=0;

    qryEstatHospital3RValorPago.Value:=qryEstatHospital3RValor.Value-
                                 qryEstatHospital3RValorGlosado.Value;
    if qryEstatHospital3RValor.Value<>0 then
       qryEstatHospital3RGlosaPorc.Value:=qryEstatHospital3RValorGlosado.Value/
                                    qryEstatHospital3RValor.Value*100
    else
       qryEstatHospital3RGlosaPorc.Value:=0;

    if qryEstatHospital3RPaciente1.Value<>0 then
       qryEstatHospital3RMedia.Value:=(qryEstatHospital3RDiarias.Value-qryEstatHospital3RDiariasGlosadas.Value)/
                                  qryEstatHospital3RPaciente1.Value
    else
       qryEstatHospital3RMedia.Value:=0;

    if qryEstatHospital3RPaciente1.Value<>0 then
        qryEstatHospital3RCustoPaciente.Value:=qryEstatHospital3RValorPago.Value/
                                         qryEstatHospital3RPaciente1.Value
    else
        qryEstatHospital3RCustoPaciente.Value:=0;

    if (qryEstatHospital3RDiarias.Value-qryEstatHospital3RDiariasGlosadas.Value)<>0 then
        qryEstatHospital3RCustoDia.Value:=qryEstatHospital3RValorPago.Value/
                                    (qryEstatHospital3RDiarias.Value-qryEstatHospital3RDiariasGlosadas.Value)
    else
        qryEstatHospital3RCustoDia.Value:=0;

    qryEstatHospital3RValorNaoAcordado.value:=qryEstatHospital3RValorNaoAcordadoM.value+
                                         qryEstatHospital3RValorNaoAcordadoE.value;

end;

procedure TdmRelatorio.qryRelCustoAmbDCalcFields(DataSet: TDataSet);
begin
    qryRelCustoAmbDValorPago.value:=qryRelCustoAmbDValor.value-
                                   qryRelCustoAmbDGlosaE.value-
                                   qryRelCustoAmbDGlosaM.value;
    qryRelCustoAmbDGlosa.value:=qryRelCustoAmbDGlosaE.value+
                               qryRelCustoAmbDGlosaM.value;
    if qryRelCustoHospital.Active=true then
    if qryRelCustoHospital.Locate('Cliente;Hospital',VarArrayof([qryRelCustoAmbDCliente.value,qryRelCustoAmbDHospital.value]),[]) then
    begin
        if qryRelCustoHospitalValor.value>0 then
            qryRelCustoAmbDPValor.value:=qryRelCustoAmbDValor.value/qryRelCustoHospitalValor.value*100
        else
            qryRelCustoAmbDPValor.value:=0;

        if (qryRelCustoHospitalValor.value-
            qryRelCustoHospitalGlosaE.value-
            qryRelCustoHospitalGlosaM.value)>0 then
            qryRelCustoAmbDPValorPago.value:=(qryRelCustoAmbDValor.value-
                                             qryRelCustoAmbDGlosaE.value-
                                             qryRelCustoAmbDGlosaM.value)/
                                            (qryRelCustoHospitalValor.value-
                                             qryRelCustoHospitalGlosaE.value-
                                             qryRelCustoHospitalGlosaM.value)*100
        else
            qryRelCustoAmbDPValorPago.value:=0;
    end;

end;

procedure TdmRelatorio.qryProdMCalcFields(DataSet: TDataSet);
begin
    qryProdMValorPago.Value:=qryProdMValor.Value-
                             qryProdMValorGlosadoM.Value-
                             qryProdMValorGlosadoE.Value;

    qryProdMValorNaoAcordado.Value:=0;
    qryProdMValorNaoAcordado.Value:=qryProdMValorNaoAcordadoM.Value+
                                    qryProdMValorNaoAcordadoE.Value;

    qryProdMValorGlosado.Value:=qryProdMValorGlosadoM.Value+
                                qryProdMValorGlosadoE.Value;

    qryProdMDiariasPagas.Value:=qryProdMDiarias.Value-
                                qryProdMDiariasGlosadas.Value;

    if qryProdMValor.Value>0 then
        qryProdMPGlosaM.Value:=qryProdMValorGlosadoM.Value/
                               qryProdMValor.Value*100
    else
        qryProdMPGlosaM.Value:=0;

    qryProdMValorPacote.value:=0;
    if qryProdM2.Active then
        if qryProdM2.Locate('Cliente;Nome',varArrayof([qryProdMCliente.value,
                                                       qryProdMNome.value]),[]) then
            qryProdMValorPacote.value:=qryProdM2ValorPago.value;


end;

procedure TdmRelatorio.qryProdM2CalcFields(DataSet: TDataSet);
begin
    qryProdM2ValorPago.Value:=qryProdM2Valor.Value-
                              qryProdM2ValorGlosadoM.Value-
                              qryProdM2ValorGlosadoE.Value;
end;

procedure TdmRelatorio.qryProdECalcFields(DataSet: TDataSet);
begin
    qryProdEValorPago.Value:=qryProdEValor.Value-
                             qryProdEValorGlosadoM.Value-
                             qryProdEValorGlosadoE.Value;

    qryProdEValorNaoAcordado.Value:=0;
    qryProdEValorNaoAcordado.Value:=qryProdEValorNaoAcordadoM.Value+
                                    qryProdEValorNaoAcordadoE.Value;

    qryProdEValorGlosado.Value:=qryProdEValorGlosadoM.Value+
                                qryProdEValorGlosadoE.Value;

    qryProdEDiariasPagas.Value:=qryProdEDiarias.Value-
                                qryProdEDiariasGlosadas.Value;

    if qryProdEValor.Value>0 then
        qryProdEPGlosaM.Value:=qryProdEValorGlosadoE.Value/
                               qryProdEValor.Value*100
    else
        qryProdEPGlosaM.Value:=0;

    qryProdEValorPacote.value:=0;
    if qryProdE2.Active then
        if qryProdE2.Locate('Cliente;Nome',varArrayof([qryProdECliente.value,
                                                       qryProdENome.value]),[]) then
            qryProdEValorPacote.value:=qryProdE2ValorPago.value;

end;

procedure TdmRelatorio.qryProdE2CalcFields(DataSet: TDataSet);
begin
    qryProdE2ValorPago.Value:=qryProdE2Valor.Value-
                              qryProdE2ValorGlosadoM.Value-
                              qryProdE2ValorGlosadoE.Value;

end;

procedure TdmRelatorio.qryProdMDCalcFields(DataSet: TDataSet);
begin
    qryProdMDValorPago.Value:=qryProdMDValor.Value-
                             qryProdMDValorGlosadoM.Value-
                             qryProdMDValorGlosadoE.Value;

    qryProdMDValorNaoAcordado.Value:=0;
    qryProdMDValorNaoAcordado.Value:=qryProdMDValorNaoAcordadoM.Value+
                                    qryProdMDValorNaoAcordadoE.Value;

    qryProdMDValorGlosado.Value:=qryProdMDValorGlosadoM.Value+
                                qryProdMDValorGlosadoE.Value;

    qryProdMDDiariasPagas.Value:=qryProdMDDiarias.Value-
                                qryProdMDDiariasGlosadas.Value;

    if qryProdMDValor.Value>0 then
        qryProdMDPGlosaM.Value:=qryProdMDValorGlosadoM.Value/
                               qryProdMDValor.Value*100
    else
        qryProdMDPGlosaM.Value:=0;

    qryProdMDValorPacote.value:=0;
    if qryProdMD2.Active then
        if qryProdMD2.Locate('Cliente;Nome;Hospital',varArrayof([qryProdMDCliente.value,
                                                                 qryProdMDNome.value,
                                                                 qryProdMDHospital.Value]),[]) then
            qryProdMDValorPacote.value:=qryProdMD2ValorPago.value;

end;

procedure TdmRelatorio.qryProdMD2CalcFields(DataSet: TDataSet);
begin
    qryProdMD2ValorPago.Value:=qryProdMD2Valor.Value-
                              qryProdMD2ValorGlosadoM.Value-
                              qryProdMD2ValorGlosadoE.Value;
end;

procedure TdmRelatorio.qryProdEDCalcFields(DataSet: TDataSet);
begin
    qryProdEDValorPago.Value:=qryProdEDValor.Value-
                             qryProdEDValorGlosadoM.Value-
                             qryProdEDValorGlosadoE.Value;

    qryProdEDValorNaoAcordado.Value:=0;
    qryProdEDValorNaoAcordado.Value:=qryProdEDValorNaoAcordadoM.Value+
                                    qryProdEDValorNaoAcordadoE.Value;

    qryProdEDValorGlosado.Value:=qryProdEDValorGlosadoM.Value+
                                 qryProdEDValorGlosadoE.Value;

    qryProdEDDiariasPagas.Value:=qryProdEDDiarias.Value-
                                qryProdEDDiariasGlosadas.Value;

    if qryProdEDValor.Value>0 then
        qryProdEDPGlosaM.Value:=qryProdEDValorGlosadoE.Value/
                               qryProdEDValor.Value*100
    else
        qryProdEDPGlosaM.Value:=0;

    qryProdEDValorPacote.value:=0;
    if qryProdED2.Active then
        if qryProdED2.Locate('Cliente;Nome;Hospital',varArrayof([qryProdEDCliente.value,
                                                                 qryProdEDNome.value,
                                                                 qryProdEDHospital.Value]),[]) then
            qryProdEDValorPacote.value:=qryProdED2ValorPago.value;

end;

procedure TdmRelatorio.qryProdED2CalcFields(DataSet: TDataSet);
begin
    qryProdED2ValorPago.Value:=qryProdED2Valor.Value-
                              qryProdED2ValorGlosadoM.Value-
                              qryProdED2ValorGlosadoE.Value;

end;

procedure TdmRelatorio.qryDemoPSCalcFields(DataSet: TDataSet);
begin
    qryDemoPSLogotipo.value:=1; //B&B
    if frmRelAnaliseAmbPS<>nil then
        qryDemoPSLogotipo.value:=frmRelAnaliseAmbPS.iLogo;;

    qryDemoPSValorPago.Value:=qryDemoPSValor.Value-
                                 qryDemoPSValorGlosado.Value;
    if qryDemoPSValor.Value<>0 then
       qryDemoPSPorcGlosa.Value:=qryDemoPSValorGlosado.Value/
                                    qryDemoPSValor.Value*100
    else
       qryDemoPSPorcGlosa.Value:=0;

    if qryDemoPSQtdAtendimento.Value<>0 then
        qryDemoPSCustoConsulta.Value:=qryDemoPSValorPago.Value/
                                         qryDemoPSQtdAtendimento.Value
    else
        qryDemoPSCustoConsulta.Value:=0;

end;

procedure TdmRelatorio.dbItemHIDiagnosticoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=dbItemHIDiagnosticoPrincipal.value=true;
end;

procedure TdmRelatorio.qryEstatHospitalCCalcFields(DataSet: TDataSet);
var iparcial:integer;
begin

    qryEstatHospitalCLogotipo.value:=1; //B&B
    if frmRelEstatisticaHospital<>nil then
        qryEstatHospitalCLogotipo.value:=frmRelEstatisticaHospital.iLogo;;

    qryEstatHospitalCLinha.value:=qryEstatHospitalC.RecNo;
    qryEstatHospitalCValorGlosado.Value:=qryEstatHospitalCValorGlosadoM.value+qryEstatHospitalCValorGlosadoE.value;
    qryEstatHospitalCDiariasPagas.Value:=qryEstatHospitalCDiarias.Value-qryEstatHospitalCDiariasGlosadas.Value;

    qryEstatHospitalCDiariasNaoProrroga.Value:=0;
    if qryEstatHospitalC4.Active=true then
        if qryEstatHospitalC4.Locate('Hospital',qryEstatHospitalCHospital.value,[]) then
            qryEstatHospitalCDiariasNaoProrroga.Value:=qryEstatHospitalC4DiariasCalculadas.value-
                                                      qryEstatHospitalC4Diarias.value;

    qryEstatHospitalCPaciente1.Value:=qryEstatHospitalCPaciente.asInteger-qryEstatHospitalCComplemento.asInteger;

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
    begin
        iparcial:=0;
        if qryParcialC.Locate('Hospital',qryEstatHospitalCHospital.Value,[]) then
        begin
            while (qryParcialCHospital.value=qryEstatHospitalCHospital.value) and
                  (not qryParcialC.eof) do
            begin
                iparcial:=iparcial+1;
                qryParcialC.Next;
            end;
        end;
        qryEstatHospitalCiParcial.value:=iparcial;
        qryEstatHospitalCPaciente1.Value:=qryEstatHospitalCPaciente.asInteger-qryEstatHospitalCComplemento.asInteger-
                                         qryEstatHospitalCParcial.AsInteger+iparcial;
    end;

    qryEstatHospitalCValorPago.Value:=qryEstatHospitalCValor.Value-
                                     qryEstatHospitalCValorGlosado.Value;
    if qryEstatHospitalCValor.Value<>0 then
       qryEstatHospitalCGlosaPorc.Value:=qryEstatHospitalCValorGlosado.Value/
                                    qryEstatHospitalCValor.Value*100
    else
       qryEstatHospitalCGlosaPorc.Value:=0;

    if qryEstatHospitalCPaciente1.Value<>0 then
       qryEstatHospitalCMedia.Value:=(qryEstatHospitalCDiarias.Value-qryEstatHospitalCDiariasGlosadas.Value)/
                                qryEstatHospitalCPaciente1.Value
    else
       qryEstatHospitalCMedia.Value:=0;

    qryEstatHospitalCMediana.Value:=0;

    if qryEstatHospitalCPaciente1.Value<>0 then
        qryEstatHospitalCCustoPaciente.Value:=qryEstatHospitalCValorPago.Value/
                                             qryEstatHospitalCPaciente1.Value
    else
        qryEstatHospitalCCustoPaciente.Value:=0;

    if (qryEstatHospitalCDiarias.Value-qryEstatHospitalCDiariasGlosadas.Value)<>0 then
        qryEstatHospitalCCustoDia.Value:=qryEstatHospitalCValorPago.Value/
                                       (qryEstatHospitalCDiarias.Value-qryEstatHospitalCDiariasGlosadas.Value)
    else
        qryEstatHospitalCCustoDia.Value:=0;

    qryEstatHospitalCValorNaoAcordado.value:=qryEstatHospitalCValorNaoAcordadoM.value+
                                            qryEstatHospitalCValorNaoAcordadoE.value;

end;

procedure TdmRelatorio.qryEstatHospitalC3CalcFields(DataSet: TDataSet);
begin
    qryestatHospitalC3DiariasPagas.Value:=qryestatHospitalC3Diarias.Value-qryestatHospitalC3DiariasGlosadas.Value;

    qryestatHospitalC3Paciente1.Value:=qryestatHospitalC3Paciente.asInteger-qryestatHospitalC3Complemento.asInteger;

    if (frmRelEstatisticaHospital<>nil) and
       (frmRelEstatisticaHospital.rdgMedia.ItemIndex=1) then
        qryestatHospitalC3Paciente1.Value:=qryestatHospitalC3Paciente.asInteger-qryestatHospitalC3Complemento.asInteger-
                                          qryestatHospitalC3Parcial.AsInteger+qryParcial.RecordCount; //total por cliente - usa parcial principal


    if (frmRelEstatisticaHospital<>nil) then
        qryestatHospitalC3iparcial.Value:=qryParcial.RecordCount
    else
        qryestatHospitalC3iparcial.Value:=0;

    qryestatHospitalC3ValorPago.Value:=qryestatHospitalC3Valor.Value-
                                 qryestatHospitalC3ValorGlosado.Value;
    if qryestatHospitalC3Valor.Value<>0 then
       qryestatHospitalC3GlosaPorc.Value:=qryestatHospitalC3ValorGlosado.Value/
                                    qryestatHospitalC3Valor.Value*100
    else
       qryestatHospitalC3GlosaPorc.Value:=0;

    if qryestatHospitalC3Paciente1.Value<>0 then
       qryestatHospitalC3Media.Value:=(qryestatHospitalC3Diarias.Value-qryestatHospitalC3DiariasGlosadas.Value)/
                                  qryestatHospitalC3Paciente1.Value
    else
       qryestatHospitalC3Media.Value:=0;

    if qryestatHospitalC3Paciente1.Value<>0 then
        qryestatHospitalC3CustoPaciente.Value:=qryestatHospitalC3ValorPago.Value/
                                         qryestatHospitalC3Paciente1.Value
    else
        qryestatHospitalC3CustoPaciente.Value:=0;

    if (qryestatHospitalC3Diarias.Value-qryestatHospitalC3DiariasGlosadas.Value)<>0 then
        qryestatHospitalC3CustoDia.Value:=qryestatHospitalC3ValorPago.Value/
                                    (qryestatHospitalC3Diarias.Value-qryestatHospitalC3DiariasGlosadas.Value)
    else
        qryestatHospitalC3CustoDia.Value:=0;

    qryestatHospitalC3ValorNaoAcordado.value:=qryestatHospitalC3ValorNaoAcordadoM.value+
                                         qryestatHospitalC3ValorNaoAcordadoE.value;

end;

procedure TdmRelatorio.dbProdFunCalcFields(DataSet: TDataSet);
var itotal,idias:integer;
begin
    itotal:=dbProdFunD1.value+dbProdFunD2.value+dbProdFunD3.value+dbProdFunD4.value+dbProdFunD5.value+
            dbProdFunD6.value+dbProdFunD7.value+dbProdFunD8.value+dbProdFunD9.value+dbProdFunD10.value+
            dbProdFunD11.value+dbProdFunD12.value+dbProdFunD13.value+dbProdFunD14.value+dbProdFunD15.value+
            dbProdFunD16.value+dbProdFunD17.value+dbProdFunD18.value+dbProdFunD19.value+dbProdFunD20.value+
            dbProdFunD21.value+dbProdFunD22.value+dbProdFunD23.value+dbProdFunD24.value+dbProdFunD25.value+
            dbProdFunD26.value+dbProdFunD27.value+dbProdFunD28.value+dbProdFunD29.value+dbProdFunD30.value+dbProdFunD31.value;
    dbProdFuntotal.value:=itotal;        
    if frmRelProdFunMensal.uteis>0 then
        dbProdFunMedia1.value:=(itotal/frmRelProdFunMensal.uteis);
    idias:=0;
    if dbProdFunD1.value>0 then idias:=idias+1;
    if dbProdFunD2.value>0 then idias:=idias+1;
    if dbProdFunD3.value>0 then idias:=idias+1;
    if dbProdFunD4.value>0 then idias:=idias+1;
    if dbProdFunD5.value>0 then idias:=idias+1;
    if dbProdFunD6.value>0 then idias:=idias+1;
    if dbProdFunD7.value>0 then idias:=idias+1;
    if dbProdFunD8.value>0 then idias:=idias+1;
    if dbProdFunD9.value>0 then idias:=idias+1;
    if dbProdFunD10.value>0 then idias:=idias+1;
    if dbProdFunD11.value>0 then idias:=idias+1;
    if dbProdFunD12.value>0 then idias:=idias+1;
    if dbProdFunD13.value>0 then idias:=idias+1;
    if dbProdFunD14.value>0 then idias:=idias+1;
    if dbProdFunD15.value>0 then idias:=idias+1;
    if dbProdFunD16.value>0 then idias:=idias+1;
    if dbProdFunD17.value>0 then idias:=idias+1;
    if dbProdFunD18.value>0 then idias:=idias+1;
    if dbProdFunD19.value>0 then idias:=idias+1;
    if dbProdFunD20.value>0 then idias:=idias+1;
    if dbProdFunD21.value>0 then idias:=idias+1;
    if dbProdFunD22.value>0 then idias:=idias+1;
    if dbProdFunD23.value>0 then idias:=idias+1;
    if dbProdFunD24.value>0 then idias:=idias+1;
    if dbProdFunD25.value>0 then idias:=idias+1;
    if dbProdFunD26.value>0 then idias:=idias+1;
    if dbProdFunD27.value>0 then idias:=idias+1;
    if dbProdFunD28.value>0 then idias:=idias+1;
    if dbProdFunD29.value>0 then idias:=idias+1;
    if dbProdFunD30.value>0 then idias:=idias+1;
    if dbProdFunD31.value>0 then idias:=idias+1;
    if idias>0 then
        dbProdFunMedia2.value:=(itotal/idias);

end;

procedure TdmRelatorio.dbIndicadorCalcFields(DataSet: TDataSet);
var imeses:integer;
begin
    dbIndicadorLogotipo.value:=1; //B&B
    if frmRelEvolucaoCustoR<>nil then
        dbIndicadorLogotipo.value:=frmRelEvolucaoCustoR.iLogo;;

    if dbIndicadorMes.value=1 then
        dbindicadorMesTexto.value:='Janeiro';
    if dbIndicadorMes.value=2 then
        dbindicadorMesTexto.value:='Fevereiro';
    if dbIndicadorMes.value=3 then
        dbindicadorMesTexto.value:='Março';
    if dbIndicadorMes.value=4 then
        dbindicadorMesTexto.value:='Abril';
    if dbIndicadorMes.value=5 then
        dbindicadorMesTexto.value:='Maio';
    if dbIndicadorMes.value=6 then
        dbindicadorMesTexto.value:='Junho';
    if dbIndicadorMes.value=7 then
        dbindicadorMesTexto.value:='Julho';
    if dbIndicadorMes.value=8 then
        dbindicadorMesTexto.value:='Agosto';
    if dbIndicadorMes.value=9 then
        dbindicadorMesTexto.value:='Setembro';
    if dbIndicadorMes.value=10 then
        dbindicadorMesTexto.value:='Outubro';
    if dbIndicadorMes.value=11 then
        dbindicadorMesTexto.value:='Novembro';
    if dbIndicadorMes.value=12 then
        dbindicadorMesTexto.value:='Dezembro';
    if dbIndicadorMes.value=13 then
        dbindicadorMesTexto.value:='Média';

    if frmRelEvolucaoCustoR<>nil then
        imeses:=frmRelEvolucaoCustoR.iCompetencia;

   if dbIndicadorContas.value>0 then
       dbIndicadorTMIUTI.value:=dbIndicadorDiariasUTI.value/dbIndicadorContas.value;
   if dbIndicadorPacienteUTI.value>0 then
       dbIndicadorTMIUTII.value:=dbIndicadorDiariasUTI.value/dbIndicadorPacienteUTI.value;

    if dbIndicadorH.Active then
    begin
       if dbIndicadorH.Locate('Cliente;HospitalNome',VarArrayof([dbIndicadorCliente.value,
                                                               dbIndicadorHospitalNome.value]),[]) then
        begin
            dbIndicadorContasH.value:=dbIndicadorHContas.value;
            dbIndicadorTMIH.value:=dbIndicadorHTMI.value;
            dbIndicadorPglosaH.value:=dbIndicadorHPGlosa.value;
            dbIndicadorCMPH.value:=dbIndicadorHCMP.value;
            dbIndicadorCMDH.value:=dbIndicadorHCMD.value;
            if dbIndicadorHContas.value>0 then
               dbIndicadorTMIUTIH.value:=dbIndicadorHDiariasUTI.value/dbIndicadorHContas.value;
           if dbIndicadorHPacienteUTI.value>0 then
                dbIndicadorTMIUTIIH.value:=dbIndicadorHDiariasUTI.value/dbIndicadorHPacienteUTI.value;
            if imeses>0 then
            begin
                dbIndicadorContasHM.value:=dbIndicadorContasH.value/imeses;
                dbIndicadorGlosaH.value:=dbIndicadorHGlosa.value/imeses;
            end;
        end;
    end;

end;

procedure TdmRelatorio.dbIndicadorHCalcFields(DataSet: TDataSet);
begin
    if dbIndicadorHContas.value>0 then
        dbIndicadorHTMI.value:=dbIndicadorHDiarias.value/dbIndicadorHContas.value;
    if dbIndicadorHGlosa.value>0 then
        dbIndicadorHPGlosa.value:=dbIndicadorHGlosa.value/dbIndicadorHValor.value*100;
    if dbIndicadorHContas.value>0 then
        dbIndicadorHCMP.value:=(dbIndicadorHValor.value-dbIndicadorHGlosa.value)/dbIndicadorHContas.value;
    if dbIndicadorHDiarias.value>0 then
        dbIndicadorHCMD.value:=(dbIndicadorHValor.value-dbIndicadorHGlosa.value)/dbIndicadorHDiarias.value;
end;

procedure TdmRelatorio.dbIndicadorTCalcFields(DataSet: TDataSet);
var imeses:integer;
begin
    imeses:=0;
    if dbIndicadorTContas.value>0 then
        dbIndicadorTTMI.value:=dbIndicadorTDiarias.value/dbIndicadorTContas.value;
   if dbIndicadorTContas.value>0 then
       dbIndicadorTTMIUTI.value:=dbIndicadorTDiariasUTI.value/dbIndicadorTContas.value;
    if dbIndicadorTPacienteUTI.value>0 then
        dbIndicadorTTMIUTII.value:=dbIndicadorTDiariasUTI.value/dbIndicadorTPacienteUTI.value;
    if dbIndicadorTGlosa.value>0 then
        dbIndicadorTPGlosa.value:=dbIndicadorTGlosa.value/dbIndicadorTValor.value*100;
    if dbIndicadorTContas.value>0 then
        dbIndicadorTCMP.value:=(dbIndicadorTValor.value-dbIndicadorTGlosa.value)/dbIndicadorTContas.value;
    if dbIndicadorTDiarias.value>0 then
        dbIndicadorTCMD.value:=(dbIndicadorTValor.value-dbIndicadorTGlosa.value)/dbIndicadorTDiarias.value;

    if frmRelEvolucaoCustoR<>nil then
        imeses:=frmRelEvolucaoCustoR.iCompetencia;
    if imeses>0 then
    begin
        dbIndicadorTContasM.value:=dbIndicadorTContas.value/imeses;
        dbIndicadorTGlosaMedia.value:=dbIndicadorTGlosa.value/imeses;
    end;
end;

procedure TdmRelatorio.qryEstatPacienteBCalcFields(DataSet: TDataSet);
var ano,mes,dia,anon,mesn,dian:word;
begin

    qryEstatPacienteBDiariasNaoProrroga.Value:=qryEstatPacienteBDiariasCalculadas.Value-qryEstatPacienteBDiarias.Value;

    qryEstatPacienteBValorGlosado.value:=qryEstatPacienteBValorGlosadoM.value+qryEstatPacienteBValorGlosadoE.value;
    qryEstatPacienteBValorPago.value:=qryEstatPacienteBValor.value-qryEstatPacienteBValorGlosadoM.value-qryEstatPacienteBValorGlosadoE.value;
    qryEstatPacienteBCodigoPacienteok.value:='*'+qryEstatPacienteBCodigoPaciente.Value;

    qryEstatPacienteBDiariaApto.value:=qryEstatPacienteBDiasUti.value+qryEstatPacienteBSemi.value;
    qryEstatPacienteBDiariaEnf.value:=qryEstatPacienteBApto.value+qryEstatPacienteBEnfermaria.value+
                                     qryEstatPacienteBBercario.value+qryEstatPacienteBIsolamento.value+
                                     qryEstatPacienteBDayClinicQtd.value+
                                     qryEstatPacienteBDiasUti.value+qryEstatPacienteBSemi.value;

    qryEstatPacienteBJustBradesco.value:='';
    if qryEstatPacienteBNABradesco.value='E' then
       qryEstatPacienteBJustBradesco.value:='Cobrança de Excedente (Pacote+)';
    if qryEstatPacienteBNABradesco.value='O' then
       qryEstatPacienteBJustBradesco.value:='OPME';
    if qryEstatPacienteBNABradesco.value='C' then
       qryEstatPacienteBJustBradesco.value:='Procedimentos combinados';
    if qryEstatPacienteBNABradesco.value='P' then
       qryEstatPacienteBJustBradesco.value:='Prorrogação';
    if qryEstatPacienteBNABradesco.value='R' then
       qryEstatPacienteBJustBradesco.value:='Rede perfil';

    qryEstatPacienteBCompetencia.value:=IntToStr(qryEstatPacienteBMesCompetencia.value)+'/'+
                                        IntToStr(qryEstatPacienteBAnoCompetencia.value);
    qryEstatPacienteBFim.value:='***';
    qryEstatPacienteBAuditoria.value:='B&B';
    qryEstatPacienteBPago.value:='Sim';

end;

procedure TdmRelatorio.qryEstatHospital1CalcFields(DataSet: TDataSet);
begin
    qryEstatHospital1Logotipo.value:=1; //B&B
    if frmRelEstatisticaHospital<>nil then
        qryEstatHospital1Logotipo.value:=frmRelEstatisticaHospital.iLogo;;

    qryEstatHospital1DiariasAutorizadas.Value:=qryEstatHospital1Diarias.Value-qryEstatHospital1DiariasGlosadas.Value;
    if qryEstatHospital1Paciente.Value<>0 then
       qryEstatHospital1TMI.Value:=(qryEstatHospital1Diarias.Value-qryEstatHospital1DiariasGlosadas.Value)/
                                    qryEstatHospital1Paciente.Value
    else
       qryEstatHospital1TMI.Value:=0;

end;

procedure TdmRelatorio.qryRelSenhaCalcFields(DataSet: TDataSet);
begin
    qryRelSenhaDiariasPagas.value:=qryRelSenhaDiarias.value-qryRelSenhaDiariasGlosadas.value;
    qryRelSenhaValorGlosado.value:=qryRelSenhaValorGlosadoM.value+qryRelSenhaValorGlosadoE.value;
    qryRelSenhaValorPago.value:=qryRelSenhaValor.value-qryRelSenhaValorGlosadoM.value-qryRelSenhaValorGlosadoE.value;
end;

procedure TdmRelatorio.qryAtendHICalcFields(DataSet: TDataSet);
begin
    qryAtendHIDiariasPagas.value:=qryAtendHIDiarias.value-qryAtendHIDiariasGlosadas.value;
    qryAtendHIValorGlosado.value:=qryAtendHIValorGlosadoM.value+qryAtendHIValorGlosadoE.value;
    qryAtendHIValorPago.value:=qryAtendHIValor.value-qryAtendHIValorGlosadoM.value-qryAtendHIValorGlosadoE.value;

end;

end.











