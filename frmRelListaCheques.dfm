object frmRelListaCheque: TfrmRelListaCheque
  Left = 690
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Cheques emitidos'
  ClientHeight = 332
  ClientWidth = 276
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
    Width = 276
    Height = 302
    Align = alTop
    TabOrder = 0
    object lblBanco: TLabel
      Left = 9
      Top = 26
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label2: TLabel
      Left = 31
      Top = 52
      Width = 69
      Height = 13
      Caption = 'Emiss'#227'o Inicial'
    end
    object Label3: TLabel
      Left = 36
      Top = 76
      Width = 64
      Height = 13
      Caption = 'Emiss'#227'o Final'
    end
    object lblChqIni: TLabel
      Left = 33
      Top = 154
      Width = 67
      Height = 13
      Caption = 'Cheque Inicial'
      Visible = False
    end
    object lblChqFim: TLabel
      Left = 38
      Top = 178
      Width = 62
      Height = 13
      Caption = 'Cheque Final'
      Visible = False
    end
    object cmbBanco: TDBLookupComboBox
      Left = 47
      Top = 22
      Width = 217
      Height = 21
      KeyField = 'BancoID'
      ListField = 'Nome'
      ListSource = dsBanco
      TabOrder = 0
      OnCloseUp = cmbBancoCloseUp
    end
    object dtpIni: TDateTimePicker
      Left = 108
      Top = 50
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 108
      Top = 73
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object rdgOrdem: TRadioGroup
      Left = 4
      Top = 195
      Width = 268
      Height = 35
      Caption = 'Selecione a ordem'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Data'
        'Cheque')
      TabOrder = 7
    end
    object rdgTipo: TRadioGroup
      Left = 4
      Top = 229
      Width = 268
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Emitidos'
        'Cancelados'
        'Ambos')
      TabOrder = 8
    end
    object rdgRelatorio: TRadioGroup
      Left = 4
      Top = 263
      Width = 268
      Height = 35
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Completo'
        'Resumo')
      TabOrder = 9
    end
    object chqIni: TEdit
      Left = 108
      Top = 150
      Width = 121
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object chqFim: TEdit
      Left = 108
      Top = 174
      Width = 121
      Height = 21
      TabOrder = 6
      Visible = False
    end
    object chkCheque: TCheckBox
      Left = 9
      Top = 133
      Width = 193
      Height = 17
      Caption = 'Todos os cheques ou selecione'
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = chkChequeClick
    end
    object rdgSaida: TRadioGroup
      Left = 4
      Top = 94
      Width = 268
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Cheques'
        'Aut.Debito'
        'Ambas')
      TabOrder = 3
      OnClick = rdgSaidaClick
    end
    object chkConta: TCheckBox
      Left = 6
      Top = 4
      Width = 185
      Height = 17
      Caption = 'Todas as contas ou selecione'
      TabOrder = 10
      OnClick = chkContaClick
    end
  end
  object cmdImp: TBitBtn
    Left = 88
    Top = 308
    Width = 100
    Height = 23
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
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Left = 209
    Top = 54
    object dbBancoBancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object dbBancoSigla: TStringField
      FieldName = 'Sigla'
      Size = 3
    end
  end
  object dsBanco: TDataSource
    DataSet = dbBanco
    Left = 241
    Top = 55
  end
end
