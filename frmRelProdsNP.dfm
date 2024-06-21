object frmRelProdNP: TfrmRelProdNP
  Left = 440
  Top = 66
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Produtividade N'#227'o Paga'
  ClientHeight = 118
  ClientWidth = 321
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
    Width = 321
    Height = 81
    Align = alTop
    BorderWidth = 4
    TabOrder = 0
    object Label5: TLabel
      Left = 43
      Top = 9
      Width = 92
      Height = 13
      Caption = 'Compet'#234'ncia Inicial'
    end
    object Edit1: TEdit
      Left = 43
      Top = 23
      Width = 37
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object Edit2: TEdit
      Left = 97
      Top = 23
      Width = 41
      Height = 21
      TabOrder = 2
      Text = '2002'
    end
    object UpDown1: TUpDown
      Left = 80
      Top = 23
      Width = 13
      Height = 21
      Associate = Edit1
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 1
      Wrap = True
    end
    object UpDown2: TUpDown
      Left = 138
      Top = 23
      Width = 13
      Height = 21
      Associate = Edit2
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 3
      Thousands = False
    end
    object Edit3: TEdit
      Left = 168
      Top = 23
      Width = 37
      Height = 21
      TabOrder = 4
      Text = '1'
    end
    object UpDown4: TUpDown
      Left = 205
      Top = 23
      Width = 16
      Height = 21
      Associate = Edit3
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 5
      Wrap = True
    end
    object Edit4: TEdit
      Left = 222
      Top = 23
      Width = 41
      Height = 21
      TabOrder = 6
      Text = '2002'
    end
    object UpDown5: TUpDown
      Left = 263
      Top = 23
      Width = 16
      Height = 21
      Associate = Edit4
      Min = 1980
      Max = 2100
      Position = 2002
      TabOrder = 7
      Thousands = False
    end
    object rdgTipo: TRadioGroup
      Left = 5
      Top = 45
      Width = 311
      Height = 31
      Align = alBottom
      Caption = 'Selecione'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Medicos'
        'Enfermeiros')
      TabOrder = 8
    end
  end
  object BitBtn2: TBitBtn
    Left = 86
    Top = 87
    Width = 150
    Height = 25
    Caption = 'Imprimir'
    Default = True
    TabOrder = 1
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
  object qryProdNP: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI')
    Left = 4
    Top = 88
    object qryProdNPCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHI.DB".Cliente'
    end
    object qryProdNPAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdNPPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'BB."BBAtendimentoHI.DB".Paciente'
    end
    object qryProdNPHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHI.DB".Hospital'
    end
    object qryProdNPMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'BB."BBAtendimentoHI.DB".Medico'
    end
    object qryProdNPEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'BB."BBAtendimentoHI.DB".Enfermeiro'
    end
    object qryProdNPMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'BB."BBAtendimentoHI.DB".MesCompetencia'
    end
    object qryProdNPAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'BB."BBAtendimentoHI.DB".AnoCompetencia'
    end
    object qryProdNPObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'BB."BBAtendimentoHI.DB".Observacao'
      BlobType = ftMemo
      Size = 40
    end
    object qryProdNPPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dmRelatorio.dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object qryProdNPHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dmRelatorio.dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object qryProdNPMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dmRelatorio.dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 40
      Lookup = True
    end
    object qryProdNPEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dmRelatorio.dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryProdNPClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dmRelatorio.dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object qryProdNPDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
    end
    object qryProdNPDataAlta: TDateTimeField
      FieldName = 'DataAlta'
    end
  end
  object rvProdNP: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdNP
    Left = 36
    Top = 88
  end
end
