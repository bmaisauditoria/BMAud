object frmRelEstatisticaPacienteH: TfrmRelEstatisticaPacienteH
  Left = 396
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Estatistica por Hospital com Diagn'#243'stico'
  ClientHeight = 301
  ClientWidth = 544
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
    Width = 544
    Height = 263
    Align = alTop
    TabOrder = 0
    object cmpCodHospitalIni: TDBText
      Left = 248
      Top = 113
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
      Top = 159
      Width = 45
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
      Left = 146
      Top = 185
      Width = 92
      Height = 13
      Caption = 'Compet'#234'ncia Inicial'
    end
    object cmpCodClienteIni: TDBText
      Left = 248
      Top = 25
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
    object Label1: TLabel
      Left = 290
      Top = 185
      Width = 84
      Height = 13
      Caption = 'Compet'#234'ncia final'
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 8
      Top = 111
      Width = 240
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 4
    end
    object cmpPacienteIni: TDBLookupComboBox
      Left = 8
      Top = 157
      Width = 240
      Height = 21
      KeyField = 'Paciente'
      ListField = 'Nome'
      ListSource = dsPacienteInicial
      TabOrder = 6
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 8
      Top = 23
      Width = 240
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
      OnCloseUp = cmpClienteIniCloseUp
    end
    object chkHospital: TCheckBox
      Left = 8
      Top = 92
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 3
      OnClick = chkHospitalClick
    end
    object chkPaciente: TCheckBox
      Left = 8
      Top = 138
      Width = 200
      Height = 17
      Caption = 'Todos os Paciente ou selecione:'
      TabOrder = 5
      OnClick = chkPacienteClick
    end
    object Edit1: TEdit
      Left = 146
      Top = 199
      Width = 37
      Height = 21
      TabOrder = 10
      Text = '1'
    end
    object Edit2: TEdit
      Left = 200
      Top = 199
      Width = 41
      Height = 21
      TabOrder = 12
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 183
      Top = 199
      Width = 13
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 11
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 241
      Top = 199
      Width = 13
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 13
      Thousands = False
    end
    object rdgIntercambio: TRadioGroup
      Left = 287
      Top = 106
      Width = 250
      Height = 35
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'S'#227'o Paulo'
        'Interc'#226'mbio')
      TabOrder = 9
      Visible = False
    end
    object rdgAnalise: TRadioGroup
      Left = 287
      Top = 13
      Width = 250
      Height = 35
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise')
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 290
      Top = 199
      Width = 37
      Height = 21
      TabOrder = 14
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 327
      Top = 199
      Width = 13
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 15
      Wrap = True
    end
    object Edit4: TEdit
      Left = 344
      Top = 199
      Width = 41
      Height = 21
      TabOrder = 16
      Text = '2002'
    end
    object UpDown4: TUpDown
      Left = 385
      Top = 199
      Width = 12
      Height = 21
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 17
      Thousands = False
    end
    object rdgRelatorio: TRadioGroup
      Left = 7
      Top = 222
      Width = 530
      Height = 35
      Caption = 'Relat'#243'rio'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Normal'
        'Confer'#234'ncia (+1 auditoria)')
      TabOrder = 18
    end
    object GroupBox1: TGroupBox
      Left = 287
      Top = 49
      Width = 250
      Height = 57
      Caption = 'Imprimir apenas '
      TabOrder = 8
      object cmpDiaria1: TCheckBox
        Left = 24
        Top = 16
        Width = 209
        Height = 17
        Caption = 'cmpDiaria1'
        TabOrder = 0
      end
      object cmpDiaria2: TCheckBox
        Left = 24
        Top = 32
        Width = 217
        Height = 17
        Caption = 'cmpDiaria2'
        TabOrder = 1
      end
    end
    object chkClienteID: TCheckBox
      Left = 9
      Top = 48
      Width = 255
      Height = 17
      Caption = 'Todos os Identificadores do Cliente ou selecione'
      TabOrder = 1
      OnClick = chkClienteIDClick
    end
    object cmpClienteID: TDBLookupComboBox
      Left = 9
      Top = 67
      Width = 240
      Height = 21
      KeyField = 'ID'
      ListField = 'ID'
      ListSource = dsClienteID
      TabOrder = 2
    end
  end
  object BitBtn1: TBitBtn
    Left = 222
    Top = 270
    Width = 100
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
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
    Left = 6
    Top = 267
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
    Left = 38
    Top = 267
  end
  object dbPacienteIni: TMSTable
    TableName = 'dbo.Pacientes'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 150
    Top = 267
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
    Left = 182
    Top = 267
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 78
    Top = 267
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
    OnDataChange = dsClienteIniDataChange
    Left = 110
    Top = 267
  end
  object dbClienteID: TMSTable
    TableName = 'dbo.ClienteID'
    MasterFields = 'Cliente'
    MasterSource = dsClienteIni
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 476
    Top = 267
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
    Left = 508
    Top = 267
  end
end
