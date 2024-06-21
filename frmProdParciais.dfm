object frmProdParcial: TfrmProdParcial
  Left = 437
  Top = 154
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Acerto de Produtividade - Parciais'
  ClientHeight = 553
  ClientWidth = 783
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label4: TLabel
    Left = 0
    Top = 122
    Width = 783
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Metodo 1'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 0
    Top = 294
    Width = 783
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Metodo 2'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 122
    Align = alTop
    TabOrder = 0
    object cmpCodClienteIni: TDBText
      Left = 555
      Top = 30
      Width = 49
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
      Left = 222
      Top = 6
      Width = 41
      Height = 16
      Caption = 'Cliente'
    end
    object cmpCodHospitalIni: TDBText
      Left = 555
      Top = 82
      Width = 49
      Height = 21
      Alignment = taRightJustify
      DataField = 'Hospital'
      DataSource = dsHospital
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmpClienteIni: TDBLookupComboBox
      Left = 222
      Top = 26
      Width = 328
      Height = 24
      KeyField = 'Cliente'
      ListField = 'Nome'
      ListSource = dsClienteIni
      TabOrder = 0
    end
    object chkHospital: TCheckBox
      Left = 222
      Top = 57
      Width = 246
      Height = 21
      Caption = 'Todos os Hospitais ou selecione'
      TabOrder = 1
      OnClick = chkHospitalClick
    end
    object cmpHospitalIni: TDBLookupComboBox
      Left = 222
      Top = 80
      Width = 328
      Height = 24
      KeyField = 'Hospital'
      ListField = 'Nome'
      ListSource = dsHospital
      TabOrder = 2
    end
  end
  object cmdRestaura: TBitBtn
    Left = 290
    Top = 508
    Width = 185
    Height = 31
    Caption = 'Restaurar Servicos'
    TabOrder = 1
    OnClick = cmdRestauraClick
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000D30E0000D30E00000001000000010000AD4A0000B54A
      0000B5520000BD520000BD5A0000C65A0000C6630000CE630000CE6B0000D673
      0000DE730000DE7B0000E77B0000E7840000F7940000CE6B0800FF9C0800A542
      1000AD4A1000B5521000C6631000B55A2100CE732100B55A3100BD633100FFAD
      3100CE7B3900BD6B4200C6734200CE844200CE844A00BD735200BD7B5200C67B
      5200C6845A00C6846300FFBD6300C68C7300CE947B00CE9C8400FF00FF00FFFF
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
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00282828282828
      2828281F05002828282828282828282828282817050713282828282828282828
      2828282817060715282828282828282828282828281507062328280004040404
      040404232828000701282802090807070707061B28282706062328040B090711
      2727272828282800071328060D070A07232828282828281C070128070E13020B
      082028282828281C0701280F101D28020D0818282828280107132816191E2828
      140D0C03212513060623281A2421282828150C0D0B0908061228282622282828
      282827140808041B282828282828282828282828282828282828282828282828
      2828282828282828282828282828282828282828282828282828}
  end
  object Panel2: TPanel
    Left = 0
    Top = 138
    Width = 783
    Height = 156
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 255
      Top = 15
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Caption = '1a. Parcial'
    end
    object Label2: TLabel
      Left = 250
      Top = 43
      Width = 68
      Height = 16
      Alignment = taRightJustify
      Caption = 'Seguinte(s)'
    end
    object Label3: TLabel
      Left = 230
      Top = 74
      Width = 88
      Height = 16
      Alignment = taRightJustify
      Caption = 'Todas demais'
    end
    object DBText1: TDBText
      Left = 406
      Top = 12
      Width = 139
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 406
      Top = 41
      Width = 139
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 406
      Top = 71
      Width = 139
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbQtd: TEdit
      Left = 190
      Top = 38
      Width = 24
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object UpDown1: TUpDown
      Left = 214
      Top = 38
      Width = 20
      Height = 26
      Associate = cmbQtd
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 1
      Wrap = True
    end
    object cmbServico3: TDBLookupComboBox
      Left = 325
      Top = 69
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico3
      TabOrder = 2
    end
    object cmbServico2: TDBLookupComboBox
      Left = 325
      Top = 38
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico2
      TabOrder = 3
    end
    object cmbServico1: TDBLookupComboBox
      Left = 325
      Top = 10
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico1
      TabOrder = 4
    end
    object cmdAtualiza1: TBitBtn
      Left = 290
      Top = 103
      Width = 185
      Height = 31
      Caption = 'Atualizar Servi'#231'os'
      TabOrder = 5
      OnClick = cmdAtualiza1Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
        C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
        EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
        F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
        FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
        FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
        FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
        FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
        FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
        FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
        FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
        1818181818181818181818181802181818181818181818181818181818090201
        18181818181818181818181818061A0F02181818181818181818181818181E1C
        1C0218181818181818181818181818271C1D0202181818181818181818181818
        272E1E1E02181818181818181818181818272B241E0218181818181818180202
        022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
        3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
        1836444A43322702181818181818181818181836433F241F0218181818181818
        1818181818363A34230218181818181818181818181818362202}
    end
    object prgBar: TProgressBar
      Left = 1
      Top = 146
      Width = 781
      Height = 9
      Align = alBottom
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 310
    Width = 783
    Height = 188
    Align = alTop
    TabOrder = 3
    object Label7: TLabel
      Left = 130
      Top = 47
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Caption = '1a. Parcial'
    end
    object lblLimite: TLabel
      Left = 105
      Top = 75
      Width = 88
      Height = 16
      Alignment = taRightJustify
      Caption = '= 4 Seguinte(s)'
    end
    object Label9: TLabel
      Left = 105
      Top = 106
      Width = 88
      Height = 16
      Alignment = taRightJustify
      Caption = 'Todas demais'
    end
    object DBText3: TDBText
      Left = 279
      Top = 44
      Width = 100
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 279
      Top = 73
      Width = 100
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 279
      Top = 103
      Width = 100
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 58
      Top = 14
      Width = 90
      Height = 16
      Alignment = taRightJustify
      Caption = 'Limite de at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 210
      Top = 14
      Width = 53
      Height = 16
      Alignment = taRightJustify
      Caption = 'di'#225'rias '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 433
      Top = 14
      Width = 107
      Height = 16
      Alignment = taRightJustify
      Caption = 'Acima do limite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 655
      Top = 44
      Width = 104
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 655
      Top = 73
      Width = 104
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 655
      Top = 103
      Width = 104
      Height = 21
      DataField = 'Nome'
      DataSource = dsServico9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 482
      Top = 106
      Width = 88
      Height = 16
      Alignment = taRightJustify
      Caption = 'Todas demais'
    end
    object Label14: TLabel
      Left = 507
      Top = 47
      Width = 63
      Height = 16
      Alignment = taRightJustify
      Caption = '1a. Parcial'
    end
    object Label16: TLabel
      Left = 3
      Top = 75
      Width = 47
      Height = 16
      Alignment = taRightJustify
      Caption = 'Diarias/'
    end
    object Label17: TLabel
      Left = 384
      Top = 75
      Width = 47
      Height = 16
      Alignment = taRightJustify
      Caption = 'Diarias/'
    end
    object lblAcima: TLabel
      Left = 482
      Top = 75
      Width = 88
      Height = 16
      Alignment = taRightJustify
      Caption = '= 4 Seguinte(s)'
    end
    object cmbQtd2L: TEdit
      Left = 54
      Top = 70
      Width = 25
      Height = 21
      TabOrder = 0
      Text = '7'
      OnChange = cmbQtd2LChange
    end
    object UpDown2: TUpDown
      Left = 79
      Top = 70
      Width = 19
      Height = 26
      Associate = cmbQtd2L
      Min = 1
      Max = 12
      Position = 7
      TabOrder = 1
      Wrap = True
    end
    object cmbServico6: TDBLookupComboBox
      Left = 197
      Top = 101
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico6
      TabOrder = 2
    end
    object cmbServico5: TDBLookupComboBox
      Left = 197
      Top = 70
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico5
      TabOrder = 3
    end
    object cmbServico4: TDBLookupComboBox
      Left = 197
      Top = 42
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico4
      TabOrder = 4
    end
    object cmdAtualiza2: TBitBtn
      Left = 290
      Top = 138
      Width = 185
      Height = 31
      Caption = 'Atualizar Servi'#231'os'
      TabOrder = 5
      OnClick = cmdAtualiza2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000D30E0000D30E000000010000000100004A7BB500296B
        C600527BC600186BD600528CD6003194D600397BE7005284E700107BEF00317B
        EF001084EF0029ADEF0039ADEF0010B5EF0008BDEF000073F7001873F7002973
        F7000884F7000894F70018A5F70000CEF70018DEF70063DEF700FF00FF000073
        FF00007BFF000084FF00008CFF000094FF00009CFF0000A5FF0010A5FF0039A5
        FF0052A5FF005AA5FF0000ADFF0029ADFF0031ADFF0000B5FF006BB5FF0084B5
        FF0000BDFF0008BDFF0010BDFF0000C6FF0008C6FF006BC6FF0000CEFF0018CE
        FF0000D6FF0008D6FF0010D6FF0021D6FF0031D6FF0000DEFF0018DEFF0029DE
        FF0042DEFF0000E7FF0010E7FF0018E7FF0039E7FF0000EFFF0018EFFF0039EF
        FF004AEFFF0000F7FF0008F7FF0029F7FF0031F7FF0042F7FF004AF7FF005AF7
        FF0000FFFF0008FFFF0018FFFF0021FFFF0031FFFF0039FFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
        1818181818181818181818181802181818181818181818181818181818090201
        18181818181818181818181818061A0F02181818181818181818181818181E1C
        1C0218181818181818181818181818271C1D0202181818181818181818181818
        272E1E1E02181818181818181818181818272B241E0218181818181818180202
        022D4B462C240202181818181818252D3F43434A42311F02181818181818212D
        3F433F374A4A412E021818181818182E3E42474C4A4A4B4D0218181818181818
        1836444A43322702181818181818181818181836433F241F0218181818181818
        1818181818363A34230218181818181818181818181818362202}
    end
    object prgBar2: TProgressBar
      Left = 1
      Top = 178
      Width = 781
      Height = 9
      Align = alBottom
      TabOrder = 6
    end
    object cmbLimite: TEdit
      Left = 154
      Top = 9
      Width = 24
      Height = 21
      TabOrder = 7
      Text = '30'
    end
    object UpDown3: TUpDown
      Left = 178
      Top = 9
      Width = 20
      Height = 25
      Associate = cmbLimite
      Min = 1
      Position = 30
      TabOrder = 8
      Wrap = True
    end
    object UpDown4: TUpDown
      Left = 79
      Top = 42
      Width = 19
      Height = 26
      Associate = cmbQtd1L
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 9
      Wrap = True
    end
    object cmbQtd1L: TEdit
      Left = 54
      Top = 42
      Width = 25
      Height = 21
      TabOrder = 10
      Text = '1'
      OnChange = cmbQtd2LChange
    end
    object cmbQtd1A: TEdit
      Left = 432
      Top = 42
      Width = 25
      Height = 21
      TabOrder = 11
      Text = '1'
      OnChange = cmbQtd2AChange
    end
    object UpDown5: TUpDown
      Left = 457
      Top = 42
      Width = 19
      Height = 26
      Associate = cmbQtd1A
      Min = 1
      Max = 12
      Position = 1
      TabOrder = 12
      Wrap = True
    end
    object cmbQtd2A: TEdit
      Left = 433
      Top = 70
      Width = 25
      Height = 21
      TabOrder = 13
      Text = '7'
      OnChange = cmbQtd2AChange
    end
    object UpDown6: TUpDown
      Left = 458
      Top = 70
      Width = 20
      Height = 26
      Associate = cmbQtd2A
      Min = 1
      Max = 12
      Position = 7
      TabOrder = 14
      Wrap = True
    end
    object cmbServico9: TDBLookupComboBox
      Left = 572
      Top = 101
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico9
      TabOrder = 15
    end
    object cmbServico8: TDBLookupComboBox
      Left = 572
      Top = 70
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico8
      TabOrder = 16
    end
    object cmbServico7: TDBLookupComboBox
      Left = 572
      Top = 42
      Width = 80
      Height = 24
      KeyField = 'Servico'
      ListField = 'Servico'
      ListSource = dsServico7
      TabOrder = 17
    end
  end
  object prgBar3: TProgressBar
    Left = 0
    Top = 544
    Width = 783
    Height = 9
    Align = alBottom
    TabOrder = 4
  end
  object dbClienteIni: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 462
    Top = 9
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
    Left = 494
    Top = 9
  end
  object qryParcial: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select cliente, hospital, paciente, senha,Produtividade,'
      'count(AtendimentoHI) as Qtd, sum(Diarias) as Diarias'
      'from AtendHI'
      'where Produtividade=19'
      'group by cliente, hospital, paciente, senha, Produtividade'
      'having count(AtendimentoHI)>1'
      'order by cliente, hospital, paciente, senha')
    Left = 12
    Top = 120
    object qryParcialcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'AtendHI.cliente'
    end
    object qryParcialhospital: TIntegerField
      FieldName = 'hospital'
      Origin = 'AtendHI.hospital'
    end
    object qryParcialpaciente: TIntegerField
      FieldName = 'paciente'
      Origin = 'AtendHI.paciente'
    end
    object qryParcialsenha: TStringField
      FieldName = 'senha'
      Origin = 'AtendHI.senha'
      FixedChar = True
      Size = 10
    end
    object qryParcialQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryParcialClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = frmProdutividade.dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'cliente'
      Size = 40
      Lookup = True
    end
    object qryParcialHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = frmProdutividade.dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'hospital'
      Size = 40
      Lookup = True
    end
    object qryParcialPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dmRelatorio.dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'paciente'
      Size = 40
      Lookup = True
    end
    object qryParcialProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryParcialDiarias: TFloatField
      FieldName = 'Diarias'
      ReadOnly = True
    end
  end
  object qryProd: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'order by Produtividade,DataInternacao,AtendimentoHI')
    MasterSource = dsParcial
    MasterFields = 'paciente;senha'
    DetailFields = 'Paciente;Senha'
    Left = 14
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'paciente'
      end
      item
        DataType = ftUnknown
        Name = 'senha'
      end>
    object qryProdCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 10
    end
    object qryProdHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object qryProdMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object qryProdEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object qryProdMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object qryProdAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object qryProdDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object qryProdDataAlta: TDateTimeField
      FieldName = 'DataAlta'
    end
    object qryProdServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object qryProdProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryProdMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = frmProdutividade.dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 40
      Lookup = True
    end
    object qryProdEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = frmProdutividade.dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryProdParcial: TWordField
      FieldName = 'Parcial'
    end
    object qryProdDiarias: TFloatField
      FieldName = 'Diarias'
    end
  end
  object dsParcial: TDataSource
    DataSet = qryParcial
    Left = 43
    Top = 120
  end
  object dbServico1: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico1FilterRecord
    IndexFieldNames = 'Servico'
    Left = 467
    Top = 114
    object dbServico1Servico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico1Vinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      FixedChar = True
      Size = 1
    end
    object dbServico1Valorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
  end
  object dsServico1: TDataSource
    DataSet = dbServico1
    Left = 499
    Top = 114
  end
  object dbServico2: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico2FilterRecord
    IndexFieldNames = 'Servico'
    Left = 467
    Top = 146
    object dbServico2Servico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico2Nome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico2Vinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      FixedChar = True
      Size = 1
    end
    object dbServico2Valorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
  end
  object dsServico2: TDataSource
    DataSet = dbServico2
    Left = 499
    Top = 146
  end
  object dbServico3: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico3FilterRecord
    IndexFieldNames = 'Servico'
    Left = 467
    Top = 178
    object dbServico3Servico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico3Nome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico3Vinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      FixedChar = True
      Size = 1
    end
    object dbServico3Valorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
  end
  object dsServico3: TDataSource
    DataSet = dbServico3
    Left = 499
    Top = 178
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 467
    Top = 48
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dsHospital: TDataSource
    DataSet = dbHospital
    Left = 497
    Top = 49
  end
  object dbServico4: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico1FilterRecord
    IndexFieldNames = 'Servico'
    Left = 251
    Top = 266
    object dbServico4Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico4Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico4Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico4Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico4Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dbServico5: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico2FilterRecord
    IndexFieldNames = 'Servico'
    Left = 251
    Top = 298
    object dbServico5Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico5Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico5Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico5Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico5Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico5: TDataSource
    DataSet = dbServico5
    Left = 283
    Top = 298
  end
  object dbServico6: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico3FilterRecord
    IndexFieldNames = 'Servico'
    Left = 251
    Top = 330
    object dbServico6Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico6Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico6Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico6Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico6Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico6: TDataSource
    DataSet = dbServico6
    Left = 283
    Top = 330
  end
  object dsServico4: TDataSource
    DataSet = dbServico4
    Left = 283
    Top = 266
  end
  object dbServico7: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico1FilterRecord
    IndexFieldNames = 'Servico'
    Left = 555
    Top = 266
    object dbServico7Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico7Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico7Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico7Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico7Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dbServico8: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico2FilterRecord
    IndexFieldNames = 'Servico'
    Left = 555
    Top = 298
    object dbServico8Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico8Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico8Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico8Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico8Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico8: TDataSource
    DataSet = dbServico8
    Left = 587
    Top = 298
  end
  object dbServico9: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServico3FilterRecord
    IndexFieldNames = 'Servico'
    Left = 555
    Top = 330
    object dbServico9Servico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbServico9Nome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 30
    end
    object dbServico9Valorizado: TBooleanField
      FieldName = 'Valorizado'
    end
    object dbServico9Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbServico9Vinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico9: TDataSource
    DataSet = dbServico9
    Left = 587
    Top = 330
  end
  object dsServico7: TDataSource
    DataSet = dbServico7
    Left = 587
    Top = 266
  end
  object dsProd: TDataSource
    DataSet = qryParcial
    Left = 43
    Top = 152
  end
end
