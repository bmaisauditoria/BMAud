object frmRelProdParcial: TfrmRelProdParcial
  Left = 321
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Relat'#243'rio de Produtividade - Parciais'
  ClientHeight = 91
  ClientWidth = 322
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 53
    Align = alTop
    TabOrder = 0
    object cmpCodClienteIni: TDBText
      Left = 254
      Top = 24
      Width = 40
      Height = 17
      Alignment = taRightJustify
      DataField = 'Cliente'
      DataSource = dsClienteIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 8
      Top = 21
      Width = 240
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
  end
  object cmdRelCodigoN: TBitBtn
    Left = 116
    Top = 58
    Width = 90
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = cmdRelCodigoNClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FF868484868484FF00FFFF00FF868484868484FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF868484BCBABAB5B3B386848486
      8484868484EBEAEA868484868484868484FF00FFFF00FFFF00FFFF00FFFF00FF
      868484E3E2E2B5B3B3B5B3B3B5B3B35150504F4F4F868787CDCDCDE8E9E9C7C6
      C6868484868484868484FF00FF868484DEDDDDD6D6D6A4A3A3A4A3A3A4A3A356
      5555161516121212181818121212939393CACACA868484FF00FF868484D6D6D6
      D6D6D6A4A3A3E0DEDED9D7D7CDCBCBC2C0C0B6B4B49F9D9D7976771212121414
      141313138684848F8C8C868484D6D6D6A4A3A3F3F2F2FFFEFEFCFBFBEAE7E8E6
      E6E6E6E5E5DAD9D9CCCBCBBFBDBDA2A0A07371719391918E8C8C868484A4A3A3
      FFFFFFFEFDFDFBFBFBDFDEDFADA7A9B4ADAEC3BDBED1CECFE0E0E0E1E1E1D4D3
      D3C7C6C6A7A5A5868383FF00FF868484868484F1F0F0C2B9BA93898BA19B9FAB
      A8AAABA6A7B1ACADAFA9AAB2ADAECAC9C9DCDCDCD0D0D0868484FF00FFFF00FF
      FF00FF868484CAA097BA9E87A2897E95817B897C7F928C92A5A2A4BBB6B7D7D6
      D6CFCFCF868484FF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFEAC4FFDDB3EE
      C399D5AE8CC9A786CC9A99989596868484868484FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCC9A99FFE7C8FFDDBAFFDBB1FFD9A6FFD39FCC9A99FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCE9D9BFFEDDAFFE7CEFFE2C3FF
      DDB8FFDBAECC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFCC9A99FEF0E1FFECD8FFE6CCFFE1C2FEDDB7CC9A99FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99FFFFF5FFFFF5FFF0E1FFEBD6FF
      E8CCF6D4BACC9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC9A99CC9A99CC9A99FCF3E9FCEADAFCE5D0CC9A99FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC9A99CC9A99CC
      9A99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 6
    Top = 56
    object dbClienteIniCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteIniNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsClienteIni: TDataSource
    DataSet = dbClienteIni
    Left = 38
    Top = 56
  end
  object qryParcial: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select AtendHI.cliente, AtendHI.hospital, '
      '       AtendHI.paciente, AtendHI.senha,'
      '       AtendHI.Produtividade,'
      '       Pacientes.Nome,'
      '       count(AtendHI.AtendimentoHI) as Qtd'
      'from AtendHI, Pacientes'
      'where Produtividade=19 and '
      '      AtendHI.Paciente=Pacientes.Paciente '
      
        'group by AtendHI.cliente, hospital, AtendHI.paciente, nome, senh' +
        'a, Produtividade'
      'having count(AtendimentoHI)>1'
      'order by AtendHI.cliente, nome, paciente, senha, hospital')
    Left = 236
    Top = 25
    object qryParcialcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'AtendHI.cliente'
    end
    object qryParcialhospital: TIntegerField
      FieldName = 'hospital'
      Origin = 'AtendHI.hospital'
    end
    object qryParcialpaciente: TIntegerField
      FieldName = 'paciente'
      Origin = 'AtendHI.paciente'
    end
    object qryParcialsenha: TStringField
      FieldName = 'senha'
      Origin = 'AtendHI.senha'
      FixedChar = True
      Size = 10
    end
    object qryParcialQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryParcialClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = frmProdutividade.dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'cliente'
      Size = 40
      Lookup = True
    end
    object qryParcialHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = frmProdutividade.dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'hospital'
      Size = 40
      Lookup = True
    end
    object qryParcialPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dmRelatorio.dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'paciente'
      Size = 40
      Lookup = True
    end
    object qryParcialProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryParcialNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 40
    end
  end
  object rvProdParcial: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryParcial
    Left = 267
    Top = 25
  end
  object qryProd: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'order by Produtividade,DataInternacao,AtendimentoHI')
    OnCalcFields = qryProdCalcFields
    MasterFields = 'paciente;senha'
    DetailFields = 'Paciente;Senha'
    Left = 235
    Top = 63
    object qryProdCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'AtendHI.AtendimentoHI'
    end
    object qryProdPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 12
    end
    object qryProdHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object qryProdMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object qryProdEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object qryProdMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object qryProdAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object qryProdDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object qryProdServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object qryProdProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryProdMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = frmProdutividade.dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 40
      Lookup = True
    end
    object qryProdEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = frmProdutividade.dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryProdParcial: TWordField
      FieldName = 'Parcial'
      Origin = 'AtendHI.Parcial'
    end
    object qryProdParcialTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParcialTexto'
      Size = 3
      Calculated = True
    end
  end
  object rvProdParcialItem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProd
    Left = 267
    Top = 63
  end
end
