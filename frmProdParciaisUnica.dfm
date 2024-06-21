object frmProdParcialUnica: TfrmProdParcialUnica
  Left = 523
  Top = 228
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Acerto de Produtividade - Parciais'
  ClientHeight = 192
  ClientWidth = 416
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 101
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 13
      Top = 59
      Width = 129
      Height = 16
      Alignment = taRightJustify
      Caption = 'Servi'#231'o Parcial Unica'
    end
    object DBText1: TDBText
      Left = 240
      Top = 57
      Width = 160
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 41
      Height = 16
      Caption = 'Cliente'
    end
    object cmpCodClienteIni: TDBText
      Left = 348
      Top = 30
      Width = 50
      Height = 20
      Alignment = taRightJustify
      DataField = 'Cliente'
      DataSource = dsClienteIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbServico1: TDBLookupComboBox
      Left = 149
      Top = 54
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico1
      TabOrder = 0
    end
    object prgBar: TProgressBar
      Left = 1
      Top = 91
      Width = 414
      Height = 9
      Align = alBottom
      TabOrder = 1
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 16
      Top = 26
      Width = 329
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 2
    end
  end
  object cmdAtualiza: TBitBtn
    Left = 116
    Top = 117
    Width = 184
    Height = 31
    Caption = 'Atualizar Servi'#231'os'
    TabOrder = 1
    OnClick = cmdAtualizaClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
      C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
      EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
      F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
      FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
      FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
      FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
      FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
      FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
      FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
      FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
      1818181818181818181818181802181818181818181818181818181818090201
      18181818181818181818181818061A0F02181818181818181818181818181E1C
      1C0218181818181818181818181818271C1D0202181818181818181818181818
      272E1E1E02181818181818181818181818272B241E0218181818181818180202
      022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
      3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
      1836444A43322702181818181818181818181836433F241F0218181818181818
      1818181818363A34230218181818181818181818181818362202}
  end
  object cmdRestaura: TBitBtn
    Left = 116
    Top = 156
    Width = 184
    Height = 31
    Caption = 'Restaurar Servicos'
    TabOrder = 2
    OnClick = cmdRestauraClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000D30E0000D30E00000001000000010000AD4A0000B54A
      0000B5520000BD520000BD5A0000C65A0000C6630000CE630000CE6B0000D673
      0000DE730000DE7B0000E77B0000E7840000F7940000CE6B0800FF9C0800A542
      1000AD4A1000B5521000C6631000B55A2100CE732100B55A3100BD633100FFAD
      3100CE7B3900BD6B4200C6734200CE844200CE844A00BD735200BD7B5200C67B
      5200C6845A00C6846300FFBD6300C68C7300CE947B00CE9C8400FF00FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282828282828
      2828281F05002828282828282828282828282817050713282828282828282828
      2828282817060715282828282828282828282828281507062328280004040404
      040404232828000701282802090807070707061B28282706062328040B090711
      2727272828282800071328060D070A07232828282828281C070128070E13020B
      082028282828281C0701280F101D28020D0818282828280107132816191E2828
      140D0C03212513060623281A2421282828150C0D0B0908061228282622282828
      282827140808041B282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828282828282828282828}
  end
  object qryParcial: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select cliente, hospital, paciente, senha,Produtividade,'
      'count(AtendimentoHI) as Qtd'
      'from AtendHI'
      'where Produtividade=19'
      'group by cliente, hospital, paciente, senha, Produtividade'
      'having count(AtendimentoHI)>1'
      'order by cliente, hospital, paciente, senha')
    Left = 263
    Top = 95
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
  end
  object qryProd: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'order by Produtividade,DataInternacao,AtendimentoHI')
    MasterSource = dsParcial
    MasterFields = 'paciente;senha'
    DetailFields = 'Paciente;Senha'
    Left = 265
    Top = 126
    ParamData = <
      item
        DataType = ftInteger
        Name = 'paciente'
        ParamType = ptInput
        Value = 239053
      end
      item
        DataType = ftFixedChar
        Name = 'senha'
        ParamType = ptInput
        Size = 10
        Value = '1300423127'
      end>
    object qryProdCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 10
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
  end
  object dsParcial: TDataSource
    DataSet = qryParcial
    Left = 294
    Top = 95
  end
  object dbServico1: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico1FilterRecord
    IndexFieldNames = 'Servico'
    Left = 259
    Top = 40
    object dbServico1Servico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico1Vinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      FixedChar = True
      Size = 1
    end
    object dbServico1Valorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
  end
  object dsServico1: TDataSource
    DataSet = dbServico1
    Left = 291
    Top = 40
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 262
    Top = 9
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
    Left = 294
    Top = 9
  end
end
