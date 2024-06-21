object frmRelDistribuicaoValorCC: TfrmRelDistribuicaoValorCC
  Left = 815
  Top = 264
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Distribui'#231#227'o Valor por Centro de Custo'
  ClientHeight = 442
  ClientWidth = 393
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
  object Label7: TLabel
    Left = 0
    Top = 380
    Width = 393
    Height = 16
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Caption = 'Layout Bradesco'
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 332
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 53
      Top = 53
      Width = 114
      Height = 16
      Caption = 'Compet'#234'ncia Incial'
    end
    object cmpCodClienteIni: TDBText
      Left = 340
      Top = 30
      Width = 49
      Height = 20
      Alignment = taRightJustify
      DataField = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 7
      Width = 41
      Height = 16
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 203
      Top = 53
      Width = 107
      Height = 16
      Caption = 'Compet'#234'ncia final'
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 10
      Top = 27
      Width = 324
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 53
      Top = 73
      Width = 45
      Height = 24
      TabOrder = 1
      Text = '1'
    end
    object Edit2: TEdit
      Left = 119
      Top = 73
      Width = 51
      Height = 24
      TabOrder = 3
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 98
      Top = 73
      Width = 16
      Height = 24
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 2
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 170
      Top = 73
      Width = 16
      Height = 24
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 4
      Thousands = False
    end
    object rdgAnalise: TRadioGroup
      Left = 9
      Top = 102
      Width = 375
      Height = 43
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise'
        'Ambos')
      TabOrder = 9
    end
    object Edit3: TEdit
      Left = 203
      Top = 73
      Width = 46
      Height = 24
      TabOrder = 5
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 249
      Top = 73
      Width = 19
      Height = 24
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 6
      Wrap = True
    end
    object Edit4: TEdit
      Left = 270
      Top = 73
      Width = 50
      Height = 24
      TabOrder = 7
      Text = '2002'
    end
    object UpDown4: TUpDown
      Left = 320
      Top = 73
      Width = 20
      Height = 24
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 8
      Thousands = False
    end
    object rdgPacote: TRadioGroup
      Left = 9
      Top = 147
      Width = 375
      Height = 44
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pacote'
        'N'#227'o Pacote'
        'Ambos')
      TabOrder = 10
    end
    object rdgTipo: TRadioGroup
      Left = 9
      Top = 192
      Width = 375
      Height = 43
      Caption = 'Selecione Interna'#231#227'o'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cl'#237'nica'
        'Cir'#250'rgica'
        'Ambas')
      TabOrder = 11
    end
    object chkRel: TRadioGroup
      Left = 9
      Top = 237
      Width = 375
      Height = 43
      Caption = 'Relatorio'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Valor'
        '%'
        'Ambos')
      TabOrder = 12
    end
    object rdgLogo: TRadioGroup
      Left = 9
      Top = 283
      Width = 375
      Height = 43
      Caption = 'Cabe'#231'alho/Logotipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'B&&B Auditoria'
        'B+ Auditoria')
      TabOrder = 13
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 332
    Width = 393
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object cmdImprimir: TBitBtn
      Left = 73
      Top = 7
      Width = 110
      Height = 31
      Caption = 'Imprimir'
      TabOrder = 0
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
      Left = 208
      Top = 7
      Width = 111
      Height = 31
      Caption = 'Excel'
      TabOrder = 1
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
  end
  object BitBtn2: TBitBtn
    Left = 73
    Top = 405
    Width = 110
    Height = 31
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitBtn2Click
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
  object BitBtn3: TBitBtn
    Left = 208
    Top = 405
    Width = 111
    Height = 31
    Caption = 'Excel'
    TabOrder = 3
    OnClick = BitBtn3Click
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
    Left = 254
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
    Left = 286
  end
  object qryExcelCC: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select nome as Hospital,'
      '           valor1 as Diarias,'
      '           p1 as PDiarias,'
      '           Valor2 as Taxas,'
      '           p2 as PTaxas,'
      '           valor3 as HMedicos,'
      '           p3 as PHMedicos,'
      '           valor4 as Gases,'
      '           p4 as PGases,'
      '           valor5 as Hemos, '
      '           p5 as PHemo,'
      '           valor6 as SADT, '
      '           p6 as PSADT,'
      '           valor7 as Medicamentos,'
      '           p7 as PMedicamentos,'
      '           valor8 as Materiais,'
      '           p8 as PMateriais,'
      '           valor9 as Pacotes,'
      '           p9 as PPacotes,'
      '           valor10 as Outros,'
      '           p10 as POutros'
      ''
      'from relEvolucaoCustoR'
      'order by Nome ')
    Left = 344
    Top = 246
    object qryExcelCCHospital: TStringField
      FieldName = 'Hospital'
      Origin = 'relEvolucaoCustoR.Nome'
      Size = 50
    end
    object qryExcelCCDiarias: TCurrencyField
      FieldName = 'Diarias'
      Origin = 'relEvolucaoCustoR.Valor1'
    end
    object qryExcelCCPDiarias: TFloatField
      FieldName = 'PDiarias'
      Origin = 'relEvolucaoCustoR.P1'
      DisplayFormat = '##0.00%'
      Precision = 9
    end
    object qryExcelCCTaxas: TCurrencyField
      FieldName = 'Taxas'
      Origin = 'relEvolucaoCustoR.Valor2'
    end
    object qryExcelCCPTaxas: TFloatField
      FieldName = 'PTaxas'
      Origin = 'relEvolucaoCustoR.P2'
      Precision = 9
    end
    object qryExcelCCHMedicos: TCurrencyField
      FieldName = 'HMedicos'
      Origin = 'relEvolucaoCustoR.Valor3'
    end
    object qryExcelCCPHMedicos: TFloatField
      FieldName = 'PHMedicos'
      Origin = 'relEvolucaoCustoR.P3'
      Precision = 9
    end
    object qryExcelCCGases: TCurrencyField
      FieldName = 'Gases'
      Origin = 'relEvolucaoCustoR.Valor4'
    end
    object qryExcelCCPGases: TFloatField
      FieldName = 'PGases'
      Origin = 'relEvolucaoCustoR.P4'
      Precision = 9
    end
    object qryExcelCCHemos: TCurrencyField
      FieldName = 'Hemos'
      Origin = 'relEvolucaoCustoR.Valor5'
    end
    object qryExcelCCPHemo: TFloatField
      FieldName = 'PHemo'
      Origin = 'relEvolucaoCustoR.P5'
      Precision = 9
    end
    object qryExcelCCSADT: TCurrencyField
      FieldName = 'SADT'
      Origin = 'relEvolucaoCustoR.Valor6'
    end
    object qryExcelCCPSADT: TFloatField
      FieldName = 'PSADT'
      Origin = 'relEvolucaoCustoR.P6'
      Precision = 9
    end
    object qryExcelCCMedicamentos: TCurrencyField
      FieldName = 'Medicamentos'
      Origin = 'relEvolucaoCustoR.Valor7'
    end
    object qryExcelCCPMedicamentos: TFloatField
      FieldName = 'PMedicamentos'
      Origin = 'relEvolucaoCustoR.P7'
      Precision = 9
    end
    object qryExcelCCMateriais: TCurrencyField
      FieldName = 'Materiais'
      Origin = 'relEvolucaoCustoR.Valor8'
    end
    object qryExcelCCPMateriais: TFloatField
      FieldName = 'PMateriais'
      Origin = 'relEvolucaoCustoR.P8'
      Precision = 9
    end
    object qryExcelCCPacotes: TCurrencyField
      FieldName = 'Pacotes'
      Origin = 'relEvolucaoCustoR.Valor9'
    end
    object qryExcelCCPPacotes: TFloatField
      FieldName = 'PPacotes'
      Origin = 'relEvolucaoCustoR.P9'
      Precision = 9
    end
    object qryExcelCCOutros: TCurrencyField
      FieldName = 'Outros'
      Origin = 'relEvolucaoCustoR.Valor10'
    end
    object qryExcelCCPOutros: TFloatField
      FieldName = 'POutros'
      Origin = 'relEvolucaoCustoR.P10'
      Precision = 9
    end
  end
  object qryExcelBR: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select nome as Hospital,'
      '           valor1 as Diarias,'
      '           p1 as PDiarias,'
      '           valor2 as DiariasUTI,'
      '           p2 as PDiariasUTI,'
      '           valor3 as Taxas,'
      '           p3 as PTaxas,'
      '           valor4 as HMedicos,'
      '           p4 as PHMedicos,'
      '           valor5 as Gases,'
      '           p5 as PGases,'
      '           valor6 as Hemos, '
      '           p6 as PHemos,'
      '           valor7 as SADT, '
      '           p7 as PSADT,'
      '           valor8 as Medicamentos,'
      '           p8 as PMedicamentos,'
      '           valor9 as Materiais,'
      '           p9 as PMateriais,'
      '           valor10 as MateriaisE,'
      '           p10 as PMateriaisE,'
      '           valor11 as Pacote, '
      '           p11 as PPacote,'
      '           valor12 as Outros, '
      '           p12 as POutros'
      'from relEvolucaoCustoR'
      'order by Nome ')
    Left = 352
    Top = 362
    object qryExcelBRHospital: TStringField
      FieldName = 'Hospital'
      Origin = 'relEvolucaoCustoR.Nome'
      Size = 50
    end
    object qryExcelBRDiarias: TCurrencyField
      FieldName = 'Diarias'
      Origin = 'relEvolucaoCustoR.Valor1'
    end
    object qryExcelBRPDiarias: TFloatField
      FieldName = 'PDiarias'
      Origin = 'relEvolucaoCustoR.P1'
      Precision = 9
    end
    object qryExcelBRDiariasUTI: TCurrencyField
      FieldName = 'DiariasUTI'
      Origin = 'relEvolucaoCustoR.Valor2'
    end
    object qryExcelBRPDiariasUTI: TFloatField
      FieldName = 'PDiariasUTI'
      Origin = 'relEvolucaoCustoR.P2'
      Precision = 9
    end
    object qryExcelBRTaxas: TCurrencyField
      FieldName = 'Taxas'
      Origin = 'relEvolucaoCustoR.Valor3'
    end
    object qryExcelBRPTaxas: TFloatField
      FieldName = 'PTaxas'
      Origin = 'relEvolucaoCustoR.P3'
      Precision = 9
    end
    object qryExcelBRHMedicos: TCurrencyField
      FieldName = 'HMedicos'
      Origin = 'relEvolucaoCustoR.Valor4'
    end
    object qryExcelBRPHMedicos: TFloatField
      FieldName = 'PHMedicos'
      Origin = 'relEvolucaoCustoR.P4'
      Precision = 9
    end
    object qryExcelBRGases: TCurrencyField
      FieldName = 'Gases'
      Origin = 'relEvolucaoCustoR.Valor5'
    end
    object qryExcelBRPGases: TFloatField
      FieldName = 'PGases'
      Origin = 'relEvolucaoCustoR.P5'
      Precision = 9
    end
    object qryExcelBRHemos: TCurrencyField
      FieldName = 'Hemos'
      Origin = 'relEvolucaoCustoR.Valor6'
    end
    object qryExcelBRPHemos: TFloatField
      FieldName = 'PHemos'
      Origin = 'relEvolucaoCustoR.P6'
      Precision = 9
    end
    object qryExcelBRSADT: TCurrencyField
      FieldName = 'SADT'
      Origin = 'relEvolucaoCustoR.Valor7'
    end
    object qryExcelBRPSADT: TFloatField
      FieldName = 'PSADT'
      Origin = 'relEvolucaoCustoR.P7'
      Precision = 9
    end
    object qryExcelBRMedicamentos: TCurrencyField
      FieldName = 'Medicamentos'
      Origin = 'relEvolucaoCustoR.Valor8'
    end
    object qryExcelBRPMedicamentos: TFloatField
      FieldName = 'PMedicamentos'
      Origin = 'relEvolucaoCustoR.P8'
      Precision = 9
    end
    object qryExcelBRMateriais: TCurrencyField
      FieldName = 'Materiais'
      Origin = 'relEvolucaoCustoR.Valor9'
    end
    object qryExcelBRPMateriais: TFloatField
      FieldName = 'PMateriais'
      Origin = 'relEvolucaoCustoR.P9'
      Precision = 9
    end
    object qryExcelBRMateriaisE: TCurrencyField
      FieldName = 'MateriaisE'
      Origin = 'relEvolucaoCustoR.Valor10'
    end
    object qryExcelBRPMateriaisE: TFloatField
      FieldName = 'PMateriaisE'
      Origin = 'relEvolucaoCustoR.P10'
      Precision = 9
    end
    object qryExcelBRPacote: TCurrencyField
      FieldName = 'Pacote'
      Origin = 'relEvolucaoCustoR.Valor11'
    end
    object qryExcelBRPPacote: TFloatField
      FieldName = 'PPacote'
      Origin = 'relEvolucaoCustoR.P11'
      Precision = 9
    end
    object qryExcelBROutros: TCurrencyField
      FieldName = 'Outros'
      Origin = 'relEvolucaoCustoR.Valor12'
    end
    object qryExcelBRPOutros: TFloatField
      FieldName = 'POutros'
      Origin = 'relEvolucaoCustoR.P12'
      Precision = 9
    end
  end
end
