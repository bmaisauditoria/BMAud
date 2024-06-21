object frmRelLancamentoPC: TfrmRelLancamentoPC
  Left = 692
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Relat'#243'rio Gerencial'
  ClientHeight = 238
  ClientWidth = 309
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
    Width = 309
    Height = 205
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 51
      Width = 86
      Height = 13
      Caption = 'Vencimento Inicial'
    end
    object Label3: TLabel
      Left = 10
      Top = 75
      Width = 81
      Height = 13
      Caption = 'Vencimento Final'
    end
    object cmbFilial: TDBLookupComboBox
      Left = 7
      Top = 23
      Width = 300
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
    object dtpIni: TDateTimePicker
      Left = 97
      Top = 48
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 97
      Top = 72
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object rdgPago: TRadioGroup
      Left = 4
      Top = 94
      Width = 300
      Height = 32
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Previstos'
        'Pagos'
        'Ambos')
      TabOrder = 5
    end
    object rdgNivel: TRadioGroup
      Left = 4
      Top = 126
      Width = 300
      Height = 32
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Detalhes'
        'Nivel 3'
        'Nivel 2')
      TabOrder = 6
    end
    object chkFilial: TCheckBox
      Left = 7
      Top = 5
      Width = 185
      Height = 17
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 8
      OnClick = chkFilialClick
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 196
      Width = 307
      Height = 8
      Align = alBottom
      TabOrder = 9
    end
    object rdgPlano: TRadioGroup
      Left = 4
      Top = 159
      Width = 300
      Height = 32
      Caption = 'Selecione - Plano de Contas'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Todos'
        'Apenas Valorizados')
      TabOrder = 7
    end
    object cmbMes: TComboBox
      Left = 196
      Top = 63
      Width = 55
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'Jan'
      OnChange = cmbMesChange
      Items.Strings = (
        'Jan'
        'Fev'
        'Mar'
        'Abr'
        'Mai'
        'Jun'
        'Jul'
        'Ago'
        'Set'
        'Out'
        'Nov'
        'Dez')
    end
    object cmbAno: TSpinEdit
      Left = 253
      Top = 62
      Width = 53
      Height = 22
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 1998
      OnChange = cmbMesChange
    end
  end
  object cmdImp: TBitBtn
    Left = 104
    Top = 211
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
    Left = 237
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
    Left = 269
    Top = 18
  end
end
