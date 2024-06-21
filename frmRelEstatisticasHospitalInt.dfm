object frmRelEstatisticaHospitalInt: TfrmRelEstatisticaHospitalInt
  Left = 492
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Estatistica por Hospital e Interna'#231#227'o'
  ClientHeight = 305
  ClientWidth = 356
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
  object Label1: TLabel
    Left = 226
    Top = 112
    Width = 84
    Height = 13
    Caption = 'Compet'#234'ncia final'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 356
    Height = 265
    Align = alTop
    TabOrder = 0
    object cmpCodHospitalIni: TDBText
      Left = 305
      Top = 77
      Width = 40
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
    object Label5: TLabel
      Left = 62
      Top = 143
      Width = 92
      Height = 13
      Caption = 'Compet'#234'ncia Inicial'
    end
    object cmpCodClienteIni: TDBText
      Left = 305
      Top = 29
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
    object Label2: TLabel
      Left = 183
      Top = 145
      Width = 84
      Height = 13
      Caption = 'Compet'#234'ncia final'
    end
    object Label3: TLabel
      Left = 9
      Top = 10
      Width = 94
      Height = 13
      Caption = 'Selecione o Cliente:'
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 8
      Top = 74
      Width = 290
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 2
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 8
      Top = 27
      Width = 290
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
    object chkHospital: TCheckBox
      Left = 8
      Top = 55
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 1
      OnClick = chkHospitalClick
    end
    object Edit1: TEdit
      Left = 62
      Top = 161
      Width = 37
      Height = 21
      TabOrder = 5
      Text = '1'
    end
    object Edit2: TEdit
      Left = 116
      Top = 161
      Width = 41
      Height = 21
      TabOrder = 7
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 99
      Top = 161
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
      Left = 157
      Top = 161
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
      Left = 8
      Top = 186
      Width = 340
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise'
        'Ambos')
      TabOrder = 13
    end
    object rdgInternacao: TRadioGroup
      Left = 8
      Top = 223
      Width = 340
      Height = 35
      Caption = 'Selecione Interna'#231#227'o'
      Columns = 4
      ItemIndex = 3
      Items.Strings = (
        'Eletiva'
        'Urg'#234'ncia'
        'Acidente'
        'Ambas')
      TabOrder = 14
    end
    object Edit3: TEdit
      Left = 183
      Top = 161
      Width = 37
      Height = 21
      TabOrder = 9
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 220
      Top = 161
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 10
      Wrap = True
    end
    object Edit4: TEdit
      Left = 237
      Top = 161
      Width = 41
      Height = 21
      TabOrder = 11
      Text = '2002'
    end
    object UpDown4: TUpDown
      Left = 278
      Top = 161
      Width = 16
      Height = 21
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 12
      Thousands = False
    end
    object chkRegiao: TCheckBox
      Left = 8
      Top = 99
      Width = 290
      Height = 17
      Caption = 'Todas as regi'#245'es ou selecione'
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = chkRegiaoClick
    end
    object cmpRegiao: TDBLookupComboBox
      Left = 8
      Top = 118
      Width = 290
      Height = 21
      KeyField = 'Regiao'
      ListField = 'Descricao'
      ListSource = dsRegiao
      TabOrder = 4
      Visible = False
    end
  end
  object cmdImprimir: TBitBtn
    Left = 20
    Top = 275
    Width = 150
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = cmdImprimirClick
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
    Left = 186
    Top = 275
    Width = 150
    Height = 25
    Caption = 'Excel'
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000130B0000130B00000001000000010000EF9C2100F7A5
      5A00636B6B00FFB56B008C8C8C009C9C9400A5A5A500ADADAD00B5B5B500DEDE
      DE00EFEFEF00F7F7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C02020202020202020202020202020C0C040D0D0D0D
      0D0D0D0D0D0D0D0D040C0C040D030303030303030303030D040C0C040D030D0D
      030D0D030D0D030D040C0C050D030D0D030D0D030D0D030D050C0C050D030303
      030303030303030D050C0C050D010D0D010D0D010D0D010D050C0C060B010D0D
      010D0D010D0D010B060C0C060B000000000000000000000B060C0C070A000D0D
      000D0D000D0D000A070C0C070A000D0D000D0D000D0D000A070C0C0809000000
      0000000000000009080C0C08090909090909090909090909080C0C0808080808
      0808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C}
  end
  object dbHospitalIni: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 246
    Top = 8
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
    Left = 278
    Top = 8
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 246
    Top = 40
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
    Left = 278
    Top = 40
  end
  object dbRegiao: TMSTable
    TableName = 'dbo.Regiao'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Descricao'
    Left = 292
    Top = 63
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object dsRegiao: TDataSource
    DataSet = dbRegiao
    Left = 322
    Top = 63
  end
end
