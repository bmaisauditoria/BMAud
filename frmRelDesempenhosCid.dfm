object frmRelDesempenhoCid: TfrmRelDesempenhoCid
  Left = 330
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Desempenho por Cid'
  ClientHeight = 393
  ClientWidth = 387
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
    Width = 387
    Height = 329
    Align = alTop
    TabOrder = 0
    object cmpCodHospitalIni: TDBText
      Left = 329
      Top = 118
      Width = 50
      Height = 17
      DataField = 'Hospital'
      DataSource = dsHospitalIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpCodPacienteIni: TDBText
      Left = 329
      Top = 167
      Width = 50
      Height = 17
      DataField = 'Paciente'
      DataSource = dsPacienteInicial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpCodClienteIni: TDBText
      Left = 329
      Top = 24
      Width = 50
      Height = 17
      DataField = 'Cliente'
      DataSource = dsClienteIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object cmpCodDiagnostico: TDBText
      Left = 329
      Top = 216
      Width = 50
      Height = 17
      DataField = 'CodCid'
      DataSource = dsDiagnostico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 79
      Top = 276
      Width = 92
      Height = 13
      Caption = 'Compet'#234'ncia Inicial'
    end
    object Label1: TLabel
      Left = 197
      Top = 276
      Width = 90
      Height = 13
      Caption = 'Compet'#234'ncia Final '
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 8
      Top = 116
      Width = 320
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 4
    end
    object cmpPacienteIni: TDBLookupComboBox
      Left = 8
      Top = 165
      Width = 320
      Height = 21
      KeyField = 'Paciente'
      ListField = 'Nome'
      ListSource = dsPacienteInicial
      TabOrder = 6
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 8
      Top = 22
      Width = 320
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
      OnCloseUp = cmpClienteIniCloseUp
    end
    object chkHospital: TCheckBox
      Left = 8
      Top = 97
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 3
      OnClick = chkHospitalClick
    end
    object chkPaciente: TCheckBox
      Left = 8
      Top = 146
      Width = 200
      Height = 17
      Caption = 'Todos os Paciente ou selecione:'
      TabOrder = 5
      OnClick = chkPacienteClick
    end
    object chkDiagnostico: TCheckBox
      Left = 8
      Top = 196
      Width = 200
      Height = 17
      Caption = 'Todos os CIDs ou selecione'
      TabOrder = 7
      OnClick = chkDiagnosticoClick
    end
    object cmpDiagnostico: TDBLookupComboBox
      Left = 8
      Top = 214
      Width = 320
      Height = 21
      KeyField = 'CodCid'
      ListField = 'Nome'
      ListSource = dsDiagnostico
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 79
      Top = 290
      Width = 37
      Height = 21
      TabOrder = 10
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 116
      Top = 290
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 11
      Wrap = True
    end
    object Edit2: TEdit
      Left = 133
      Top = 290
      Width = 41
      Height = 21
      TabOrder = 12
      Text = '2002'
    end
    object UpDown2: TUpDown
      Left = 174
      Top = 290
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 13
      Thousands = False
    end
    object Edit3: TEdit
      Left = 197
      Top = 290
      Width = 37
      Height = 21
      TabOrder = 14
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 234
      Top = 290
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 15
      Wrap = True
    end
    object Edit4: TEdit
      Left = 251
      Top = 290
      Width = 41
      Height = 21
      TabOrder = 16
      Text = '2002'
    end
    object UpDown4: TUpDown
      Left = 292
      Top = 290
      Width = 16
      Height = 21
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 17
      Thousands = False
    end
    object bar: TProgressBar
      Left = 1
      Top = 317
      Width = 385
      Height = 11
      Align = alBottom
      TabOrder = 18
    end
    object rdgAnalise: TRadioGroup
      Left = 4
      Top = 239
      Width = 379
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise'
        'Ambos')
      TabOrder = 9
    end
    object chkClienteID: TCheckBox
      Left = 9
      Top = 48
      Width = 280
      Height = 17
      Caption = 'Todos os Identificadores do Cliente ou selecione'
      TabOrder = 1
      OnClick = chkClienteIDClick
    end
    object cmpClienteID: TDBLookupComboBox
      Left = 9
      Top = 67
      Width = 320
      Height = 21
      KeyField = 'ID'
      ListField = 'ID'
      ListSource = dsClienteID
      TabOrder = 2
    end
  end
  object cmdImp: TBitBtn
    Left = 80
    Top = 335
    Width = 105
    Height = 25
    Caption = 'Demonstrativo'
    Default = True
    TabOrder = 1
    OnClick = cmdImpClick
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
  object cmpImp1: TBitBtn
    Left = 201
    Top = 335
    Width = 105
    Height = 25
    Caption = 'Resumo'
    Default = True
    TabOrder = 2
    OnClick = cmpImp1Click
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
  object BitBtn1: TBitBtn
    Left = 141
    Top = 367
    Width = 105
    Height = 25
    Caption = 'Atualiza Cids'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000320B0000320B00000001000000010000EFA54A00C684
      6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
      8400CE9C8400EFCE94009C9C9C00C6A59C00EFCE9C00F7D69C00C6ADA500F7D6
      A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6B500E7C6
      B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00527BC600E7DEC600F7DE
      C600F7E7C600E7CECE00E7D6CE00F7E7D600FFEFD600DEDEDE00FFEFE700FFF7
      E700FFF7EF00FFF7F700FFFFF700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D08080808
      0808080808080808082D2D2D0D261F1F1C15110E0B0B0B0F082D2D2D0D262F1F
      1F0C0C0C0C0C0C0E082D2D2D10282E2F1F1F1F150E0E0B0E082D2D2D1029252E
      302F1F1F150E0E0B082D2D2D121F1F1F1F302F1F1F0C0C0E082D2D2D132E302F
      2F2F2F2F1F1F1111082D2D2D16312E302F1F1F22211E1B15082D2D2D1631272E
      302F1F1F0C0C0C1C082D2D2D1731312E302F2F1F1F21211B082D2D2D18313131
      2E302F2F1F1F2014082D2D2D1931270C0C2E302F2F1F1F09082D2D2D19313131
      3131312C23020400012D2D2D1D31313131313131240705032D2D2D2D192B2A2A
      2A2A2A2A23070A2D2D2D2D2D191A1A1A1A19191A16062D2D2D2D}
  end
  object dbHospitalIni: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 225
    Top = 16
    object dbHospitalIniHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalIniNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsHospitalIni: TDataSource
    DataSet = dbHospitalIni
    Left = 260
    Top = 16
  end
  object dbPacienteIni: TMSTable
    TableName = 'dbo.Pacientes'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome;IDPaciente'
    Left = 225
    Top = 163
    object dbPacienteIniPaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object dbPacienteIniNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsPacienteInicial: TDataSource
    DataSet = dbPacienteIni
    Left = 260
    Top = 163
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 225
    Top = 114
    object dbClienteIniCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteIniNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbClienteIniDiarias: TIntegerField
      FieldName = 'Diarias'
    end
    object dbClienteIniDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
    end
  end
  object dsClienteIni: TDataSource
    DataSet = dbClienteIni
    Left = 260
    Top = 114
  end
  object dbDiagnostico: TMSTable
    TableName = 'dbo.Diagnosticos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbDiagnosticoFilterRecord
    IndexFieldNames = 'CodCid'
    Left = 225
    Top = 212
    object dbDiagnosticoDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
      Origin = 'dbo.Diagnosticos.Diagnostico'
    end
    object dbDiagnosticoCodCid: TStringField
      FieldName = 'CodCid'
      Origin = 'dbo.Diagnosticos.CodCid'
      Size = 11
    end
    object dbDiagnosticoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Diagnosticos.Nome'
      Size = 75
    end
  end
  object dsDiagnostico: TDataSource
    DataSet = dbDiagnostico
    Left = 260
    Top = 212
  end
  object dbHID: TMSTable
    TableName = 'dbo.AtendHIDiagnostico'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente;AtendimentoHI;Diagnostico'
    Left = 319
    Top = 336
    object dbHIDDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
    end
    object dbHIDCodCid: TStringField
      FieldName = 'CodCid'
      Size = 11
    end
  end
  object dbDiag: TMSTable
    TableName = 'dbo.Diagnosticos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Diagnostico'
    Left = 356
    Top = 336
    object dbDiagDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
    end
    object dbDiagCodCid: TStringField
      FieldName = 'CodCid'
      Size = 11
    end
    object dbDiagNome: TStringField
      FieldName = 'Nome'
      Size = 75
    end
  end
  object dbClienteID: TMSTable
    TableName = 'dbo.ClienteID'
    MasterFields = 'Cliente'
    MasterSource = dsClienteIni
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 225
    Top = 65
    object dbClienteIDCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteIDID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object dbClienteIDDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
    object dbClienteIDPrincipal: TIntegerField
      FieldName = 'Principal'
    end
  end
  object dsClienteID: TDataSource
    DataSet = dbClienteID
    Left = 260
    Top = 65
  end
end
