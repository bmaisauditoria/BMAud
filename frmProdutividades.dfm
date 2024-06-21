object frmProdutividade: TfrmProdutividade
  Left = 206
  Top = 8
  Width = 1258
  Height = 800
  Caption = 'Produtividade Prestadores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tabProd: TTabControl
    Left = 0
    Top = 142
    Width = 1250
    Height = 331
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'M'#233'dicos'
      'Medicos Zerados'
      'M'#233'dicos Lan'#231'ados'
      'Enfermeiros'
      'Enfermeiros Zerados'
      'Enfermeiros Lan'#231'ados')
    TabIndex = 0
    OnChange = tabProdChange
    object grdProd: TDBGrid
      Left = 34
      Top = 75
      Width = 1212
      Height = 252
      Align = alClient
      DataSource = dsProdM
      FixedColor = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdProdDrawColumnCell
      OnTitleClick = grdProdTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Auditor'
          Title.Alignment = taRightJustify
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AuditorNome'
          Title.Caption = 'Auditor'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EnfermeiroNome'
          Title.Caption = 'Enfermeiro'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteNome'
          Title.Caption = 'Cliente'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HospitalNome'
          Title.Caption = 'Hospital'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServicoNome'
          Title.Caption = 'Servico'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataInclusao'
          Title.Alignment = taCenter
          Title.Caption = 'Inclus'#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataAlteracao'
          Title.Alignment = taCenter
          Title.Caption = 'Altera'#231#227'o'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UsuarioA'
          Title.Caption = 'Usuario Alt.'
          Width = 65
          Visible = True
        end>
    end
    object CoolBar3: TCoolBar
      Left = 4
      Top = 49
      Width = 1242
      Height = 26
      Bands = <
        item
          Control = cmbMed
          ImageIndex = -1
          MinHeight = 21
          Width = 1238
        end
        item
          Control = cmbEnf
          ImageIndex = -1
          MinHeight = 21
          Width = 1238
        end>
      object cmbMed: TDBLookupComboBox
        Left = 9
        Top = 0
        Width = 1225
        Height = 21
        KeyField = 'Auditor'
        ListField = 'Nome'
        ListSource = dsAuditor
        TabOrder = 0
        OnCloseUp = cmbMedCloseUp
      end
      object cmbEnf: TDBLookupComboBox
        Left = 9
        Top = 23
        Width = 1225
        Height = 21
        KeyField = 'Enfermeiro'
        ListField = 'Nome'
        ListSource = dsEnfermeiro
        TabOrder = 1
        OnCloseUp = cmbEnfCloseUp
      end
    end
    object Panel5: TPanel
      Left = 4
      Top = 75
      Width = 30
      Height = 252
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 2
      object cmdFiltro: TSpeedButton
        Left = 2
        Top = 78
        Width = 25
        Height = 25
        Hint = 'Mostra somente Medicos/Enfermeiros ativos'
        AllowAllUp = True
        BiDiMode = bdLeftToRight
        GroupIndex = 2
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF075507075507FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0755079D
          D9AD47AA22035300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF135F129DD9AD47AA22095B00FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF115E1191
          CE9F41A31F085A00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0F5A0E82CB953CA420075800FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF12842325
          BD5014A628047407FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF138A242BD15E19B8420DA12304910B006800FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF18922B3AE76F27CB5918
          B23C0C9E1D038A06008200006900FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF1C992F4DFF8839E97225CB5816B53A0A9E1A018A03008300008700006A
          00FF00FFFF00FFFF00FFFF00FFFF00FF168E2836DA672CC6551BA1380F8E2707
          7F12047304006A00006900006E00007400006400FF00FFFF00FFFF00FF005200
          0466061566001468010176082A9A3A3ACCCB00C4CE05817F20963521A7371996
          2D067A0E045D08FF00FF004C00005E00748904EB9F22E796117D8F0A0AAA2755
          D48136EBFF00D8FF0D9AA440D7762CD85178C79E12811E004C00FF00FF004C00
          D7A560F3E39EE7CC62D08A0A005303005102468C4D38EDFF005F4F0044004370
          44F75FF43C1339FF00FFFF00FFFF00FFD7B48CFFFFEEF0DD8FD19212FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF9EFFFF03FFAB00AB790179FF00FFFF00FF
          FF00FFC2A072C49541FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBD3
          FBFA2FFA8B008BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFA98FAFF00FFFF00FF}
        ParentShowHint = False
        ParentBiDiMode = False
        ShowHint = True
        OnClick = cmdFiltroClick
      end
      object cmdNovo: TBitBtn
        Left = 3
        Top = 3
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cmdNovoClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000EFA54A00C684
          6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
          8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
          9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
          AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
          B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
          C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
          DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
          09090909090909090937373710302926231A16110E0E0E130937373710302C28
          26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
          292823221A11110E093737371736322E2E2C2826221A11110937373718383432
          2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
          34322E2C28262323093737371D3838383532312E2C282822093737371E383838
          3835323131302719093737371F383838383834342E0D0C0A093737371F383838
          383838362A0204000137373725383838383838382B070503373737371F353434
          343434342A070B37373737371F212121211F1F211C0637373737}
      end
      object cmdGrava: TBitBtn
        Left = 3
        Top = 28
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = cmdGravaClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B00000001000000010000942929009431
          31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
          4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
          5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
          73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
          8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
          A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
          BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
          CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
          E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
          33343433332505050B4848191516111B27384647452D0002131048191515111A
          05184046492E0102121048191515111C03032F42493200011210481915151120
          0601243A493200011210481915151221231D1F27322C04041310481915151515
          1515151313151515160F48190D111E282B292B2828292B26150C481909384544
          4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
          3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
          4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
          4343434343434630130F4848092D3A363636363636363A2A0748}
      end
      object cmdExclui: TBitBtn
        Left = 3
        Top = 53
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = cmdExcluiClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
          7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
          80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
          B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
          82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
          F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
          90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
          5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
          CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
          29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
          00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
          B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
          FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
          00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object Panel8: TPanel
      Left = 4
      Top = 24
      Width = 1242
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object cmbCli: TDBLookupComboBox
        Left = 103
        Top = 2
        Width = 766
        Height = 21
        KeyField = 'Cliente'
        ListField = 'Nome'
        ListSource = dsCliente
        TabOrder = 0
        OnClick = cmbCliClick
        OnCloseUp = cmbCliCloseUp
      end
      object chkCli: TCheckBox
        Left = 6
        Top = 3
        Width = 97
        Height = 17
        Caption = 'Todos clientes'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = chkCliClick
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 473
    Width = 1250
    Height = 11
    Align = alBottom
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 1250
    Height = 265
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 1250
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Auditorias'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object grdEnf: TDBGrid
      Left = 0
      Top = 13
      Width = 1250
      Height = 252
      Align = alClient
      DataSource = dsAtendHIE
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'AtendimentoHI'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Capeante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PacienteNome'
          ReadOnly = True
          Title.Caption = 'Paciente'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInternacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Interna'#231#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataAlta'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ParcialTexto'
          Title.Alignment = taCenter
          Title.Caption = 'Parcial'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInicioP'
          Title.Alignment = taCenter
          Title.Caption = 'Inicio Parcial'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DayClinicTexto'
          Title.Alignment = taCenter
          Title.Caption = 'DayClinic'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServicoTexto'
          Title.Caption = 'Servico'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UsuarioI'
          ReadOnly = True
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          ReadOnly = True
          Width = 80
          Visible = True
        end>
    end
    object grdMed: TDBGrid
      Left = 0
      Top = 13
      Width = 1250
      Height = 252
      Align = alClient
      DataSource = dsAtendHIM
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = grdMedDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'AtendimentoHI'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Capeante'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PacienteNome'
          ReadOnly = True
          Title.Caption = 'Paciente'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInternacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Interna'#231#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataAlta'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ParcialTexto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Parcial'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInicioP'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Inicio Parcial'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DayClinicTexto'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'DayClinic'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ComplementoTexto'
          Title.Alignment = taCenter
          Title.Caption = 'Compto.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServicoTexto'
          Title.Caption = 'Servico'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UsuarioI'
          ReadOnly = True
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          ReadOnly = True
          Width = 80
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 29
    Width = 1250
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 3
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 582
      Height = 113
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object Label3: TLabel
        Left = 0
        Top = 0
        Width = 582
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fechamento Produtividade'
        Color = 11206642
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel7: TPanel
        Left = 0
        Top = 13
        Width = 29
        Height = 100
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object cmdNovoP: TBitBtn
          Left = 3
          Top = 3
          Width = 25
          Height = 25
          Hint = 'Nova Produtividade'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cmdNovoPClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000EFA54A00C684
            6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
            8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
            9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
            AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
            B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
            C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
            DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
            09090909090909090937373710302926231A16110E0E0E130937373710302C28
            26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
            292823221A11110E093737371736322E2E2C2826221A11110937373718383432
            2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
            34322E2C28262323093737371D3838383532312E2C282822093737371E383838
            3835323131302719093737371F383838383834342E0D0C0A093737371F383838
            383838362A0204000137373725383838383838382B070503373737371F353434
            343434342A070B37373737371F212121211F1F211C0637373737}
        end
        object cmdGravaP: TBitBtn
          Left = 3
          Top = 28
          Width = 25
          Height = 25
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cmdGravaPClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000942929009431
            31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
            4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
            5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
            73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
            8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
            A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
            BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
            CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
            E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
            33343433332505050B4848191516111B27384647452D0002131048191515111A
            05184046492E0102121048191515111C03032F42493200011210481915151120
            0601243A493200011210481915151221231D1F27322C04041310481915151515
            1515151313151515160F48190D111E282B292B2828292B26150C481909384544
            4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
            3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
            4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
            4343434343434630130F4848092D3A363636363636363A2A0748}
        end
        object cmdExcluiP: TBitBtn
          Left = 3
          Top = 53
          Width = 25
          Height = 25
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cmdExcluiPClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
            7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
            80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
            B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
            82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
            F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
            90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
            5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
            CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
            29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
            00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
            B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
            FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
            00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
      object grdProdutividade: TDBGrid
        Left = 29
        Top = 13
        Width = 553
        Height = 100
        Align = alClient
        DataSource = dsProd
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdProdutividadeDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MesCompetencia'
            Title.Alignment = taCenter
            Title.Caption = 'Mes'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AnoCompetencia'
            Title.Alignment = taCenter
            Title.Caption = 'Ano'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataInclusao'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Inclus'#227'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            ReadOnly = True
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StatusTexto'
            ReadOnly = True
            Title.Caption = 'Status'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produtividade'
            Title.Alignment = taRightJustify
            Width = 99
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 582
      Top = 0
      Width = 668
      Height = 113
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 1
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 668
        Height = 13
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Clientes Finalizados para Lan'#231'amentos de Capeantes'
        Color = 11206642
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel6: TPanel
        Left = 0
        Top = 13
        Width = 29
        Height = 100
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object cmdNovoC: TBitBtn
          Left = 3
          Top = 3
          Width = 25
          Height = 25
          Hint = 'Nova Produtividade'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = cmdNovoCClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000EFA54A00C684
            6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00CE9C7B00B584
            8400B58C8400CE9C8400B5948C00C6A59400EFCE9400F7CE9400C6A59C00EFCE
            9C00F7CE9C00F7D69C00C6ADA500CEADA500F7D6A500CEB5AD00D6B5AD00C6BD
            AD00F7D6AD00F7DEAD00D6BDB500DEBDB500DEC6B500E7C6B500EFC6B500EFCE
            B500F7D6B500F7DEB500FFDEB500EFCEBD00F7DEBD00E7DEC600F7DEC600F7E7
            C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
            DE00FFEFE700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00373709090909
            09090909090909090937373710302926231A16110E0E0E130937373710302C28
            26221611110E0E110937373714322E2C2826221A11110E110937373714332E2C
            292823221A11110E093737371736322E2E2C2826221A11110937373718383432
            2E2C2928261A1616093737371C383534312E2C292826221A093737371C383835
            34322E2C28262323093737371D3838383532312E2C282822093737371E383838
            3835323131302719093737371F383838383834342E0D0C0A093737371F383838
            383838362A0204000137373725383838383838382B070503373737371F353434
            343434342A070B37373737371F212121211F1F211C0637373737}
        end
        object cmdExcluiC: TBitBtn
          Left = 3
          Top = 54
          Width = 25
          Height = 25
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cmdExcluiCClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B7
            7DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFF1B77DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B9
            80F1B77DF1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1
            B77DFFFCD8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B9
            82F1B77CF1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFE
            F5D4FFFBDAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C6
            90F3C48CF1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC7
            5C00D57A24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2
            CCFCECC5F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFE69C5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D
            29006600FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF
            00FF0066000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395
            B3764CB08581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00
            FFFF00FFFF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF
            00FFFF00FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            B27954B58A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdGravaC: TBitBtn
          Left = 3
          Top = 28
          Width = 25
          Height = 25
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cmdGravaCClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B00000001000000010000942929009431
            31009C3131009C393900A53939009C4242009C4A4A00A54A4A00B54A4A00AD52
            4A00B5524A00A5525200AD525200B5525200B55A5200AD525A00AD5A5A00B55A
            5A00BD5A5A00C65A5A00CE5A5A00CE636300CE6B6B00D66B6B00B5737300BD7B
            73009C7B7B009C848400AD848400B5848400C6848400AD8C8C00B58C8C00C694
            8C00AD949400C6949400A59C9C00B59C9C00D69C9C00BDA5A500D6A5A500D6AD
            A500CEADAD00D6ADAD00DEADAD00CEB5B500D6B5B500CEBDBD00DEBDBD00E7BD
            BD00E7C6C600C6CEC600CECEC600C6CECE00CECECE00D6CECE00E7CECE00E7D6
            CE00D6D6D600DED6D600EFD6D600DEDED600D6DEDE00DEDEDE00E7DEDE00E7E7
            E700EFEFEF00F7EFEF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004848100C0722
            33343433332505050B4848191516111B27384647452D0002131048191515111A
            05184046492E0102121048191515111C03032F42493200011210481915151120
            0601243A493200011210481915151221231D1F27322C04041310481915151515
            1515151313151515160F48190D111E282B292B2828292B26150C481909384544
            4545454545454530130F48190A3C46434343434343434530130F48190A3C423A
            3A3A3A3A3A3A4230130F48190A3C423B3F3F3F3F3F3B4230130F48190A3C4440
            4040404040404230130F48190A3C423A3A3A3A3A3A3A4230130F48190A394643
            4343434343434630130F4848092D3A363636363636363A2A0748}
        end
      end
      object grdProdCli: TDBGrid
        Left = 29
        Top = 13
        Width = 639
        Height = 100
        Align = alClient
        DataSource = dsProdCli
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = grdProdCliDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ClienteID'
            Title.Caption = 'Cliente'
            Width = 128
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lancamento'
            ReadOnly = True
            Title.Caption = 'Lan'#231'amentos '
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fechamento'
            PickList.Strings = (
              'Aberto'
              'Fechado')
            Title.Caption = 'Fechamentos da Produtividade'
            Width = 202
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DataInclusao'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Inclus'#227'o'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            ReadOnly = True
            Width = 70
            Visible = True
          end>
      end
    end
  end
  object Panel59: TPanel
    Left = 0
    Top = 0
    Width = 1250
    Height = 29
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 4
    object cmdSeleciona: TBitBtn
      Left = 8
      Top = 2
      Width = 130
      Height = 25
      Hint = 'Gera Remessa de Dados'
      Caption = 'Selecionar dados'
      TabOrder = 0
      OnClick = cmdSelecionaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B00000001000000010000EFA54A00C684
        6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
        8400CE9C8400EFCE94009C9C9C00C6A59C00EFCE9C00F7D69C00C6ADA500F7D6
        A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6B500E7C6
        B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00527BC600E7DEC600F7DE
        C600F7E7C600E7CECE00E7D6CE00F7E7D600FFEFD600DEDEDE00FFEFE700FFF7
        E700FFF7EF00FFF7F700FFFFF700FF00FF0039A5FF0000F7FF0094FFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D08080808
        0808080808080808082D2D2D0D261F1F1C15110E0B0B0B0F082D2D2D0D262F1F
        1F0C0C0C0C0C0C0E082D2D2D10282E2F1F1F1F150E0E0B0E082D2D2D1029252E
        302F1F1F150E0E0B082D2D2D121F1F1F1F302F1F1F0C0C0E082D2D2D132E302F
        2F2F2F2F1F1F1111082D2D2D16312E302F1F1F22211E1B15082D2D2D1631272E
        302F1F1F0C0C0C1C082D2D2D1731312E302F2F1F1F21211B082D2D2D18313131
        2E302F2F1F1F2014082D2D2D1931270C0C2E302F2F1F1F09082D2D2D19313131
        3131312C23020400012D2D2D1D31313131313131240705032D2D2D2D192B2A2A
        2A2A2A2A23070A2D2D2D2D2D191A1A1A1A19191A16062D2D2D2D}
    end
    object cmdCopia: TBitBtn
      Left = 138
      Top = 2
      Width = 130
      Height = 25
      Hint = 'Copia servi'#231'os lan'#231'ados de outra Competencia'
      Caption = 'Copiar Dados '
      TabOrder = 1
      OnClick = cmdCopiaClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100008C5A5A009C6B
        63009C6B6B00A57B73004C804C0052AE5700C68C7B00EFB56B00FF00FF0069CA
        8000BD848400B58C8C00BDADAD00FFD6A500F7DEBD00D6C6C600EFDECE00F7DE
        C600F7DECE00EFDEDE00F7E7CE00F7E7D600FFE7D600F7EFDE00FFF7E700FFF7
        EF00FFFFF700FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000008080808080B
        0000000000000000000808080808080B1817171717171714000808080808080B
        1712111111111010000808080808080B180D0D0D0D0D0D100008080B0000000B
        19111111110E14100108080B1817170B19141111111115100208080B1712110B
        1A0D0D0D040404040308080B180D0D0B1A161615040505040308080B1911110B
        1B1B0404040505040404080B1914110B1B1B0405050505050504080B1A0D0D0B
        1B1B0409090905050504080B1A16160B0B0B0404040905040404080B1B1B1B1A
        1A130F0C040905040808080B1B1B1B1A1A0B0B0B040404040808080B1B1B1B1B
        1B0B0706080808080808080B0B0B0B0B0B0B0A08080808080808}
    end
    object cmdFecha: TBitBtn
      Left = 268
      Top = 2
      Width = 130
      Height = 25
      Hint = 'Fechar/Abrir Remessa'
      Caption = 'Fechar '
      TabOrder = 2
      OnClick = cmdFechaClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF069DCC49B7E060C1E854BCE33D
        B2DC4DB9E1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        08A1CE0EA5D17FD2F1A0DFFE97DAFB93D9FA7CCDEF73CAEE48B7E0FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF13A8D41DAFD883D8EEA0E3FB93DAF982
        D0F259BBE08FD7F79ADCFB76CBF0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        20AFD82EB7DE94DFEFB1EEFAA2E7FD64B2D1369BC06FC7EB95DAFB9ADCFB34B1
        DAFF00FFFF00FFFF00FFFF00FFFF00FF2DB5DD3FBEE4B1E5F1CFF8FDB6F4FF83
        C9DE287FA169BDE094DBFC95DAFA33B0D9FF00FFFF00FFFF00FFFF00FFFF00FF
        39BBE348C1E8C5E8F4ECFAFDCAF5FBB3ECF563A9BF8BCFE899DFFE94D8FA33B0
        D9FF00FFFF00FFFF00FFFF00FFFF00FF2EB3DB44C1E25EC0DB6CC8E062C8E260
        C7E26ECFE786D8EE9DE2F9A2E1FE34B1DAFF00FFFF00FFFF00FFFF00FFFF00FF
        2BB1D858CDE440B8D746BEDB45C2DF37B7D94AC2E26BCFEA9AE1F886D4F425AA
        D4FF00FFFF00FFFF00FFFF00FFFF00FF28B1D75CCCDF0C9BC43CB6D18AF5FB55
        D7EC24B6DA049DCA25ABD252C0E01FA7D2FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0C94C10091BF2FAECF87F0F87AECF847C2DC0B96C0119DC41CA9D0FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B99C6199BC3FF00FF3A
        BFE020A7CD0A95C00D96C2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF4FC3E62A9DC6FF00FFFF00FFFF00FF0994BF0C8AB5FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3BA6C677DEEE3DAAC8FF
        00FF148AB60C9DC8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF4AB5CD7BE0EC6BD1E64ABCE01898C3FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object relProd: TBitBtn
      Left = 398
      Top = 2
      Width = 130
      Height = 25
      Hint = 'Relat'#243'rio Produtividade'
      Caption = 'Relat'#243'rio'
      TabOrder = 3
      OnClick = relProdClick
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
    object relProdNP: TBitBtn
      Left = 528
      Top = 2
      Width = 130
      Height = 25
      Caption = 'N'#227'o Pagos'
      TabOrder = 4
      OnClick = relProdNPClick
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
    object relExcel: TBitBtn
      Left = 658
      Top = 2
      Width = 130
      Height = 25
      Caption = 'Excel'
      TabOrder = 5
      OnClick = relExcelClick
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
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Nome'
    Left = 12
    Top = 423
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Cliente.CGC'
      Size = 18
    end
    object dbClienteClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'dbo.Cliente.ClienteID'
      FixedChar = True
      Size = 10
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 44
    Top = 423
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    Active = True
    OnFilterRecord = dbAuditorFilterRecord
    IndexFieldNames = 'Nome'
    Left = 12
    Top = 487
    object dbAuditorAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbAuditorNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      Size = 40
    end
    object dbAuditorCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'dbo.Auditores.CRM'
    end
    object dbAuditorCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Auditores.Cliente'
    end
    object dbAuditorDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Auditores.DataFim'
    end
  end
  object dsAuditor: TDataSource
    DataSet = dbAuditor
    Left = 44
    Top = 487
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Nome'
    Left = 12
    Top = 454
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.Hospital.Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Hospital.Nome'
      Size = 60
    end
  end
  object dsHospital: TDataSource
    DataSet = dbHospital
    Left = 44
    Top = 454
  end
  object dbProdM: TMSTable
    TableName = 'dbo.ProdutividadeM'
    MasterFields = 'Produtividade;AnoCompetencia;MesCompetencia'
    DetailFields = 'Produtividade;AnoCompetencia;MesCompetencia'
    MasterSource = dsProd
    Connection = frmMenu.dadosaud
    Filtered = True
    BeforeInsert = dbProdMBeforeInsert
    AfterInsert = dbProdMAfterInsert
    BeforeEdit = dbProdMBeforeEdit
    AfterEdit = dbProdMAfterEdit
    BeforePost = dbProdMBeforePost
    BeforeDelete = dbProdMBeforeDelete
    AfterScroll = dbProdMAfterScroll
    OnFilterRecord = dbProdMFilterRecord
    IndexFieldNames = 
      'Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;Cliente' +
      'Aud;Hospital;Servico'
    Left = 84
    Top = 455
    object dbProdMProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'dbo.ProdutividadeM.Produtividade'
    end
    object dbProdMClienteAud: TIntegerField
      FieldName = 'ClienteAud'
      Origin = 'dbo.ProdutividadeM.ClienteAud'
    end
    object dbProdMTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.ProdutividadeM.Tipo'
      Size = 1
    end
    object dbProdMAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.ProdutividadeM.Auditor'
    end
    object dbProdMHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.ProdutividadeM.Hospital'
    end
    object dbProdMServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.ProdutividadeM.Servico'
      Size = 3
    end
    object dbProdMQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'dbo.ProdutividadeM.Qtd'
    end
    object dbProdMStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.ProdutividadeM.Status'
      Size = 1
    end
    object dbProdMUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.ProdutividadeM.Usuario'
      Size = 10
    end
    object dbProdMServicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoNome'
      LookupDataSet = dbServico
      LookupKeyFields = 'Servico'
      LookupResultField = 'Servico'
      KeyFields = 'Servico'
      Size = 30
      Lookup = True
    end
    object dbProdMEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbProdMHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object dbProdMAuditorNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AuditorNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbProdMClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteAud'
      Size = 40
      Lookup = True
    end
    object dbProdMAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.ProdutividadeM.AnoCompetencia'
    end
    object dbProdMMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.ProdutividadeM.MesCompetencia'
    end
    object dbProdMCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.ProdutividadeM.Cliente'
    end
    object dbProdMEmpresa: TIntegerField
      FieldName = 'Empresa'
      Origin = 'dbo.ProdutividadeM.Empresa'
    end
    object dbProdMEmpresaM: TIntegerField
      FieldKind = fkLookup
      FieldName = 'EmpresaM'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Cliente'
      KeyFields = 'Auditor'
      Lookup = True
    end
    object dbProdMEmpresaE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'EmpresaE'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Cliente'
      KeyFields = 'Auditor'
      Lookup = True
    end
    object dbProdMServicoVinculado: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoVinculado'
      LookupDataSet = dbServico
      LookupKeyFields = 'Servico'
      LookupResultField = 'Vinculado'
      KeyFields = 'Servico'
      Size = 1
      Lookup = True
    end
    object dbProdMPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
      Origin = 'dbo.ProdutividadeM.PagtoPre'
    end
    object dbProdMUsuarioA: TStringField
      FieldName = 'UsuarioA'
      Origin = 'dbo.ProdutividadeM.UsuarioA'
      Size = 10
    end
    object dbProdMDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.ProdutividadeM.DataInclusao'
    end
    object dbProdMDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.ProdutividadeM.DataAlteracao'
    end
    object dbProdMVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.ProdutividadeM.Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object dsProdM: TDataSource
    DataSet = dbProdM
    OnStateChange = dsProdMStateChange
    Left = 116
    Top = 455
  end
  object dbServico: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Active = True
    Filtered = True
    OnFilterRecord = dbServicoFilterRecord
    IndexFieldNames = 'Servico'
    Left = 12
    Top = 519
    object dbServicoServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      Size = 3
    end
    object dbServicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      Size = 30
    end
    object dbServicoValorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
    object dbServicoVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      Size = 1
    end
  end
  object dsServico: TDataSource
    DataSet = dbServico
    Left = 44
    Top = 519
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    Active = True
    OnFilterRecord = dbEnfermeiroFilterRecord
    IndexFieldNames = 'Nome'
    Left = 12
    Top = 551
    object dbEnfermeiroEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.Enfermeiros.Enfermeiro'
    end
    object dbEnfermeiroNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Enfermeiros.Nome'
      Size = 40
    end
    object dbEnfermeiroCOREN: TIntegerField
      FieldName = 'COREN'
      Origin = 'dbo.Enfermeiros.COREN'
    end
    object dbEnfermeiroCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Enfermeiros.Cliente'
    end
    object dbEnfermeiroDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Enfermeiros.DataFim'
    end
  end
  object dsEnfermeiro: TDataSource
    DataSet = dbEnfermeiro
    Left = 44
    Top = 551
  end
  object dbAtendHIM: TMSTable
    TableName = 'dbo.AtendHI'
    MasterFields = 
      'ClienteAud;Hospital;Auditor;MesCompetencia;AnoCompetencia;Produt' +
      'ividade;Servico'
    DetailFields = 
      'Cliente;Hospital;Medico;MesCompetencia;AnoCompetencia;Produtivid' +
      'ade;Servico'
    MasterSource = dsProdM
    Connection = frmMenu.dadosaud
    OnCalcFields = dbAtendHIMCalcFields
    Left = 83
    Top = 521
    object dbAtendHIMAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object dbAtendHIMCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHI.Cliente'
    end
    object dbAtendHIMHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.AtendHI.Hospital'
    end
    object dbAtendHIMPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.AtendHI.Paciente'
    end
    object dbAtendHIMMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'dbo.AtendHI.Medico'
    end
    object dbAtendHIMEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.AtendHI.Enfermeiro'
    end
    object dbAtendHIMValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.AtendHI.Valor'
    end
    object dbAtendHIMUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.AtendHI.Usuario'
      Size = 10
    end
    object dbAtendHIMHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object dbAtendHIMClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbAtendHIMMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.AtendHI.MesCompetencia'
    end
    object dbAtendHIMAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.AtendHI.AnoCompetencia'
    end
    object dbAtendHIMProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'dbo.AtendHI.Produtividade'
    end
    object dbAtendHIMPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object dbAtendHIMServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.AtendHI.Servico'
      Size = 3
    end
    object dbAtendHIMServicoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoTexto'
      LookupDataSet = dbServicoP
      LookupKeyFields = 'Servico'
      LookupResultField = 'Servico'
      KeyFields = 'Servico'
      Size = 3
      Lookup = True
    end
    object dbAtendHIMParcialTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParcialTexto'
      Size = 3
      Calculated = True
    end
    object dbAtendHIMDayClinicTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'DayClinicTexto'
      Size = 3
      Calculated = True
    end
    object dbAtendHIMComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'dbo.AtendHI.Complemento'
    end
    object dbAtendHIMComplementoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ComplementoTexto'
      Size = 3
      Calculated = True
    end
    object dbAtendHIMParcial: TIntegerField
      FieldName = 'Parcial'
      Origin = 'dbo.AtendHI.Parcial'
    end
    object dbAtendHIMDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'dbo.AtendHI.DayClinic'
    end
    object dbAtendHIMUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.AtendHI.UsuarioI'
      Size = 10
    end
    object dbAtendHIMDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'dbo.AtendHI.DataInternacao'
    end
    object dbAtendHIMDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'dbo.AtendHI.DataAlta'
    end
    object dbAtendHIMDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'dbo.AtendHI.DataInicioP'
    end
  end
  object dsAtendHIM: TDataSource
    DataSet = dbAtendHIM
    Left = 114
    Top = 521
  end
  object dbAtendHIE: TMSTable
    TableName = 'dbo.AtendHI'
    MasterFields = 
      'ClienteAud;Hospital;Auditor;MesCompetencia;AnoCompetencia;Produt' +
      'ividade;Servico'
    DetailFields = 
      'Cliente;Hospital;Enfermeiro;MesCompetencia;AnoCompetencia;Produt' +
      'ividade;Servico'
    MasterSource = dsProdM
    Connection = frmMenu.dadosaud
    OnCalcFields = dbAtendHIECalcFields
    Left = 83
    Top = 553
    object dbAtendHIEAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object dbAtendHIECliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHI.Cliente'
    end
    object dbAtendHIEHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.AtendHI.Hospital'
    end
    object dbAtendHIEPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.AtendHI.Paciente'
    end
    object dbAtendHIEMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'dbo.AtendHI.Medico'
    end
    object dbAtendHIEEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.AtendHI.Enfermeiro'
    end
    object dbAtendHIEValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.AtendHI.Valor'
    end
    object dbAtendHIEUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.AtendHI.Usuario'
      Size = 10
    end
    object dbAtendHIEHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object dbAtendHIEClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbAtendHIEMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.AtendHI.MesCompetencia'
    end
    object dbAtendHIEAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.AtendHI.AnoCompetencia'
    end
    object dbAtendHIEProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'dbo.AtendHI.Produtividade'
    end
    object dbAtendHIEPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object dbAtendHIEServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.AtendHI.Servico'
      Size = 3
    end
    object dbAtendHIEServicoTexto: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoTexto'
      LookupDataSet = dbServicoP
      LookupKeyFields = 'Servico'
      LookupResultField = 'Servico'
      KeyFields = 'Servico'
      Size = 3
      Lookup = True
    end
    object dbAtendHIEParcialTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParcialTexto'
      Size = 3
      Calculated = True
    end
    object dbAtendHIEDayClinicTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'DayClinicTexto'
      Size = 3
      Calculated = True
    end
    object dbAtendHIEParcial: TIntegerField
      FieldName = 'Parcial'
      Origin = 'dbo.AtendHI.Parcial'
    end
    object dbAtendHIEDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'dbo.AtendHI.DayClinic'
    end
    object dbAtendHIEUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.AtendHI.UsuarioI'
      Size = 10
    end
    object dbAtendHIEDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'dbo.AtendHI.DataInternacao'
    end
    object dbAtendHIEDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'dbo.AtendHI.DataAlta'
    end
    object dbAtendHIEDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'dbo.AtendHI.DataInicioP'
    end
  end
  object dsAtendHIE: TDataSource
    DataSet = dbAtendHIE
    Left = 114
    Top = 553
  end
  object dsAtendHI: TDataSource
    DataSet = dbAtendHI
    Left = 114
    Top = 585
  end
  object dbProd: TMSTable
    TableName = 'dbo.Produtividade'
    Connection = frmMenu.dadosaud
    OnCalcFields = dbProdCalcFields
    Left = 84
    Top = 423
    object dbProdAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.Produtividade.AnoCompetencia'
    end
    object dbProdMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.Produtividade.MesCompetencia'
    end
    object dbProdUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Produtividade.Usuario'
      Size = 10
    end
    object dbProdStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.Produtividade.Status'
      Size = 1
    end
    object dbProdProdutividade: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Produtividade'
      Origin = 'dbo.Produtividade.Produtividade'
      ReadOnly = True
    end
    object dbProdStatusTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'StatusTexto'
      Size = 10
      Calculated = True
    end
    object dbProdDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Produtividade.DataInclusao'
    end
  end
  object dsProd: TDataSource
    DataSet = dbProd
    OnStateChange = dsProdStateChange
    Left = 116
    Top = 423
  end
  object dsPaciente: TDataSource
    DataSet = dbPaciente
    Left = 47
    Top = 585
  end
  object qryProd: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from ProdutividadeM'
      'order by Tipo,Auditor,ClienteAud,Hospital,Servico')
    OnCalcFields = qryProdCalcFields
    Left = 188
    Top = 424
    object qryProdMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'ProdutividadeM.MesCompetencia'
    end
    object qryProdAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'ProdutividadeM.AnoCompetencia'
    end
    object qryProdClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteAud'
      Size = 40
      Lookup = True
    end
    object qryProdTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'ProdutividadeM.Tipo'
      Size = 1
    end
    object qryProdNomeAuditor: TStringField
      FieldKind = fkCalculated
      FieldName = 'NomeAuditor'
      Size = 40
      Calculated = True
    end
    object qryProdHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object qryProdServico: TStringField
      FieldName = 'Servico'
      Origin = 'ProdutividadeM.Servico'
      Size = 3
    end
    object qryProdQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'ProdutividadeM.Qtd'
    end
    object qryProdFIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'FIM'
      Size = 3
      Calculated = True
    end
    object qryProdEmpresa: TIntegerField
      FieldName = 'Empresa'
      Origin = 'ProdutividadeM.Empresa'
    end
    object qryProdStatus: TStringField
      FieldName = 'Status'
      Origin = 'ProdutividadeM.Status'
      Size = 1
    end
    object qryProdUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'ProdutividadeM.Usuario'
      Size = 10
    end
    object qryProdAuditorNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AuditorNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryProdEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object qryProdServicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoNome'
      LookupDataSet = dbServico
      LookupKeyFields = 'Servico'
      LookupResultField = 'Servico'
      KeyFields = 'Servico'
      Size = 30
      Lookup = True
    end
    object qryProdServicoVinculado: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoVinculado'
      LookupDataSet = dbServico
      LookupKeyFields = 'Servico'
      LookupResultField = 'Vinculado'
      KeyFields = 'Servico'
      Size = 1
      Lookup = True
    end
    object qryProdDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'ProdutividadeM.DataInclusao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryProdCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'ProdutividadeM.Cliente'
    end
    object qryProdClienteAud: TIntegerField
      FieldName = 'ClienteAud'
      Origin = 'ProdutividadeM.ClienteAud'
    end
    object qryProdProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'ProdutividadeM.Produtividade'
    end
    object qryProdHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'ProdutividadeM.Hospital'
    end
    object qryProdAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'ProdutividadeM.Auditor'
    end
    object qryProdVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'ProdutividadeM.Vinculado'
      FixedChar = True
      Size = 1
    end
    object qryProdTipoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoTexto'
      Size = 15
      Calculated = True
    end
  end
  object dbRel: TMSTable
    TableName = 'dbo.relProd'
    Connection = frmMenu.dadosaud
    OnCalcFields = dbRelCalcFields
    IndexFieldNames = 'Cliente;Tipo;Nome;HospitalNome'
    Left = 188
    Top = 455
    object dbRelClienteNome: TStringField
      FieldName = 'ClienteNome'
      Origin = 'dbo.relProd.ClienteNome'
      FixedChar = True
      Size = 40
    end
    object dbRelTipoNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoNome'
      Calculated = True
    end
    object dbRelNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.relProd.Nome'
      Size = 40
    end
    object dbRelHospitalNome: TStringField
      FieldName = 'HospitalNome'
      Origin = 'dbo.relProd.HospitalNome'
      Size = 40
    end
    object dbRelP: TIntegerField
      FieldName = 'P'
      Origin = 'dbo.relProd.P'
    end
    object dbRelPP1: TIntegerField
      FieldName = 'PP1'
      Origin = 'dbo.relProd.PP1'
    end
    object dbRelPPD: TIntegerField
      FieldName = 'PPD'
      Origin = 'dbo.relProd.PPD'
    end
    object dbRelPAC: TIntegerField
      FieldName = 'PAC'
      Origin = 'dbo.relProd.PAC'
    end
    object dbRelPS: TIntegerField
      FieldName = 'PS'
      Origin = 'dbo.relProd.PS'
    end
    object dbRelPS2: TIntegerField
      FieldName = 'PS2'
      Origin = 'dbo.relProd.PS2'
    end
    object dbRelVHC: TIntegerField
      FieldName = 'VHC'
      Origin = 'dbo.relProd.VHC'
    end
    object dbRelV: TIntegerField
      FieldName = 'V'
      Origin = 'dbo.relProd.V'
    end
    object dbRelVE: TIntegerField
      FieldName = 'VE'
      Origin = 'dbo.relProd.VE'
    end
    object dbRelVD: TIntegerField
      FieldName = 'VD'
      Origin = 'dbo.relProd.VD'
    end
    object dbRelRAC: TIntegerField
      FieldName = 'RAC'
      Origin = 'dbo.relProd.RAC'
    end
    object dbRelFIS: TIntegerField
      FieldName = 'FIS'
      Origin = 'dbo.relProd.FIS'
    end
    object dbRelVCC: TIntegerField
      FieldName = 'VCC'
      Origin = 'dbo.relProd.VCC'
    end
    object dbRelAIH: TIntegerField
      FieldName = 'AIH'
      Origin = 'dbo.relProd.AIH'
    end
    object dbRelAPS: TIntegerField
      FieldName = 'APS'
      Origin = 'dbo.relProd.APS'
    end
    object dbRelAPU: TIntegerField
      FieldName = 'APU'
      Origin = 'dbo.relProd.APU'
    end
    object dbRelAMB: TIntegerField
      FieldName = 'AMB'
      Origin = 'dbo.relProd.AMB'
    end
    object dbRelVAC: TIntegerField
      FieldName = 'VAC'
      Origin = 'dbo.relProd.VAC'
    end
    object dbRelCO: TIntegerField
      FieldName = 'CO'
      Origin = 'dbo.relProd.CO'
    end
    object dbRelAPA: TIntegerField
      FieldName = 'APA'
      Origin = 'dbo.relProd.APA'
    end
    object dbRelDAY: TIntegerField
      FieldName = 'DAY'
      Origin = 'dbo.relProd.DAY'
    end
    object dbRelDG: TIntegerField
      FieldName = 'DG'
      Origin = 'dbo.relProd.DG'
    end
    object dbRelPER: TIntegerField
      FieldName = 'PER'
      Origin = 'dbo.relProd.PER'
    end
    object dbRelPNP: TIntegerField
      FieldName = 'PNP'
      Origin = 'dbo.relProd.PNP'
    end
    object dbRelSUS: TIntegerField
      FieldName = 'SUS'
      Origin = 'dbo.relProd.SUS'
    end
    object dbRelPP: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PP'
      Calculated = True
    end
    object dbRelTotH: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotH'
      Calculated = True
    end
    object dbRelCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.relProd.Cliente'
    end
    object dbRelTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.relProd.Tipo'
      Size = 1
    end
    object dbRelHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.relProd.Hospital'
    end
    object dbRelTotHRel: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotHRel'
      Calculated = True
    end
  end
  object dbServicoP: TMSTable
    TableName = 'dbo.Servicos'
    Connection = frmMenu.dadosaud
    Filtered = True
    OnFilterRecord = dbServicoPFilterRecord
    IndexFieldNames = 'Servico'
    Left = 188
    Top = 487
    object dbServicoPServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.Servicos.Servico'
      Size = 3
    end
    object dbServicoPNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Servicos.Nome'
      Size = 30
    end
    object dbServicoPValorizado: TBooleanField
      FieldName = 'Valorizado'
      Origin = 'dbo.Servicos.Valorizado'
    end
    object dbServicoPValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Servicos.Valor'
    end
    object dbServicoPVinculado: TStringField
      FieldName = 'Vinculado'
      Origin = 'dbo.Servicos.Vinculado'
      Size = 1
    end
  end
  object dsServicoP: TDataSource
    DataSet = dbServicoP
    Left = 220
    Top = 487
  end
  object qryTot: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI where Produtividade=0')
    Left = 189
    Top = 519
  end
  object rvRelProd: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = dbRel
    Left = 220
    Top = 458
  end
  object dbPaciente: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Pacientes '
      'order by Nome,IDPaciente')
    Left = 15
    Top = 584
    object dbPacientePaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'Pacientes.Paciente'
    end
    object dbPacienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'Pacientes.Nome'
      FixedChar = True
      Size = 40
    end
  end
  object dbAtendHI: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from AtendHI '
      'where Servico<>'#39'NP'#39' and Servico<>'#39'CE'#39' and Produtividade=0'
      'order by Produtividade,AnoCompetencia,MesCompetencia')
    Left = 83
    Top = 586
    object dbAtendHIAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object dbAtendHICliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object dbAtendHIHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object dbAtendHIPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object dbAtendHIMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object dbAtendHIEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object dbAtendHIValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'AtendHI.Valor'
    end
    object dbAtendHIUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'AtendHI.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbAtendHIMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object dbAtendHIAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object dbAtendHIProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object dbAtendHIServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object dbAtendHIParcial: TWordField
      FieldName = 'Parcial'
      Origin = 'AtendHI.Parcial'
    end
    object dbAtendHIDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'AtendHI.DayClinic'
    end
    object dbAtendHIUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'AtendHI.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbAtendHIComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'AtendHI.Complemento'
    end
    object dbAtendHIDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
      EditMask = '!99/99/00;1;_'
    end
    object dbAtendHIDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'AtendHI.DataAlta'
      EditMask = '!99/99/00;1;_'
    end
    object dbAtendHIDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'AtendHI.DataInicioP'
    end
    object dbAtendHIDiarias: TFloatField
      FieldName = 'Diarias'
    end
  end
  object dbProdMTrab: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM ProdutividadeM'
      'where Produtividade=0'
      
        'order by Produtividade,AnoCompetencia,MesCompetencia,Tipo,Audito' +
        'r,ClienteAud,Hospital,Servico')
    AfterInsert = dbProdMTrabAfterInsert
    BeforePost = dbProdMTrabBeforePost
    IndexFieldNames = 
      'Produtividade;AnoCompetencia;MesCompetencia;Tipo;Auditor;Cliente' +
      'Aud;Hospital;Servico'
    Left = 85
    Top = 488
    object dbProdMTrabProdutividade: TIntegerField
      FieldName = 'Produtividade'
    end
    object dbProdMTrabAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
    end
    object dbProdMTrabMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
    end
    object dbProdMTrabClienteAud: TIntegerField
      FieldName = 'ClienteAud'
    end
    object dbProdMTrabTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object dbProdMTrabAuditor: TIntegerField
      FieldName = 'Auditor'
    end
    object dbProdMTrabHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbProdMTrabServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object dbProdMTrabQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object dbProdMTrabEmpresa: TIntegerField
      FieldName = 'Empresa'
    end
    object dbProdMTrabCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbProdMTrabStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object dbProdMTrabUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProdMTrabEmpresaE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'EmpresaE'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Cliente'
      KeyFields = 'Auditor'
      Lookup = True
    end
    object dbProdMTrabEmpresaM: TIntegerField
      FieldKind = fkLookup
      FieldName = 'EmpresaM'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Cliente'
      KeyFields = 'Auditor'
      Lookup = True
    end
    object dbProdMTrabPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
    end
    object dbProdMTrabDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbProdMTrabServicoVinculado: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoVinculado'
      LookupDataSet = dbServico
      LookupKeyFields = 'Servico'
      LookupResultField = 'Vinculado'
      KeyFields = 'Servico'
      Size = 1
      Lookup = True
    end
    object dbProdMTrabVinculado: TStringField
      FieldName = 'Vinculado'
      FixedChar = True
      Size = 1
    end
  end
  object rvRelProdC: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProd
    Left = 220
    Top = 424
  end
  object MainMenu1: TMainMenu
    Left = 190
    Top = 589
    object S1: TMenuItem
      Caption = 'Selecionar Dados'
      object N1SelecionarDados1: TMenuItem
        Caption = '&1. Selecionar Dados'
        OnClick = cmdSelecionaClick
      end
      object N2CopiarDadosoutraCompetencia1: TMenuItem
        Caption = '&2. Copiar Dados outra Competencia'
        OnClick = cmdCopiaClick
      end
    end
    object Fechamentos1: TMenuItem
      Caption = 'Fechamentos'
      object N1FecharCompetencia1: TMenuItem
        Caption = '&1. Fechar Competencia'
        OnClick = cmdFechaClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N31: TMenuItem
        Caption = '&2. Atualizar Complementos'
        OnClick = N31Click
      end
      object N3RelatriodeComplementos1: TMenuItem
        Caption = '&3. Relat'#243'rio de Complementos'
        OnClick = N3RelatriodeComplementos1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N2RelatriodeParciais1: TMenuItem
        Caption = '&4. Atualizar Parcial Unica/Competencia'
        OnClick = N2RelatriodeParciais1Click
      end
      object N2AtualizarParciais1: TMenuItem
        Caption = '&5. Relatorio Parcial Unica'
        OnClick = N2AtualizarParciais1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N4AtualizarMaisdeumaParcialCompetencia1: TMenuItem
        Caption = '&6. Atualizar Mais de uma Parcial/Competencia'
        OnClick = N4AtualizarMaisdeumaParcialCompetencia1Click
      end
      object N5RelatorioMaisdeumaParcial1: TMenuItem
        Caption = '&7. Relatorio Mais de uma Parcial'
        OnClick = N5RelatorioMaisdeumaParcial1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N7RelatriodeRecemNascidos1: TMenuItem
        Caption = '&8. Relat'#243'rio Mais de um Paciente/Senha/Interna'#231#227'o (RN)'
        OnClick = N7RelatriodeRecemNascidos1Click
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object N8CalculodeVisitas1: TMenuItem
        Caption = '&9. Calculo de Visitas'
        OnClick = N8CalculodeVisitas1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object CCalculodeProntoAtendimentoAMB1: TMenuItem
        Caption = '&A. Calculo de Pronto Atendimento/AMB'
        OnClick = CCalculodeProntoAtendimentoAMB1Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object BAlteraoMedicoEnfermeiroResponsavel1: TMenuItem
        Caption = 'B. Altera'#231#245'es em Massa - Auditoria'
        OnClick = BAlteraoMedicoEnfermeiroResponsavel1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object N1Produtividade1: TMenuItem
        Caption = '&1. Produtividade'
        OnClick = relProdClick
      end
      object N3RelatrionaoPagos1: TMenuItem
        Caption = '&2. Relat'#243'rio nao Pagos'
        OnClick = relProdNPClick
      end
    end
  end
  object qryParcialUnica: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select AtendHI.cliente, AtendHI.hospital, '
      '       AtendHI.paciente, AtendHI.senha,'
      '       AtendHI.Produtividade,'
      '       Pacientes.Nome,'
      '       count(AtendHI.AtendimentoHI) as Qtd'
      'from AtendHI'
      'inner join Pacientes on AtendHI.Paciente=Pacientes.Paciente '
      'where Produtividade=19 and Parcial=1 and Complemento=0'
      '       '
      
        'group by AtendHI.cliente, hospital, AtendHI.paciente, nome, senh' +
        'a, Produtividade'
      'having count(AtendimentoHI)=1'
      'order by AtendHI.cliente, nome, paciente, senha, hospital')
    Left = 252
    Top = 425
    object qryParcialUnicacliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'AtendHI.cliente'
    end
    object qryParcialUnicahospital: TIntegerField
      FieldName = 'hospital'
      Origin = 'AtendHI.hospital'
    end
    object qryParcialUnicapaciente: TIntegerField
      FieldName = 'paciente'
      Origin = 'AtendHI.paciente'
    end
    object qryParcialUnicasenha: TStringField
      FieldName = 'senha'
      Origin = 'AtendHI.senha'
      FixedChar = True
      Size = 12
    end
    object qryParcialUnicaQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryParcialUnicaClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'cliente'
      Size = 40
      Lookup = True
    end
    object qryParcialUnicaHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'hospital'
      Size = 40
      Lookup = True
    end
    object qryParcialUnicaPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'paciente'
      Size = 40
      Lookup = True
    end
    object qryParcialUnicaProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryParcialUnicaNome: TStringField
      FieldName = 'Nome'
      Origin = 'Pacientes.Nome'
      FixedChar = True
      Size = 40
    end
  end
  object qryProdUnica: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'order by Produtividade,DataInternacao,AtendimentoHI')
    OnCalcFields = qryProdUnicaCalcFields
    MasterFields = 'paciente;senha'
    DetailFields = 'Paciente;Senha'
    Left = 251
    Top = 455
    object qryProdUnicaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdUnicaAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdUnicaPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdUnicaSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 10
    end
    object qryProdUnicaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object qryProdUnicaMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object qryProdUnicaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object qryProdUnicaMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object qryProdUnicaAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object qryProdUnicaDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object qryProdUnicaServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdUnicaServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object qryProdUnicaProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryProdUnicaMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 40
      Lookup = True
    end
    object qryProdUnicaEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object qryProdUnicaParcial: TWordField
      FieldName = 'Parcial'
      Origin = 'AtendHI.Parcial'
    end
    object qryProdUnicaParcialTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParcialTexto'
      Size = 3
      Calculated = True
    end
  end
  object rvProdParcialItemUnico: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdUnica
    Left = 283
    Top = 455
  end
  object rvProdParcialUnica: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryParcialUnica
    Left = 284
    Top = 427
  end
  object rvProdComplemento: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdComplemento
    Left = 284
    Top = 483
  end
  object qryProdComplemento: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'where Complemento=1'
      'order by Produtividade,Cliente, DataInternacao,AtendimentoHI'
      '')
    OnCalcFields = qryProdComplementoCalcFields
    MasterFields = 'paciente;senha'
    DetailFields = 'Paciente;Senha'
    Left = 252
    Top = 485
    object qryProdComplementoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdComplementoAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdComplementoPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdComplementoSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 10
    end
    object qryProdComplementoHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object qryProdComplementoMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object qryProdComplementoEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object qryProdComplementoMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object qryProdComplementoAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object qryProdComplementoDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object qryProdComplementoServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdComplementoServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object qryProdComplementoProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryProdComplementoComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'AtendHI.Complemento'
    end
    object qryProdComplementoComplementoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ComplementoTexto'
      Size = 3
      Calculated = True
    end
    object qryProdComplementoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object qryProdComplementoPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object qryProdComplementoHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
  end
  object qryVisita: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select cliente, hospital, Produtividade,'
      'count(AtendimentoHI) as Qtd'
      'from AtendHI'
      'where Produtividade=20 and Servico='#39'PP1'#39' and '
      '      (DataAlta-DataInternacao)>=2'
      'group by cliente, hospital, Produtividade'
      'order by cliente, hospital')
    Left = 252
    Top = 520
    object qryVisitaProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryVisitacliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'AtendHI.cliente'
    end
    object qryVisitaClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'cliente'
      Size = 40
      Lookup = True
    end
    object qryVisitahospital: TIntegerField
      FieldName = 'hospital'
      Origin = 'AtendHI.hospital'
    end
    object qryVisitaHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'hospital'
      Size = 40
      Lookup = True
    end
    object qryVisitaQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rvProdVisitaItem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdVisitaItem
    Left = 283
    Top = 551
  end
  object qryProdVisitaItem: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'order by Produtividade,DataInternacao,AtendimentoHI')
    Left = 251
    Top = 551
    object qryProdVisitaItemCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object qryProdVisitaItemAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object qryProdVisitaItemPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object qryProdVisitaItemHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object qryProdVisitaItemMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object qryProdVisitaItemAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object qryProdVisitaItemServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdVisitaItemServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object qryProdVisitaItemProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryProdVisitaItemPacienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'PacienteNome'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object qryProdVisitaItemHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object qryProdVisitaItemClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object qryProdVisitaItemDiarias: TFloatField
      FieldName = 'Diarias'
    end
  end
  object qryProdPS: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select  * from AtendHPS'
      'order by Cliente')
    Left = 253
    Top = 581
    object qryProdPSAtendimentoPS: TIntegerField
      FieldName = 'AtendimentoPS'
      Origin = 'AtendHPS.AtendimentoPS'
    end
    object qryProdPSSequencial: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'AtendHPS.Sequencial'
      ReadOnly = True
    end
    object qryProdPSTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'AtendHPS.Tipo'
      FixedChar = True
      Size = 1
    end
    object qryProdPSCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHPS.Cliente'
    end
    object qryProdPSHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHPS.Hospital'
    end
    object qryProdPSMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHPS.Medico'
    end
    object qryProdPSEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHPS.Enfermeiro'
    end
    object qryProdPSDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'AtendHPS.DataFechamento'
    end
    object qryProdPSMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHPS.MesCompetencia'
    end
    object qryProdPSAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHPS.AnoCompetencia'
    end
    object qryProdPSQtdAtendimento: TSmallintField
      FieldName = 'QtdAtendimento'
      Origin = 'AtendHPS.QtdAtendimento'
    end
    object qryProdPSValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'AtendHPS.Valor'
    end
    object qryProdPSValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
      Origin = 'AtendHPS.ValorGlosado'
    end
    object qryProdPSValorNaoAcordado: TCurrencyField
      FieldName = 'ValorNaoAcordado'
      Origin = 'AtendHPS.ValorNaoAcordado'
    end
    object qryProdPSPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'AtendHPS.PosAnalise'
    end
  end
  object qryRN: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select AtendHI.cliente, AtendHI.hospital, '
      '       AtendHI.senha,'
      '       AtendHI.DataInternacao, AtendHI.DataAlta,'
      '       AtendHI.Produtividade,'
      '       count(AtendHI.AtendimentoHI) as Qtd'
      'from AtendHI'
      'where Produtividade=19 '
      
        'group by AtendHI.cliente, hospital, senha, Produtividade, DataIn' +
        'ternacao, DataAlta'
      'having count(AtendimentoHI)>=2'
      'order by AtendHI.cliente, hospital, DataInternacao')
    Left = 319
    Top = 425
    object qryRNcliente: TIntegerField
      FieldName = 'cliente'
      Origin = 'AtendHI.cliente'
    end
    object qryRNhospital: TIntegerField
      FieldName = 'hospital'
      Origin = 'AtendHI.hospital'
    end
    object qryRNsenha: TStringField
      FieldName = 'senha'
      Origin = 'AtendHI.senha'
      FixedChar = True
      Size = 10
    end
    object qryRNDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object qryRNDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'AtendHI.DataAlta'
    end
    object qryRNProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object qryRNQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryRNHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'hospital'
      Size = 40
      Lookup = True
    end
    object qryRNClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'cliente'
      Size = 40
      Lookup = True
    end
  end
  object rvRN: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryRN
    Left = 351
    Top = 427
  end
  object dbEscala: TMSTable
    TableName = 'dbo.EscalaDiaria'
    MasterSource = dsCliente
    Connection = frmMenu.dadosaud
    Left = 190
    Top = 548
    object dbEscalaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.EscalaDiaria.Cliente'
    end
    object dbEscalaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.EscalaDiaria.Hospital'
    end
    object dbEscalaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.EscalaDiaria.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbEscalaServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.EscalaDiaria.Servico'
      FixedChar = True
      Size = 10
    end
    object dbEscalaAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.EscalaDiaria.Auditor'
    end
    object dbEscalaClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'dbo.EscalaDiaria.ClienteID'
      FixedChar = True
      Size = 10
    end
    object dbEscalaDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.EscalaDiaria.DataInicio'
    end
    object dbEscalaDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.EscalaDiaria.DataFim'
    end
  end
  object dsEscala: TDataSource
    DataSet = dbEscala
    Left = 220
    Top = 548
  end
  object dbProdCli: TMSTable
    TableName = 'dbo.ProdutividadeCli'
    MasterFields = 'Produtividade'
    DetailFields = 'Produtividade'
    MasterSource = dsProd
    Connection = frmMenu.dadosaud
    AfterInsert = dbProdCliAfterInsert
    BeforePost = dbProdCliBeforePost
    OnCalcFields = dbProdCliCalcFields
    Left = 116
    Top = 487
    object dbProdCliProdutividade: TIntegerField
      FieldName = 'Produtividade'
    end
    object dbProdCliCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbProdCliFechamento: TStringField
      FieldName = 'Fechamento'
      OnGetText = dbProdCliFechamentoGetText
      OnSetText = dbProdCliFechamentoSetText
      FixedChar = True
      Size = 1
    end
    object dbProdCliDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbProdCliUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProdCliClienteID: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteID'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'ClienteID'
      KeyFields = 'Cliente'
      Size = 10
      Lookup = True
    end
    object dbProdCliLancamento: TStringField
      FieldKind = fkCalculated
      FieldName = 'Lancamento'
      Size = 10
      Calculated = True
    end
  end
  object dsProdCli: TDataSource
    DataSet = dbProdCli
    OnStateChange = dsProdCliStateChange
    Left = 148
    Top = 487
  end
  object qryClienteok: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select ClienteID, cliente'
      'from Agenda'
      'where DataConta is null'
      'group by clienteID'
      'order by clienteId')
    Left = 227
    Top = 587
    object qryClienteokClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'Agenda.ClienteID'
      FixedChar = True
      Size = 10
    end
    object qryClienteokqtd: TIntegerField
      FieldName = 'qtd'
      Origin = '.'
      ReadOnly = True
    end
  end
  object qryProdH: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      
        'SELECT     ClienteAud, AnoCompetencia, MesCompetencia, Hospital,' +
        ' Tipo, Servico, SUM(Qtd) AS Qtd'
      'FROM         ProdutividadeM'
      'WHERE     (AnoCompetencia = 2024)'
      
        'GROUP BY ClienteAud,AnoCompetencia, MesCompetencia, Hospital, Ti' +
        'po, Servico')
    Left = 316
    Top = 456
    object qryProdHAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
    end
    object qryProdHMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
    end
    object qryProdHClienteAud: TIntegerField
      FieldName = 'ClienteAud'
    end
    object qryProdHHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryProdHTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object qryProdHServico: TStringField
      FieldName = 'Servico'
      FixedChar = True
      Size = 3
    end
    object qryProdHQtd: TIntegerField
      FieldName = 'Qtd'
      ReadOnly = True
    end
    object qryProdHClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteAud'
      Size = 40
      Lookup = True
    end
  end
  object qryProdHGeral: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT Nome as Competencia, Hospital, HospitalNome, '
      '       sum(P) as P,'
      '       sum(PP1+PPD) as PP,'
      '       sum(PS) as PS,'
      '       sum(V) as V,'
      '       sum(DG) as DG'
      'from relProd '
      'group by Nome,Hospital,HospitalNome'
      'order by Competencia,HospitalNome'
      ' ')
    Left = 348
    Top = 456
    object qryProdHGeralCompetencia: TStringField
      FieldName = 'Competencia'
      Origin = 'relProd.Nome'
      FixedChar = True
      Size = 40
    end
    object qryProdHGeralHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'relProd.Hospital'
    end
    object qryProdHGeralHospitalNome: TStringField
      FieldName = 'HospitalNome'
      Origin = 'relProd.HospitalNome'
      FixedChar = True
      Size = 40
    end
    object qryProdHGeralP: TIntegerField
      FieldName = 'P'
      Origin = '.'
      ReadOnly = True
    end
    object qryProdHGeralPP: TIntegerField
      FieldName = 'PP'
      Origin = '.'
      ReadOnly = True
    end
    object qryProdHGeralPS: TIntegerField
      FieldName = 'PS'
      Origin = '.'
      ReadOnly = True
    end
    object qryProdHGeralV: TIntegerField
      FieldName = 'V'
      Origin = '.'
      ReadOnly = True
    end
    object qryProdHGeralDG: TIntegerField
      FieldName = 'DG'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rvProdHGeral: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryProdHGeral
    Left = 382
    Top = 455
  end
end
