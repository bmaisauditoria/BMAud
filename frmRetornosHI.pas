unit frmRetornosHI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS,
  ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, StrUtils,
  Buttons, ToolWin, DateUtils, DBCtrls, RpDefine, RpCon, RpConDS, RpConBDE;

type
  TfrmRetornoHI = class(TForm)
    dsProcesso: TDataSource;
    dsProcessoGlosa: TDataSource;
    dbCliente: TMSTable;
    dbEnfermeiro: TMSTable;
    dsProcessoDiag: TDataSource;
    OpenDialog: TOpenDialog;
    dbHospital: TMSTable;
    dbHospitalHospital: TIntegerField;
    dbHospitalNome: TStringField;
    dbAuditor: TMSTable;
    dbAuditorAuditor: TIntegerField;
    dbAuditorNome: TStringField;
    dbAuditorCRM: TIntegerField;
    dbAuditorUsuario: TStringField;
    dbDiagnostico: TMSTable;
    dbDiagnosticoDiagnostico: TIntegerField;
    dbDiagnosticoNome: TStringField;
    dbDiagnosticoCodCid: TStringField;
    dsRetorno: TDataSource;
    dbCodigo: TMSTable;
    dbCodigoCampo: TStringField;
    dbCodigoUltimo: TIntegerField;
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
    dbEnfermeiroEnfermeiro: TIntegerField;
    dbEnfermeiroNome: TStringField;
    dbEnfermeiroCOREN: TIntegerField;
    dbAmb: TMSTable;
    dbAmbCodAMB: TIntegerField;
    dbAmbDescricaoAMB: TStringField;
    dbGlosa: TMSTable;
    dbGlosaGlosaI: TStringField;
    dbGlosaNome: TStringField;
    dbGlosaResponsavel: TStringField;
    dbHospitalCNPJ: TStringField;
    dbEnfermeiroUsuario: TStringField;
    dbHospitalRegiao: TIntegerField;
    dbHospitalCidade: TStringField;
    dbHospitalUF: TStringField;
    dbClienteID: TMSTable;
    dbClienteIDCliente: TIntegerField;
    dbClienteIDPrincipal: TIntegerField;
    dbClienteIDID: TStringField;
    dbClienteIDDescricao: TStringField;
    dsCliente: TDataSource;
    dbExcel: TMSTable;
    dbExcelBDEDesigner2: TStringField;
    dbExcelBDEDesigner3: TStringField;
    dbExcelBDEDesigner4: TStringField;
    dbExcelBDEDesigner5: TStringField;
    dbExcelBDEDesigner6: TStringField;
    dbExcelBDEDesigner7: TStringField;
    dbExcelBDEDesigner8: TStringField;
    dbExcelBDEDesigner9: TStringField;
    dbExcelBDEDesigner10: TStringField;
    dbExcelBDEDesigner11: TStringField;
    dbExcelBDEDesigner12: TStringField;
    dbExcelBDEDesigner13: TStringField;
    dbExcelBDEDesigner14: TStringField;
    dbExcelBDEDesigner15: TStringField;
    dbExcelBDEDesigner16: TStringField;
    dbExcelBDEDesigner17: TStringField;
    dbExcelBDEDesigner18: TStringField;
    dbExcelBDEDesigner19: TStringField;
    dbExcelBDEDesigner20: TStringField;
    dbExcelBDEDesigner21: TStringField;
    dbExcelBDEDesigner22: TStringField;
    dbExcelBDEDesigner23: TStringField;
    dbExcelBDEDesigner24: TStringField;
    dbExcelBDEDesigner25: TStringField;
    dbExcelBDEDesigner26: TMemoField;
    dbExcelBDEDesigner27: TStringField;
    dbExcelBDEDesigner28: TStringField;
    dbExcelBDEDesigner29: TStringField;
    dbExcelBDEDesigner30: TStringField;
    dbExcelBDEDesigner31: TStringField;
    dbExcelBDEDesigner32: TStringField;
    dbExcelBDEDesigner33: TStringField;
    dbExcelBDEDesigner34: TStringField;
    dbExcelBDEDesigner35: TStringField;
    dbExcelBDEDesigner36: TStringField;
    dbExcelBDEDesigner37: TStringField;
    dbExcelBDEDesigner38: TStringField;
    dbExcelBDEDesigner39: TStringField;
    dbExcelBDEDesigner40: TStringField;
    dbExcelBDEDesigner41: TStringField;
    dbExcelBDEDesigner42: TStringField;
    dbExcelBDEDesigner43: TStringField;
    dbExcelBDEDesigner44: TStringField;
    dbExcelBDEDesigner45: TStringField;
    dbExcelBDEDesigner46: TStringField;
    dbExcelBDEDesigner47: TStringField;
    dbExcelBDEDesigner48: TStringField;
    dbExcelBDEDesigner49: TStringField;
    dbExcelBDEDesigner50: TStringField;
    dbExcelBDEDesigner51: TStringField;
    dbExcelBDEDesigner52: TStringField;
    dbExcelBDEDesigner53: TStringField;
    dbExcelBDEDesigner54: TStringField;
    dbExcelBDEDesigner55: TStringField;
    dbExcelBDEDesigner56: TStringField;
    dbExcelBDEDesigner57: TStringField;
    dbExcelBDEDesigner58: TStringField;
    dbExcelBDEDesigner59: TStringField;
    dbExcelBDEDesigner60: TStringField;
    dbExcelBDEDesigner61: TStringField;
    dbExcelBDEDesigner62: TStringField;
    dbExcelBDEDesigner63: TStringField;
    dbExcelBDEDesigner64: TStringField;
    dbExcelBDEDesigner65: TStringField;
    dbExcelBDEDesigner66: TStringField;
    dbExcelBDEDesigner67: TStringField;
    dbExcelBDEDesigner68: TStringField;
    dbExcelBDEDesigner69: TStringField;
    dbExcelBDEDesigner70: TStringField;
    dbExcelBDEDesigner71: TStringField;
    dbExcelBDEDesigner72: TStringField;
    dbExcelBDEDesigner73: TStringField;
    dbExcelBDEDesigner74: TStringField;
    dbExcelBDEDesigner75: TStringField;
    dbExcelBDEDesigner76: TStringField;
    dbExcelBDEDesigner77: TStringField;
    dbExcelBDEDesigner78: TStringField;
    dbExcelBDEDesigner79: TStringField;
    dbExcelBDEDesigner80: TStringField;
    dbExcelBDEDesigner81: TStringField;
    dbExcelBDEDesigner82: TStringField;
    dbExcelBDEDesigner83: TStringField;
    dbExcelBDEDesigner84: TStringField;
    dbExcelBDEDesigner85: TStringField;
    dbExcelBDEDesigner86: TStringField;
    dbExcelBDEDesigner87: TStringField;
    dbExcelBDEDesigner88: TStringField;
    dbExcelBDEDesigner89: TMemoField;
    dbExcelBDEDesigner90: TStringField;
    dbExcelBDEDesigner91: TStringField;
    dbExcelBDEDesigner92: TStringField;
    dbExcelBDEDesigner93: TStringField;
    dbExcelBDEDesigner94: TStringField;
    dbEnfermeiroDataInclusao: TDateTimeField;
    dbAuditorDataInicio: TDateTimeField;
    dbAuditorDataFim: TDateTimeField;
    dbAuditorDataInclusao: TDateTimeField;
    dbClienteDataInclusao: TDateTimeField;
    dbExcelDSDesigner1: TStringField;
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
    dbItem: TMSQuery;
    dbItemCliente: TIntegerField;
    dbItemTipo: TStringField;
    dbItemGlosaI: TStringField;
    dbItemValor: TCurrencyField;
    dbItemValorApresentado: TCurrencyField;
    dbDiag: TMSQuery;
    dbDiagCliente: TIntegerField;
    dbDiagDiagnostico: TIntegerField;
    dbDiagAtendimentoHC: TIntegerField;
    dbDiagItem: TIntegerField;
    dbDiagDataAuditoria: TDateTimeField;
    dbDiagPrincipal: TBooleanField;
    dbDiagCodCid: TStringField;
    dbDiagGrupocid: TStringField;
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
    dbPacienteCliente: TIntegerField;
    dbPacienteIDPaciente: TStringField;
    dbPacienteCodigoPaciente: TStringField;
    dbPacienteUsuario: TStringField;
    dbPacienteDataInclusao: TDateTimeField;
    dbPacienteSexo: TStringField;
    dbPacienteDataNascimento: TDateTimeField;
    dbPacienteIdade: TIntegerField;
    dbPacienteUnidade: TStringField;
    dbAtendHServicoC: TStringField;
    dbClienteClienteID: TStringField;
    dbExcel1: TMSTable;
    qryProcessoTrab: TMSQuery;
    dbAtendHAtendimentoHI: TLargeintField;
    dbItemAtendimentoHI: TLargeintField;
    dbDiagAtendimentoHI: TLargeintField;
    dbAtendHAtendimentoHIO: TLargeintField;
    dbAtendHComplementoF: TBooleanField;
    dbProcesso: TMSQuery;
    dbProcessoRetorno: TIntegerField;
    dbProcessoCliente: TIntegerField;
    dbProcessoAtendimentoHI: TLargeintField;
    dbProcessoSequencial: TIntegerField;
    dbProcessoProcessa: TStringField;
    dbProcessoPaciente: TIntegerField;
    dbProcessoNomePaciente: TStringField;
    dbProcessoCodigoPaciente: TStringField;
    dbProcessoHospital: TIntegerField;
    dbProcessoHospitalCNPJ: TStringField;
    dbProcessoMedicoCRM: TIntegerField;
    dbProcessoMedico: TIntegerField;
    dbProcessoMedicoNome: TStringField;
    dbProcessoEnfermeiroCoren: TIntegerField;
    dbProcessoEnfermeiro: TIntegerField;
    dbProcessoEnfermeiroNome: TStringField;
    dbProcessoDataFechamento: TDateTimeField;
    dbProcessoMesCompetencia: TSmallintField;
    dbProcessoAnoCompetencia: TSmallintField;
    dbProcessoSenha: TStringField;
    dbProcessoDataInternacao: TDateTimeField;
    dbProcessoDataAlta: TDateTimeField;
    dbProcessoDiasUti: TFloatField;
    dbProcessoDiarias: TFloatField;
    dbProcessoDiariasGlosadas: TFloatField;
    dbProcessoDiariasCalculadas: TSmallintField;
    dbProcessoValor: TCurrencyField;
    dbProcessoValorGlosado: TCurrencyField;
    dbProcessoValorGlosadoM: TCurrencyField;
    dbProcessoValorGlosadoE: TCurrencyField;
    dbProcessoUsuario: TStringField;
    dbProcessoObservacao: TMemoField;
    dbProcessoComplemento: TBooleanField;
    dbProcessoParcial: TWordField;
    dbProcessoNumeroParcial: TSmallintField;
    dbProcessoDataInicioP: TDateTimeField;
    dbProcessoDayClinic: TBooleanField;
    dbProcessoIntercambio: TBooleanField;
    dbProcessoDataInclusao: TDateTimeField;
    dbProcessoDataExclusao: TDateTimeField;
    dbProcessoFatura: TIntegerField;
    dbProcessoPosAnalise: TBooleanField;
    dbProcessoNaoContabilizado: TWordField;
    dbProcessoValorNaoAcordadoM: TCurrencyField;
    dbProcessoValorNaoAcordadoE: TCurrencyField;
    dbProcessoPacote: TBooleanField;
    dbProcessoMedicoACRM: TIntegerField;
    dbProcessoMedicoANome: TStringField;
    dbProcessoConclusao: TStringField;
    dbProcessoInternacao: TStringField;
    dbProcessoTratamento: TStringField;
    dbProcessoApto: TFloatField;
    dbProcessoEnfermaria: TFloatField;
    dbProcessoSemi: TFloatField;
    dbProcessoBercario: TFloatField;
    dbProcessoDayClinicQtd: TFloatField;
    dbProcessoIsolamento: TFloatField;
    dbProcessoCodAMB: TIntegerField;
    dbProcessoUsuarioI: TStringField;
    dbProcessoDataAlteracao: TDateTimeField;
    dbProcessoNotas: TMemoField;
    dbProcessoValorPago: TCurrencyField;
    dbProcessoVisita: TWordField;
    dbProcessoNaoValorizado: TWordField;
    dbProcessoIDPaciente: TStringField;
    dbProcessoQtdAMB: TSmallintField;
    dbProcessoExtraAMB: TBooleanField;
    dbProcessoCodAMB1: TIntegerField;
    dbProcessoQtdAMB1: TSmallintField;
    dbProcessoExtraAMB1: TBooleanField;
    dbProcessoSenha1: TStringField;
    dbProcessoObitoGravida: TStringField;
    dbProcessoQtdRNVivo: TSmallintField;
    dbProcessoQtdRNMorto: TSmallintField;
    dbProcessoQtdRNPrematuro: TSmallintField;
    dbProcessoAcidente: TStringField;
    dbProcessoPacienteIdade: TSmallintField;
    dbProcessoPacienteUnidade: TStringField;
    dbProcessoPacienteSexo: TStringField;
    dbProcessoUsuarioSite: TStringField;
    dbProcessoDataSite: TDateTimeField;
    dbProcessoClienteCNPJ: TStringField;
    dbProcessoDataFimP: TDateTimeField;
    dbProcessoGemelar: TWordField;
    dbProcessoDataAMB1: TDateTimeField;
    dbProcessoDataAMB2: TDateTimeField;
    dbProcessoDataAMB3: TDateTimeField;
    dbProcessoPAMB1: TFloatField;
    dbProcessoPAMB2: TFloatField;
    dbProcessoPAMB3: TFloatField;
    dbProcessoCodAMB3: TIntegerField;
    dbProcessoResponsavelH: TStringField;
    dbProcessoPacienteNascimento: TDateTimeField;
    dbProcessoRN: TStringField;
    dbProcessoNomePacienteB: TStringField;
    dbProcessoProcessaTexto: TStringField;
    dbProcessoClienteNome: TStringField;
    dbProcessoHospitalNome: TStringField;
    dbProcessoMedicoNomeBusca: TStringField;
    dbProcessoEnfermeiroNomeBusca: TStringField;
    dbProcessoStringField5: TStringField;
    dbProcessoAmbNome1: TStringField;
    dbProcessoAmbNome3: TStringField;
    dbProcessoAtendimentoHIO: TLargeintField;
    dbProcessoGlosa: TMSQuery;
    dbProcessoDiag: TMSQuery;
    dbProcessoGlosaRetorno: TIntegerField;
    dbProcessoGlosaCliente: TIntegerField;
    dbProcessoGlosaAtendimentoHI: TLargeintField;
    dbProcessoGlosaTipo: TStringField;
    dbProcessoGlosaGlosaI: TStringField;
    dbProcessoGlosaValor: TCurrencyField;
    dbProcessoGlosaValorApresentado: TCurrencyField;
    dbProcessoGlosaMedEnf: TStringField;
    dbProcessoGlosaGlosaNome: TStringField;
    dbProcessoGlosaValorM: TCurrencyField;
    dbProcessoGlosaValorE: TCurrencyField;
    dbProcessoDiagRetorno: TIntegerField;
    dbProcessoDiagCliente: TIntegerField;
    dbProcessoDiagAtendimentoHI: TLargeintField;
    dbProcessoDiagCodCid: TStringField;
    dbProcessoDiagDiagnostico: TIntegerField;
    dbProcessoDiagAtendimentoHC: TIntegerField;
    dbProcessoDiagItem: TSmallintField;
    dbProcessoDiagDataAuditoria: TDateTimeField;
    dbProcessoDiagPrincipal: TBooleanField;
    dbProcessoDiagGrupoCid: TStringField;
    dbProcessoDiagDescricao: TStringField;
    dbProcessoDiagDiagnosticoNome: TStringField;
    dbProcessoDiagPrincipalTexto: TStringField;
    dbRetornoRetorno: TIntegerField;
    dbRetornoCliente: TIntegerField;
    dbRetornoDataProcessamento: TDateTimeField;
    dbRetornoHoraProcessamento: TDateTimeField;
    dbRetornoNomeArquivo: TStringField;
    dbRetornoProcessado: TBooleanField;
    dbRetornoUsuario: TStringField;
    dbRetornoRegistros: TIntegerField;
    dbRetornoRegistrosok: TIntegerField;
    dbRetornoRegistrosInclusao: TIntegerField;
    dbRetornoRegistrosAlteracao: TIntegerField;
    dbRetornoCapeantes: TIntegerField;
    dbRetornoProcessadoTexto: TStringField;
    dbRetornoRepetidos: TIntegerField;
    dbRetornoClienteNome: TStringField;
    dbRetornoHoraTexto: TStringField;
    dbRetornoClienteID: TStringField;
    dbRetorno: TMSQuery;
    dbProcessoNABradesco: TStringField;
    dbAmbBradesco: TBooleanField;
    dbAtendHNABradesco: TStringField;
    dbProd: TMSQuery;
    dbProdAnoCompetencia: TSmallintField;
    dbProdMesCompetencia: TSmallintField;
    dbProdProdutividade: TIntegerField;
    dbProdDataInclusao: TDateTimeField;
    dbProdUsuario: TStringField;
    dbProdStatus: TStringField;
    dbProdCli: TMSTable;
    dbProdCliProdutividade: TIntegerField;
    dbProdCliCliente: TIntegerField;
    dbProdCliDataInclusao: TDateTimeField;
    dbProdCliUsuario: TStringField;
    dsProd: TDataSource;
    dbAtendHDiariasLonga: TIntegerField;
    dbExcel1DSDesigner1: TStringField;
    dbExcel1DSDesigner2: TStringField;
    dbExcel1DSDesigner3: TStringField;
    dbExcel1DSDesigner4: TStringField;
    dbExcel1DSDesigner5: TStringField;
    dbExcel1DSDesigner6: TStringField;
    dbExcel1DSDesigner7: TStringField;
    dbExcel1DSDesigner8: TStringField;
    dbExcel1DSDesigner9: TStringField;
    dbExcel1DSDesigner10: TStringField;
    dbExcel1DSDesigner11: TStringField;
    dbExcel1DSDesigner12: TStringField;
    dbExcel1DSDesigner13: TStringField;
    dbExcel1DSDesigner14: TStringField;
    dbExcel1DSDesigner15: TStringField;
    dbExcel1DSDesigner16: TStringField;
    dbExcel1DSDesigner17: TStringField;
    dbExcel1DSDesigner18: TStringField;
    dbExcel1DSDesigner19: TStringField;
    dbExcel1DSDesigner20: TStringField;
    dbExcel1DSDesigner21: TStringField;
    dbExcel1DSDesigner22: TStringField;
    dbExcel1DSDesigner23: TStringField;
    dbExcel1DSDesigner24: TStringField;
    dbExcel1DSDesigner25: TStringField;
    dbExcel1DSDesigner26: TStringField;
    dbExcel1DSDesigner27: TStringField;
    dbExcel1DSDesigner28: TStringField;
    dbExcel1DSDesigner29: TStringField;
    dbExcel1DSDesigner30: TStringField;
    dbExcel1DSDesigner31: TStringField;
    dbExcel1DSDesigner32: TStringField;
    dbExcel1DSDesigner33: TStringField;
    dbExcel1DSDesigner34: TStringField;
    dbExcel1DSDesigner35: TStringField;
    dbExcel1DSDesigner36: TStringField;
    dbExcel1DSDesigner37: TStringField;
    dbExcel1DSDesigner38: TStringField;
    dbExcel1DSDesigner39: TStringField;
    dbExcel1DSDesigner40: TStringField;
    dbExcel1DSDesigner41: TStringField;
    dbExcel1DSDesigner42: TStringField;
    dbExcel1DSDesigner43: TStringField;
    dbExcel1DSDesigner44: TStringField;
    dbExcel1DSDesigner45: TStringField;
    dbExcel1DSDesigner46: TStringField;
    dbExcel1DSDesigner47: TStringField;
    dbExcel1DSDesigner48: TStringField;
    dbExcel1DSDesigner49: TStringField;
    dbExcel1DSDesigner50: TStringField;
    dbExcel1DSDesigner51: TStringField;
    dbExcel1DSDesigner52: TStringField;
    dbExcel1DSDesigner53: TStringField;
    dbExcel1DSDesigner54: TStringField;
    dbExcel1DSDesigner55: TStringField;
    dbExcel1DSDesigner56: TStringField;
    dbExcel1DSDesigner57: TStringField;
    dbExcel1DSDesigner58: TStringField;
    dbExcel1DSDesigner59: TStringField;
    dbExcel1DSDesigner60: TStringField;
    dbExcel1DSDesigner61: TStringField;
    dbExcel1DSDesigner62: TStringField;
    dbExcel1DSDesigner63: TStringField;
    dbExcel1DSDesigner64: TStringField;
    dbExcel1DSDesigner65: TStringField;
    dbExcel1DSDesigner66: TStringField;
    dbExcel1DSDesigner67: TStringField;
    dbExcel1DSDesigner68: TStringField;
    dbExcel1DSDesigner69: TStringField;
    dbExcel1DSDesigner70: TStringField;
    dbExcel1DSDesigner71: TStringField;
    dbExcel1DSDesigner72: TStringField;
    dbExcel1DSDesigner73: TStringField;
    dbExcel1DSDesigner74: TStringField;
    dbExcel1DSDesigner75: TStringField;
    dbExcel1DSDesigner76: TStringField;
    dbExcel1DSDesigner77: TStringField;
    dbExcel1DSDesigner78: TStringField;
    dbExcel1DSDesigner79: TStringField;
    dbExcel1DSDesigner80: TStringField;
    dbExcel1DSDesigner81: TStringField;
    dbExcel1DSDesigner82: TStringField;
    dbExcel1DSDesigner83: TStringField;
    dbExcel1DSDesigner84: TStringField;
    dbExcel1DSDesigner85: TStringField;
    dbExcel1DSDesigner86: TStringField;
    dbExcel1DSDesigner87: TStringField;
    dbExcel1DSDesigner88: TStringField;
    dbExcel1DSDesigner89: TStringField;
    dbExcel1DSDesigner90: TStringField;
    dbExcel1DSDesigner91: TStringField;
    dbExcel1DSDesigner92: TStringField;
    dbExcel1DSDesigner93: TStringField;
    dbExcel1DSDesigner94: TStringField;
    dbExcel1DSDesigner95: TStringField;
    dbExcel1DSDesigner96: TStringField;
    dbExcel1DSDesigner97: TStringField;
    dbExcel1DSDesigner98: TStringField;
    dbExcel1DSDesigner99: TStringField;
    dbExcel1DSDesigner100: TStringField;
    dbExcel1DSDesigner101: TStringField;
    dbExcel1DSDesigner102: TStringField;
    dbExcel1DSDesigner103: TStringField;
    dbExcel1DSDesigner104: TStringField;
    dbExcel1DSDesigner105: TStringField;
    dbExcel1DSDesigner106: TStringField;
    dbExcel1DSDesigner107: TStringField;
    dbExcel1DSDesigner108: TStringField;
    dbExcel1DSDesigner109: TStringField;
    dbExcel1DSDesigner110: TStringField;
    dbExcel1DSDesigner111: TStringField;
    dbExcel1DSDesigner112: TStringField;
    dbExcel1DSDesigner113: TStringField;
    dbExcel1DSDesigner114: TStringField;
    dbExcel1DSDesigner115: TStringField;
    dbExcel1DSDesigner116: TStringField;
    dbExcel1DSDesigner117: TStringField;
    dbExcel1DSDesigner118: TStringField;
    dbExcel1DSDesigner119: TStringField;
    dbExcel1DSDesigner120: TStringField;
    dbExcel1DSDesigner121: TStringField;
    dbExcel1DSDesigner122: TStringField;
    dbExcel1DSDesigner123: TStringField;
    dbExcel1DSDesigner124: TStringField;
    dbExcel1DSDesigner125: TStringField;
    dbExcel1DSDesigner126: TStringField;
    dbExcel1DSDesigner127: TStringField;
    dbExcel1DSDesigner128: TStringField;
    dbExcel1DSDesigner129: TStringField;
    dbExcel1DSDesigner130: TStringField;
    dbExcel1DSDesigner131: TStringField;
    dbExcel1DSDesigner132: TStringField;
    dbExcel1DSDesigner133: TStringField;
    dbExcel1DSDesigner134: TStringField;
    dbExcel1DSDesigner135: TStringField;
    dbExcel1DSDesigner136: TStringField;
    dbExcel1DSDesigner137: TStringField;
    dbExcel1DSDesigner138: TStringField;
    dbExcel1DSDesigner139: TStringField;
    dbExcel1DSDesigner140: TStringField;
    dbExcel1DSDesigner141: TStringField;
    dbExcel1DSDesigner142: TStringField;
    dbExcel1DSDesigner143: TStringField;
    dbHospitalPre: TMSTable;
    dbHospitalPreHospital: TIntegerField;
    dbHospitalPreCliente: TIntegerField;
    dbHospitalPreAuditor: TIntegerField;
    dbHospitalPreEnfermeiro: TIntegerField;
    dbHospitalPreClienteNome: TStringField;
    dbHospitalPreAuditorNome: TStringField;
    dbHospitalPreEnfermeiroNome: TStringField;
    dbHospitalCodBradesco: TIntegerField;
    dbRetornoModulo: TSmallintField;
    tabCliente: TTabControl;
    pagRetorno: TPageControl;
    tabLeitura: TTabSheet;
    Label4: TLabel;
    Splitter2: TSplitter;
    ProgressBar1: TProgressBar;
    Panel5: TPanel;
    Label2: TLabel;
    DBMemo4: TDBMemo;
    Panel8: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Label5: TLabel;
    grdAuditoria: TDBGrid;
    Panel7: TPanel;
    cmdGravaA: TBitBtn;
    cmdExcuiA: TBitBtn;
    tabFiltro: TTabControl;
    Label1: TLabel;
    DBText2: TDBText;
    grdProntuario: TDBGrid;
    CoolBar1: TCoolBar;
    cmpBusca: TEdit;
    DateTimePicker1: TDateTimePicker;
    listPlan: TListBox;
    Panel13: TPanel;
    cmdGravaP: TBitBtn;
    cmdExcluiP: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    grdDiagnostico: TDBGrid;
    Panel14: TPanel;
    cmdGravaD: TBitBtn;
    cmdExcluiD: TBitBtn;
    Panel10: TPanel;
    cmdLerSA: TBitBtn;
    cmdLerBB: TBitBtn;
    cmdValidar: TBitBtn;
    cmdRel: TBitBtn;
    cmdAtualizar: TBitBtn;
    Panel11: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    BitBtn4: TBitBtn;
    cmdLerBR: TBitBtn;
    tabRetorno: TTabSheet;
    CoolBar2: TCoolBar;
    lblTexto: TEdit;
    lblData: TDateTimePicker;
    tabOrdemRetorno: TTabControl;
    grdRetorno: TDBGrid;
    ProgressBar2: TProgressBar;
    Panel12: TPanel;
    BitBtn5: TBitBtn;
    dbRetornoUsuarioLeitura: TStringField;
    dbRetornoDataLeitura: TDateTimeField;
    dbRetornoUsuarioValidacao: TStringField;
    dbRetornoDataValidacao: TDateTimeField;
    dbHospitalPreZeraAuditor: TBooleanField;
    dbHospitalPreZeraEnfermeiro: TBooleanField;
    dbHospitalPreDG: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdProntuarioDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure cmdLerSAClick(Sender: TObject);
    procedure dbProcessoCalcFields(DataSet: TDataSet);
    procedure dbProcessoGlosaAfterInsert(DataSet: TDataSet);
    procedure dbProcessoDiagAfterInsert(DataSet: TDataSet);
    procedure dbProcessoAfterInsert(DataSet: TDataSet);
    procedure grdAuditoriaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cmdAtualizarClick(Sender: TObject);
    procedure tabOrdemRetornoChange(Sender: TObject);
    procedure lblTextoChange(Sender: TObject);
    procedure lblDataChange(Sender: TObject);
    procedure dbRetornoCalcFields(DataSet: TDataSet);
    procedure cmdValidarClick(Sender: TObject);
    procedure dbPacienteBeforeInsert(DataSet: TDataSet);
    procedure dbProcessoBeforePost(DataSet: TDataSet);
    procedure dbProcessoGlosaBeforePost(DataSet: TDataSet);
    procedure dbProcessoDiagBeforePost(DataSet: TDataSet);
    procedure cmdGravaPClick(Sender: TObject);
    procedure cmdExcluiPClick(Sender: TObject);
    procedure grdProntuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmdGravaAClick(Sender: TObject);
    procedure cmdExcuiAClick(Sender: TObject);
    procedure dsProcessoStateChange(Sender: TObject);
    procedure dsProcessoGlosaStateChange(Sender: TObject);
    procedure dsProcessoDiagStateChange(Sender: TObject);
    procedure cmdRelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure grdRetornoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbProcessoAfterPost(DataSet: TDataSet);
    procedure dbProcessoGlosaAfterPost(DataSet: TDataSet);
    procedure dbProcessoDiagAfterPost(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure dbProcessoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure tabFiltroChange(Sender: TObject);
    procedure grdDiagnosticoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbProcessoDiagCalcFields(DataSet: TDataSet);
    procedure cmpBuscaChange(Sender: TObject);
    procedure dbProcessoGlosaCalcFields(DataSet: TDataSet);
    procedure dbAuditorBeforeInsert(DataSet: TDataSet);
    procedure cmdGravaDClick(Sender: TObject);
    procedure cmdExcluiDClick(Sender: TObject);
    procedure dbAtendHAfterInsert(DataSet: TDataSet);
    procedure cmdLerBBClick(Sender: TObject);
    procedure dbEnfermeiroBeforeInsert(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure dbProcessoNABradescoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dbProcessoNABradescoSetText(Sender: TField;
      const Text: String);
    procedure cmdLerBRClick(Sender: TObject);
    procedure dbRetornoAfterInsert(DataSet: TDataSet);
    procedure tabClienteChange(Sender: TObject);
    procedure dbRetornoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetornoHI: TfrmRetornoHI;
  iUltimoPaciente:integer;
  narq:string;
implementation

uses frmPrincipal, dmRelatorios, frmRetornoHICompt;

{$R *.dfm}

Function LimpaMilhar(aa:String):string;
var p:Integer;
begin
   while pos('.',aa)>0 do
      Delete(aa,pos('.',aa),1);
    result:=(aa);
end;

Function TrocaMilhar(aa:String):string;
var p:Integer;
begin
    p:=pos('.',aa);
    if p>0 then
    begin
        Delete(aa,p,1);
        Insert(',',aa,p);
    end;
    result:=(aa);
end;

Function LimpaReal(aa:String):string;
var p:Integer;
begin
    while pos('.',aa) >0 do
    begin
        p:=pos('.',aa);
        if p>0 then Delete(aa,p,1);
    end;
    p:=pos('R$',aa);
    if p>0 then Delete(aa,p,2);
    result:=(aa);
end;

procedure TfrmRetornoHI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dbCodigo.Close;
    dbEnfermeiro.Close;
    dbCliente.Close;
    dbClienteID.Close;
    dbPaciente.Close;
    dbHospital.Close;
    dbHospitalPre.Close;
    dbAuditor.Close;
    dbDiagnostico.Close;
    dbAMB.Close;
    dbGlosa.Close;
    dbProcesso.Close;
    dbProcessoGlosa.Close;
    dbProcessoDiag.Close;
    dbRetorno.Close;
    dbAtendH.Close;
    dbItem.Close;
    dbDiag.Close;

    dbAtendH.Close;
    dbItem.Close;
    dbDiag.Close;
    dbProd.Close;
    dbProdCli.Close;
end;

procedure TfrmRetornoHI.FormShow(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   try
    dbCodigo.Open;
    dbEnfermeiro.Open;
    dbCliente.Open;
    dbClienteID.Open;
    dbPaciente.Open;
//  dbPaciente.IndexFieldNames:='Cliente,IDPaciente,CodigoPaciente';
    dbHospital.OPen;
    dbHospitalPre.Open;
    dbAuditor.Open;
    dbDiagnostico.Open;
    dbAMB.Open;
    dbGlosa.Open;
    tabCliente.TabIndex:=0;
    dbRetorno.Open;
//  dbRetorno.IndexFieldNames:='Retorno desc';
    dbRetorno.First;
    dbProcesso.Open;
    dbProcessoGlosa.Open;
    dbProcessoDiag.Open;

    dbAtendH.Open;
    dbItem.Open;
    dbDiag.Open;
    dbProd.Open;
    dbProdCli.Open;
   finally
     lblData.Date:=date;
     tabFiltro.TabIndex:=0;
     pagRetorno.ActivePageIndex:=0;
     Screen.Cursor := crDefault;
   end;
end;

procedure TfrmRetornoHI.grdProntuarioDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbProcessoProcessa.value='S' then
        grdProntuario.Canvas.Font.Color:=clGreen;
     if dbProcessoProcessa.value='N' then
        grdProntuario.Canvas.Font.Color:=clRed;

     grdProntuario.Columns[3].Color:=$00D9D9FF;
     grdProntuario.Columns[7].Color:=$00D9D9FF;
     grdProntuario.Columns[9].Color:=$00D9D9FF;
     grdProntuario.Columns[13].Color:=$00D9D9FF;
     grdProntuario.Columns[18].Color:=$00D9D9FF;
     grdProntuario.Columns[22].Color:=$00D9D9FF;
     grdProntuario.Columns[26].Color:=$00D9D9FF;
     grdProntuario.Columns[30].Color:=$00D9D9FF;
     grdProntuario.Columns[32].Color:=$00D9D9FF;
     grdProntuario.Columns[33].Color:=$00AAFFF2;
     grdProntuario.Columns[34].Color:=$00AAFFF2;
     grdProntuario.Columns[45].Color:=$00D9D9FF;
     grdProntuario.Columns[47].Color:=$00D9D9FF;
     grdProntuario.Columns[50].Color:=$00D9D9FF;
     grdProntuario.Columns[61].Color:=$00AAFFF2;
     grdProntuario.Columns[62].Color:=$00D9D9FF;
     grdProntuario.Columns[68].Color:=$00D9D9FF;
     grdProntuario.Columns[74].Color:=$00D9D9FF;

     grdProntuario.DefaultDrawDataCell(Rect,grdProntuario.Columns[DataCol].field,State);
end;

procedure TfrmRetornoHI.BitBtn5Click(Sender: TObject);
var iResultado,iretorno:integer;
begin
     if dbRetornoProcessado.value=true then
     begin
        ShowMessage('Retorno ja baixado. Impossivel excluir');
        abort;
     end;
     iResultado:=Application.MessageBox('Confirme a exclusão do retorno e seus lançamentos',
     'Aviso', mb_yesno+ mb_iconExclamation);

     iRetorno:=dbRetornoRetorno.value;

     ProgressBar2.Position:=0;
     ProgressBar2.Min:=0;
     ProgressBar2.Max:=3;

     if(iResultado=id_no) then abort;

     qryProcessoTrab.SQL.Text:='Delete from RetornoHIDiagnostico where Retorno=:iRet';
     qryProcessoTrab.ParamByName('iRet').Value:=iRetorno;
     qryProcessoTrab.Execute;
     dbProcessoDiag.Refresh;
     ProgressBar2.Position:=ProgressBar2.Position+1;

     qryProcessoTrab.SQL.Text:='Delete from RetornoHIGlosa where Retorno=:iRet';
     qryProcessoTrab.ParamByName('iRet').Value:=iRetorno;
     qryProcessoTrab.Execute;
     dbProcessoGlosa.Refresh;
     ProgressBar2.Position:=ProgressBar2.Position+1;

     qryProcessoTrab.SQL.Text:='Delete from RetornoHI where Retorno=:iRet';
     qryProcessoTrab.ParamByName('iRet').Value:=iRetorno;
     qryProcessoTrab.Execute;
     dbProcesso.Refresh;
     ProgressBar2.Position:=ProgressBar2.Position+1;

     dbRetorno.Delete;
     qryProcessoTrab.SQL.Text:='Select * from RetornoHI where modulo=0';
     ProgressBar2.Position:=0;
end;

procedure TfrmRetornoHI.cmdLerSAClick(Sender: TObject);
var a,p,txt,iTipo,iGlosa,iCodCid:string;
    j,jdet,i,qtd,iItem,iRetorno,iCodAmb,max,iparcial:integer;
    iprontuario: int64;
    strConn, narq1, plan,iRN:string;
    dia,mes,ano:word;
    tot,tot1,iDias:variant;

var Arq : TextFile;
var texto,xcampo,ierro,icapeante : string;
var q, campo : Integer;
function MV : String;
var
Monta : String;
begin
    monta := '';
    inc(q);
    while (Texto[q] > '*') or
          (Texto[q]='"') or
          (Texto[q]=' ') or
          (Texto[q]='#') or
          (Texto[q]='$') or
          (Texto[q]='&') or
          (Texto[q]='''') or
          (Texto[q]='(') or
          (Texto[q]=')') or
          (Texto[q]='*') or
          (Texto[q]='+') or
          (Texto[q]='=') or
          (Texto[q]='-') or
          (Texto[q]='/') or
          (Texto[q]='%') or
          (Texto[q]=':') or
          (Texto[q]='>') or
          (Texto[q]='<') or
          (Texto[q]='@') or
          (Texto[q]='[') or
          (Texto[q]=']') or
          (Texto[q]='{') or
          (Texto[q]='}') do
    begin
        if Texto[q]= ';' then
            break;
        monta := monta + Texto[q];
    inc(q);
    end;
    result := monta;
end;
//***************************
begin
    opendialog.InitialDir:=idir;
    if opendialog.execute then
    begin
        narq:=opendialog.filename;
        narq1:='';
        for i:=length(narq) downto 0 do
        begin
            if copy(narq,i,1)='\' then break;
            narq1:=copy(narq,i,1)+narq1;
        end;
       lblData.Visible:=false;
       lblTexto.Visible:=true;
       dbRetorno.IndexFieldNames:='NomeArquivo';
       if dbRetorno.Locate('NomeArquivo',narq1,[]) then
       begin
          ShowMessage('Arquivo de retorno ja lido');
          abort;
       end;
        dbExcel.Close;
        dbExcel.SQL.Text:='Delete from relExcel';
        dbExcel.Execute;
        dbExcel.SQL.Text:='Select * from relExcel';
        dbExcel.Open;//a tabela onde quero por os dados excel
        AssignFile(Arq,OpenDialog.FileName);
        Reset(Arq);
        if not EOF(Arq) then
            repeat
        ReadLn(Arq,Texto);

        with dbExcel do
        begin
            Insert;
            q := 0;
            for campo:=1 to 94 do
            begin
                xcampo:=IntToStr(campo);
                FieldByName(xcampo).value:=MV;
            end;
            Post;
        end;
        until EOF(Arq);// ate o fim arquivo CSV
        Closefile(Arq);//fecha arquivo CSV

        tot:=dbExcel.RecordCount;
        ProgressBar1.Position:=0;
        ProgressBar1.Min:=1;
        ProgressBar1.Max:=tot;

        dbProcesso.Tag:=0;
        dbRetorno.Insert;
        dbRetornoNomeArquivo.value:=narq1;
        dbRetornoProcessado.value:=false;
        dbRetornoCliente.value:=2;
        dbRetorno.Post;
        iRetorno:=dbRetornoRetorno.value;
        tot1:=0;

        dbProcesso.AutoCalcFields:=false;
        dbProcesso.DisableControls;
        dbProcessoDiag.DisableControls;
        dbProcessoGlosa.DisableControls;

        dbExcel.First;
        a:=dbExcel.Fields[0].asstring; //primeiro campo
        if (a<>'Rotina') and (a<>'Complemento') then
        begin
            dbRetorno.Delete;
            ShowMessage('Arquivo não é Sul America');
            abort;
        end;

        while not dbExcel.eof do
        begin
            try
                a:=dbExcel.Fields[2].asstring; //Capeante
                if a='' then
                begin
                    dbExcel.Next;
                    Continue;
                end;

                iProntuario:=StrToInt64(a);

                if dbProcesso.Locate('Retorno;Cliente;AtendimentoHI',
                                     VarArrayof([iRetorno,2,iProntuario]),[]) then
                begin
                    dbExcel.Next;
                    Continue;
                end
                else
                    dbProcesso.Insert;

                tot1:=tot1+1;
                ProgressBar1.Position:=ProgressBar1.Position+1;
                dbProcessoProcessa.value:='A';
                dbProcessoRetorno.value:=iRetorno;
                dbProcessoAtendimentoHI.value:=iProntuario;

                a:=dbExcel.Fields[3].asstring; //Capeante Original
                ierro:='Capeante:'+a;
                icapeante:='Capeante:'+a;
                if trim(a)<>'' then
                    dbProcessoAtendimentoHiO.value:=StrToInt64(a);

                a:=dbExcel.Fields[0].asstring; //Tipo Audisin
                ierro:='Tipo';
                if a='Complemento' then
                    dbProcessoComplemento.value:=true;


                a:=dbExcel.Fields[4].asstring; //Visita
                ierro:='Visita';
                if a='Sim' then
                 dbProcessoVisita.value:=1;

                a:=dbExcel.Fields[5].asstring; //Senha
                ierro:='Senha';
                while pos('/',a)>0 do
                   Delete(a,pos('/',a),1);
                if trim(a)<>'' then
                    dbProcessoSenha.value:=a;

                a:=dbExcel.Fields[11].AsString; //Recem nascido
                ierro:='Recem nascido';
                iRN:=copy(a,1,3);
                dbProcessoRN.value:=iRN;

                a:=dbExcel.Fields[12].asstring; //Gemelar
                ierro:='Gemelar';
                if trim(a)<>'' then
                    dbProcessoGemelar.value:=StrToInt(a);

                a:=dbExcel.Fields[9].AsString; //produto
                ierro:='Produto';

                a:=Trim(a)+dbExcel.Fields[10].AsString; //Cod. Paciente
                ierro:='Cod.Paciente';
                dbProcessoCodigoPaciente.value:=a;

                a:=dbExcel.Fields[13].asstring; //Sexo
                ierro:='Sexo';
                dbProcessoPacienteSexo.value:=a;

                a:=dbExcel.Fields[14].asstring; //Nascimento
                ierro:='Nascimento';
                if trim(a)<>'' then
                    dbProcessoPacienteNascimento.value:=StrToDate(a);
                if YearOf(dbProcessoPacienteNascimento.value) < 1900 then
                    dbProcessoPacienteNascimento.Clear;    

                a:=dbExcel.Fields[15].asstring; //Nome
                ierro:='Nome';
                dbProcessoNomePaciente.value:=a;

                dbProcessoIdPaciente.value:='SULAMERICA';

                a:=dbExcel.Fields[19].asstring; //CNPJ Hospital
                ierro:='CNPJ Hospital';
                while pos('.',a)>0 do
                   Delete(a,pos('.',a),1);
                while pos('/',a)>0 do
                  Delete(a,pos('/',a),1);
                while pos('-',a)>0 do
                  Delete(a,pos('-',a),1);
                a:=copy(a,1,12);
                dbProcessoHospitalCNPJ.value:=a;

                a:=dbExcel.Fields[23].asstring; //Medico
                ierro:='Medico';
                if trim(a)<>'' then
                    dbProcessoMedicoANome.value:=a;

                a:=dbExcel.Fields[24].asstring; //Medico
                ierro:='CRM';
                if trim(a)<>'' then
                    dbProcessoMedicoACRM.value:=StrToInt(a);

                a:=dbExcel.Fields[30].asstring; //Internacao  - no arquivo como inicio e final da cobranca
                ierro:='Data Internacao';
                if trim(a)<>'' then
                     dbProcessoDataInternacao.value:=StrToDate(a);

                a:=dbExcel.Fields[31].asstring; //Alta
                ierro:='Data Alta';
                if trim(a)<>'' then
                    dbProcessoDataAlta.value:=StrToDate(a);

                iDias:=DateOf(dbProcessoDataAlta.value)-DateOf(dbProcessoDataInternacao.value);
                if dbProcessoDataAlta.isnull then
                    iDias:=0;
                if iDias=0 then iDias:=1;
                if dbProcesso.State in [dsEdit,dsInsert] then
                dbProcessoDiariasCalculadas.asinteger:=iDias;


                a:=dbExcel.Fields[33].asstring; //parcial
                ierro:='Parcial';
                if trim(a)<>'' then
                begin
                    dbProcessoNumeroParcial.value:=StrToInt(trim(a));
                    iparcial:=StrToInt(trim(a));
                end
                else
                    iparcial:=0;

                if dbProcessoNumeroParcial.value>0 then
                begin
                    dbProcessoParcial.value:=1;
                    a:=dbExcel.Fields[26].asstring; //Inicio parcial
                    if trim(a)<>'' then
                        dbProcessoDataInicioP.value:=StrToDate(a);

                    a:=dbExcel.Fields[28].asstring; //Fim parcial
                    if trim(a)<>'' then
                        dbProcessoDataFimP.value:=StrToDate(a);
                end;

                a:=dbExcel.Fields[32].asstring; //tipo internacao
                ierro:='Tipo Internacao';
                if a='Clínica' then
                begin
                    dbProcessoInternacao.value:='C';
                    dbProcessoCodAmb.Value:=20010;
                end;
                if a='Cirúrgica' then
                    dbProcessoInternacao.value:='R';

                a:=dbExcel.Fields[35].asstring; //tratamento
                if a='Emergência' then
                    dbProcessoTratamento.value:='R';
                if a='Eletivo' then
                    dbProcessoTratamento.value:='E';
                if a='Acidente' then
                    dbProcessoTratamento.value:='a';

                a:=dbExcel.Fields[36].asstring; //conclusao
                ierro:='Conclusão';
                if a='Alta Normal' then
                    dbProcessoConclusao.value:='A';
                if a='Óbito' then
                    dbProcessoConclusao.value:='O';
                if a='Transferência' then
                    dbProcessoConclusao.value:='T';
                if a='Assistência Domicilar' then
                    dbProcessoConclusao.value:='H';

                a:=dbExcel.Fields[37].asstring; //Diarias
                ierro:='Diarias';
                dbProcessoApto.value:=StrToInt(a);

                a:=dbExcel.Fields[38].asstring; //uti
                ierro:='UTI';
                dbProcessoDiasUTI.value:=StrToInt(a);

                a:=dbExcel.Fields[39].asstring; //bercario
                ierro:='Bercario';
                dbProcessoBercario.value:=StrToInt(a);

                a:=dbExcel.Fields[40].asstring; //enfermaria
                ierro:='Enfermaria';
                dbProcessoEnfermaria.value:=StrToInt(a);

                a:=dbExcel.Fields[41].asstring; //semi
                ierro:='Semi';
                dbProcessoSemi.value:=StrToInt(a);

                a:=dbExcel.Fields[42].asstring; //day clinic
                ierro:='DayClinic';
                dbProcessoDayClinicQtd.value:=StrToInt(a);
                if dbProcessoDayClinicQtd.value>0 then
                    dbProcessoDayClinic.value:=true;

                a:=dbExcel.Fields[45].asstring; //isolamento
                ierro:='Isolamento';
                dbProcessoIsolamento.value:=StrToInt(a);

                dbProcessoDiarias.Value:=dbProcessoApto.value+
                                         dbProcessoBercario.value+
                                         dbProcessoDayClinicQtd.value+
                                         dbProcessoEnfermaria.value+
//                                       dbProcessoIsolamento.value+ retirado 29/03/2016 - solicitacao Eulalia
                                         dbProcessoSemi.value+
                                         dbProcessoDiasUti.value;

                a:=dbExcel.Fields[48].asstring; //data amb
                ierro:='Data AMB';
                if trim(a)<>'' then
                    dbProcessoDataAmb1.value:=StrToDate(a);

                a:=dbExcel.Fields[49].asstring; // amb
                ierro:='Cod.AMB';
                while pos('-',a)>0 do
                   Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb.value:=StrToInt(a);

                a:=dbExcel.Fields[50].asstring; // % hm
                ierro:='% AMB';
                j:=pos(',',a);
                a:=copy(a,1,j-1);
                if trim(a)<>'' then
                    dbProcessoPAmb1.value:=StrToInt(a);

                a:=dbExcel.Fields[51].asstring; // amb
                ierro:='Cod.AMB 1';
                while pos('-',a)>0 do
                   Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb1.value:=StrToInt(a);

                a:=dbExcel.Fields[52].asstring; // % hm
                ierro:='% AMB 2';
                j:=pos(',',a);
                a:=copy(a,1,j-1);
                if trim(a)<>'' then
                    dbProcessoPAmb2.value:=StrToInt(a);

                a:=dbExcel.Fields[53].asstring; // amb
                ierro:='Cod.AMB 3';
                while pos('-',a)>0 do
                   Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb3.value:=StrToInt(a);

                a:=dbExcel.Fields[54].asstring; // % hm
                ierro:='% AMB 3';
                j:=pos(',',a);
                a:=copy(a,1,j-1);
                if trim(a)<>'' then
                    dbProcessoPAmb3.value:=StrToInt(a);

                a:=dbExcel.Fields[84].asstring; // %valor total
                ierro:='Valor Total';
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValor.value:=StrToFloat(a);

                a:=dbExcel.Fields[85].asstring; // %valor total
                ierro:='Valor Glosado';
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValorGlosado.value:=StrToFloat(a);

                a:=dbExcel.Fields[86].asstring; // data fechamento
                ierro:='Data Fechamento';
                dbProcessoDataFechamento.value:=StrToDate(a);
                if trim(a)<>'' then
                begin
                    DecodeDate(StrToDate(a),ano,mes,dia);
                    dbProcessoMesCompetencia.value:=mes;
                    dbProcessoAnoCompetencia.value:=ano;
                end;

                ierro:='';

                a:=dbExcel.Fields[88].asstring; // obs
                dbProcessoObservacao.value:=a;

                a:=dbExcel.Fields[89].asstring; // medico
                if trim(a)<>'' then
                   dbProcessoMedicoNome.value:=a;

                a:=dbExcel.Fields[90].asstring; // medico
                if trim(a)<>'' then
                    dbProcessoMedicoCRM.value:=StrToInt(a);

                a:=dbExcel.Fields[91].asstring; // enfermeiro
                if trim(a)<>'' then
                   dbProcessoEnfermeiroNome.value:=a;

                a:=dbExcel.Fields[92].asstring; // enfermeiro
                if trim(a)<>'' then
                    dbProcessoEnfermeiroCOREN.value:=StrToInt(a);

                a:=dbExcel.Fields[93].asstring; // responsavel
                if trim(a)<>'' then
                    dbProcessoResponsavelH.value:=a;

                dbProcessoDataSite.value:=date;
                dbProcessoDataInclusao.value:=date;
                dbProcessoCliente.value:=2;
                dbProcessoPaciente.value:=0;
                dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                           dbProcessoValorGlosadoM.Value-
                                           dbProcessoValorGlosadoE.Value;
                dbProcessoUsuarioI.value:='SULAMERICA';
                dbProcesso.Post;
// Glosas
                a:=dbExcel.Fields[66].asstring; // diarias
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DI';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[67].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[68].asstring; // taxa
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='TX';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[69].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[70].asstring; // gases
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='GA';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[71].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[72].asstring; // hm
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HM';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[73].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[74].asstring; // sadt
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[75].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[76].asstring; // hemo
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[77].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[78].asstring; // materiais
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[79].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[80].asstring; // medicamentos
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MD';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[81].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel.Fields[82].asstring; // pacote
                a:=LimpaMilhar(a);
                if trim(a)<>'' then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=2;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='PT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel.Fields[83].asstring; //
                     a:=LimpaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
// CIDs

                a:=dbExcel.Fields[46].asstring; // cid
                if trim(a)<>'' then
                begin
                    dbProcessoDiag.Insert;
                    dbProcessoDiagPrincipal.value:=true;
                    dbProcessoDiagRetorno.value:=iRetorno;
                    dbProcessoDiagAtendimentoHI.value:=iProntuario;
                    dbProcessoDiagCliente.value:=2;
                    dbProcessoDiagCodCid.value:=a;
                    dbProcessoDiagGrupoCid.value:=a;
                    a:=dbExcel.Fields[47].asstring; // cid
                    dbProcessoDiagDescricao.value:=a;
                    dbProcessoDiag.Post;
                 end;
            except
                dbProcesso.AutoCalcFields:=true;
                dbProcesso.EnableControls;
                dbProcessoDiag.EnableControls;
                dbProcessoGlosa.EnableControls;
                ShowMessage('Informações enviadas no arquivo retorno inválidas.'+#13+
                            'Leitura do arquivo interrompida'+#13+icapeante+'-'+ierro+' - Informação inválida:'+a);
                if dbProcesso.State in [dsInsert,dsEdit] then
//                    dbProcesso.Cancel;
                if dbProcessoGlosa.State in [dsInsert,dsEdit] then
                    dbProcessoGlosa.Cancel;
                if dbProcessoDiag.State in [dsInsert,dsEdit] then
                dbProcessoDiag.Cancel;
                ProgressBar1.position:=0;
                    dbProcessoGlosa.Refresh;
                dbProcesso.First;
                dbRetorno.IndexFieldNames:='Retorno desc';
                abort;
            end;
            dbExcel.Next;
        end;
        dbRetorno.Edit;
        dbRetornoRegistros.value:=tot;
        dbRetornoCapeantes.value:=tot1;
        dbRetornoUsuarioLeitura.value:=iUsuario;
        dbRetornoDataLeitura.Value:=date;
        dbRetorno.Post;

        dbProcesso.AutoCalcFields:=true;
        dbProcesso.EnableControls;
        dbProcessoDiag.EnableControls;
        dbProcessoGlosa.EnableControls;
        ProgressBar1.position:=0;
        dbProcessoGlosa.Refresh;
        dbProcesso.First;
        dbRetorno.IndexFieldNames:='Retorno desc';
        ShowMessage('Arquivo Retorno lido com sucesso');
    end;
end;

procedure TfrmRetornoHI.dbProcessoCalcFields(DataSet: TDataSet);
begin
    if dbProcessoProcessa.value='S' then
        dbProcessoProcessaTExto.value:='OK';
    if dbProcessoProcessa.value='N' then
        dbProcessoProcessaTExto.value:='Não';
    if dbProcessoProcessa.value='A' then
        dbProcessoProcessaTExto.value:='NA';
end;

procedure TfrmRetornoHI.dbProcessoGlosaAfterInsert(DataSet: TDataSet);
begin
//    dbProcessoGlosaDataAuditoria.Value:=date;
end;

procedure TfrmRetornoHI.dbProcessoDiagAfterInsert(DataSet: TDataSet);
begin
    dbProcessoDiagPrincipal.value:=false;
end;

procedure TfrmRetornoHI.dbProcessoAfterInsert(DataSet: TDataSet);
begin
    dbProcessoProcessa.value:='N';
    dbProcessoDayClinic.value:=false;
    dbProcessoParcial.value:=0;
    dbProcessoVisita.value:=0;
    dbProcessoNaoValorizado.value:=0;

     dbProcessoDiarias.Value:=0;
     dbProcessoDiariasGlosadas.Value:=0;
     dbProcessoDiasUti.Value:=0;
     dbProcessoValor.Value:=0;
     dbProcessoValorGlosadoM.Value:=0;
     dbProcessoValorGlosadoE.Value:=0;
     dbProcessoValorNaoAcordadoM.Value:=0;
     dbProcessoValorNaoAcordadoE.Value:=0;
     dbProcessoApto.Value:=0;
     dbProcessoEnfermaria.Value:=0;
     dbProcessoSemi.Value:=0;
     dbProcessoBercario.Value:=0;
     dbProcessoDayClinicQtd.Value:=0;
     dbProcessoIsolamento.Value:=0;
     dbProcessoNaoValorizado.value:=0;
     dbProcessoComplemento.value:=false;
     dbProcessoDayClinic.value:=false;
     dbProcessoIntercambio.value:=false;
     dbProcessoPosAnalise.value:=false;
     dbProcessoPacote.value:=false;
     dbProcessoVisita.value:=0;

     dbProcessoExtraAmb.Value:=false;
     dbProcessoExtraAmb1.value:=false;
     dbProcessoGemelar.value:=0;
     dbProcessoNABradesco.value:='';
end;

procedure TfrmRetornoHI.grdAuditoriaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdAuditoria.Columns[3].Color:=$00D9D9FF;
     grdAuditoria.Columns[6].Color:=$00D9D9FF;
     grdAuditoria.DefaultDrawDataCell(Rect,grdAuditoria.Columns[DataCol].field,State);
end;

procedure TfrmRetornoHI.cmdAtualizarClick(Sender: TObject);
var iRetorno,iResultado,iUlt:integer;
var campos,i,iMes,iAno,iProdutividade:integer;
var iDataUlt:TDate;
begin
    tabFiltro.TabIndex:=0;
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    iRetorno:=dbRetornoRetorno.value;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    ProgressBar1.Max:=dbProcesso.RecordCount;
    ProgressBar1.Position:=1;
    ShowMessage('O sistema irá verificar a validação dos registros. Tecle [ENTER]');
    dbProcesso.First;
    while (not dbProcesso.eof)  do
    begin
        if dbProcessoProcessa.value='A' then
        begin
            ShowMessage('Existem registros não validados');
            abort;
        end;
        dbProcesso.Next;
        ProgressBar1.Position:=ProgressBar1.Position+1;
    end;
    if dbRetornoProcessado.value=true then
    begin
        ShowMessage('Retorno ja processado');
        iResultado:=Application.MessageBox('Confirme o re-processamento do retorno',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    end
    else
        iResultado:=Application.MessageBox('Confirme o processamento do retorno',
                  'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;
    ProgressBar1.Position:=1;

    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        ProgressBar1.Position:=ProgressBar1.Position+1;
        if dbProcessoProcessa.value='S' then
        begin
            dbAtendH.sql.Clear;
            dbAtendH.sql.text:='Select * from AtendHI '+
                               'where AtendimentoHI=:iAtend and '+
                               '      Cliente=:iCliente ';
            dbAtendH.ParamByName('iAtend').Value:=dbProcessoAtendimentoHI.Value;
            dbAtendH.ParamByName('iCliente').Value:=dbProcessoCliente.Value;
            dbAtendH.Execute;

            if dbAtendH.RecordCount>0 then
            begin
                iProdutividade:=dbAtendHProdutividade.value;
                iMes:=dbAtendHMesCompetencia.value;
                iAno:=dbAtendHAnoCompetencia.value;
                dbAtendH.Edit;
            end
            else
            begin
                iProdutividade:=0;
                iMes:=0;
                iAno:=0;
                dbAtendH.Insert;
            end;
            for i:=0 to dbAtendH.FieldCount-3 do
                if (dbAtendH.Fields[i].FieldName<>'Sequencial') and
                   (dbAtendH.Fields[i].FieldName<>'Remessa') and
                   (dbAtendH.Fields[i].FieldName<>'Servico') and
                   (dbAtendH.Fields[i].FieldName<>'ServicoC') and
                   (dbAtendH.Fields[i].FieldName<>'Produtividade') then
                    dbAtendH.fields[i].assign(dbProcesso.fieldbyname(dbAtendH.fields[i].fieldname));

            dbAtendHDataInclusao.value:=date;

            if dbAtendHCliente.value=2 then  //Exclusivo Sul America
            begin
                if dbAtendHNumeroParcial.value=0 then
                begin
                   dbAtendHParcial.value:=0;
                   dbAtendHDataInicioP.Clear;
                end
                else
                   dbAtendHParcial.value:=1;
            end;

            if dbAtendHAcidente.value='N' then
                dbAtendHAcidente.value:='';
            if dbAtendHObitoGravida.value='N' then
                dbAtendHObitoGravida.value:='';
// *** Servicos

            if (dbHospitalPre.Locate('Cliente;Hospital',VarArrayof([dbProcessoCliente.value,dbProcessoHospital.value]),[])) and
               (dbHospitalPreDG.value=true) and (dbAtendHComplemento.value=false) then
            begin
                dbAtendHServico.value:='DG' ;
            end
            else
                begin
                    if dbAtendHParcial.value=0 then
                        dbAtendHServico.value:='P'
                    else
                    begin
                        if dbAtendHDataInternacao.Value=dbAtendHDataInicioP.value then
                            dbAtendHServico.value:='PP1'
                        else
                        begin
                            if dbAtendHDayClinic.value=true then
                                dbAtendHServico.value:='DAY'
                            else
                                dbAtendHServico.value:='PPD';
                        end;
                    end;
                end;

            if dbAtendHComplemento.value=true then
                dbAtendHServico.value:='CO';

//************
            if iProdutividade<>0 then //mantem a Competencia original
            begin
                dbAtendHMesCompetencia.value:=iMes;
                dbAtendHAnoCompetencia.value:=iAno;
            end;

            dbAtendHServicoC.value:=dbAtendHServico.value;
            dbAtendHComplementoF.value:=false;

        if (not dbAtendHDataInicioP.IsNull) and (not dbAtendHDataFimP.isnull) then
            dbAtendHDiariasLonga.value:=trunc(dbAtendHDataFimP.value)-trunc(dbAtendHDataInicioP.value)
        else
            if (not dbAtendHDataInicioP.IsNull) and (dbAtendHDataFimP.isnull) then
                dbAtendHDiariasLonga.value:=trunc(dbAtendHDataAlta.value)-trunc(dbAtendHDataInicioP.value)
            else
                dbAtendHDiariasLonga.value:=dbAtendHDiarias.asinteger;


            dbAtendH.Post;
//***********
            dbProcessoGlosa.Refresh;
            dbProcessoGlosa.First;
            while not dbProcessoGlosa.eof do
            begin
                dbItem.sql.Clear;
                dbItem.sql.text:='Select * from AtendHIGlosa '+
                                 'where AtendimentoHI=:iAtend and '+
                                 '      Cliente=:iCli and '+
                                 '      Tipo=:iTipo and '+
                                 '      GlosaI=:iGlosa  ';
                dbItem.ParamByName('iAtend').Value:=dbProcessoGlosaAtendimentoHI.Value;
                dbItem.ParamByName('iCli').Value:=dbProcessoGlosaCliente.value;
                dbItem.ParamByName('iTipo').Value:=dbProcessoGlosaTipo.Value;
                dbItem.ParamByName('iGlosa').Value:=dbProcessoGlosaGlosaI.Value;
                dbItem.Execute;

                if dbItem.RecordCount>0 then
                    dbItem.Edit
                else
                    dbItem.Insert;
                for i:=0 to dbItem.FieldCount-1 do
                    dbItem.fields[i].assign(dbProcessoGlosa.fieldbyname(dbItem.fields[i].fieldname));
                dbItem.Post;
                dbProcessoGlosa.Next;
            end;

            dbProcessoDiag.Refresh;
            dbProcessoDiag.First;
            while not dbProcessoDiag.eof do
            begin
                if dbProcessoDiagPrincipal.value=true then
                begin
                    dbDiag.sql.Clear;
                    dbDiag.sql.text:='Select * from AtendHIDiagnostico '+
                                     'where AtendimentoHI=:iAtend and '+
                                     '      Cliente=:iCli and '+
                                     '      Diagnostico=:iDiag ';
                    dbDiag.ParamByName('iAtend').Value:=dbProcessoDiagAtendimentoHI.Value;
                    dbDiag.ParamByName('iCli').Value:=dbProcessoDiagCliente.value;
                    dbDiag.ParamByName('iDiag').Value:=dbProcessoDiagDiagnostico.Value;
                    dbDiag.Execute;

                  if dbDiag.RecordCount>0 then
                        dbDiag.Edit
                    else
                        dbDiag.Insert;
                    for i:=0 to dbDiag.FieldCount-1 do
                            dbDiag.fields[i].assign(dbProcessoDiag.fieldbyname(dbDiag.fields[i].fieldname));
                    dbDiag.Post;
                end;
                dbProcessoDiag.Next;
            end;
        end;
        dbProcesso.Next;
    end;
    dbRetorno.Locate('Retorno',iRetorno,[]);
    dbRetorno.Edit;
    dbRetornoDataProcessamento.value:=date;
    dbRetornoHoraProcessamento.value:=time;
    dbRetornoUsuario.value:=iUsuario;
    dbRetornoProcessado.value:=true;
    dbRetorno.Post;
    ShowMessage('Atualização dos dados processada com sucesso');
end;

procedure TfrmRetornoHI.tabOrdemRetornoChange(Sender: TObject);
begin
    case tabOrdemRetorno.TabIndex of
    0:begin
      lblData.Visible:=false;
      lblTexto.Visible:=true;
      dbRetorno.IndexFieldNames:='Retorno desc';
      end;
    1:begin
      lblTexto.Visible:=false;
      lblData.Visible:=true;
      dbRetorno.IndexFieldNames:='DataProcessamento desc';
      end;
    2:begin
      lblData.Visible:=false;
      lblTexto.Visible:=true;
      dbRetorno.IndexFieldNames:='NomeArquivo';
      end;
    end;
end;

procedure TfrmRetornoHI.lblTextoChange(Sender: TObject);
begin
    case tabOrdemRetorno.TabIndex of
    0:dbRetorno.Locate('Retorno',Trim(lblTexto.Text),[loCaseInsensitive,loPartialKey]);
    2:dbRetorno.Locate('NomeArquivo',Trim(lblTexto.Text),[loCaseInsensitive,loPartialKey]);
    end;
end;

procedure TfrmRetornoHI.lblDataChange(Sender: TObject);
begin
dbRetorno.Locate('DataProcessamento',lblData.Date,[]);
end;

procedure TfrmRetornoHI.dbRetornoCalcFields(DataSet: TDataSet);
begin
    if dbRetornoProcessado.value=true then
        dbRetornoProcessadoTexto.value:='Sim'
    else
        dbRetornoProcessadoTexto.value:='Não';
    dbRetornoRepetidos.value:=dbRetornoRegistros.value-dbRetornoCapeantes.value;
    dbRetornoHoraTexto.value:=TimeToStr(dbRetornoHoraProcessamento.value);
end;

procedure TfrmRetornoHI.cmdValidarClick(Sender: TObject);
var i,iRetorno,iItem,iDiag,iResultado,iTotOk,iTotI,iTotA:integer;
var iprontuario:int64;
var campos,iPaciente,Ini,iHospital,iMed,iEnf,iEnfCoren:integer;
var iCid, itexto,iTextoP,iNome,iParcial,iHospitalCNPJ:string;
var iOk,iOk1,iOk2,iBradesco,iGlosaBradesco,iLimpaMed,iLimpaEnf :boolean;
var iDias,iValorM,iValorE,iValor,iValorGlosa:variant;
var a:int64;
var aa,mm,dd,xaa,xmm,xdd:word;
begin
    iTotOk:=0;
    iTotI:=0;
    iTotA:=0;
    tabFiltro.TabIndex:=0;
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    dbAuditor.IndexFieldNames:='CRM';
    dbEnfermeiro.IndexFieldNames:='Coren';
    iRetorno:=dbRetornoRetorno.value;

    if dbRetornoProcessado.value=true then
        ShowMessage('Atenção! Retorno já processado');

    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem validados');
        abort;
    end;
    if dbRetornoRegistros.value=0 then
    begin
        ShowMessage('Qtd de registros lidos zerada. Arquivo não lido até o final. Baixe o arquivo novamente');
        abort;
    end;
    iResultado:=Application.MessageBox('Confirme a validação do retorno',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    ProgressBar1.Max:=dbProcesso.RecordCount;
    ProgressBar1.Position:=1;

    dbProcesso.AutoCalcFields:=false;
    dbProcesso.First;
    while not dbProcesso.eof do
    begin
        itexto:='';
        ProgressBar1.Position:=ProgressBar1.Position+1;
        iOk:=true;
        iTextoP:='';
case dbRetornoCliente.value of
2: //************************* Sul America ************************
begin
        if dbProcessoAtendimentoHI.value=0 then
        begin
             itexto:=itexto+'Número do capeante inválido'+#13;
             iOk:=false;
        end;

        if dbProcessoMesCompetencia.value=0 then
        begin
             itexto:=itexto+'Mês de competencia inválido'+#13;
             iOk:=false;
        end;

        if dbProcessoAnoCompetencia.value=0 then
        begin
             itexto:=itexto+'Ano de competencia inválido'+#13;
             iOk:=false;
        end;

        if not dbHospital.Locate('CNPJ',dbProcessoHospitalCNPJ.value,[loPartialKey]) then
        begin
           itexto:=itexto+'Hospital não cadastrado'+#13;
           iOk:=false;
           iHospital:=0;
        end
        else
            iHospital:=dbHospitalHospital.value;


        if dbProcessoNomePaciente.value='' then
        begin
           itexto:=itexto+'Nome do paciente inválido'+#13;
           iOk:=false;
        end;
        if (dbProcessoCodigoPaciente.value='') or
           (dbProcessoCodigoPaciente.value='00000000000000000000') or
           (dbProcessoCodigoPaciente.value='0000000000000000000') or
           (dbProcessoCodigoPaciente.value='000000000000000000') or
           (dbProcessoCodigoPaciente.value='00000000000000000') or
           (dbProcessoCodigoPaciente.value='0000000000000000') or
           (dbProcessoCodigoPaciente.value='000000000000000') or
           (dbProcessoCodigoPaciente.value='00000000000000') or
           (dbProcessoCodigoPaciente.value='0000000000000') or
           (dbProcessoCodigoPaciente.value='000000000000') or
           (dbProcessoCodigoPaciente.value='00000000000') or
           (dbProcessoCodigoPaciente.value='0000000000') or
           (dbProcessoCodigoPaciente.value='000000000') or
           (dbProcessoCodigoPaciente.value='00000000') or
           (dbProcessoCodigoPaciente.value='0000000') or
           (dbProcessoCodigoPaciente.value='000000') or
           (dbProcessoCodigoPaciente.value='00000') or
           (dbProcessoCodigoPaciente.value='0000') or
           (dbProcessoCodigoPaciente.value='000') or
           (dbProcessoCodigoPaciente.value='00') or
           (dbProcessoCodigoPaciente.value='0') then
        begin
           itexto:=itexto+'Código do paciente inválido'+#13;
           iOk:=false;
            if dbProcessoCliente.value<>2 then
            begin
                if dbProcessoPacienteIdade.value=0 then
                begin
                    itexto:=itexto+'Idade do paciente inválida'+#13;
                    iOk:=false;
                end;
                if (dbProcessoPacienteUnidade.value<>'M') and
                   (dbProcessoPacienteUnidade.value<>'A') then
                begin
                    itexto:=itexto+'Unidade da idade do paciente inválida'+#13;
                    iOk:=false;
                end;
                if (dbProcessoPacienteSexo.value<>'M') and
                    (dbProcessoPacienteSexo.value<>'F') then
                begin
                    itexto:=itexto+'Sexo do paciente inválido'+#13;
                    iOk:=false;
                end;
            end;
        end
        else
        begin
            iPaciente:=0;
            if dbPaciente.Locate('Cliente;IdPaciente;CodigoPaciente',
                          VarArrayof([dbProcessoCliente.value,dbProcessoIDPaciente.value,dbProcessoCodigoPaciente.value]),[]) then
            begin
                iPaciente:=dbPacientePaciente.value;
                if dbPacienteDataNascimento.isnull then
                begin
                    dbPaciente.Edit;
                    dbPacienteSexo.value:=dbProcessoPacienteSexo.value;
                    dbPacienteDataNascimento.value:=dbProcessoPacienteNascimento.value;
                end;
            end
            else
            begin
                dbPaciente.Insert;
                dbPacientePaciente.Value:=iUltimoPaciente+1;
                dbPacienteCliente.value:=dbProcessoCliente.value;
                dbPacienteNome.value:=dbProcessoNomePaciente.value;
                dbPacienteSexo.value:=dbProcessoPacienteSexo.value;
                dbPacienteDataNascimento.value:=dbProcessoPacienteNascimento.value;
                dbPacienteCodigoPaciente.value:=dbProcessoCodigoPaciente.value;
                dbPacienteIDPaciente.value:=dbProcessoIDPaciente.value;
                dbPacienteDataInclusao.Value:=date;
                dbPacienteUsuario.value:='RETORNO';
                if dbProcessoCliente.value<>2 then
                begin
                    dbPacienteIdade.value:=dbProcessoPacienteIdade.value;
                    dbPacienteUnidade.value:=dbProcessoPacienteUnidade.value;
                    dbPacienteSexo.value:=dbProcessoPacienteSexo.value;
                end;
                dbPaciente.Post;
                iPaciente:=dbPacientePaciente.value;
            end;
        end;

        iMed:=0;
        iEnf:=0;
        iEnfCoren:=0;
        iLimpaMed:=false;
        iLimpaEnf:=false;

        if dbHospitalPre.Locate('Cliente;Hospital',VarArrayof([2,dbProcessoHospital.value]),[]) then
        begin
            iLimpaMed:=dbHospitalPreZeraAuditor.value;
            iLimpaEnf:=dbHospitalPreZeraEnfermeiro.value;

            if dbHospitalPreAuditor.value<>0 then
                iMed:=dbHospitalPreAuditor.value;
            if dbHospitalPreEnfermeiro.value<>0 then
                iEnf:=dbHospitalPreEnfermeiro.value;
        end;

        if (dbProcessoCliente.value=2) and
           ((iEnf<>0) or (iLimpaEnf)) and
           (dbAtendHComplemento.value=false) then  //Parametros por hospital - zera/troca enfermeiro,não valida
        else
        begin
            if dbProcessoEnfermeiroCoren.value=0 then
            begin
               itexto:=itexto+'Enfermeiro não informado'+#13;
               iOk:=true;
            end
            else
            begin
                iEnf:=0;
                if dbEnfermeiro.Locate('Coren',dbProcessoEnfermeiroCOREN.value,[]) then
                    iEnf:=dbEnfermeiroEnfermeiro.value
                else
                begin
                    if (dbEnfermeiro.Locate('Nome',dbProcessoEnfermeiroNome.value,[])) and
                       (dbEnfermeiroCoren.value<>dbProcessoEnfermeiroCoren.value) then
                    begin
                        itexto:=itexto+'Nome do enfermeiro já cadastrado com outro Coren. Verifique'+#13;
                        iOk:=false;
                        iEnf:=0;
                    end
                    else
                    begin
                        itexto:=itexto+'Enfermeiro não cadastrado'+#13;
                        iOk:=false;
                        iEnf:=0;
                    end;
                end;
            end;
        end;

        if (dbProcessoCliente.value=2) and
           ((iMed<>0) or (iLimpaMed)) and
           (dbAtendHComplemento.value=false) then  //Parametros por hospital - zera/troca enfermeiro,não valida
        else
        begin
           if (dbProcessoMedicoCRM.value=0) then
            begin
//              itexto:=itexto+'CRM do Médico inválido'+#13; retirado em 02/05/2019 - alguns hospitais vem sem medico
//              iOk:=false;
                iMed:=0;
            end
            else
            begin
                iMed:=0;
                if dbAuditor.Locate('CRM',dbProcessoMedicoCRM.value,[]) then
                    iMed:=dbAuditorAuditor.value
                else
                begin
                    if (dbAuditor.Locate('Nome',dbProcessoMedicoNome.value,[])) and
                        (dbAuditorCRM.value<>dbProcessoMedicoCRM.value) then
                    begin
                       itexto:=itexto+'Nome do medico já cadastrado com outro CRM. Verifique'+#13;
                        iOk:=false;
                        iMed:=0;
                    end
                    else
                    begin
                        itexto:=itexto+'Medico Auditor não cadastrado'+#13;
                        iOk:=false;
                        iMed:=0;
                    end;
                end;
            end;
        end;

        if (dbProcessoDataInternacao.isnull) or
           (YearOf(dbProcessoDataInternacao.Value)<1950) then
        begin
           itexto:=itexto+'Data da Internação inválida'+#13;
           iOk:=false;
        end;
        if (dbProcessoDataInternacao.value>dbProcessoDataAlta.value) and
           (not dbProcessoDataAlta.isnull) then
        begin
           itexto:=itexto+'Data da Internação maior que Alta'+#13;
           iOk:=false;
        end;

        if (dbProcessoConclusao.value<>'A') and
           (dbProcessoConclusao.value<>'O') and
           (dbProcessoConclusao.value<>'T') and
           (dbProcessoConclusao.value<>'H') and
           (dbProcessoConclusao.value<>'') then
        begin
             itexto:=itexto+'Conclusão inválida'+#13;
             iOk:=false;
        end;
        if (dbProcessoTratamento.value<>'E') and
           (dbProcessoTratamento.value<>'R') and
           (dbProcessoTratamento.value<>'A') and
           (dbProcessoTratamento.value<>'') then
        begin
             itexto:=itexto+'Tratamento inválido'+#13;
             iOk:=false;
        end;
        if (dbProcessoInternacao.value<>'C') and
           (dbProcessoInternacao.value<>'R') and
           (dbProcessoInternacao.value<>'') then
        begin
             itexto:=itexto+'Internação inválida'+#13;
             iOk:=false;
        end;

        if (dbProcessoDataAlta.isnull) or
           (YearOf(dbProcessoDataAlta.Value)<1950)then
        begin
             itexto:=itexto+'Data da Alta inválida'+#13;
             iOk:=false;
        end;

        if dbProcessoDataSite.isnull then
        begin
             itexto:=itexto+'Data da Inclusão no site inválida'+#13;
             iOk:=false;
        end;

        if (dbProcessoDataFechamento.isnull) or
           (YearOf(dbProcessoDataFechamento.Value)<1950) then
        begin
             itexto:=itexto+'Data do Fechamento inválida'+#13;
             iOk:=false;
        end;

        if (not dbProcessoDataInicioP.isnull) and
           (YearOf(dbProcessoDataInicioP.Value)<1950) then
        begin
             itexto:=itexto+'Data Inicio da Parcial inválida'+#13;
             iOk:=false;
        end;

        if (not dbProcessoDataFimP.isnull) and
           (YearOf(dbProcessoDataFimP.Value)<1950) then
        begin
             itexto:=itexto+'Data Final da Parcial inválida'+#13;
             iOk:=false;
        end;

        try
            if dbProcessoSenha.value='' then
                a:=0
            else
                for i:=1 to Length(dbProcessoSenha.value) do
                    a:=StrToInt(copy(dbProcessoSenha.value,i,1));
        except
             itexto:=itexto+'Senha inválida'+#13;
             iOk:=false;
        end;
        iValorM:=0;
        iValorE:=0;
        iValor:=0;
        iValorGlosa:=0;
        if dbProcessoGlosa.RecordCount=0 then
        begin
            dbProcessoGlosa.Insert;
            dbProcessoGlosaRetorno.value:=iRetorno;
            dbProcessoGlosaAtendimentoHI.value:=dbProcessoAtendimentoHI.value;
            dbProcessoGlosaCliente.value:=2;
            dbProcessoGlosaTipo.value:='G';
            dbProcessoGlosaGlosaI.value:='GT';
            dbProcessoGlosaValorApresentado.value:=dbProcessoValor.value;
            dbProcessoGlosaValor.value:=dbProcessoValorGlosado.value;
            dbProcessoGlosa.Post;
            iValor:=dbProcessoValor.value;
            iValorGlosa:=dbProcessoValorGlosado.value;
            iValorM:=dbProcessoValorGlosado.value;
        end
        else
        begin
            dbProcessoGlosa.First;
            while not dbProcessoGlosa.eof do
            begin
                if not dbGlosa.Locate('GlosaI',dbProcessoGlosaGlosaI.value,[]) then
                begin
                    itexto:=itexto+'Glosa '+dbProcessoGlosaGlosaI.value+' não cadastrada'+#13;
                    iOk:=false;
                end
                else
                begin
                    if (dbGlosaResponsavel.value<>dbProcessoGlosaMedEnf.value) then
                    begin
                        dbProcessoGlosa.Edit;
                        dbProcessoGlosaMedEnf.value:=dbGlosaResponsavel.value;    //[E] ou [M]
                        dbProcessoGlosa.Post;
                    end;
                end;
                iValorM:=iValorM+dbProcessoGlosaVAlorM.value;
                iValorE:=iValorE+dbProcessoGlosaVAlorE.value;
                iValor:=iValor+dbProcessoValor.value;
                iValorGlosa:=iValorGlosa+dbProcessoValorGlosado.value;
                dbProcessoGlosa.Next;
            end;
        end;

        dbProcessoDiag.First;
        while not dbProcessoDiag.eof do
        begin
            dbProcessoDiag.First;
            while not dbProcessoDiag.eof do
            begin
                iCid:=dbProcessoDiagCodCid.value;
                if dbProcessoDiagCodCid.value<>'' then
                begin
                    if not dbDiagnostico.Locate('CodCid',dbProcessoDiagCodCid.value,[]) then
                    begin
                        if length(iCid)>3 then
                        begin
                            iCid:=copy(iCid,1,3)+'.'+Copy(iCid,4,length(iCid));
                            if not dbDiagnostico.Locate('CodCid',iCid,[]) then
                            begin
                                iCid:=iCid+'*';
                                if not dbDiagnostico.Locate('CodCid',iCid,[]) then
                                begin
                                    itexto:=itexto+'Diagnóstico '+dbProcessoDiagCodCid.value+'- não cadastrado'+#13;
                                    iOk:=false;
                                end;
                            end;
                        end;
                    end
                end;
                if iok then
                begin
                    if (dbProcessoDiagDiagnostico.value<>dbDiagnosticoDiagnostico.value) or
                       (dbProcessoDiagCodCid.value<>iCid) then
                    begin
                        dbProcessoDiag.Edit;
                        dbProcessoDiagDiagnostico.value:=dbDiagnosticoDiagnostico.value;
                        dbProcessoDiagCodCid.value:=iCid;
                        dbProcessoDiag.Post;
                    end;
                end;
                dbProcessoDiag.Next;
            end;
        end;

        dbProcesso.Edit;
        dbProcessoHospital.value:=iHospital;
        dbProcessoPaciente.value:=iPaciente;
        dbProcessoValorGlosadoM.Value:=iValorM;
        dbProcessoValorGlosadoE.Value:=iValorE;
        dbProcessoMedico.value:=iMed;
        dbProcessoEnfermeiro.value:=iEnf;
        if (dbProcessoParcial.value=1) and
           (dbProcessoNumeroParcial.value=999) then
        begin
            dbProcessoparcial.value:=0;
            dbProcessoNumeroparcial.value:=0;
            dbProcessoComplemento.value:=true;
        end;

           if dbProcesso.State=dsInsert then
            begin
                dbProcessoDiarias.Value:=trunc(dbProcessoDataAlta.Value)-
                                         trunc(dbProcessoDataInternacao.Value);
                if dbProcessoDiarias.Value=0 then
                    dbProcessoDiarias.Value:=1;
            end;

            if (dbProcessoDiarias.value>=2) and
               (dbProcessoInternacao.value='C') then
                dbProcessoVisita.value:=1
            else
                dbProcessoVisita.value:=0;

            if (dbProcessoDiarias.value>=4) and
               (dbProcessoInternacao.value='R') then
                dbProcessoVisita.value:=1
            else
                dbProcessoVisita.value:=0;

            dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                       dbProcessoValorGlosadoM.Value-
                                       dbProcessoValorGlosadoE.Value;

            if Int(dbProcessoValor.value-iValor)>0.01 then
            begin
                itexto:=itexto+'Valor Total ['+FloatToStrF(dbProcessoValor.value,ffCurrency,11,2)+
                               '] diferente da soma dos Itens ['+FloatToStrF(ivalor,ffCurrency,11,2)+']'+#13;
                iOk:=false;
            end;

            if Int(dbProcessoValorGlosado.value-iValorM-iValorE)>0.01 then
            begin
                itexto:=itexto+'Valor Total Glosado ['+FloatToStrF(dbProcessoValorGlosado.value,ffCurrency,11,2)+
                               '] diferente da soma dos Itens ['+FloatToStrF(iValorM+iValorE,ffCurrency,11,2)+']'+#13;
                iOk:=false;
            end;
end;
23,28:     //**********************Site/Bradesco *****************************
begin
        if dbProcessoCliente.value=999999 then
        begin
             itexto:=itexto+'Cliente não cadastrado'+#13;
             iOk:=false;
        end;

        if dbProcessoAtendimentoHI.value=0 then
        begin
             itexto:=itexto+'Número do capeante inválido'+#13;
             iOk:=false;
        end;

        if dbProcessoMesCompetencia.value=0 then
        begin
             itexto:=itexto+'Mês de competencia inválido'+#13;
             iOk:=false;
        end;

       if dbProd.Locate('AnoCompetencia;MesCompetencia',VarArrayof([dbProcessoAnoCompetencia.value,
                                                                    dbProcessoMesCompetencia.value]),[]) then
        begin
            if dbProdStatus.value='F' then
            begin
                itexto:=itexto+'Produtividade fechada para esta competencia'+#13;
                iOk:=false;
            end
            else
            begin
                if dbProdCli.Locate('Cliente',dbProcessoCliente.value,[]) then
                begin
                    itexto:=itexto+'Produtividade fechada para este Cliente/Competencia';
                    iOk:=false;
                end;
            end;
        end;

        if dbProcessoAnoCompetencia.value=0 then
        begin
             itexto:=itexto+'Ano de competencia inválido'+#13;
             iOk:=false;
        end;

        if not dbHospital.Locate('CNPJ',dbProcessoHospitalCNPJ.value,[loPartialKey]) then
        begin
           itexto:=itexto+'Hospital não cadastrado'+#13;
           iOk:=false;
           iHospital:=0;
        end
        else
        begin
            iHospital:=dbHospitalHospital.value;
        end;

        if dbProcessoNomePaciente.value='' then
        begin
           itexto:=itexto+'Nome do paciente inválido'+#13;
           iOk:=false;
        end;
        if (dbProcessoCodigoPaciente.value='') or
           (dbProcessoCodigoPaciente.value='00000000000000000000') or
           (dbProcessoCodigoPaciente.value='0') then
        begin
           itexto:=itexto+'Código do paciente inválido'+#13;
           iPaciente:=0;
           iOk:=false;
           if dbProcessoPacienteIdade.value=0 then
                begin
                    itexto:=itexto+'Idade do paciente inválida'+#13;
                    iOk:=false;
                end;
                if (dbProcessoPacienteUnidade.value<>'M') and
                   (dbProcessoPacienteUnidade.value<>'A') then
                begin
                    itexto:=itexto+'Unidade da idade do paciente inválida'+#13;
                    iOk:=false;
                end;
                if (dbProcessoPacienteSexo.value<>'M') and
                    (dbProcessoPacienteSexo.value<>'F') then
                begin
                    itexto:=itexto+'Sexo do paciente inválido'+#13;
                    iOk:=false;
                end;
        end
        else
        begin
            iPaciente:=0;
            if dbPaciente.Locate('Cliente;IdPaciente;CodigoPaciente',
                          VarArrayof([dbProcessoCliente.value,dbProcessoIDPaciente.value,dbProcessoCodigoPaciente.value]),[]) then
                iPaciente:=dbPacientePaciente.value
            else
            begin
                dbPaciente.Insert;
                dbPacientePaciente.Value:=iUltimoPaciente+1;
                dbPacienteCliente.value:=dbProcessoCliente.value;
                dbPacienteNome.value:=dbProcessoNomePaciente.value;
                dbPacienteCodigoPaciente.value:=dbProcessoCodigoPaciente.value;
                dbPacienteIDPaciente.value:=dbProcessoIDPaciente.value;
                dbPacienteDataNascimento.Value:=dbProcessoPacienteNascimento.value;
                dbPacienteDataInclusao.Value:=date;
                dbPacienteUsuario.value:='RETORNO';
                dbPacienteIdade.value:=dbProcessoPacienteIdade.value;
                dbPacienteUnidade.value:=dbProcessoPacienteUnidade.value;
                dbPacienteSexo.value:=dbProcessoPacienteSexo.value;
                dbPaciente.Post;
                iPaciente:=dbPacientePaciente.value;
            end;
        end;

        iMed:=0;
        iEnf:=0;
        iEnfCoren:=0;
        iLimpaMed:=false;
        iLimpaEnf:=false;

        if dbHospitalPre.Locate('Cliente;Hospital',VarArrayof([dbProcessoCliente.value,dbProcessoHospital.value]),[]) then
        begin
            iLimpaMed:=dbHospitalPreZeraAuditor.value;
            iLimpaEnf:=dbHospitalPreZeraEnfermeiro.value;

            if dbHospitalPreAuditor.value<>0 then
                iMed:=dbHospitalPreAuditor.value;
            if dbHospitalPreEnfermeiro.value<>0 then
                iEnf:=dbHospitalPreEnfermeiro.value;
        end;
        if ((iEnf<>0) or (iLimpaEnf)) and
           (dbAtendHComplemento.value=false) then  //Parametros por hospital - zera/troca enfermeiro,não valida
        else
        begin
            if  not dbEnfermeiro.Locate('Coren',dbProcessoEnfermeiroCoren.value,[]) then
            begin
               itexto:=itexto+'Enfermeiro inválido'+#13;
                iOk:=false;
            end
            else
            begin
                iEnfCoren:=dbEnfermeiroCOREN.value;
                iEnf:=dbEnfermeiroEnfermeiro.value;
            end;
        end;

        if ((iMed<>0) or (iLimpaMed)) and
           (dbAtendHComplemento.value=false) then  //Parametros por Hospital - zera/troca medico,não valida
        else
        begin
            if (dbProcessoMedicoCRM.value=0)  then
            begin
               itexto:=itexto+'CRM do Médico inválido'+#13;
               iOk:=false;
               iMed:=0;
            end
            else
            begin
                iMed:=0;
                if dbAuditor.Locate('CRM',dbProcessoMedicoCRM.value,[]) then
                    iMed:=dbAuditorAuditor.value
                else
                begin
                    if (dbAuditor.Locate('Nome',dbProcessoMedicoNome.value,[])) and
                       (dbAuditorCRM.value<>dbProcessoMedicoCRM.value) then
                    begin
                       itexto:=itexto+'Nome do medico já cadastrado com outro CRM. Verifique'+#13;
                       iOk:=false;
                       iMed:=0;
                    end
                    else
                    begin
                        if (not dbAuditor.Locate('Nome',dbProcessoMedicoNome.value,[])) then
                        begin
                            itexto:=itexto+'CRM novo enviado sem o nome do Medico. Verifique'+#13;
                            iOk:=false;
                            iMed:=0;
                        end
                        else
                        begin
                            dbAuditor.Insert;
                            dbAuditorAuditor.Value:=iUltimoPaciente+1;
                            dbAuditorNome.value:=dbProcessoMedicoNome.value;
                            dbAuditorCRM.value:=dbProcessoMedicoCRM.value;
                            dbAuditorDataInclusao.Value:=date;
                            dbAuditorUsuario.value:='RETORNO';
                            dbAuditor.Post;
                            iMed:=dbAuditorAuditor.value;
                        end;
                    end;
                end;
            end;
        end;

        if dbProcessoDataInternacao.isnull then
        begin
           itexto:=itexto+'Data da Internação inválida'+#13;
           iOk:=false;
        end;
        if (dbProcessoDataInternacao.value>dbProcessoDataAlta.value) and
           (not dbProcessoDataAlta.isnull) then
        begin
           itexto:=itexto+'Data da Internação maior que Alta'+#13;
           iOk:=false;
        end;

        if (dbProcessoConclusao.value<>'A') and
           (dbProcessoConclusao.value<>'C') and
           (dbProcessoConclusao.value<>'O') and
           (dbProcessoConclusao.value<>'M') and
           (dbProcessoConclusao.value<>'P') and
           (dbProcessoConclusao.value<>'T') and
           (dbProcessoConclusao.value<>'H') and
           (dbProcessoConclusao.value<>'') then
        begin
             itexto:=itexto+'Conclusão inválida'+#13;
             iOk:=false;
        end;
        if (dbProcessoTratamento.value<>'E') and
           (dbProcessoTratamento.value<>'R') and
           (dbProcessoTratamento.value<>'A') and
           (dbProcessoTratamento.value<>'') then
        begin
             itexto:=itexto+'Tratamento inválido'+#13;
             iOk:=false;
        end;
        if (dbProcessoInternacao.value<>'R') and
           (dbProcessoInternacao.value<>'C') and
           (dbProcessoInternacao.value<>'') then
        begin
             itexto:=itexto+'Internação inválida'+#13;
             iOk:=false;
        end;
//****** Exclusivo Bradesco
        iBradesco:=false;
        if dbAmb.Locate('CodAMB',dbProcessoCodAmb.value,[]) then
            iBradesco:=dbAmbBradesco.value;
        iGlosaBradesco:=false;
        if dbProcessoGlosa.Locate('GlosaI','PT',[]) then
            iGlosaBradesco:=true;

{        if (dbProcessoCliente.value=28) and (dbProcessoInternacao.value='C') and
           (iGlosaBradesco=true)  then
        begin
            if dbProcessoNABradesco.value='' then
            begin
                itexto:=itexto+'Procedimento Não Auditavel Bradesco sem Justificativa'+#13;
                iOk:=false;
            end;
            else
            begin
                if (iBradesco=false) then
                begin
                 if (dbProcessoNABradesco.value<>'E') and
                    (dbProcessoNABradesco.value<>'I') and
                    (dbProcessoNABradesco.value<>'A') and
                    (dbProcessoNABradesco.value<>'C') and
                    (dbProcessoNABradesco.value<>'N') then
                    begin
                         itexto:=itexto+'Justificativa inválida para Auditoria de AMB-Normal';
                         iOk:=false;
                    end;
                  end
                 else
                 begin
                   if (dbProcessoNABradesco.value<>'O') and
                      (dbProcessoNABradesco.value<>'P') and
                      (dbProcessoNABradesco.value<>'C') and
                      (dbProcessoNABradesco.value<>'N') then
                      begin
                          itexto:=itexto+'Justificativa inválida para Auditoria de AMB-NA';
                          iOk:=false;
                      end;
               end;
          end;
        end;  }      //Solicitado Eulalia 09/05/2018

        if dbProcessoDataInternacao.isnull then
        begin
             itexto:=itexto+'Data da Internação inválida'+#13;
             iOk:=false;
        end;

{       if dbProcessoDataAlta.isnull then
        begin
             itexto:=itexto+'Data da Alta inválida'+#13;
             iOk:=false;
        end;} //solicitado Eulalia

        if dbProcessoDataSite.isnull then
        begin
             itexto:=itexto+'Data da Inclusão no site inválida'+#13;
             iOk:=false;
        end;

        if dbProcessoDataFechamento.isnull then
        begin
             itexto:=itexto+'Data do Fechamento inválida'+#13;
             iOk:=false;
        end;

{        try
            if dbProcessoSenha.value='' then
                a:=0
            else
                for i:=1 to Length(dbProcessoSenha.value) do
                    a:=StrToInt(copy(dbProcessoSenha.value,i,1));
        except
             itexto:=itexto+'Senha inválida'+#13;
             iOk:=false;
        end;} //retirado 20/04/2016 - Bradesco alfanumerico

        iValorM:=0;
        iValorE:=0;
        iValor:=0;
        iValorGlosa:=0;
        if dbProcessoGlosa.RecordCount=0 then
        begin
            dbProcessoGlosa.Insert;
            dbProcessoGlosaRetorno.value:=iRetorno;
            dbProcessoGlosaAtendimentoHI.value:=dbProcessoAtendimentoHI.value;
            dbProcessoGlosaCliente.value:=2;
            dbProcessoGlosaTipo.value:='G';
            dbProcessoGlosaGlosaI.value:='GT';
            dbProcessoGlosaValorApresentado.value:=dbProcessoValor.value;
            dbProcessoGlosaValor.value:=dbProcessoValorGlosado.value;
            dbProcessoGlosa.Post;
            iValor:=dbProcessoValor.value;
            iValorGlosa:=dbProcessoValorGlosado.value;
            iValorM:=dbProcessoValorGlosado.value;
        end
        else
        begin
            dbProcessoGlosa.First;
            while not dbProcessoGlosa.eof do
            begin
                if not dbGlosa.Locate('GlosaI',dbProcessoGlosaGlosaI.value,[]) then
                begin
                    itexto:=itexto+'Glosa '+dbProcessoGlosaGlosaI.value+' não cadastrada'+#13;
                    iOk:=false;
                end
                else
                begin
                    if dbGlosaResponsavel.value<>dbProcessoGlosaMedEnf.value then
                    begin
                        dbProcessoGlosa.Edit;
                        dbProcessoGlosaMedEnf.value:=dbGlosaResponsavel.value;    //[E] ou [M]
                        dbProcessoGlosa.Post;
                    end;
                end;
                iValorM:=iValorM+dbProcessoGlosaVAlorM.value;
                iValorE:=iValorE+dbProcessoGlosaVAlorE.value;
                iValor:=iValor+dbProcessoValor.value;
                iValorGlosa:=iValorGlosa+dbProcessoValorGlosado.value;
                dbProcessoGlosa.Next;
            end;
        end;

        dbProcessoDiag.First;
        while not dbProcessoDiag.eof do
        begin
            dbProcessoDiag.First;
            while not dbProcessoDiag.eof do
            begin
                if dbProcessoDiagCodCid.value<>'' then
                begin
                    if not dbDiagnostico.Locate('CodCid',dbProcessoDiagCodCid.value,[]) then
                    begin
                        itexto:=itexto+'Diagnóstico '+dbProcessoDiagCodCid.value+'- não cadastrado'+#13;
                        iOk:=false;
                    end
                    else
                    begin
                        if dbProcessoDiagDiagnostico.value<>dbDiagnosticoDiagnostico.value then
                        begin
                            dbProcessoDiag.Edit;
                            dbProcessoDiagDiagnostico.value:=dbDiagnosticoDiagnostico.value;
                            dbProcessoDiag.Post;
                        end;
                    end;
                end;
                dbProcessoDiag.Next;
            end;
        end;

        dbProcesso.Edit;
        dbProcessoHospital.value:=iHospital;
        dbProcessoPaciente.value:=iPaciente;
        dbProcessoValorGlosadoM.Value:=iValorM;
        dbProcessoValorGlosadoE.Value:=iValorE;
        dbProcessoMedico.value:=iMed;
        dbProcessoEnfermeiro.value:=iEnf;
        dbProcessoEnfermeiroCoren.value:=iEnfCoren;

        if dbProcesso.State=dsInsert then
        begin
            dbProcessoDiarias.Value:=trunc(dbProcessoDataAlta.Value)-
                                     trunc(dbProcessoDataInternacao.Value);
            if dbProcessoDiarias.Value=0 then
               dbProcessoDiarias.Value:=1;
        end;

            if (dbProcessoDiarias.value>=2) and
               (dbProcessoInternacao.value='C') then
                dbProcessoVisita.value:=1
            else
                dbProcessoVisita.value:=0;

            if (dbProcessoDiarias.value>=4) and
               (dbProcessoInternacao.value='R') then
                dbProcessoVisita.value:=1
            else
                dbProcessoVisita.value:=0;

            dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                       dbProcessoValorGlosadoM.Value-
                                       dbProcessoValorGlosadoE.Value;

            if Int(dbProcessoValor.value-iValor)>0.01 then
            begin
                itexto:=itexto+'Valor Total ['+FloatToStrF(dbProcessoValor.value,ffCurrency,11,2)+
                               '] diferente da soma dos Itens ['+FloatToStrF(ivalor,ffCurrency,11,2)+']'+#13;
                iOk:=false;
            end;

            if Int(dbProcessoValorGlosado.value-iValorM-iValorE)>0.01 then
            begin
                itexto:=itexto+'Valor Total Glosado ['+FloatToStrF(dbProcessoValorGlosado.value,ffCurrency,11,2)+
                               '] diferente da soma dos Itens ['+FloatToStrF(iValorM+iValorE,ffCurrency,11,2)+']'+#13;
                iOk:=false;
            end;
        end;
    end;
//// *** FIM - SALVAR

        if iOK then
            begin
                dbProcessoProcessa.value:='S';
                iTotOk:=iTotOk+1;
                dbProcessoNotas.clear;
               if  dbAtendH.Locate('Cliente;AtendimentoHI',VarArrayof([2,dbProcessoAtendimentoHI.value]),[]) then
                    iTotA:=iTotA+1
                else
                    iTotI:=iTotI+1;
            end
            else
            begin
                dbProcessoProcessa.value:='N';
                dbProcessoNotas.value:=itexto;
            end;
            dbProcesso.Post;
            dbProcesso.Next;
        end;

    dbProcesso.AutoCalcFields:=true;
    dbProcesso.Refresh;
    dbProcesso.First;
    dbRetorno.Edit;
    dbRetornoRegistrosOk.value:=iTotOk;
    dbRetornoRegistrosInclusao.value:=iTotI;
    dbRetornoRegistrosAlteracao.value:=iTotA;
    dbRetornoUsuarioValidacao.value:=iUsuario;
    dbRetornoDataValidacao.Value:=date;
    dbRetorno.Post;

    dbRetorno.Refresh;
    ShowMessage('Registros validados');
end;

procedure TfrmRetornoHI.dbPacienteBeforeInsert(DataSet: TDataSet);
begin
    dbCodigo.Refresh;
    dbCodigo.Locate('Campo','Paciente',[]);
    iUltimoPaciente:=dbCodigoUltimo.Value+1;
    dbCodigo.Edit;
    dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
    dbCodigo.Post;
end;

procedure TfrmRetornoHI.dbProcessoBeforePost(DataSet: TDataSet);
begin
    if (dbProcessoAtendimentoHI.value=0) and (dbRetornoCliente.value<>28) then //bradesco zero then
    begin
        ShowMessage('Prontuário inválido');
        abort;
    end;
    if dbProcessoHospital.value<>0 then
        if dbHospital.Locate('Hospital',dbProcessoHospital.value,[]) then
            dbProcessoHospitalCNPJ.value:=dbHospitalCNPJ.value;


    if dbProcesso.Tag=1 then
        dbProcessoProcessa.value:='A';
end;

procedure TfrmRetornoHI.dbProcessoGlosaBeforePost(DataSet: TDataSet);
begin
    if dbProcessoGlosaGlosaI.value='' then
    begin
        ShowMessage('Glosa inválida');
        abort;
    end;
end;

procedure TfrmRetornoHI.dbProcessoDiagBeforePost(DataSet: TDataSet);
begin
    if dbProcessoDiagCodCid.value='' then
    begin
        ShowMessage('CID inválido');
        abort;
    end;
end;

procedure TfrmRetornoHI.cmdGravaPClick(Sender: TObject);
begin
    dbProcesso.tag:=1;
    dbProcesso.Post;
end;

procedure TfrmRetornoHI.cmdExcluiPClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão do Prontuário',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    while dbProcessoGlosa.RecordCount>0 do
    begin
        while dbProcessoDiag.RecordCount>0 do
            dbProcessoDiag.Delete;
        dbProcessoGlosa.delete;
    end;
    dbProcesso.Delete;
end;

procedure TfrmRetornoHI.grdProntuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//    if key=VK_DEL then
//        abort;
end;

procedure TfrmRetornoHI.cmdGravaAClick(Sender: TObject);
begin
    dbProcesso.Tag:=1;
    dbProcessoGlosa.Post;
end;

procedure TfrmRetornoHI.cmdExcuiAClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão da Auditoria',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    while dbProcessoDiag.RecordCount>0 do
        dbProcessoDiag.Delete;
    dbProcessoGlosa.Delete;
end;

procedure TfrmRetornoHI.dsProcessoStateChange(Sender: TObject);
begin
    cmdGravaP.Enabled:=dbProcesso.State in [dsInsert,dsEdit];
end;

procedure TfrmRetornoHI.dsProcessoGlosaStateChange(Sender: TObject);
begin
    cmdGravaA.Enabled:=dbProcessoGlosa.State in [dsInsert,dsEdit];
end;

procedure TfrmRetornoHI.dsProcessoDiagStateChange(Sender: TObject);
begin
    cmdGravaD.Enabled:=dbProcessoDiag.State in [dsInsert,dsEdit];
end;

procedure TfrmRetornoHI.cmdRelClick(Sender: TObject);
begin
with dmRelatorio do
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
end;
end;

procedure TfrmRetornoHI.BitBtn1Click(Sender: TObject);
begin
    dbRetorno.Next;
end;

procedure TfrmRetornoHI.BitBtn2Click(Sender: TObject);
begin
    dbRetorno.Prior;
end;

procedure TfrmRetornoHI.grdRetornoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     if dbRetornoProcessado.value=true then
        grdRetorno.Canvas.Font.Color:=clBlue;

     grdRetorno.DefaultDrawDataCell(Rect,grdRetorno.Columns[DataCol].field,State);
end;

procedure TfrmRetornoHI.dbProcessoAfterPost(DataSet: TDataSet);
begin
    dbProcesso.tag:=0;
end;

procedure TfrmRetornoHI.dbProcessoGlosaAfterPost(DataSet: TDataSet);
begin
     if dbProcesso.tag=1 then
     begin
        dbProcesso.tag:=0;
        dbProcesso.Edit;
        dbProcessoProcessa.value:='A';
        dbProcesso.Post;
     end;
end;

procedure TfrmRetornoHI.dbProcessoDiagAfterPost(DataSet: TDataSet);
begin
     if dbProcesso.tag=1 then
     begin
        dbProcesso.tag:=0;
        dbProcesso.Edit;
        dbProcessoProcessa.value:='A';
        dbProcesso.Post;
     end;
end;

procedure TfrmRetornoHI.BitBtn3Click(Sender: TObject);
begin
    if dbProcessoProcessa.value='A' then
    begin
        ShowMessage('Só é possivel alterar campos validados');
        abort;
    end;
    dbProcesso.Edit;
    if dbProcessoProcessa.value='S' then
        dbProcessoProcessa.value:='N'
    else
        dbProcessoProcessa.value:='S';
    dbProcesso.Post;
end;

procedure TfrmRetornoHI.dbProcessoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case tabFiltro.TabIndex of
    0:accept:=true;
    1:accept:=dbProcessoProcessa.value='S';
    2:accept:=dbProcessoProcessa.value='N';
    end;
end;

procedure TfrmRetornoHI.tabFiltroChange(Sender: TObject);
begin
    dbProcesso.Refresh;
end;

procedure TfrmRetornoHI.grdDiagnosticoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdDiagnostico.Columns[4].Color:=$00D9D9FF;
     grdDiagnostico.Columns[5].Color:=$00D9D9FF;
     grdDiagnostico.Columns[6].Color:=$00D9D9FF;
     grdDiagnostico.DefaultDrawDataCell(Rect,grdDiagnostico.Columns[DataCol].field,State);
end;

procedure TfrmRetornoHI.dbProcessoDiagCalcFields(DataSet: TDataSet);
begin
    if dbProcessoDiagPrincipal.value=true then
        dbProcessoDiagPrincipalTexto.value:='Sim'
    else
        dbProcessoDiagPrincipalTexto.value:='Não'
end;

procedure TfrmRetornoHI.cmpBuscaChange(Sender: TObject);
begin
    if trim(cmpBusca.Text)<>'' then
       dbProcesso.Locate('Retorno;Cliente;AtendimentoHI',
                   VarArrayof([dbRetornoRetorno.value,2,StrToInt64(Trim(cmpBusca.Text))]),[loCaseInsensitive,loPartialKey]);
end;

procedure TfrmRetornoHI.dbProcessoGlosaCalcFields(DataSet: TDataSet);
begin
   dbProcessoGlosaValorE.value:=0;
   dbProcessoGlosaValorM.value:=0;
    if dbProcessoGlosaMedEnf.value='E' then
        dbProcessoGlosaValorE.value:=dbProcessoGlosaValor.value;
    if dbProcessoGlosaMedEnf.value='M' then
        dbProcessoGlosaValorM.value:=dbProcessoGlosaValor.value;
end;

procedure TfrmRetornoHI.dbAuditorBeforeInsert(DataSet: TDataSet);
begin
    dbAuditor.IndexFieldNames:='Auditor';
    dbAuditor.Last;
    if dbAuditorAuditor.value=999 then
        dbAuditor.Prior;
    iUltimoPaciente:=dbAuditorAuditor.value;
    dbAuditor.IndexFieldNames:='CRM';
end;

procedure TfrmRetornoHI.cmdGravaDClick(Sender: TObject);
begin
    dbProcesso.Tag:=1;
    dbProcessoDiag.Post;
end;

procedure TfrmRetornoHI.cmdExcluiDClick(Sender: TObject);
var iResultado:integer;
begin
    iResultado:=Application.MessageBox('Confirme a exclusão do Diagnóstico',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if iResultado=idno then abort;
    dbProcessoDiag.Delete;
end;

procedure TfrmRetornoHI.dbAtendHAfterInsert(DataSet: TDataSet);
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
end;

procedure TfrmRetornoHI.cmdLerBBClick(Sender: TObject);
var a,p,txt,iTipo,iGlosa,iCodCid,iIDCliente,iCNPJ:string;
    j,jdet,i,qtd,iItem,iRetorno,iCliente,iCodAmb,max,iparcial,idiarias:integer;
    iprontuario:int64;
    strConn, narq1, plan,iRN:string;
    dia,mes,ano:word;
    tot,tot1,iDias:variant;
    iData:Tdate;

var Arq : TextFile;
var texto,xcampo,ierro,icapeante : string;
var q, campo : Integer;
function MV : String;
var
Monta : String;
begin
    monta := '';
    inc(q);
    while (Texto[q] > '*') or
          (Texto[q]='"') or
          (Texto[q]=' ') or
          (Texto[q]='#') or
          (Texto[q]='$') or
          (Texto[q]='&') or
          (Texto[q]='''') or
          (Texto[q]='(') or
          (Texto[q]=')') or
          (Texto[q]='*') or
          (Texto[q]='+') or
          (Texto[q]='=') or
          (Texto[q]='-') or
          (Texto[q]='/') or
          (Texto[q]='%') or
          (Texto[q]=':') or
          (Texto[q]='>') or
          (Texto[q]='<') or
          (Texto[q]='@') or
          (Texto[q]='[') or
          (Texto[q]=']') or
          (Texto[q]='{') or
          (Texto[q]='}') do
    begin
        if Texto[q]= ';' then
            break;
        monta := monta + Texto[q];
    inc(q);
    end;
    result := monta;
end;
//***************************
begin
     opendialog.InitialDir:=idir;
    if opendialog.execute then
    begin
        narq:=opendialog.filename;
        narq1:='';
        for i:=length(narq) downto 0 do
        begin
            if copy(narq,i,1)='\' then break;
            narq1:=copy(narq,i,1)+narq1;
        end;
       lblData.Visible:=false;
       lblTexto.Visible:=true;
       dbRetorno.IndexFieldNames:='NomeArquivo';
       if dbRetorno.Locate('NomeArquivo',narq1,[]) then
       begin
          ShowMessage('Arquivo de retorno ja lido');
          abort;
       end;
        dbExcel1.Close;
        dbExcel1.SQL.Text:='Delete from relExcel1';
        dbExcel1.Execute;
        dbExcel1.SQL.Text:='Select * from relExcel1';
        dbExcel1.Open;//a tabela onde quero por os dados excel
        AssignFile(Arq,OpenDialog.FileName);
        Reset(Arq);
        if not EOF(Arq) then
            repeat
        ReadLn(Arq,Texto);

        with dbExcel1 do
        begin
            Insert;
            q := 0;
            for campo:=1 to 111 do        //anterior 95
            begin
                xcampo:=IntToStr(campo);
                FieldByName(xcampo).value:=MV;
            end;
            Post;
        end;
        until EOF(Arq);// ate o fim arquivo CSV
        Closefile(Arq);//fecha arquivo CSV

        tot:=dbExcel1.RecordCount;
        ProgressBar1.Position:=0;
        ProgressBar1.Min:=1;
        ProgressBar1.Max:=tot;

        dbProcesso.Tag:=0;
        dbRetorno.Insert;
        dbRetornoNomeArquivo.value:=narq1;
        dbRetornoProcessado.value:=false;
        dbRetornoCliente.value:=23;
        dbRetorno.Post;
        iRetorno:=dbRetornoRetorno.value;
        tot1:=0;

        dbExcel1.First;

        a:=dbExcel1.Fields[0].asstring; //primeiro campo
        if (a='Rotina') or (a='Complemento') then
        begin
            dbRetorno.Delete;
            ShowMessage('Arquivo não é do Site B+ Auditoria');
            abort;
        end;

        dbProcesso.DisableControls;
        dbProcesso.AutoCalcFields:=false;
        dbProcesso.Filtered:=false;
        dbProcessoDiag.DisableControls;
        dbProcessoGlosa.DisableControls;

        while not dbExcel1.eof do
        begin
            try
                a:=dbExcel1.Fields[0].asstring; //Capeante
                iProntuario:=StrToInt64(Copy(a,6,15));
                icapeante:='Capeante:'+a;

                a:=dbExcel1.Fields[4].asstring; //Cnpj cliente
                if dbCliente.Locate('CGC',a,[]) then
                begin
                    iCliente:=dbClienteCliente.value;
                    iIDCliente:=dbClienteClienteID.value;
                    iCNPJ:=a;
                end
                else
                begin
                    iCliente:=999999;
                    iCNPJ:='';
                    iIDCliente:='NC';
                    ierro:='CNPJ:';
                end;

                if dbProcesso.Locate('Retorno;Cliente;AtendimentoHI',
                                     VarArrayof([iRetorno,iCliente,iProntuario]),[]) then
                begin
                    dbExcel1.Next;
                    Continue;
                end
                else
                    dbProcesso.Insert;

                tot1:=tot1+1;
                ProgressBar1.Position:=ProgressBar1.Position+1;
                dbProcessoProcessa.value:='A';
                dbProcessoRetorno.value:=iRetorno;
                dbProcessoAtendimentoHI.value:=iProntuario;
                dbProcessoAtendimentoHiO.value:=iProntuario;

                a:=dbExcel1.Fields[4].asstring; //Cnpj cliente
                dbProcessoClienteCNPJ.value:=a;

                a:=dbExcel1.Fields[5].asstring; // cliente
                dbProcessoClienteNome.value:=a;

                a:=dbExcel1.Fields[6].asstring; //Hospital
                ierro:='CNPJ Hospital';
                dbProcessoHospitalCNPJ.value:=a;

                a:=dbExcel1.Fields[8].asstring; //Nome
                ierro:='Nome';
                dbProcessoNomePaciente.value:=a;
                dbProcessoIdPaciente.value:=iIDCliente;

                a:=dbExcel1.Fields[9].asstring; //Nascimento
                ierro:='Nascimento';
                if trim(a)<>'' then
                    dbProcessoPacienteNascimento.value:=StrToDate(a);
                if YearOf(dbProcessoPacienteNascimento.value) < 1900 then
                    dbProcessoPacienteNascimento.Clear;

                a:=dbExcel1.Fields[10].asstring; //Sexo
                ierro:='Sexo';
                dbProcessoPacienteSexo.value:=a;

                a:=dbExcel1.Fields[11].AsString; //Cod. Paciente
                ierro:='Cod.Paciente';
                dbProcessoCodigoPaciente.value:=a;

                a:=dbExcel1.Fields[12].asstring; //Senha
                ierro:='Senha';
                while pos('/',a)>0 do
                   Delete(a,pos('/',a),1);
                if trim(a)<>'' then
                    dbProcessoSenha.value:=a;

                a:=dbExcel1.Fields[14].asstring; //Enfermeiro
                ierro:='COREN';
                if trim(a)<>'' then
                    dbProcessoEnfermeiroCOREN.value:=StrToInt(a);

                a:=dbExcel1.Fields[15].asstring; //Medico
                ierro:='CRM';
                if trim(a)<>'' then
                    dbProcessoMedicoCRM.value:=StrToInt(a);

                a:=dbExcel1.Fields[16].asstring; //parcial
                ierro:='Parcial';
                if a='Sim' then
                   dbProcessoParcial.Value:=1
                else
                    dbProcessoParcial.Value:=0;

                if dbProcessoParcial.value>0 then
                begin
                    a:=dbExcel1.Fields[23].asstring; //Inicio parcial  -alterado 04/05/2016 - anterior 18
                    ierro:='Inicio da Parcial';
                    if trim(a)<>'' then
                        dbProcessoDataInicioP.value:=StrToDate(a);
                    a:=dbExcel1.Fields[24].asstring; //Fim parcial alterado 04/05/2016 - anterior 19
                    ierro:='Fim da Parcial';
                    if trim(a)<>'' then
                        dbProcessoDataFimP.value:=StrToDate(a);
                end;

                a:=dbExcel1.Fields[20].asstring; //Complemento
                ierro:='Complemento';
                if a='Sim' then
                    dbProcessoComplemento.value:=true
                else
                    dbProcessoComplemento.value:=false;

                a:=dbExcel1.Fields[21].asstring; //Internacao  -
                ierro:='Data Internacao';
                if trim(a)<>'' then
                     dbProcessoDataInternacao.value:=StrToDate(a);

                a:=dbExcel1.Fields[22].asstring; //Alta - alterado 04/05/2016 - anterior 22
                ierro:='Data Alta';
                if trim(a)<>'' then
                    dbProcessoDataAlta.value:=StrToDate(a);

                iDias:=DateOf(dbProcessoDataAlta.value)-DateOf(dbProcessoDataInternacao.value);
                if dbProcessoDataAlta.isnull then
                    iDias:=0;
                if dbProcessoDataAlta.value<dbProcessoDataInternacao.value then iDias:=0;
                if iDias=0 then iDias:=1;
                if dbProcesso.State in [dsEdit,dsInsert] then
                    dbProcessoDiariasCalculadas.asinteger:=iDias;

                a:=dbExcel1.Fields[27].asstring; //Pacote
                ierro:='Pacote';
                if a='Sim' then
                    dbProcessoPacote.value:=true
                else
                    dbProcessoPacote.value:=false;

                a:=dbExcel1.Fields[28].asstring; //day clinic
                ierro:='DayClinic';
                if a='Sim' then
                    dbProcessoDayClinic.value:=true
                else
                    dbProcessoDayClinic.value:=false;

                a:=dbExcel1.Fields[29].asstring; //conclusao
                ierro:='Conclusão';
                if a='Alta Normal' then
                    dbProcessoConclusao.value:='A';
                if a='Óbito' then
                    dbProcessoConclusao.value:='O';
                if a='Transferência' then
                    dbProcessoConclusao.value:='T';
                if a='Home Care' then
                    dbProcessoConclusao.value:='H';

               a:=dbExcel1.Fields[30].asstring; //tipo internacao
                ierro:='Tipo Internacao';
                if a='Clínica' then
                begin
                    dbProcessoInternacao.value:='C';
                    dbProcessoCodAmb.Value:=20010;
                end;
                if a='Cirúrgica' then
                    dbProcessoInternacao.value:='R';

                a:=dbExcel1.Fields[31].asstring; //tratamento
                if a='Urgência' then
                    dbProcessoTratamento.value:='R';
                if a='Eletivo' then
                    dbProcessoTratamento.value:='E';
                if a='Acidente Pessoal' then
                    dbProcessoTratamento.value:='A';

                a:=dbExcel1.Fields[32].asstring; //Diarias
                ierro:='Diarias';
                dbProcessoApto.value:=StrToInt(a);

                a:=dbExcel1.Fields[34].asstring; //enfermaria
                ierro:='Enfermaria';
                dbProcessoEnfermaria.value:=StrToInt(a);

                a:=dbExcel1.Fields[36].asstring; //semi
                ierro:='Semi';
                dbProcessoSemi.value:=StrToInt(a);

                a:=dbExcel1.Fields[38].asstring; //uti
                ierro:='UTI';
                dbProcessoDiasUTI.value:=StrToInt(a);

                a:=dbExcel1.Fields[40].asstring; //bercario
                ierro:='Berçario';
                dbProcessoBercario.value:=StrToInt(a);

                a:=dbExcel1.Fields[42].asstring; //dayclinic
                ierro:='DayClinic';
                dbProcessoDayClinicQtd.value:=StrToInt(a);

                if dbProcessoDayClinicQtd.value>0 then
                    dbProcessoDayClinic.value:=true;

                a:=dbExcel1.Fields[47].asstring; //isolamento
                ierro:='Isolamento';
                dbProcessoIsolamento.value:=StrToInt(a);

                dbProcessoDiarias.Value:=dbProcessoApto.value+
                                         dbProcessoBercario.value+
                                         dbProcessoDayClinicQtd.value+
                                         dbProcessoEnfermaria.value+
                            //           dbProcessoIsolamento.value+     //retirado 03/05/2016 - solicitado Eulalia
                                         dbProcessoSemi.value+
                                         dbProcessoDiasUti.value;

                idiarias:=0;

                a:=dbExcel1.Fields[33].asstring; //Diarias liberadas
                ierro:='Diarias';
                idias:=StrToInt(a);
                idias:=dbProcessoApto.value-idias;
                idiarias:=idiarias+idias;

                a:=dbExcel1.Fields[35].asstring; //enfermaria
                ierro:='Enfermaria';
                idias:=StrToInt(a);
                idias:=dbProcessoEnfermaria.value-idias;
                idiarias:=idiarias+idias;

                a:=dbExcel1.Fields[37].asstring; //semi
                ierro:='Semi';
                idias:=StrToInt(a);
                idias:=dbProcessoSemi.value-idias;
                idiarias:=idiarias+idias;

                a:=dbExcel1.Fields[39].asstring; //uti
                ierro:='UTI';
                idias:=StrToInt(a);
                idias:=dbProcessoDiasUTI.value-idias;
                idiarias:=idiarias+idias;

                a:=dbExcel1.Fields[41].asstring; //bercario
                ierro:='Bercario';
                idias:=StrToInt(a);
                idias:=dbProcessoBercario.value-idias;
                idiarias:=idiarias+idias;

                a:=dbExcel1.Fields[43].asstring; //dayclinic
                ierro:='DayClinic';
                idias:=StrToInt(a);
                idias:=dbProcessoDayClinicQtd.value-idias;
                idiarias:=idiarias+idias;

                dbProcessoDiariasGlosadas.Value:=idiarias;

                a:=dbExcel1.Fields[74].asstring; // obs
                dbProcessoObservacao.value:=a;

                a:=dbExcel1.Fields[75].asstring; // data fechamento
                ierro:='Data do Fechamento';
                dbProcessoDataFechamento.value:=StrToDate(a);
                if trim(a)<>'' then
                begin
                    DecodeDate(StrToDate(a),ano,mes,dia);
                    dbProcessoMesCompetencia.value:=mes;
                    dbProcessoAnoCompetencia.value:=ano;
                end;

                a:=dbExcel1.Fields[70].asstring; // %valor total
                a:=TrocaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValor.value:=StrToFloat(a);

                a:=dbExcel1.Fields[71].asstring; // %valor total
                a:=TrocaMilhar(a);
                if trim(a)<>'' then
                    dbProcessoValorGlosado.value:=StrToFloat(a);

// **** Procedimentos

                if dbProcessoCodAmb.Value<>20010 then
                begin
                    a:=dbExcel1.Fields[78].asstring; // amb
                    ierro:='1o. Cod.AMB';
                    while pos('-',a)>0 do
                       Delete(a,pos('-',a),1);
                    if trim(a)<>'' then
                        dbProcessoCodAmb.value:=StrToInt(a);
                end;

                a:=dbExcel1.Fields[79].asstring; // dataamb
                ierro:='1a. Data AMB';
                if trim(a)<>'' then
                    dbProcessoDataAMB1.value:=StrToDate(a);

                a:=dbExcel1.Fields[82].asstring; // % hm
                ierro:='1a. % AMB';
                if trim(a)<>'' then
                    dbProcessoPAmb1.value:=StrToFloat(a);

                a:=dbExcel1.Fields[84].asstring; // amb
                ierro:='2o. Cod.AMB';
                while pos('-',a)>0 do
                   Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb1.value:=StrToInt(a);

                a:=dbExcel1.Fields[85].asstring; // dataamb
                ierro:='2a. Data AMB';
                if trim(a)<>'' then
                    dbProcessoDataAMB2.value:=StrToDate(a);

                a:=dbExcel1.Fields[88].asstring; // % hm
                ierro:='2a. % AMB';
                if trim(a)<>'' then
                    dbProcessoPAmb2.value:=StrToFloat(a);

                a:=dbExcel1.Fields[90].asstring; // amb
                ierro:='3o. Cod.AMB';
                while pos('-',a)>0 do
                   Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb3.value:=StrToInt(a);

                a:=dbExcel1.Fields[91].asstring; // dataamb
                ierro:='3a. Data AMB';
                if trim(a)<>'' then
                    dbProcessoDataAMB3.value:=StrToDate(a);

                a:=dbExcel1.Fields[94].asstring; // % hm
                ierro:='3a. % AMB';
                if trim(a)<>'' then
                    dbProcessoPAmb3.value:=StrToFloat(a);

                dbProcessoDataSite.value:=date;
                dbProcessoDataInclusao.value:=date;
                dbProcessoCliente.value:=iCliente;
                dbProcessoPaciente.value:=0;
                dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                           dbProcessoValorGlosadoM.Value-
                                           dbProcessoValorGlosadoE.Value;
                dbProcessoUsuarioI.value:='SITE B+';
                dbProcesso.Post;
// Glosas
                ierro:='Glosas';
                a:=dbExcel1.Fields[50].asstring; // diarias
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DI';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[51].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[52].asstring; // taxa
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='TX';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[53].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[54].asstring; // gases
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='GA';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[55].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[56].asstring; // hm
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HM';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[57].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[58].asstring; // sadt
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[59].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[60].asstring; // hemo
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[61].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[62].asstring; // materiais
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[63].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[64].asstring; // materiais especiais
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='ME';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[65].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[66].asstring; // medicamentos
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MD';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[67].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[68].asstring; // pacote
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='PT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[69].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
//                              *** Novos ****
                a:=dbExcel1.Fields[95].asstring; // Apartmento
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='AP';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[96].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[97].asstring; // Enfermearia
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='EN';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[98].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[99].asstring; // Semi
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='SE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[100].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[101].asstring; // UTI
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='UT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[102].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[103].asstring; // Berçario
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='BE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[104].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[105].asstring; // Day-Clinic
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DC';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[106].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[107].asstring; // Acompanhante
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DA';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[108].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[109].asstring; // Isolamento
                a:=TrocaMilhar(a);
                if (trim(a)<>'') and (LeftStr(a,1)<>'0') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='IS';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[110].asstring; //
                     a:=TrocaMilhar(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;


// CIDs
                a:=dbExcel1.Fields[25].asstring; // cid
                if trim(a)<>'' then
                begin
                    dbProcessoDiag.Insert;
                    dbProcessoDiagPrincipal.value:=true;
                    dbProcessoDiagRetorno.value:=iRetorno;
                    dbProcessoDiagAtendimentoHI.value:=iProntuario;
                    dbProcessoDiagCliente.value:=iCliente;
                    dbProcessoDiagCodCid.value:=a;
                    dbProcessoDiagGrupoCid.value:=a;
                    a:=dbExcel1.Fields[26].asstring; // cid
                    dbProcessoDiagDescricao.value:=a;
                    dbProcessoDiag.Post;
                 end;
//**fim
            except

                ShowMessage('Informações enviadas no arquivo retorno inválidas.'+#13+
                            'Leitura do arquivo interrompida'+#13+icapeante+'-'+ierro+' - Informação inválida:'+a);
                dbProcesso.AutoCalcFields:=true;
                dbProcesso.EnableControls;
                dbProcessoDiag.EnableControls;
                dbProcessoGlosa.EnableControls;
                dbProcesso.Filtered:=true;
                if dbProcesso.State in [dsInsert,dsEdit] then
//                    dbProcesso.Cancel;
                if dbProcessoGlosa.State in [dsInsert,dsEdit] then
                    dbProcessoGlosa.Cancel;
                if dbProcessoDiag.State in [dsInsert,dsEdit] then
                dbProcessoDiag.Cancel;
                ProgressBar1.position:=0;
                    dbProcessoGlosa.Refresh;
                dbProcesso.First;
                dbRetorno.IndexFieldNames:='Retorno desc';
                abort;
            end;
            dbExcel1.Next;
        end;
        dbRetorno.Edit;
        dbRetornoRegistros.value:=tot;
        dbRetornoCapeantes.value:=tot1;
        dbRetornoUsuarioLeitura.value:=iUsuario;
        dbRetornoDataLeitura.Value:=date;
        dbRetorno.Post;

        ProgressBar1.position:=0;
        dbProcesso.AutoCalcFields:=true;
        dbProcesso.EnableControls;
        dbProcesso.Filtered:=true;
        dbProcessoDiag.EnableControls;
        dbProcessoGlosa.EnableControls;
        dbProcessoGlosa.Refresh;
        dbRetorno.IndexFieldNames:='Retorno desc';
        dbRetorno.First;

        ShowMessage('Arquivo Retorno lido com sucesso');
    end;
end;


procedure TfrmRetornoHI.dbEnfermeiroBeforeInsert(DataSet: TDataSet);
begin
    dbEnfermeiro.IndexFieldNames:='Enfermeiro';
    dbEnfermeiro.Last;
    if dbEnfermeiroEnfermeiro.value=999 then
        dbEnfermeiro.Prior;
    iUltimoPaciente:=dbEnfermeiroEnfermeiro.value;
    dbEnfermeiro.IndexFieldNames:='Coren';
end;

procedure TfrmRetornoHI.BitBtn4Click(Sender: TObject);
begin
    if frmRetornoCompt=nil then
      Application.CreateForm(TfrmRetornoCompt, frmRetornoCompt);
    frmRetornoCompt.Tag:=0;
    frmRetornoCompt.ShowModal;
end;

procedure TfrmRetornoHI.dbProcessoNABradescoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    if dbProcessoNABradesco.value='E' then
        text:='Material Excedente';
    if dbProcessoNABradesco.value='I' then
        text:='Cobrança Indevida';
    if dbProcessoNABradesco.value='A' then
        text:='Internação Complicada';
    if dbProcessoNABradesco.value='C' then
        text:='Procedimentos combinados';
    if dbProcessoNABradesco.value='N' then
        text:='Sem Justificativa';
    if dbProcessoNABradesco.value='O' then
        text:='OPME';
    if dbProcessoNABradesco.value='P' then
        text:='Prorrogação';
end;

procedure TfrmRetornoHI.dbProcessoNABradescoSetText(Sender: TField;
  const Text: String);
begin
    if text='Material Excedente' then
        dbProcessoNABradesco.value:='E';
    if text= 'Cobrança Indevida' then
        dbProcessoNABradesco.value:='I';
    if text='Internação Complicada' then
        dbProcessoNABradesco.value:='A';
    if text='Procedimentos combinados' then
        dbProcessoNABradesco.value:='C';
    if text='Sem Justificativa' then
        dbProcessoNABradesco.value:='N';
    if text='OPME' then
        dbProcessoNABradesco.value:='O';
    if text='Prorrogação' then
        dbProcessoNABradesco.value:='P';
end;

procedure TfrmRetornoHI.cmdLerBRClick(Sender: TObject);
var a,p,txt,iTipo,iGlosa,iCodCid,iIDCliente,iCNPJ:string;
    j,jdet,i,qtd,iItem,iRetorno,iCliente,iCodAmb,max,iparcial,idiarias:integer;
    iprontuario:int64;
    strConn, narq1, plan,iRN:string;
    dia,mes,ano:word;
    tot,tot1,iDias,ivalor,ivalorpago:variant;
    iData:Tdate;

var Arq : TextFile;
var texto,xcampo,ierro,icapeante : string;
var q, campo : Integer;
function MV : String;
var
Monta : String;
begin
    monta := '';
    inc(q);
    while (Texto[q] > '*') or
          (Texto[q]='"') or
          (Texto[q]=' ') or
          (Texto[q]='#') or
          (Texto[q]='$') or
          (Texto[q]='&') or
          (Texto[q]='''') or
          (Texto[q]='(') or
          (Texto[q]=')') or
          (Texto[q]='*') or
          (Texto[q]='+') or
          (Texto[q]='=') or
          (Texto[q]='-') or
          (Texto[q]='/') or
          (Texto[q]='%') or
          (Texto[q]=':') or
          (Texto[q]='>') or
          (Texto[q]='<') or
          (Texto[q]='@') or
          (Texto[q]='[') or
          (Texto[q]=']') or
          (Texto[q]='{') or
          (Texto[q]='}') do
    begin
        if Texto[q]= ';' then
            break;
        monta := monta + Texto[q];
    inc(q);
    end;
    result := monta;
end;
//***************************
begin

    opendialog.InitialDir:=idir;
    if opendialog.execute then
    begin
        narq:=opendialog.filename;
        narq1:='';
        for i:=length(narq) downto 0 do
        begin
            if copy(narq,i,1)='\' then break;
            narq1:=copy(narq,i,1)+narq1;
        end;
       lblData.Visible:=false;
       lblTexto.Visible:=true;
       dbRetorno.IndexFieldNames:='NomeArquivo';
       if dbRetorno.Locate('NomeArquivo',narq1,[]) then
       begin
          ShowMessage('Arquivo de retorno ja lido');
          abort;
       end;
        dbExcel1.Close;
        dbExcel1.SQL.Text:='Delete from relExcel1';
        dbExcel1.Execute;
        dbExcel1.SQL.Text:='Select * from relExcel1';
        dbExcel1.Open;//a tabela onde quero por os dados excel
        AssignFile(Arq,OpenDialog.FileName);
        Reset(Arq);
        if not EOF(Arq) then
            repeat
        ReadLn(Arq,Texto);


        with dbExcel1 do
        begin
            Insert;
            q := 0;
            for campo:=1 to 142 do        //anterior 111
            begin
                xcampo:=IntToStr(campo);
                FieldByName(xcampo).value:=MV;
            end;
            Post;
        end;
        until EOF(Arq);// ate o fim arquivo CSV
        Closefile(Arq);//fecha arquivo CSV

        tot:=dbExcel1.RecordCount;
        ProgressBar1.Position:=0;
        ProgressBar1.Min:=1;
        ProgressBar1.Max:=tot;

        dbProcesso.Tag:=0;
        dbRetorno.Insert;
        dbRetornoNomeArquivo.value:=narq1;
        dbRetornoProcessado.value:=false;
        dbRetornoCliente.value:=28;
        dbRetorno.Post;
        iRetorno:=dbRetornoRetorno.value;
        iidCliente:='BRADESCO';
        tot1:=0;

        dbExcel1.First;

        a:=dbExcel1.Fields[0].asstring; //primeiro campo
        if (a<>'73003089/0001-13') and 
           (a<>'40121611/0001-02') then
        begin
            dbRetorno.Delete;
            ShowMessage('Arquivo não é do Bradesco');
            abort;
        end;

        dbProcesso.DisableControls;
        dbProcesso.AutoCalcFields:=false;
        dbProcesso.Filtered:=false;
        dbProcessoDiag.DisableControls;
        dbProcessoGlosa.DisableControls;

        while not dbExcel1.eof do
        begin
            try // Bradesco sem capeante proprio - SEMPRE INCLUSAO

                dbCodigo.Refresh;
                dbCodigo.Locate('Campo','CLI28',[]);
                iprontuario:=dbCodigoUltimo.Value+1;
                dbCodigo.Edit;
                dbCodigoUltimo.Value:=dbCodigoUltimo.Value+1;
                dbCodigo.Post;

                dbProcesso.Insert;

                tot1:=tot1+1;
                ProgressBar1.Position:=ProgressBar1.Position+1;
                dbProcessoProcessa.value:='A';
                dbProcessoRetorno.value:=iRetorno;
                dbProcessoAtendimentoHI.value:=iprontuario;
                dbProcessoAtendimentoHiO.value:=iprontuario;
                dbProcessoClienteCNPJ.value:='73003089000113';
                dbProcessoClienteNome.value:='BRADESCO';
                dbProcessoCliente.value:=28;
                icliente:=28;

                a:=dbExcel1.Fields[2].asstring; //Codigo Hospital Bradesco
                ierro:='Codigo Brasdesco Hospital';
                if dbHospital.Locate('CodBradesco',StrToInt(a),[]) then
                begin
                    dbProcessoHospitalCNPJ.value:=dbHospitalCNPJ.value;
                    dbProcessoHospital.value:=dbHospitalHospital.value;
                    if dbHospitalPre.Locate('Hospital;Cliente',VarArrayof([dbHospitalHospital.value,28]),[]) then
                    begin
                        if dbHospitalPreEnfermeiro.value<>0 then
                            dbProcessoEnfermeiro.value:=dbHospitalPreEnfermeiro.value;
                        if dbHospitalPreAuditor.value<>0 then
                            dbProcessoMedico.value:=dbHospitalPreAuditor.value;
                    end;
                end;

                if dbEnfermeiro.Locate('Enfermeiro',dbProcessoEnfermeiro.value,[]) then
                    dbProcessoEnfermeiroCoren.value:=dbEnfermeiroCOREN.value;

                if dbAuditor.Locate('Auditor',dbProcessoMedico.value,[]) then
                    dbProcessoMedicoCRM.value:=dbAuditorCRM.value;

                a:=dbExcel1.Fields[6].AsString; //Cod. Paciente
                ierro:='Cod.Paciente';
                dbProcessoCodigoPaciente.value:=a;

                a:=dbExcel1.Fields[7].asstring; //Nome
                ierro:='Nome';
                dbProcessoNomePaciente.value:=a;
                dbProcessoIdPaciente.value:=iIDCliente;

                a:=dbExcel1.Fields[11].asstring; //Senha
                ierro:='Senha';
                while pos('/',a)>0 do
                   Delete(a,pos('/',a),1);
                if trim(a)<>'' then
                    dbProcessoSenha.value:=a;

                a:=dbExcel1.Fields[12].asstring; //Internacao  -
                ierro:='Data Internacao';
                if trim(a)<>'' then
                     dbProcessoDataInternacao.value:=StrToDate(a);

                a:=dbExcel1.Fields[13].asstring; //Alta
                ierro:='Data Alta';
                if trim(a)<>'' then
                    dbProcessoDataAlta.value:=StrToDate(a);

                a:=dbExcel1.Fields[15].asstring; //parcial
                ierro:='Parcial';
                if a='Parcial' then
                   dbProcessoParcial.Value:=1
                else
                    dbProcessoParcial.Value:=0;

                if dbProcessoParcial.value>0 then
                begin

                    a:=dbExcel1.Fields[17].asstring; //Inicio parcial real
                    ierro:='Inicio da Parcial Real';
                    if trim(a)<>'' then
                        dbProcessoDataInicioP.value:=StrToDate(a)
                    else
                    begin
                        a:=dbExcel1.Fields[16].asstring; //Inicio parcial
                        ierro:='Inicio da Parcial';
                        if trim(a)<>'' then
                            dbProcessoDataInicioP.value:=StrToDate(a);
                    end;
                    a:=dbExcel1.Fields[24].asstring; //Fim parcial
                    ierro:='Fim da Parcial';
                    if trim(a)<>'' then
                        dbProcessoDataFimP.value:=StrToDate(a);
                end;

                iDias:=DateOf(dbProcessoDataAlta.value)-DateOf(dbProcessoDataInternacao.value);
                if dbProcessoDataAlta.isnull then iDias:=0;
                if dbProcessoDataAlta.value<dbProcessoDataInternacao.value then iDias:=0;
                if iDias=0 then iDias:=1;
                if dbProcesso.State in [dsEdit,dsInsert] then
                    dbProcessoDiariasCalculadas.asinteger:=iDias;

                a:=dbExcel1.Fields[21].asstring; //Diarias pagas
                ierro:='Diarias Liberadas';
                dbProcessoDiarias.value:=StrToFloat(a);

                a:=dbExcel1.Fields[25].asstring; // amb
                ierro:='1o. Cod.AMB';
                while pos('-',a)>0 do
                    Delete(a,pos('-',a),1);
                if trim(a)<>'' then
                    dbProcessoCodAmb.value:=StrToInt(a);

                a:=dbExcel1.Fields[23].asstring; //tipo internacao
                ierro:='Tipo Internacao';
                if (a='Clínica') or (a='Clinica') or (Copy(a,1,2)='Cl') then
                    dbProcessoInternacao.value:='C';
                if (a='Cirúrgica') or (a='Cirurgica') or (Copy(a,1,3)='Cir') then
                    dbProcessoInternacao.value:='R';

                if (Copy(a,1,3)='Ped') or (Copy(a,1,3)='Obs') then //pediatrica e obstetrica
                    if (dbProcessoCodAmb.value=10102019) or
                       (dbProcessoCodAmb.value=10104020) or
                       (dbProcessoCodAmb.value=20010) or
                       (dbProcessoCodAmb.value=20202016) or
                       (dbProcessoCodAmb.value=20202024) then
                        dbProcessoInternacao.value:='C'
                    else
                        dbProcessoInternacao.value:='R';

                if a='' then
                    if (dbProcessoCodAmb.value=10102019) or
                       (dbProcessoCodAmb.value=10104020) or
                       (dbProcessoCodAmb.value=20010) or
                       (dbProcessoCodAmb.value=20202016) or
                       (dbProcessoCodAmb.value=20202024) then
                        dbProcessoInternacao.value:='C'
                    else
                        if copy((dbProcessoCodAmb.asstring),1,1)='3' then
                            dbProcessoInternacao.value:='R';

                a:=dbExcel1.Fields[29].asstring; //Diarias
                ierro:='Diarias';
                dbProcessoApto.value:=StrToInt(a);

                a:=dbExcel1.Fields[32].asstring; //dayclinic
                ierro:='DayClinic';
                dbProcessoDayClinicQtd.value:=StrToInt(a);

                a:=dbExcel1.Fields[35].asstring; //uti
                ierro:='UTI';
                dbProcessoDiasUTI.value:=StrToInt(a);

                a:=dbExcel1.Fields[38].asstring; //semi
                ierro:='Semi';
                dbProcessoSemi.value:=StrToInt(a);

                a:=dbExcel1.Fields[41].asstring; //enfermaria
                ierro:='Enfermaria';
                dbProcessoEnfermaria.value:=StrToInt(a);

                a:=dbExcel1.Fields[44].asstring; //bercario
                ierro:='Berçario';
                dbProcessoBercario.value:=StrToInt(a);

                a:=dbExcel1.Fields[50].asstring; //isolamento
                ierro:='Isolamento';
                dbProcessoIsolamento.value:=StrToInt(a);

                a:=dbExcel1.Fields[137].asstring; // %valor total
                ierro:='Valor Total';
                a:=LimpaReal(a);
                if trim(a)<>'' then
                    dbProcessoValor.value:=StrToFloat(a);

                a:=dbExcel1.Fields[138].asstring; // %valor glosado
                ierro:='Valor Glosado';
                a:=LimpaReal(a);
                if trim(a)<>'' then
                    dbProcessoValorGlosado.value:=dbProcessoValor.value-StrToFloat(a);

                a:=dbExcel1.Fields[141].asstring; // data fechamento
                ierro:='Data do Fechamento';
                dbProcessoDataFechamento.value:=StrToDate(a);
                if trim(a)<>'' then
                begin
                    DecodeDate(StrToDate(a),ano,mes,dia);
                    dbProcessoMesCompetencia.value:=mes;
                    dbProcessoAnoCompetencia.value:=ano;
                end;

                dbProcessoComplemento.value:=false;
                dbProcessoPacote.value:=false;

//Se tiver dataparcial final alta normal ou parcial nao
                if not dbProcessoDataFimP.isnull then
                    dbProcessoConclusao.value:='A'
                else
                    dbProcessoConclusao.value:='';

//se for clinico urgencia - se for cirugico eletivo
                if dbProcessoInternacao.value='C' then
                    dbProcessoTratamento.value:='R';
                if dbProcessoInternacao.value='R' then
                    dbProcessoTratamento.value:='E';

                dbProcessoDiarias.Value:=dbProcessoApto.value+
                                         dbProcessoBercario.value+
                                         dbProcessoDayClinicQtd.value+
                                         dbProcessoEnfermaria.value+
                                         dbProcessoSemi.value+
                                         dbProcessoDiasUti.value;

                dbProcessoDataSite.value:=date;
                dbProcessoDataInclusao.value:=date;
                dbProcessoPaciente.value:=0;
                dbProcessoValorPago.Value:=dbProcessoValor.Value-
                                           dbProcessoValorGlosadoM.Value-
                                           dbProcessoValorGlosadoE.Value;
                dbProcessoUsuarioI.value:='SITE B+';

//Verifica se ja existe o capeante cadastrado - reprocesso  - retirado apenas inclusão
{                dbAtendH.sql.Clear;
                dbAtendH.sql.text:='Select * from AtendHI '+
                                   'where Cliente=:iCliente and '+
                                   '      Hospital=:iHospital and  '+
                                   '      Medico=:iMed and '+
                                   '      Enfermeiro=:iEnf and '+
                                   '      Senha=:iSenha and '+
                                   '      DataInternacao=:iDataI and '+
                                   '      DataAlta=:iDataA ';
                dbAtendH.ParamByName('iCliente').Value:=dbProcessoCliente.Value;
                dbAtendH.ParamByName('iHospital').Value:=dbProcessoHospital.Value;
                dbAtendH.ParamByName('iMed').Value:=dbProcessoMedico.Value;
                dbAtendH.ParamByName('iEnf').Value:=dbProcessoEnfermeiro.Value;
                dbAtendH.ParamByName('iSenha').Value:=dbProcessoSenha.Value;
                dbAtendH.ParamByName('iDataI').Value:=dbProcessoDataInternacao.Value;
                dbAtendH.ParamByName('iDataA').Value:=dbProcessoDataAlta.Value;
                dbAtendH.Execute;

                if dbAtendH.RecordCount>0 then
                    iprontuario:=dbAtendHAtendimentoHI.value;
               dbProcessoAtendimentoHI.value:=iprontuario;}

               dbProcesso.Post;
// Glosas
                ierro:='Glosas';
                a:=dbExcel1.Fields[30].asstring; // apto
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='AP';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[31].asstring;
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[33].asstring; // Day-Clinic
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DC';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[34].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[36].asstring; // UTI
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='UT';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[37].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[39].asstring; // Semi
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='SE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[40].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[42].asstring; // Enfermearia
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='EN';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[43].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;
                a:=dbExcel1.Fields[45].asstring; // Berçario
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='BE';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[46].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[48].asstring; // Acompanhante
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DA';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[49].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[51].asstring; // Isolamento
                a:=LimpaReal(a);
                if (trim(a)<>'') and (trim(a)<>'0,00') then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='IS';
                     dbProcessoGlosaValorApresentado.value:=StrToFloat(a);
                     a:=dbExcel1.Fields[52].asstring; //
                     a:=LimpaReal(a);
                     if trim(a)<>'' then
                         dbProcessoGlosaValor.value:=dbProcessoGlosaValorApresentado.value-StrToFloat(a);
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[54].asstring; // sadt
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[55].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[72].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+StrToFloat(a);
                a:=dbExcel1.Fields[73].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+StrToFloat(a);
                a:=dbExcel1.Fields[81].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+StrToFloat(a);
                a:=dbExcel1.Fields[82].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+StrToFloat(a);
                a:=dbExcel1.Fields[99].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+StrToFloat(a);
                a:=dbExcel1.Fields[100].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+StrToFloat(a);
                a:=dbExcel1.Fields[123].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+StrToFloat(a);
                a:=dbExcel1.Fields[124].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+StrToFloat(a);
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='DT';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[57].asstring; // taxas
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[58].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[84].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[85].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[108].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[109].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='TX';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[60].asstring; // Materiais
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[61].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[87].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[88].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[111].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[112].asstring;
                a:=LimpaReal(a);

                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MT';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[63].asstring; // Medicamentos
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[64].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[90].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[91].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[114].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[115].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='MD';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[66].asstring; // Gases
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[67].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[93].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[94].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[117].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[118].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='GA';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[69].asstring; //Materiais Especiais
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[70].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[96].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[97].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[120].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[121].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='ME';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[75].asstring; // Hemo
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[76].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[102].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[103].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[126].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[127].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HE';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[78].asstring; // Honorarios Medicos
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[79].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                a:=dbExcel1.Fields[105].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[106].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                a:=dbExcel1.Fields[129].asstring;
                a:=LimpaReal(a);
                ivalor:=ivalor+a;
                a:=dbExcel1.Fields[130].asstring;
                a:=LimpaReal(a);
                ivalorpago:=ivalorpago+a;
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='HM';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

                a:=dbExcel1.Fields[132].asstring; // Pacote
                a:=LimpaReal(a);
                ivalor:=StrToFloat(a);
                a:=dbExcel1.Fields[133].asstring;
                a:=LimpaReal(a);
                ivalorpago:=StrToFloat(a);
                if ivalor>0 then
                begin
                     dbProcessoGlosa.Insert;
                     dbProcessoGlosaRetorno.value:=iRetorno;
                     dbProcessoGlosaAtendimentoHI.value:=iProntuario;
                     dbProcessoGlosaCliente.value:=iCliente;
                     dbProcessoGlosaTipo.value:='G';
                     dbProcessoGlosaGlosaI.value:='PT';
                     dbProcessoGlosaValorApresentado.value:=ivalor;
                     dbProcessoGlosaValor.value:=ivalor-ivalorpago;
                     dbProcessoGlosa.Post;
                end;

// CIDs
                a:=dbExcel1.Fields[26].asstring; // cid
                if trim(a)<>'' then
                begin
                    dbProcessoDiag.Insert;
                    dbProcessoDiagPrincipal.value:=true;
                    dbProcessoDiagRetorno.value:=iRetorno;
                    dbProcessoDiagAtendimentoHI.value:=iProntuario;
                    dbProcessoDiagCliente.value:=iCliente;
                    dbProcessoDiagCodCid.value:=a;
                    dbProcessoDiagGrupoCid.value:=a;
                    a:=dbExcel1.Fields[26].asstring; // cid
                    dbProcessoDiagDescricao.value:=a;
                    dbProcessoDiag.Post;
                 end;
//**fim
            except
                ShowMessage('Informações enviadas no arquivo retorno inválidas.'+#13+
                            'Leitura do arquivo interrompida'+#13+icapeante+'-'+ierro+' - Informação inválida:'+a);
                dbProcesso.AutoCalcFields:=true;
                dbProcesso.EnableControls;
                dbProcessoDiag.EnableControls;
                dbProcessoGlosa.EnableControls;
                dbProcesso.Filtered:=true;
                if dbProcesso.State in [dsInsert,dsEdit] then
//                    dbProcesso.Cancel;
                if dbProcessoGlosa.State in [dsInsert,dsEdit] then
                    dbProcessoGlosa.Cancel;
                if dbProcessoDiag.State in [dsInsert,dsEdit] then
                dbProcessoDiag.Cancel;
                ProgressBar1.position:=0;
                    dbProcessoGlosa.Refresh;
                dbProcesso.First;
                dbRetorno.IndexFieldNames:='Retorno desc';
                abort;
            end;
            dbExcel1.Next;
        end;
        dbRetorno.Edit;
        dbRetornoRegistros.value:=tot;
        dbRetornoCapeantes.value:=tot1;
        dbRetornoUsuarioLeitura.value:=iUsuario;
        dbRetornoDataLeitura.Value:=date;
        dbRetorno.Post;

        ProgressBar1.position:=0;
        dbProcesso.AutoCalcFields:=true;
        dbProcesso.EnableControls;
        dbProcesso.Filtered:=true;
        dbProcessoDiag.EnableControls;
        dbProcessoGlosa.EnableControls;
        dbProcessoGlosa.Refresh;
        dbRetorno.IndexFieldNames:='Retorno desc';
        dbRetorno.First;

        ShowMessage('Arquivo Retorno lido com sucesso');
    end;
end;

procedure TfrmRetornoHI.dbRetornoAfterInsert(DataSet: TDataSet);
begin
    dbRetornoModulo.value:=0;
    dbRetornoRegistros.value:=0;
    dbRetornoRegistrosok.value:=0;
    dbRetornoRegistrosInclusao.value:=0;
    dbRetornoRegistrosAlteracao.value:=0;
end;

procedure TfrmRetornoHI.tabClienteChange(Sender: TObject);
begin
    dbRetorno.Refresh;
    cmdLerBB.Visible:=false;
    cmdLerBR.Visible:=false;
    cmdLerSA.Visible:=false;
    case tabCliente.TabIndex of
    0:cmdLerBB.visible:=true;
    1:cmdLerBR.visible:=true;
    2:cmdLerSA.visible:=true;
    end;
end;

procedure TfrmRetornoHI.dbRetornoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    case tabCliente.TabIndex of
    0:accept:=dbRetornoCliente.value=23;
    1:accept:=dbRetornoCliente.value=28;
    2:accept:=dbRetornoCliente.value=2;
    3:accept:=true;
    end;
end;

end.
