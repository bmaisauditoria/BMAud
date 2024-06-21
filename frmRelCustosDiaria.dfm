object frmRelCustoDiaria: TfrmRelCustoDiaria
  Left = 462
  Top = 195
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Diarias Calculadas x Apontadas'
  ClientHeight = 316
  ClientWidth = 294
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
    Width = 294
    Height = 284
    Align = alTop
    TabOrder = 0
    object cmpCodHospitalIni: TDBText
      Left = 248
      Top = 77
      Width = 30
      Height = 17
      Alignment = taRightJustify
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
      Left = 248
      Top = 130
      Width = 41
      Height = 17
      Alignment = taRightJustify
      DataField = 'Paciente'
      DataSource = dsPacienteInicial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 93
      Top = 242
      Width = 65
      Height = 13
      Caption = 'Compet'#234'ncia '
    end
    object cmpCodClienteIni: TDBText
      Left = 248
      Top = 23
      Width = 30
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
    object Label2: TLabel
      Left = 8
      Top = 6
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label1: TLabel
      Left = 214
      Top = 188
      Width = 72
      Height = 13
      Caption = 'que Apontadas'
    end
    object rdgTipo: TRadioGroup
      Left = 7
      Top = 152
      Width = 280
      Height = 36
      Caption = 'Selecione - Di'#225'rias Calculadas'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'maior'
        'menor'
        'diferente')
      TabOrder = 9
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 8
      Top = 74
      Width = 240
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 2
    end
    object cmpPacienteIni: TDBLookupComboBox
      Left = 8
      Top = 126
      Width = 240
      Height = 21
      KeyField = 'Paciente'
      ListField = 'Nome'
      ListSource = dsPacienteInicial
      TabOrder = 4
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
    object chkHospital: TCheckBox
      Left = 8
      Top = 57
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 1
      OnClick = chkHospitalClick
    end
    object chkPaciente: TCheckBox
      Left = 8
      Top = 109
      Width = 200
      Height = 17
      Caption = 'Todos os Paciente ou selecione:'
      TabOrder = 3
      OnClick = chkPacienteClick
    end
    object Edit1: TEdit
      Left = 93
      Top = 256
      Width = 37
      Height = 21
      TabOrder = 5
      Text = '1'
    end
    object Edit2: TEdit
      Left = 147
      Top = 256
      Width = 41
      Height = 21
      TabOrder = 7
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 130
      Top = 256
      Width = 13
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 6
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 188
      Top = 256
      Width = 13
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 8
      Thousands = False
    end
    object rdgAnalise: TRadioGroup
      Left = 7
      Top = 203
      Width = 280
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise'
        'Ambos')
      TabOrder = 10
    end
  end
  object cmdRelCodigo: TBitBtn
    Left = 102
    Top = 289
    Width = 90
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = cmdRelCodigoClick
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
  object dbHospitalIni: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 182
    Top = 8
    object dbHospitalIniHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.Hospital.Hospital'
    end
    object dbHospitalIniNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Hospital.Nome'
      Size = 60
    end
  end
  object dsHospitalIni: TDataSource
    DataSet = dbHospitalIni
    Left = 214
    Top = 8
  end
  object dbPacienteIni: TMSTable
    TableName = 'dbo.Pacientes'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 190
    Top = 112
    object dbPacienteIniPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.Pacientes.Paciente'
    end
    object dbPacienteIniNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Pacientes.Nome'
      Size = 40
    end
  end
  object dsPacienteInicial: TDataSource
    DataSet = dbPacienteIni
    Left = 222
    Top = 112
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 190
    Top = 56
    object dbClienteIniCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteIniNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
    object dbClienteIniDiarias: TIntegerField
      FieldName = 'Diarias'
      Origin = 'dbo.Cliente.Diarias'
    end
    object dbClienteIniDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
      Origin = 'dbo.Cliente.DiariasUTI'
    end
  end
  object dsClienteIni: TDataSource
    DataSet = dbClienteIni
    Left = 222
    Top = 56
  end
end
