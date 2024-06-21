object frmRelAutDebito: TfrmRelAutDebito
  Left = 291
  Top = 178
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Carta Autoriza'#231#227'o de Debito'
  ClientHeight = 420
  ClientWidth = 320
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
    Width = 320
    Height = 393
    Align = alTop
    BorderWidth = 4
    TabOrder = 0
    object Label2: TLabel
      Left = 5
      Top = 272
      Width = 310
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Texto Complementar'
      Color = 8454143
      ParentColor = False
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 5
      Width = 310
      Height = 267
      Align = alTop
      Caption = 'Selecione a Conta Corrente para Dep'#243'sito'
      TabOrder = 0
      object Label11: TLabel
        Left = 24
        Top = 59
        Width = 108
        Height = 13
        Caption = 'Banco/Ag'#234'ncia/Conta'
      end
      object DBText3: TDBText
        Left = 139
        Top = 57
        Width = 30
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Banco'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 173
        Top = 57
        Width = 40
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Agencia'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 217
        Top = 57
        Width = 70
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Conta'
        DataSource = dsCli
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label1: TLabel
        Left = 23
        Top = 123
        Width = 108
        Height = 13
        Caption = 'Banco/Ag'#234'ncia/Conta'
      end
      object DBText1: TDBText
        Left = 138
        Top = 121
        Width = 30
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Banco'
        DataSource = dsFun
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 172
        Top = 121
        Width = 40
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Agencia'
        DataSource = dsFun
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 216
        Top = 121
        Width = 70
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Conta'
        DataSource = dsFun
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 27
        Top = 193
        Width = 31
        Height = 13
        Caption = 'Banco'
      end
      object DBText7: TDBText
        Left = 217
        Top = 191
        Width = 30
        Height = 17
        Alignment = taRightJustify
        Color = clWhite
        DataField = 'Banco'
        DataSource = dsBco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 27
        Top = 217
        Width = 39
        Height = 13
        Caption = 'Ag'#234'ncia'
      end
      object Label5: TLabel
        Left = 143
        Top = 217
        Width = 28
        Height = 13
        Caption = 'Conta'
      end
      object Label6: TLabel
        Left = 27
        Top = 241
        Width = 52
        Height = 13
        Caption = 'CPF/CNPJ'
      end
      object Label7: TLabel
        Left = 27
        Top = 169
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object rbCliente: TRadioButton
        Left = 5
        Top = 17
        Width = 252
        Height = 17
        Caption = 'Clientes / Fornecedores / Prestadores'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbFuncionario: TRadioButton
        Left = 4
        Top = 82
        Width = 113
        Height = 17
        Caption = 'Funcion'#225'rios CLT'
        TabOrder = 1
      end
      object cmbCli: TDBLookupComboBox
        Left = 24
        Top = 32
        Width = 250
        Height = 21
        KeyField = 'CliFor'
        ListField = 'Nome'
        ListSource = dsCli
        TabOrder = 8
      end
      object cmbFun: TDBLookupComboBox
        Left = 23
        Top = 97
        Width = 250
        Height = 21
        KeyField = 'Funcionario'
        ListField = 'Nome'
        ListSource = dsFun
        TabOrder = 9
      end
      object rbExterno: TRadioButton
        Left = 8
        Top = 149
        Width = 113
        Height = 17
        Caption = 'Externo'
        TabOrder = 2
      end
      object cmbBco: TDBLookupComboBox
        Left = 61
        Top = 189
        Width = 145
        Height = 21
        KeyField = 'Banco'
        ListField = 'Nome'
        ListSource = dsBco
        TabOrder = 4
      end
      object cmpAgencia: TEdit
        Left = 71
        Top = 213
        Width = 65
        Height = 21
        TabOrder = 5
      end
      object cmpConta: TEdit
        Left = 175
        Top = 213
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object cmpCGC: TEdit
        Left = 84
        Top = 237
        Width = 145
        Height = 21
        TabOrder = 7
      end
      object cmpNome: TEdit
        Left = 61
        Top = 165
        Width = 236
        Height = 21
        TabOrder = 3
      end
    end
    object Memo1: TMemo
      Left = 5
      Top = 285
      Width = 310
      Height = 103
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 1
    end
  end
  object cmdImp: TBitBtn
    Left = 110
    Top = 397
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
  object dbFun: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 37
    Top = 297
    object dbFunFuncionario: TIntegerField
      FieldName = 'Funcionario'
    end
    object dbFunNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFunBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbFunAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbFunConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object dbFunCPF: TStringField
      FieldName = 'CPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 18
    end
  end
  object dsFun: TDataSource
    DataSet = dbFun
    Left = 37
    Top = 330
  end
  object dbCli: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 69
    Top = 297
    object dbCliCliFor: TAutoIncField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbCliNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbCliBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbCliAgencia: TStringField
      FieldName = 'Agencia'
      Size = 10
    end
    object dbCliConta: TStringField
      FieldName = 'Conta'
      Size = 15
    end
    object dbCliCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
  end
  object dsCli: TDataSource
    DataSet = dbCli
    Left = 69
    Top = 330
  end
  object dbBco: TMSTable
    TableName = 'dbo.Bancos'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 101
    Top = 297
    object dbBcoBanco: TSmallintField
      FieldName = 'Banco'
    end
    object dbBcoNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dsBco: TDataSource
    DataSet = dbBco
    Left = 101
    Top = 330
  end
end
