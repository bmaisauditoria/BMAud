object frmRelSenha: TfrmRelSenha
  Left = 725
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Estatistica por Hospital'
  ClientHeight = 474
  ClientWidth = 528
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 253
    Align = alTop
    TabOrder = 0
    object cmpCodHospitalIni: TDBText
      Left = 375
      Top = 82
      Width = 50
      Height = 21
      Alignment = taRightJustify
      DataField = 'Hospital'
      DataSource = dsHospitalIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 10
      Top = 109
      Width = 132
      Height = 16
      Caption = 'Data Interna'#231#227'o Inicial'
    end
    object cmpCodClienteIni: TDBText
      Left = 375
      Top = 30
      Width = 50
      Height = 20
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
      Left = 149
      Top = 109
      Width = 122
      Height = 16
      Caption = 'Data Interna'#231#227'o final'
    end
    object Label2: TLabel
      Left = 10
      Top = 9
      Width = 41
      Height = 16
      Caption = 'Cliente'
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 10
      Top = 80
      Width = 357
      Height = 24
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 2
      Visible = False
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 10
      Top = 28
      Width = 357
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
    object chkHospital: TCheckBox
      Left = 10
      Top = 58
      Width = 246
      Height = 21
      Caption = 'Todos os Hospitais ou selecione'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = chkHospitalClick
    end
    object rdgTipo: TRadioGroup
      Left = 10
      Top = 162
      Width = 511
      Height = 43
      Caption = 'Selecione Interna'#231#227'o'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cl'#237'nica'
        'Cir'#250'rgica'
        'Ambas')
      TabOrder = 7
    end
    object cmpDataIni: TDateTimePicker
      Left = 10
      Top = 130
      Width = 123
      Height = 24
      Date = 36836.000000000000000000
      Time = 36836.000000000000000000
      TabOrder = 3
    end
    object cmpDataFim: TDateTimePicker
      Left = 149
      Top = 130
      Width = 123
      Height = 24
      Date = 36836.000000000000000000
      Time = 36836.000000000000000000
      TabOrder = 4
    end
    object cmbMes: TComboBox
      Left = 289
      Top = 130
      Width = 68
      Height = 24
      ItemHeight = 16
      TabOrder = 5
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
      Left = 359
      Top = 129
      Width = 66
      Height = 26
      EditorEnabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 1998
      OnChange = cmbAnoChange
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 207
      Width = 510
      Height = 43
      Caption = 'Longa Perman'#234'ncia'
      TabOrder = 8
      object Label4: TLabel
        Left = 139
        Top = 18
        Width = 232
        Height = 16
        Caption = 'Somente acima de                          di'#225'rias'
      end
      object cmpLonga: TSpinEdit
        Left = 261
        Top = 12
        Width = 63
        Height = 26
        MaxValue = 5000
        MinValue = 1
        TabOrder = 0
        Value = 1
        OnChange = cmbAnoChange
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 253
    Width = 528
    Height = 221
    Align = alClient
    Caption = 'Panel5'
    TabOrder = 1
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 526
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Relat'#243'rios'
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 17
      Width = 526
      Height = 203
      Align = alClient
      BevelOuter = bvNone
      Color = clHighlight
      TabOrder = 0
      object cmdOriginal: TBitBtn
        Left = 79
        Top = 163
        Width = 184
        Height = 31
        Caption = 'Imprimir'
        Default = True
        TabOrder = 0
        OnClick = cmdOriginalClick
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
      object cmdExcel: TBitBtn
        Left = 271
        Top = 162
        Width = 184
        Height = 31
        Caption = 'Excel'
        Default = True
        TabOrder = 1
        OnClick = cmdExcelClick
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
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 152
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 2
        object rdgRelatorio: TRadioGroup
          Left = 5
          Top = 5
          Width = 516
          Height = 142
          Align = alClient
          ItemIndex = 0
          Items.Strings = (
            'Por Hospital'
            'Por Senha/Paciente'
            'Por Senha/Paciente/Capeante'
            
              'Evolu'#231#227'o Mensal   6 meses (Mes Interna'#231#227'o Inicial + 5 meses ante' +
              'riores) '
            
              'Evolu'#231#227'o Mensal 12 meses (Mes Internac'#227'o Inicial + 11 meses ante' +
              'riores) ')
          TabOrder = 0
        end
      end
    end
  end
  object dbHospitalIni: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 235
    Top = 80
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
    Left = 265
    Top = 81
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 220
    Top = 17
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
    Left = 250
    Top = 17
  end
end
