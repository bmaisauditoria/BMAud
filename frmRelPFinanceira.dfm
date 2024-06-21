object frmRePFinanceiro: TfrmRePFinanceiro
  Left = 375
  Top = 289
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Posi'#231#227'o Financeira'
  ClientHeight = 97
  ClientWidth = 217
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 64
    Top = 64
    Width = 100
    Height = 25
    Caption = 'Imprimir'
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
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 217
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 26
      Top = 11
      Width = 104
      Height = 13
      Caption = 'Posi'#231#227'o financeira em'
    end
    object Label1: TLabel
      Left = 92
      Top = 35
      Width = 38
      Height = 13
      Caption = 'At'#233' mes'
    end
    object cmbAno: TSpinEdit
      Left = 137
      Top = 6
      Width = 55
      Height = 22
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 1998
    end
    object cmbMes: TComboBox
      Left = 137
      Top = 31
      Width = 55
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'Fev'
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
  end
  object qrySaldo: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'select * from SaldoPF'
      'order by ano,mes')
    OnCalcFields = qrySaldoCalcFields
    Top = 64
    object qrySaldoBancoID: TSmallintField
      FieldName = 'BancoID'
      Origin = 'SaldoPF.BancoID'
    end
    object qrySaldoAno: TSmallintField
      FieldName = 'Ano'
      Origin = 'SaldoPF.Ano'
    end
    object qrySaldoMes: TSmallintField
      FieldName = 'Mes'
      Origin = 'SaldoPF.Mes'
    end
    object qrySaldoSaldoConciliado: TCurrencyField
      FieldName = 'SaldoConciliado'
      Origin = 'SaldoPF.SaldoConciliado'
    end
    object qrySaldoDebitosPendentes: TCurrencyField
      FieldName = 'DebitosPendentes'
      Origin = 'SaldoPF.DebitosPendentes'
    end
    object qrySaldoSaldoAplicacao: TCurrencyField
      FieldName = 'SaldoAplicacao'
      Origin = 'SaldoPF.SaldoAplicacao'
    end
    object qrySaldoNomeBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeBanco'
      LookupDataSet = frmMovBanco.dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Nome'
      KeyFields = 'BancoID'
      Size = 30
      Lookup = True
    end
    object qrySaldoTotalCaixa: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalCaixa'
      Calculated = True
    end
    object qrySaldoFilial1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Filial1'
      Calculated = True
    end
    object qrySaldoSaldoBancario: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SaldoBancario'
      Calculated = True
    end
    object qrySaldoDebitosPrestadores: TCurrencyField
      FieldName = 'DebitosPrestadores'
      Origin = 'SaldoPF.DebitosPrestadores'
    end
  end
  object rvSaldo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrySaldo
    Left = 32
    Top = 64
  end
end
