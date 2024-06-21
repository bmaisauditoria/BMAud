object frmRelCustoAMB: TfrmRelCustoAMB
  Left = 442
  Top = 135
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Custos por Procedimento'
  ClientHeight = 470
  ClientWidth = 450
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
    Width = 450
    Height = 433
    Align = alTop
    TabOrder = 2
    object cmpCodHospitalIni: TDBText
      Left = 352
      Top = 114
      Width = 50
      Height = 17
      Alignment = taRightJustify
      DataField = 'Hospital'
      DataSource = dsHospitalIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpCodPacienteIni: TDBText
      Left = 352
      Top = 159
      Width = 50
      Height = 17
      Alignment = taRightJustify
      DataField = 'Paciente'
      DataSource = dsPacienteInicial
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpCodClienteIni: TDBText
      Left = 352
      Top = 24
      Width = 50
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
    object Label2: TLabel
      Left = 8
      Top = 7
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 11
      Top = 209
      Width = 12
      Height = 13
      Caption = 'de'
    end
    object Label4: TLabel
      Left = 8
      Top = 234
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label5: TLabel
      Left = 110
      Top = 390
      Width = 92
      Height = 13
      Caption = 'Compet'#234'ncia Inicial'
    end
    object Label6: TLabel
      Left = 228
      Top = 390
      Width = 90
      Height = 13
      Caption = 'Compet'#234'ncia Final '
    end
    object AmbTextoIni: TDBText
      Left = 96
      Top = 210
      Width = 337
      Height = 17
      DataField = 'DescricaoAMB'
      DataSource = dsAmbIni
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object AmbTextoFim: TDBText
      Left = 96
      Top = 234
      Width = 337
      Height = 17
      DataField = 'DescricaoAMB'
      DataSource = dsAmbFim
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 8
      Top = 112
      Width = 340
      Height = 21
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospitalIni
      TabOrder = 4
    end
    object cmpPacienteIni: TDBLookupComboBox
      Left = 8
      Top = 157
      Width = 340
      Height = 21
      KeyField = 'Paciente'
      ListField = 'Nome'
      ListSource = dsPacienteInicial
      TabOrder = 6
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 8
      Top = 22
      Width = 340
      Height = 21
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
      OnCloseUp = cmpClienteIniCloseUp
    end
    object chkHospital: TCheckBox
      Left = 8
      Top = 94
      Width = 200
      Height = 17
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 3
      OnClick = chkHospitalClick
    end
    object chkPaciente: TCheckBox
      Left = 8
      Top = 140
      Width = 200
      Height = 17
      Caption = 'Todos os Paciente ou selecione:'
      TabOrder = 5
      OnClick = chkPacienteClick
    end
    object Edit1: TEdit
      Left = 110
      Top = 404
      Width = 37
      Height = 21
      TabOrder = 12
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 147
      Top = 404
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 13
      Wrap = True
    end
    object Edit2: TEdit
      Left = 164
      Top = 404
      Width = 41
      Height = 21
      TabOrder = 14
      Text = '2002'
    end
    object UpDown2: TUpDown
      Left = 205
      Top = 404
      Width = 16
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 15
      Thousands = False
    end
    object Edit3: TEdit
      Left = 228
      Top = 404
      Width = 37
      Height = 21
      TabOrder = 16
      Text = '1'
    end
    object UpDown3: TUpDown
      Left = 265
      Top = 404
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 17
      Wrap = True
    end
    object Edit4: TEdit
      Left = 282
      Top = 404
      Width = 41
      Height = 21
      TabOrder = 18
      Text = '2002'
    end
    object UpDown4: TUpDown
      Left = 323
      Top = 404
      Width = 16
      Height = 21
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 19
      Thousands = False
    end
    object rdgAnalise: TRadioGroup
      Left = 4
      Top = 351
      Width = 440
      Height = 35
      Caption = 'Selecione'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Pr'#233'-An'#225'lise'
        'P'#243's-An'#225'lise'
        'Ambos')
      TabOrder = 11
    end
    object cmpCodIni: TEdit
      Left = 30
      Top = 205
      Width = 59
      Height = 21
      TabOrder = 8
      Text = '0'
      OnChange = cmpCodIniChange
    end
    object cmpCodFim: TEdit
      Left = 30
      Top = 229
      Width = 59
      Height = 21
      TabOrder = 9
      Text = '0'
      OnChange = cmpCodFimChange
    end
    object grdAmb: TDBGrid
      Left = 4
      Top = 254
      Width = 440
      Height = 95
      Hint = 
        'Click no bot'#227'o direito do mouse para atribuir a AMB aos Campos I' +
        'nicial e Final'
      DataSource = dsAmb
      FixedColor = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clHighlightText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodAMB'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoAMB'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o'
          Width = 341
          Visible = True
        end>
    end
    object chkAmb: TCheckBox
      Left = 8
      Top = 187
      Width = 257
      Height = 17
      Caption = 'Todos os Procedimentos AMB ou selecione:'
      TabOrder = 7
      OnClick = chkAmbClick
    end
    object chkClienteID: TCheckBox
      Left = 9
      Top = 48
      Width = 280
      Height = 17
      Caption = 'Todos os Identificadores do Cliente ou selecione'
      TabOrder = 1
      OnClick = chkClienteIDClick
    end
    object cmpClienteID: TDBLookupComboBox
      Left = 8
      Top = 67
      Width = 340
      Height = 21
      KeyField = 'ID'
      ListField = 'ID'
      ListSource = dsClienteID
      TabOrder = 2
    end
  end
  object cmdRelCodigo: TBitBtn
    Left = 62
    Top = 442
    Width = 150
    Height = 25
    Caption = 'Resumo'
    Default = True
    TabOrder = 0
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
    Left = 238
    Top = 442
    Width = 150
    Height = 25
    Caption = 'Detalhado'
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
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
  object dbHospitalIni: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 299
    Top = 8
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
    Left = 331
    Top = 8
  end
  object dbPacienteIni: TMSTable
    TableName = 'dbo.Pacientes'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome;IDPaciente'
    Left = 298
    Top = 72
    object dbPacienteIniPaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object dbPacienteIniNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object dsPacienteInicial: TDataSource
    DataSet = dbPacienteIni
    Left = 330
    Top = 72
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 298
    Top = 40
    object dbClienteIniCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteIniNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbClienteIniDiarias: TIntegerField
      FieldName = 'Diarias'
    end
    object dbClienteIniDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
    end
  end
  object dsClienteIni: TDataSource
    DataSet = dbClienteIni
    Left = 330
    Top = 40
  end
  object dbAmbIni: TMSTable
    TableName = 'dbo.Amb'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'CodAMB'
    Left = 361
    Top = 6
    object dbAmbIniCodAMB: TIntegerField
      FieldName = 'CodAMB'
      Required = True
    end
    object dbAmbIniDescricaoAMB: TStringField
      FieldName = 'DescricaoAMB'
      Size = 60
    end
  end
  object dsAmbIni: TDataSource
    DataSet = dbAmbIni
    Left = 393
    Top = 8
  end
  object dbAmbFim: TMSTable
    TableName = 'dbo.Amb'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'CodAMB'
    Left = 361
    Top = 40
    object dbAmbFimCodAMB: TIntegerField
      FieldName = 'CodAMB'
      Required = True
    end
    object dbAmbFimDescricaoAMB: TStringField
      FieldName = 'DescricaoAMB'
      Size = 60
    end
  end
  object dsAmbFim: TDataSource
    DataSet = dbAmbFim
    Left = 393
    Top = 40
  end
  object dbAmb: TMSTable
    TableName = 'dbo.Amb'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'DescricaoAMB'
    Left = 361
    Top = 72
    object dbAmbCodAMB: TIntegerField
      FieldName = 'CodAMB'
      Required = True
    end
    object dbAmbDescricaoAMB: TStringField
      FieldName = 'DescricaoAMB'
      Size = 60
    end
  end
  object dsAmb: TDataSource
    DataSet = dbAmb
    Left = 393
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 8
    object AMBInicial1: TMenuItem
      Caption = 'AMB Inicial'
      OnClick = AMBInicial1Click
    end
    object AMBFinal1: TMenuItem
      Caption = 'AMB Final'
      OnClick = AMBFinal1Click
    end
  end
  object dbClienteID: TMSTable
    TableName = 'dbo.ClienteID'
    MasterFields = 'Cliente'
    MasterSource = dsClienteIni
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 360
    Top = 103
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
    Left = 392
    Top = 103
  end
end
