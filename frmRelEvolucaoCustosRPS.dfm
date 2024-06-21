object frmRelEvolucaoCustoRPS: TfrmRelEvolucaoCustoRPS
  Left = 815
  Top = 292
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Evolu'#231#227'o dos Custos por Regi'#227'o - Amb/PS'
  ClientHeight = 374
  ClientWidth = 396
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
    Width = 396
    Height = 292
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 121
      Top = 59
      Width = 80
      Height = 16
      Caption = 'Compet'#234'ncia'
    end
    object cmpCodClienteIni: TDBText
      Left = 316
      Top = 31
      Width = 50
      Height = 21
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
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 41
      Height = 16
      Caption = 'Cliente'
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 10
      Top = 30
      Width = 295
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 121
      Top = 76
      Width = 45
      Height = 24
      TabOrder = 1
      Text = '1'
    end
    object Edit2: TEdit
      Left = 187
      Top = 76
      Width = 51
      Height = 24
      TabOrder = 2
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 166
      Top = 76
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 3
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 238
      Top = 76
      Width = 16
      Height = 24
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 4
      Thousands = False
    end
    object rdgPS: TRadioGroup
      Left = 10
      Top = 149
      Width = 375
      Height = 43
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Ambulat'#243'rio'
        'Pronto Atendimento')
      TabOrder = 5
    end
    object rdgAnalise: TRadioGroup
      Left = 10
      Top = 193
      Width = 375
      Height = 43
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise')
      TabOrder = 6
    end
    object rdgRelatorio: TRadioGroup
      Left = 10
      Top = 107
      Width = 375
      Height = 43
      Caption = 'Selecione Relatorio '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Por Hospital'
        'Por Regi'#227'o')
      TabOrder = 7
    end
    object rdgLogo: TRadioGroup
      Left = 9
      Top = 238
      Width = 375
      Height = 43
      Caption = 'Cabe'#231'alho/Logotipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'B&&B Auditoria'
        'B+ Auditoria')
      TabOrder = 8
    end
  end
  object cmdRelCodigo: TBitBtn
    Left = 75
    Top = 301
    Width = 246
    Height = 31
    Caption = 'Relat'#243'rio'
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
  object BitBtn1: TBitBtn
    Left = 75
    Top = 337
    Width = 246
    Height = 30
    Caption = 'Excel'
    Default = True
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
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 22
    Top = 64
    object dbClienteIniCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteIniNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
  end
  object dsClienteIni: TDataSource
    DataSet = dbClienteIni
    Left = 54
    Top = 64
  end
  object dbRelatorio: TMSTable
    TableName = 'dbo.relEvolucaoCustoR'
    Connection = frmMenu.dadosaud
    Left = 288
    Top = 72
    object dbRelatorioRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRelatorioPaciente1: TIntegerField
      FieldName = 'Paciente1'
    end
    object dbRelatorioValor1: TCurrencyField
      FieldName = 'Valor1'
    end
    object dbRelatorioGlosa1: TCurrencyField
      FieldName = 'Glosa1'
    end
    object dbRelatorioPaciente2: TIntegerField
      FieldName = 'Paciente2'
    end
    object dbRelatorioValor2: TCurrencyField
      FieldName = 'Valor2'
    end
    object dbRelatorioGlosa2: TCurrencyField
      FieldName = 'Glosa2'
    end
    object dbRelatorioPaciente3: TIntegerField
      FieldName = 'Paciente3'
    end
    object dbRelatorioValor3: TCurrencyField
      FieldName = 'Valor3'
    end
    object dbRelatorioGlosa3: TCurrencyField
      FieldName = 'Glosa3'
    end
    object dbRelatorioPaciente4: TIntegerField
      FieldName = 'Paciente4'
    end
    object dbRelatorioValor4: TCurrencyField
      FieldName = 'Valor4'
    end
    object dbRelatorioGlosa4: TCurrencyField
      FieldName = 'Glosa4'
    end
    object dbRelatorioPaciente5: TIntegerField
      FieldName = 'Paciente5'
    end
    object dbRelatorioValor5: TCurrencyField
      FieldName = 'Valor5'
    end
    object dbRelatorioGlosa5: TCurrencyField
      FieldName = 'Glosa5'
    end
    object dbRelatorioPaciente6: TIntegerField
      FieldName = 'Paciente6'
    end
    object dbRelatorioValor6: TCurrencyField
      FieldName = 'Valor6'
    end
    object dbRelatorioGlosa6: TCurrencyField
      FieldName = 'Glosa6'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = dbRelatorio
    Left = 320
    Top = 72
  end
end
