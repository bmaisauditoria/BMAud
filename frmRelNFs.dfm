object frmRelNF: TfrmRelNF
  Left = 544
  Top = 232
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Relat'#243'rio de Notas Fiscais'
  ClientHeight = 242
  ClientWidth = 324
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 209
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 86
      Top = 93
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
    end
    object Label3: TLabel
      Left = 91
      Top = 117
      Width = 48
      Height = 13
      Caption = 'Data Final'
    end
    object cmbFilial: TDBLookupComboBox
      Left = 8
      Top = 22
      Width = 309
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
    object dtpIni: TDateTimePicker
      Left = 145
      Top = 90
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 145
      Top = 114
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object chkFilial: TCheckBox
      Left = 7
      Top = 5
      Width = 185
      Height = 17
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 3
      OnClick = chkFilialClick
    end
    object rdgOrdem: TRadioGroup
      Left = 4
      Top = 172
      Width = 315
      Height = 32
      Caption = 'Selecione ordem de'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'NF'
        'Cliente'
        'Data')
      TabOrder = 4
    end
    object rdgData: TRadioGroup
      Left = 4
      Top = 140
      Width = 315
      Height = 32
      Caption = 'Selecione Busca por Data de '
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Emiss'#227'o'
        'Vencimento')
      TabOrder = 5
    end
    object chkCliente: TCheckBox
      Left = 7
      Top = 46
      Width = 185
      Height = 17
      Caption = 'Todos os Clientes ou selecione'
      TabOrder = 6
      OnClick = chkClienteClick
    end
    object cmbCliente: TDBLookupComboBox
      Left = 7
      Top = 63
      Width = 309
      Height = 21
      KeyField = 'CliFor'
      ListField = 'Nome'
      ListSource = dsCliente
      TabOrder = 7
    end
  end
  object cmdImp: TBitBtn
    Left = 112
    Top = 217
    Width = 100
    Height = 25
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
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
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 229
    Top = 17
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 261
    Top = 18
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbClienteFilterRecord
    IndexFieldNames = 'Nome'
    Left = 237
    Top = 57
    object dbClienteCliFor: TIntegerField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 60
    end
    object dbClienteStatusCli: TBooleanField
      FieldName = 'StatusCli'
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 269
    Top = 58
  end
end
