object frmRelFluxoCaixa: TfrmRelFluxoCaixa
  Left = 438
  Top = 287
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Fluxo de Caixa'
  ClientHeight = 177
  ClientWidth = 313
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
    Width = 313
    Height = 142
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 51
      Width = 84
      Height = 13
      Caption = 'Pagamento Inicial'
    end
    object Label3: TLabel
      Left = 11
      Top = 75
      Width = 79
      Height = 13
      Caption = 'Pagamento Final'
    end
    object cmbFilial: TDBLookupComboBox
      Left = 7
      Top = 23
      Width = 305
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
    object dtpIni: TDateTimePicker
      Left = 98
      Top = 48
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 98
      Top = 72
      Width = 90
      Height = 21
      Date = 37994.000000000000000000
      Time = 37994.000000000000000000
      TabOrder = 2
    end
    object rdgNivel: TRadioGroup
      Left = 4
      Top = 97
      Width = 305
      Height = 32
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Detalhes'
        'Nivel 3'
        'Nivel 2')
      TabOrder = 3
    end
    object chkFilial: TCheckBox
      Left = 7
      Top = 5
      Width = 185
      Height = 17
      Caption = 'Todas as Filiais ou selecione'
      TabOrder = 4
      OnClick = chkFilialClick
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 133
      Width = 311
      Height = 8
      Align = alBottom
      TabOrder = 5
    end
  end
  object cmbMes: TComboBox
    Left = 196
    Top = 63
    Width = 55
    Height = 21
    ItemHeight = 13
    TabOrder = 1
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
    TabOrder = 2
    Value = 1998
    OnChange = cmbAnoChange
  end
  object cmdRelFluxo: TBitBtn
    Left = 106
    Top = 147
    Width = 100
    Height = 25
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cmdRelFluxoClick
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
    Left = 165
    Top = 17
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Filiais.Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Filiais.Nome'
      Size = 60
    end
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 197
    Top = 18
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbBancoFilterRecord
    IndexFieldNames = 'BancoID'
    Left = 228
    Top = 17
    object dbBancoBancoID: TAutoIncField
      FieldName = 'BancoID'
      ReadOnly = True
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      FixedChar = True
      Size = 10
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbBancoSigla: TStringField
      FieldName = 'Sigla'
      Size = 3
    end
    object dbBancoEndereco: TMemoField
      FieldName = 'Endereco'
      BlobType = ftMemo
      Size = 20
    end
    object dbBancoGerente: TStringField
      FieldName = 'Gerente'
      Size = 30
    end
    object dbBancoFone: TStringField
      FieldName = 'Fone'
      Size = 25
    end
    object dbBancoFax: TStringField
      FieldName = 'Fax'
      Size = 25
    end
    object dbBancoSite: TStringField
      FieldName = 'Site'
      Size = 60
    end
    object dbBancoFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbBancoUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
    end
    object dbBancoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
    end
    object dbBancoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Size = 10
    end
    object dbBancoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbMovBancoFilterRecord
    IndexFieldNames = 'DataEntrada;BancoID;Doc'
    Left = 260
    Top = 17
    object dbMovBancoMovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
    end
    object dbMovBancoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovBancoDoc: TStringField
      FieldName = 'Doc'
    end
    object dbMovBancoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovBancoFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
    end
    object dbMovBancoHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbMovBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbMovBancoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbMovBancoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbMovBancoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
end
