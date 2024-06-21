object frmRelComparativoMes: TfrmRelComparativoMes
  Left = 321
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Comparativo Mensal'
  ClientHeight = 200
  ClientWidth = 322
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
    Width = 322
    Height = 166
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 107
      Top = 89
      Width = 62
      Height = 13
      Caption = 'Compet'#234'ncia'
    end
    object cmpCodClienteIni: TDBText
      Left = 273
      Top = 22
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
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 32
      Height = 13
      Caption = 'Cliente'
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
      OnCloseUp = cmpClienteIniCloseUp
    end
    object Edit1: TEdit
      Left = 107
      Top = 102
      Width = 37
      Height = 21
      TabOrder = 3
      Text = '1'
    end
    object Edit2: TEdit
      Left = 161
      Top = 102
      Width = 41
      Height = 21
      TabOrder = 5
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 144
      Top = 102
      Width = 13
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 4
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 202
      Top = 102
      Width = 13
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 6
      Thousands = False
    end
    object rdgAnalise: TRadioGroup
      Left = 5
      Top = 124
      Width = 312
      Height = 35
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise')
      TabOrder = 7
    end
    object chkClienteID: TCheckBox
      Left = 9
      Top = 46
      Width = 280
      Height = 19
      Caption = 'Todos os Identificadores do Cliente ou selecione'
      TabOrder = 1
      OnClick = chkClienteIDClick
    end
    object cmpClienteID: TDBLookupComboBox
      Left = 9
      Top = 65
      Width = 240
      Height = 21
      KeyField = 'ID'
      ListField = 'ID'
      ListSource = dsClienteID
      TabOrder = 2
    end
  end
  object cmdRelCodigoN: TBitBtn
    Left = 116
    Top = 172
    Width = 90
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
    OnClick = cmdRelCodigoNClick
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
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 6
    Top = 170
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
    Left = 38
    Top = 170
  end
  object dbClienteID: TMSTable
    TableName = 'dbo.ClienteID'
    MasterFields = 'Cliente'
    MasterSource = dsClienteIni
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 236
    Top = 170
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
    Left = 268
    Top = 170
  end
end
