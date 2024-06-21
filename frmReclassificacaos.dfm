object frmReclassificacao: TfrmReclassificacao
  Left = 314
  Top = 5
  Width = 900
  Height = 672
  ActiveControl = cmbBusca
  Caption = 'Reclassifica'#231#227'o de Movimenta'#231#227'o Banc'#225'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 585
    Height = 544
    Align = alClient
  end
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 884
    Height = 90
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object cmpProblema: TLabel
      Left = 1
      Top = 4
      Width = 882
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Movimentos com problemas'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 1
      Top = 1
      Width = 882
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object ListBox1: TListBox
      Left = 30
      Top = 17
      Width = 853
      Height = 64
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      OnClick = ListBox1Click
    end
    object ProgressBar2: TProgressBar
      Left = 1
      Top = 81
      Width = 882
      Height = 8
      Align = alBottom
      TabOrder = 1
    end
    object Panel5: TPanel
      Left = 1
      Top = 17
      Width = 29
      Height = 64
      Align = alLeft
      BevelOuter = bvNone
      Color = clHighlight
      TabOrder = 2
      object cmdStop: TSpeedButton
        Left = 3
        Top = 3
        Width = 25
        Height = 25
        Hint = 'Interrompe Verifica'#231#227'o'
        AllowAllUp = True
        GroupIndex = 2
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF01079F0313A90418AE0419AE0313A90108A0FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01049D041CB10730C00734C407
          35C50735C50734C30731C1041FB301069EFF00FFFF00FFFF00FFFF00FFFF00FF
          0109A1052BC30735C70733C20732C20732C20732C20732C20733C30735C4062D
          BE020CA4FF00FFFF00FFFF00FF01049B052BCA0636D80431CD0027C4032EC107
          32C20732C20430C10027BF042FC10735C4072EBE01069EFF00FFFF00FF031ABA
          0537E70331DD123DD86480E01840CB002CC1022DC00F38C46580D91B43C7052F
          C10735C5051FB3FF00FF01049E0430E40436F1002AE45070E9FFFFFFB7C4F10D
          36CA042DC3A2B2E8FFFFFF6984DA0026BE0733C30731C10108A0020FAF0336FA
          0335F80232EE0A35E88CA2F2FFFFFFB4C2F1A9B8EDFFFFFFA7B7E9133AC4052F
          C10732C20734C40313AA0619BC1747FE093AFC0435F80131F0002BE891A5F4FF
          FFFFFFFFFFABBAEF062FC5022DC00732C20732C20736C50419AE0B1DBE4168FE
          1C49FC0335FB0031F90531F2A4B5F7FFFFFFFFFFFFB9C6F20D36D0002CC60732
          C20732C20736C50418AD0613B45B7CFC486CFD0133FB113CFBA1B4FEFFFFFFA4
          B6F892A7F5FFFFFFB6C4F21A41D3042FC80732C40734C30212A90003A04A6AF3
          8FA6FF1F46FB4C6FFCFFFFFFA7B8FE0733F6002AED8CA2F6FFFFFF627FE70028
          D00734CC0730C300069FFF00FF1A2FCB99AFFF8BA2FE214DFB4D71FC0E3DFB00
          30FB0031F70636F14C6EF1103CE30432DB0636D7041CB5FF00FFFF00FF0004A0
          415EECB8C7FF9CAFFD3A5CFC0A3AFB0335FB0335FB0133F9052FF20635EB0537
          E9052CCD00049CFF00FFFF00FFFF00FF0309A54260ECA9BBFFBDCAFF8EA5FE64
          83FD5073FC4A6EFD3961FD1444F9042CD70109A2FF00FFFF00FFFF00FFFF00FF
          FF00FF0004A01E32CD5876F6859EFE8BA3FF7994FE5376FC234AF0051EC50104
          9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0004A00917B610
          22C30D1FC20311B401059FFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdFichaClick
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 29
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 544
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object Label14: TLabel
      Left = 1
      Top = 304
      Width = 583
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Lan'#231'amentos'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object grdLancamento: TDBGrid
      Left = 30
      Top = 317
      Width = 554
      Height = 226
      Align = alClient
      DataSource = dsLancamento
      FixedColor = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = grdLancamentoDrawColumnCell
      OnKeyPress = grdLancamentoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Lancamento'
          Title.Alignment = taRightJustify
          Title.Caption = 'Lancto.'
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cod1'
          Title.Alignment = taRightJustify
          Title.Caption = 'C1'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cod2'
          Title.Alignment = taRightJustify
          Title.Caption = 'C2'
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cod3'
          Title.Alignment = taRightJustify
          Title.Caption = 'C3'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoPag'
          ReadOnly = True
          Title.Caption = 'Pagto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorPago'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Pago'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataVencto'
          Title.Caption = 'Data Vencto'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataPagto'
          Title.Alignment = taCenter
          Title.Caption = 'Data Pagto'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Historico'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Filial'
          Title.Alignment = taRightJustify
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Doc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cliente'
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteNome'
          Title.Caption = 'Cliente'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteDeb'
          Title.Alignment = taRightJustify
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteDebNome'
          Title.Caption = 'Cliente Debito'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NF'
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Seq'
          Title.Alignment = taCenter
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FuncionarioNome'
          Title.Caption = 'Funcionario'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorBruto'
          Title.Alignment = taRightJustify
          Title.Caption = 'Valor Bruto'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TipoAud'
          Title.Caption = 'Med/Enf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MedicoNome'
          Title.Caption = 'Medico'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EnfermeiroNome'
          Title.Caption = 'Enfermeiro'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Visible = True
        end>
    end
    object tabOrdem: TTabControl
      Left = 1
      Top = 55
      Width = 583
      Height = 249
      Align = alTop
      TabOrder = 1
      Tabs.Strings = (
        'Por Movimento Banc'#225'rio'
        'Por Lan'#231'amento')
      TabIndex = 0
      object DBGrid2: TDBGrid
        Left = 4
        Top = 24
        Width = 575
        Height = 221
        Align = alClient
        DataSource = dsMovBanco
        FixedColor = clHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'MovBanco'
            Title.Alignment = taRightJustify
            Title.Caption = 'Mov.Banco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taRightJustify
            Width = 27
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataEntrada'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BancoID'
            Title.Caption = 'Banco'
            Width = 43
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Doc'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taRightJustify
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Favorecido'
            Width = 255
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Status'
            Title.Alignment = taCenter
            Width = 33
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 4
        Top = 24
        Width = 575
        Height = 221
        Align = alClient
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 0
          Width = 39
          Height = 13
          Caption = 'Emiss'#227'o'
        end
        object Label5: TLabel
          Left = 1
          Top = 43
          Width = 97
          Height = 13
          Caption = 'Documento/Cheque'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 125
          Top = 43
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 1
          Top = 83
          Width = 53
          Height = 13
          Caption = 'Favorecido'
          FocusControl = DBEdit7
        end
        object Label10: TLabel
          Left = 466
          Top = 0
          Width = 55
          Height = 13
          Caption = 'Concilia'#231#227'o'
        end
        object cmdCalcula: TSpeedButton
          Left = 428
          Top = 60
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE602A
            AE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE60
            2AAE602AAE602AFF00FFDAA039FFD195EAB777E4AE67FFBD60F1AE4FDC9C3EFC
            AA32FFA922FB9F14FB9A05FB9800FB9801FC9900FF9F00AE602AE7AC1DEEC093
            584E44534A41D39D5B866A46433E39BA8338D5902F50433054452F5243305544
            2B624A28F69702AE602AE7AC1DFFD0A0CAA276C09768FBBD6DD69F58B98847ED
            A540E9A142AF7F56C58538E08D12B67937B97B37FE9D02AE602AE7AC1DEDC299
            60554C5C5147D2A2688B704F4F463CB5843F977D922E42DE6D64A1CA8A483047
            D33649CCEB9317AE602AE7AC1DFED1A2BC9B78B3916CFDC47FD3A165A17B4DEF
            AA4DE9A657887394C78D55FEA3179C7469A1745FFE9D01AE602AE7AC1DE9BF97
            63584D5A5149CDA5748A715547413CB386499D8397263EE36E66A5CE904B3148
            D23448CCE3911EAE602AE7AC1DFFD4A5FCC794F5C190FFCF92FEC07DEFB06AFF
            BD61FFB74FE3A45BFCAB3CFFAC24EE9B2CF2981BFF9F00AE602AE7AC1DF5CAA0
            E1DEC0E2E0C1DEDBBCE1DCB9E3DAB1DED5A8E6D39FFFBF5DFCAB3CF3A333F69F
            20F89D13FF9F04AE602AE7AC1DD4AF8C6BD3CA6CD7CE6CD7CE6CD7CF6CD7CF66
            D7D18DE0D9FCC57BCA8D3DB58139AD7A31C18225FFA20BAE602AEFB53EF8C9A2
            D1AC86D1AD86D1AD86D1AC85D1AA7BCFA46EDCAB6BFFBD6AF6AF52FCAF46E79D
            37F3A028FFA716AE602AFF00FFE4A70AEDB339F0B84DEEB64DE9B24DF2BA62F2
            B65AEEB04FEAA945E9A43AE79F31E89B27E6971FD2851AFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = cmdCalculaClick
        end
        object Label11: TLabel
          Left = 301
          Top = 1
          Width = 108
          Height = 13
          Caption = 'Banco/Ag'#234'ncia/Conta'
        end
        object DBText3: TDBText
          Left = 305
          Top = 18
          Width = 30
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Banco'
          DataSource = dsConta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 339
          Top = 18
          Width = 40
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Agencia'
          DataSource = dsConta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 383
          Top = 18
          Width = 70
          Height = 17
          Alignment = taRightJustify
          Color = clWhite
          DataField = 'Conta'
          DataSource = dsConta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 97
          Top = 1
          Width = 71
          Height = 13
          Caption = 'Conta Corrente'
        end
        object Label15: TLabel
          Left = 343
          Top = 45
          Width = 109
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor Calculado'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object cmpCalculado: TLabel
          Left = 343
          Top = 60
          Width = 80
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'cmpCalculado'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 0
          Top = 163
          Width = 575
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Hist'#243'rico'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object cmpDiferenca: TLabel
          Left = 455
          Top = 60
          Width = 91
          Height = 19
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0.00'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 212
          Top = 43
          Width = 53
          Height = 13
          Caption = 'NF/Recibo'
          FocusControl = DBEdit1
        end
        object DBEdit5: TDBEdit
          Left = 1
          Top = 59
          Width = 119
          Height = 21
          DataField = 'Doc'
          DataSource = dsMovBanco
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 125
          Top = 59
          Width = 80
          Height = 21
          DataField = 'Valor'
          DataSource = dsMovBanco
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 1
          Top = 99
          Width = 544
          Height = 21
          DataField = 'Favorecido'
          DataSource = dsMovBanco
          TabOrder = 6
        end
        object cmpHistorico: TDBMemo
          Left = 0
          Top = 176
          Width = 575
          Height = 45
          Align = alBottom
          DataField = 'Historico'
          DataSource = dsMovBanco
          ScrollBars = ssVertical
          TabOrder = 7
        end
        object cmpData: TDBDateTimePicker
          Left = 1
          Top = 16
          Width = 89
          Height = 21
          Date = 42093.000000000000000000
          Time = 42093.000000000000000000
          TabOrder = 0
          DataField = 'DataEntrada'
          DataSource = dsMovBanco
        end
        object cmpBanco: TDBLookupComboBox
          Left = 97
          Top = 16
          Width = 200
          Height = 21
          DataField = 'BancoID'
          DataSource = dsMovBanco
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'BancoID'
          ListField = 'Nome'
          ListSource = dsConta
          ParentFont = False
          TabOrder = 1
        end
        object cmpDataMov: TDBEdit
          Left = 466
          Top = 15
          Width = 80
          Height = 21
          DataField = 'DataMovimento'
          DataSource = dsMovBanco
          TabOrder = 2
        end
        object Panel10: TPanel
          Left = 63
          Top = 122
          Width = 100
          Height = 37
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 8
          object Label17: TLabel
            Left = 1
            Top = 1
            Width = 94
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Usu'#225'rio Inclus'#227'o'
            Color = 177517
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText46: TDBText
            Left = 1
            Top = 14
            Width = 94
            Height = 18
            Align = alClient
            Alignment = taCenter
            DataField = 'UsuarioI'
            DataSource = dsMovBanco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel6: TPanel
          Left = 167
          Top = 122
          Width = 100
          Height = 37
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 9
          object Label18: TLabel
            Left = 1
            Top = 1
            Width = 94
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Usu'#225'rio'
            Color = 177517
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 1
            Top = 14
            Width = 94
            Height = 18
            Align = alClient
            Alignment = taCenter
            DataField = 'Usuario'
            DataSource = dsMovBanco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel7: TPanel
          Left = 445
          Top = 122
          Width = 100
          Height = 37
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 10
          object Label19: TLabel
            Left = 1
            Top = 1
            Width = 94
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Mov.Bancaria'
            Color = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 1
            Top = 14
            Width = 94
            Height = 18
            Align = alClient
            Alignment = taCenter
            Color = clWhite
            DataField = 'MovBanco'
            DataSource = dsMovBanco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel9: TPanel
          Left = 388
          Top = 122
          Width = 50
          Height = 37
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 11
          object lblTipo: TLabel
            Left = 1
            Top = 1
            Width = 44
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'CR/DB'
            Color = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 1
            Top = 14
            Width = 44
            Height = 18
            Align = alClient
            Alignment = taCenter
            Color = clWhite
            DataField = 'TipoTexto'
            DataSource = dsMovBanco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object Panel12: TPanel
          Left = 2
          Top = 122
          Width = 57
          Height = 37
          BevelInner = bvSpace
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 12
          object Label8: TLabel
            Left = 1
            Top = 1
            Width = 51
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Pagto'
            Color = clGreen
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlightText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 1
            Top = 14
            Width = 51
            Height = 18
            Align = alClient
            Alignment = taCenter
            Color = clWhite
            DataField = 'TipoPagTexto'
            DataSource = dsMovBanco
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 211
          Top = 59
          Width = 116
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NumeroDoc'
          DataSource = dsMovBanco
          TabOrder = 5
        end
      end
    end
    object CoolBar1: TCoolBar
      Left = 1
      Top = 30
      Width = 583
      Height = 25
      Bands = <
        item
          Control = cmbBusca
          ImageIndex = -1
          MinHeight = 21
          Width = 579
        end>
      object cmbBusca: TComboBox
        Left = 9
        Top = 0
        Width = 566
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cmbBuscaChange
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 317
      Width = 29
      Height = 226
      Align = alLeft
      BevelOuter = bvNone
      Color = clHighlight
      TabOrder = 3
      object cmdNovoB: TBitBtn
        Left = 3
        Top = 3
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = cmdNovoBClick
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
      object cmdGravaB: TBitBtn
        Left = 3
        Top = 28
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = cmdGravaBClick
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
      object cmdExcluiB: TBitBtn
        Left = 3
        Top = 53
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = cmdExcluiBClick
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
      object cmdLimpaB: TBitBtn
        Left = 3
        Top = 78
        Width = 25
        Height = 25
        Hint = 'Desvincula Lancamento da movimenta'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = cmdLimpaBClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000130B0000130B0000000100000001000000730800008C
          0800EF9C2100F7A55A00FFB56B00FFE7C600FFF7E700FF00FF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00070707070707
          0707070707070707070707070707070707070707070707070707040404040404
          0404070707070707070706060606060606030707070707070707080808080808
          0803070707070707070708080808080808030707070707070707040404040404
          0404040404070700070706060606060606060606030707000007050505050505
          0505050503000000010005050505050505050505030707010107020202020202
          0202020202070701070706060606060606020707070707070707080808080808
          0803070707070707070708080808080808030707070707070707020202020202
          0202070707070707070707070707070707070707070707070707}
      end
      object cmdContabiliza: TBitBtn
        Left = 3
        Top = 103
        Width = 25
        Height = 25
        Hint = 'Contabiliza/N'#227'o Contabiliza'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = cmdContabilizaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object Panel14: TPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 29
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 4
      object cmdFicha: TSpeedButton
        Left = 166
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Exibe Ficha'
        AllowAllUp = True
        GroupIndex = 2
        Down = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000320B0000320B00000001000000010000EFA54A00C684
          6B00BD8C7300CE947300EFB57300FFC67300BD847B00C6947B00B5848400B58C
          8400CE9C8400B5948C00C6A59400EFCE9400C6A59C00EFCE9C00F7D69C00C6AD
          A500F7D6A500CEB5AD00D6B5AD00C6BDAD00F7D6AD00D6BDB500DEBDB500DEC6
          B500E7C6B500EFCEB500F7D6B500F7DEB500EFCEBD00F7DEBD00E7DEC600F7DE
          C600F7E7C600E7CECE00E7D6CE00F7E7CE00F7E7D600FFEFD600FFEFDE00FFEF
          E700FFF7E700FFF7EF00FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002E2E08080808
          0808080808080808082E2E2E0E27221F1D16120F0D0D0D10082E2E2E0E270E0E
          0E0E0E0E0E0E0E0F082E2E2E11292625211F1C160F0F0D0F082E2E2E112A2625
          22211D1C160F0F0D082E2E2E132D0E0E0E0E0E0E0E0E0E0F082E2E2E142F2B29
          262522211F161212082E2E2E172F2C2B28262522211F1C16082E2E2E172F0E0E
          0E0E0E0E0E0E0E1D082E2E2E182F2F2F2C2928262521211C082E2E2E192F2F2F
          2F2C292828272015082E2E2E1A2F0E0E0E0E0E2B260C0B09082E2E2E1A2F2F2F
          2F2F2F2D23020400012E2E2E1E2F2F2F2F2F2F2F240705032E2E2E2E1A2C2B2B
          2B2B2B2B23070A2E2E2E2E2E1A1B1B1B1B1A1A1B17062E2E2E2E}
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdFichaClick
      end
      object cmdLista: TSpeedButton
        Left = 191
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Exibe Lista'
        AllowAllUp = True
        GroupIndex = 2
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000220B0000220B000000010000000100008C5A5A009C6B
          63009C6B6B00EFB56B00A57B7300B5847300C68C7B00BD848400B58C8C00FFD6
          A500BDADAD00F7DEBD00D6C6C600F7DEC600FFDEC600FFE7C600EFDECE00F7DE
          CE00F7E7CE00FFE7CE00EFE7D600F7E7D600FFE7D600FFEFD600EFDEDE00EFE7
          DE00F7E7DE00F7EFDE00FFEFDE00FFF7DE00FFF7E700FFF7EF00FFFFEF00FFFF
          F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00222222222208
          000000000000000000222222222222081E1B1B1B1B1B1B120022222222222208
          1B110D0D0D0D101000222222222222081E090909090909100022220800000008
          1F0D0D0D0D0B1210012222081E1B1B081F120D0D0D0D1510022222081B110D08
          2109090909090914042222081E0909082116161512161E18042222081F0D0D08
          2323232121180C0A052222081F120D0823232321210808080822220821090908
          2323232323080306222222082116160808080808080807222222220823232321
          21180C0A05222222222222082323232121080808082222222222220823232323
          2308030622222222222222080808080808080722222222222222}
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdListaClick
      end
      object cmdFiltro: TSpeedButton
        Left = 307
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Filtra somente ultimos 6 meses'
        AllowAllUp = True
        GroupIndex = 3
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF117011117011FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF117011B1
          E2BF62BC380A6E00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF257A23B1E2BF62BC38147600FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF227921A7
          D9B35CB634137500FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF1F751D9AD7AA56B736127300FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF239C393C
          CC6B26B9400C8D11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF24A13B43DC792DC85D1CB53A0BA718008200FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2BA84354ED893ED7742B
          C35619B23208A10F009A00008300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF30AE4868FF9F53EE8B3CD77329C55417B22E05A10A009B00009E000084
          00FF00FFFF00FFFF00FFFF00FFFF00FF29A44050E38144D3702FB5521FA43E12
          97230B8C0B018400008300008800008D00007E00FF00FFFF00FFFF00FF006D00
          0B800F278001268204058F1342AF5454D8D700D1D90E999736AB4E37BA512DAB
          450F931D0C7813FF00FF0067000079008DA00CF0B338EDAB2295A51717BC3E70
          DE9950F0FF00E1FF1BAFB75AE08F44E16C91D4B2239933006700FF00FF006700
          E0B87BF6EAB2EDD87CDBA117006E0A026C0661A36852F1FF007A6A005F005E8A
          5FF97AF7562553FF00FFFF00FFFF00FFE0C4A3FFFFF2F4E5A5DCA823FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFFB2FFFF09FFBD00BD920492FF00FFFF00FF
          FF00FFD0B48BD1AA5BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFCDD
          FCFB48FBA202A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFBADFBFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = cmdFiltroClick
      end
      object Panel15: TPanel
        Left = 463
        Top = 1
        Width = 119
        Height = 27
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn8: TBitBtn
          Left = 45
          Top = 2
          Width = 30
          Height = 25
          Hint = 'Cliente Anterior'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn8Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF4C2600602F00723800723800623000502800FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF643100643100984B00B85B00BC
            5D00BC5D00BA5C009C4D006C35006C3500FF00FFFF00FFFF00FFFF00FFFF00FF
            743900884300C05F00C26000BC5D00B85B00BC5D00BC5D00C05F00C260008A44
            00502800FF00FFFF00FFFF00FF743900944900D26800C86300BC5D00B85B00B8
            5B00BA5C00BA5C00BA5C00BC5D00C260008A44006C3500FF00FFFF00FF743900
            DE6E00D86B00CA6400BC5D00D3975DFAF3EDF6EADEC37020BA5C00BA5C00BC5D
            00C260006C3500FF00FF7A3C00B45900F07700D86B00C26000D39354FDFAF7FF
            FFFFE3BC96BC6108BA5C00BA5C00BA5C00C05F009C4D00602F007A3C00E06F00
            F07700DE6E00D69352FDF9F6FEFEFDE0B489BA5C00BA5C00BA5C00BA5C00BA5C
            00BE5E00B25800602F00904700F87B00FA7C00FCB26AFEF8F2FFFFFFFEFBF8F9
            DABCF8D8B9EDD5BDEDD5BDEDD5BEEED7C0BC5D00BC5D006A3400A04F00FF9125
            FF840BFEDCBAFFFFFFFFFFFFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFBE5E00BC5D00723800A04F00FF9F41FF9833F58618FED0A3FFFFFFFFFCFAFC
            BD80E9923CE0954ADF944ADE944BDE934AC86300B85B00663200A04F00FF9833
            FFBF81FF7E00F27902FEC792FFFFFFFFF1E3F39D49DE6E00DA6C00DA6C00D268
            00CA6400AA5400663200FF00FFEC7500FFD3A9FFAD5DE87300F07802FEC38AFF
            FFFFFFFAF5E98522DA6C00D66A00CE6600D469008E4600FF00FFFF00FFEC7500
            FFA043FFE3C7FFAC5BFA7C00EE7905FDC893FED4AAEB7C0EE27000DE6E00E06F
            00C461008E4600FF00FFFF00FFFF00FFD26800FFAD5DFFE9D3FFCA97FF9E3FFF
            8E1FFF850DFF8813FF8813FF8105D66A008A4400FF00FFFF00FFFF00FFFF00FF
            FF00FFFF9833FF9833FFC995FFDFBFFFD2A7FFC58DFFB873FF9B39E06F00E06F
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE87300FF8A17FF
            952DFF9125FC7D00C66200FF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn9: TBitBtn
          Left = 80
          Top = 2
          Width = 30
          Height = 25
          Hint = 'Pr'#243'ximo Cliente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn9Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF4C2600602F00723800723800623000502800FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF643100643100984B00B85B00BC
            5D00BC5D00BA5C009C4D006C35006C3500FF00FFFF00FFFF00FFFF00FFFF00FF
            743900884300C05F00C26000BC5D00B85B00BC5D00BC5D00C05F00C260008A44
            00502800FF00FFFF00FFFF00FF743900944900D26800C86300BC5D00B85B00B8
            5B00BA5C00BA5C00BA5C00BC5D00C260008A44006C3500FF00FFFF00FF743900
            DE6E00D86B00CA6400BC5D00C37020F6EADEFAF3EDD3975DBA5C00BA5C00BC5D
            00C260006C3500FF00FF7A3C00B45900F07700D86B00C26000BE5E00BC6108E3
            BC96FFFFFFFDFAF7D19254BA5C00BA5C00C05F009C4D00602F007A3C00E06F00
            F07700DE6E00C26000BC5D00BE5E00BC5D00DFB489FEFEFDFDF9F6D09052BA5C
            00BE5E00B25800602F00904700F87B00FA7C00FEDFC0FADCBEF7DABDFADBBDF9
            D9B9F8DABCFDFAF8FFFFFFFBF7F2D7A06ABC5D00BC5D006A3400A04F00FF9125
            FF840BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFFFFFFFFFFFFECD3
            BABE5E00BC5D00723800A04F00FF9F41FF9833F7A04AFDA34BFDA34AFDA34AFA
            9A3CF1B880FEFCFAFFFFFFEEC8A3D47518C86300B85B00663200A04F00FF9833
            FFBF81FF7E00F27800FC7D00FC7D00FDA249FDF0E3FFFFFFEFC092DA6D02D268
            00CA6400AA5400663200FF00FFEC7500FFD3A9FFAD5DE87300F07700FC8E22FF
            FAF5FFFFFFF4BE8ADA6D02D66A00CE6600D469008E4600FF00FFFF00FFEC7500
            FFA043FFE3C7FFAC5BFA7C00EF7E0EFDD3AAFEC893EA7705E27000DE6E00E06F
            00C461008E4600FF00FFFF00FFFF00FFD26800FFAD5DFFE9D3FFCA97FF9E3FFF
            8E1FFF850DFF8813FF8813FF8105D66A008A4400FF00FFFF00FFFF00FFFF00FF
            FF00FFFF9833FF9833FFC995FFDFBFFFD2A7FFC58DFFB873FF9B39E06F00E06F
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE87300FF8A17FF
            952DFF9125FC7D00C66200FF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
      object cmdNovo: TBitBtn
        Left = 8
        Top = 2
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
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
      object cmdAltera: TBitBtn
        Left = 33
        Top = 2
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = cmdAlteraClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000420B0000420B00000001000000010000000000000084
          0000210021005A4A29004A3939005A5242004A4A4A005A524A0073524A005A52
          52006300630073737300BD847B00C6947B00CE9C7B00B58484009C948400BD94
          9400EFCE9400F7CE9400C6A59C00EFCE9C00F7CE9C00F7D69C00C6ADA500CEAD
          A500F7D6A500C6ADAD00CEB5AD00D6B5AD00EFD6AD00F7D6AD00C6B5B500D6BD
          B500DEBDB500DEC6B500E7C6B500EFC6B500EFCEB500F7D6B500F7DEB500D6C6
          BD00DECEBD00EFCEBD00F7DEBD0000C6C600C6C6C600D6CEC600F7DEC600F7E7
          C600E7CECE00E7D6CE00F7E7CE00E7D6D600F7E7D600FFE7D600FFEFD600FFEF
          DE00FFEFE700FFF7E70021F7EF00FFF7EF0018F7F700FFF7F700FFFFF700FF00
          FF0000FFFF0021FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0041410F0F0F0F
          0F0F0F0F0F0F0F0F0F4141411438312C281E1A15121212170F41414114382E2E
          2E2E2E2E2E2E2E150F414141183A3634302C1E15151512150F414141183B3634
          31302805151515120F4141411C402E2E2E2E2E06002E2E150F4141411D443D3A
          363431070000291E0F41414121443F3D39363407422D00290F41414121442E2E
          2E2E2E0B3E2D002911414141224444443F3A393609422D001B41414123444444
          443F3A3910432D002041414124442E2E2E2E2E2E3604422D0041414124444444
          4444444032083C2D004141412B44444444444444330D030001004141243F3D3D
          3D3D3D3D320D0801010241412426262626242426210C410A0A41}
      end
      object cmdGrava: TBitBtn
        Left = 58
        Top = 2
        Width = 50
        Height = 25
        Caption = 'Ok'
        Default = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
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
      object cmdCancela: TBitBtn
        Left = 108
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Cancela Inclus'#227'o/Altera'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = cmdCancelaClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A0000
          9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A174AFD103BF400009AFF00FFFF
          00FFFF00FFFF00FF00009A002CF80030FC00009AFF00FFFF00FFFF00FFFF00FF
          00009A1A47F81A4CFF123BF100009AFF00FFFF00FF00009A012DF60132FF002A
          F300009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A1C47F61B4DFF143EF400
          009A00009A002DF80134FF032BF200009AFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF00009A1D48F61D50FF103DFB0431FE0132FF002CF600009AFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A1A48F913
          42FF0C3CFF0733F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00009A214EFC1D4BFF1847FF1743F600009AFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00009A2E5BF92C5FFF22
          4DF8204BF82355FF1B46F600009AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00009A3664FA386BFF2D59F400009A00009A224CF42558FF1D49F60000
          9AFF00FFFF00FFFF00FFFF00FFFF00FF00009A4071FA4274FF325DF100009AFF
          00FFFF00FF00009A224DF1275AFF204CF800009AFF00FFFF00FFFF00FFFF00FF
          00009A497AFC3B66F300009AFF00FFFF00FFFF00FFFF00FF00009A2550F42655
          FA00009AFF00FFFF00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF00009A00009AFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object cmdExclui: TBitBtn
        Left = 133
        Top = 2
        Width = 25
        Height = 25
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
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
      object cmdChecar1: TBitBtn
        Left = 224
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Checar integridade dos lan'#231'amentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = cmdChecar1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object cmdChecar: TBitBtn
        Left = 249
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Checar integridade dos movimentos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = cmdChecarClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
      object cmdChecarNF: TBitBtn
        Left = 274
        Top = 2
        Width = 25
        Height = 25
        Hint = 'Checar integridade das Notas Fiscais'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = cmdChecarNFClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB13300
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001B
          A92E1DB132006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          4FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF
          00FFFF00FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D210066
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
  end
  object Panel4: TPanel
    Left = 585
    Top = 0
    Width = 299
    Height = 544
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 2
    object Label12: TLabel
      Left = 1
      Top = 1
      Width = 297
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Plano de Contas'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Outline1: TOutline
      Left = 1
      Top = 14
      Width = 297
      Height = 529
      ItemHeight = 13
      Align = alClient
      TabOrder = 0
      OnClick = Outline1Click
      ItemSeparator = '\'
    end
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterOpen = dbMovBancoAfterScroll
    AfterInsert = dbMovBancoAfterInsert
    BeforeEdit = dbMovBancoBeforeEdit
    BeforePost = dbMovBancoBeforePost
    BeforeDelete = dbMovBancoBeforeDelete
    AfterScroll = dbMovBancoAfterScroll
    OnCalcFields = dbMovBancoCalcFields
    OnFilterRecord = dbMovBancoFilterRecord
    IndexFieldNames = 'MovBanco desc'
    Left = 224
    Top = 426
    object dbMovBancoMovBanco: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'MovBanco'
      Origin = 'dbo.MovBanco.MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.MovBanco.BancoID'
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
      Origin = 'dbo.MovBanco.Fundo'
    end
    object dbMovBancoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.MovBanco.Tipo'
      Size = 1
    end
    object dbMovBancoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.MovBanco.Doc'
    end
    object dbMovBancoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.MovBanco.Valor'
    end
    object dbMovBancoFavorecido: TStringField
      FieldName = 'Favorecido'
      Origin = 'dbo.MovBanco.Favorecido'
      Size = 50
    end
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
      Origin = 'dbo.MovBanco.Cruzado'
    end
    object dbMovBancoHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'dbo.MovBanco.Historico'
      BlobType = ftMemo
    end
    object dbMovBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.MovBanco.Status'
      Size = 1
    end
    object dbMovBancoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.MovBanco.Filial'
    end
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.MovBanco.Usuario'
      Size = 10
    end
    object dbMovBancoTipoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoTexto'
      Size = 2
      Calculated = True
    end
    object dbMovBancoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.MovBanco.UsuarioI'
      Size = 10
    end
    object dbMovBancoTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.MovBanco.TipoPag'
      Size = 1
    end
    object dbMovBancoTipoPagTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPagTexto'
      Size = 3
      Calculated = True
    end
    object dbMovBancoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
      Origin = 'dbo.MovBanco.DataEntrada'
    end
    object dbMovBancoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
      Origin = 'dbo.MovBanco.DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.MovBanco.DataInclusao'
    end
    object dbMovBancoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.MovBanco.DataAlteracao'
    end
    object dbMovBancoNumeroDoc: TStringField
      FieldName = 'NumeroDoc'
      FixedChar = True
    end
  end
  object dbLancamento: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'MovBanco'
    DetailFields = 'MovBanco'
    MasterSource = dsMovBanco
    Connection = frmMenu.dadosfin
    AfterInsert = dbLancamentoAfterInsert
    BeforePost = dbLancamentoBeforePost
    AfterPost = dbLancamentoAfterPost
    BeforeDelete = dbLancamentoBeforeDelete
    AfterScroll = dbLancamentoAfterScroll
    Left = 256
    Top = 426
    object dbLancamentoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Lancamentos.Filial'
    end
    object dbLancamentoLancamento: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'dbo.Lancamentos.Lancamento'
      ReadOnly = True
    end
    object dbLancamentoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Lancamentos.Cliente'
      OnChange = dbLancamentoClienteChange
    end
    object dbLancamentoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Lancamentos.ClienteDeb'
    end
    object dbLancamentoPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Lancamentos.Prazo'
    end
    object dbLancamentoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Lancamentos.Cod1'
    end
    object dbLancamentoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Lancamentos.Cod2'
    end
    object dbLancamentoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Lancamentos.Cod3'
    end
    object dbLancamentoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'dbo.Lancamentos.Historico'
      Size = 60
    end
    object dbLancamentoDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.Lancamentos.Doc'
    end
    object dbLancamentoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Lancamentos.Valor'
    end
    object dbLancamentoTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'dbo.Lancamentos.Tributo'
    end
    object dbLancamentoBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.Lancamentos.BancoID'
    end
    object dbLancamentoCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'dbo.Lancamentos.Cheque'
    end
    object dbLancamentoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Lancamentos.ValorPago'
    end
    object dbLancamentoPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'dbo.Lancamentos.Pago'
    end
    object dbLancamentoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.Lancamentos.Selecionado'
    end
    object dbLancamentoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.Lancamentos.Status'
      Size = 1
    end
    object dbLancamentoPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'dbo.Lancamentos.Previsao'
    end
    object dbLancamentoMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'dbo.Lancamentos.MovBanco'
    end
    object dbLancamentoNF: TIntegerField
      FieldName = 'NF'
      Origin = 'dbo.Lancamentos.NF'
    end
    object dbLancamentoSeq: TStringField
      FieldName = 'Seq'
      Origin = 'dbo.Lancamentos.Seq'
      Size = 1
    end
    object dbLancamentoPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'dbo.Lancamentos.Porcentagem'
      Precision = 5
    end
    object dbLancamentoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Lancamentos.Usuario'
      Size = 10
    end
    object dbLancamentoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbLancamentoClienteDebNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDebNome'
      LookupDataSet = dbClienteDeb
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteDeb'
      Size = 40
      Lookup = True
    end
    object dbLancamentoContabilizado: TBooleanField
      FieldName = 'Contabilizado'
      Origin = 'dbo.Lancamentos.Contabilizado'
    end
    object dbLancamentoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.Lancamentos.UsuarioI'
      Size = 10
    end
    object dbLancamentoTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.Lancamentos.TipoPag'
      Size = 1
    end
    object dbLancamentoFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'dbo.Lancamentos.Funcionario'
    end
    object dbLancamentoFuncionarioNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FuncionarioNome'
      LookupDataSet = dbFuncionario
      LookupKeyFields = 'Funcionario'
      LookupResultField = 'Nome'
      KeyFields = 'Funcionario'
      Size = 40
      Lookup = True
    end
    object dbLancamentoValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'dbo.Lancamentos.ValorBruto'
    end
    object dbLancamentoMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dbMedico
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbLancamentoEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbLancamentoAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Lancamentos.Auditor'
    end
    object dbLancamentoTipoAud: TStringField
      FieldName = 'TipoAud'
      Origin = 'dbo.Lancamentos.TipoAud'
      Size = 1
    end
    object dbLancamentoDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'dbo.Lancamentos.DataEmissao'
    end
    object dbLancamentoDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'dbo.Lancamentos.DataVencto'
    end
    object dbLancamentoDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'dbo.Lancamentos.DataPagto'
    end
    object dbLancamentoPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
      Origin = 'dbo.Lancamentos.PagtoPre'
    end
    object dbLancamentoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Lancamentos.DataInclusao'
    end
    object dbLancamentoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.Lancamentos.DataAlteracao'
    end
  end
  object dsMovBanco: TDataSource
    DataSet = dbMovBanco
    OnStateChange = dsMovBancoStateChange
    Left = 224
    Top = 456
  end
  object dsLancamento: TDataSource
    DataSet = dbLancamento
    OnStateChange = dsLancamentoStateChange
    Left = 256
    Top = 456
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    Left = 288
    Top = 426
    object dbPlanoCCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.PlanoContas.Cod1'
    end
    object dbPlanoCCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.PlanoContas.Cod2'
    end
    object dbPlanoCCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.PlanoContas.Cod3'
    end
    object dbPlanoCDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'dbo.PlanoContas.Descricao'
      Size = 60
    end
  end
  object dsPlanoC: TDataSource
    DataSet = dbPlanoC
    Left = 288
    Top = 456
  end
  object dbConta: TMSTable
    TableName = 'dbo.CCorrente'
    MasterSource = dsMovBanco
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Left = 320
    Top = 426
    object dbContaBancoID: TAutoIncField
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbContaBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbContaAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      Size = 10
    end
    object dbContaConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.CCorrente.Conta'
      Size = 15
    end
    object dbContaNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.CCorrente.Nome'
      Size = 40
    end
    object dbContaSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'dbo.CCorrente.Sigla'
      Size = 3
    end
    object dbContaEndereco: TMemoField
      FieldName = 'Endereco'
      Origin = 'dbo.CCorrente.Endereco'
      BlobType = ftMemo
    end
    object dbContaGerente: TStringField
      FieldName = 'Gerente'
      Origin = 'dbo.CCorrente.Gerente'
      Size = 30
    end
    object dbContaFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.CCorrente.Fone'
      Size = 25
    end
    object dbContaFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.CCorrente.Fax'
      Size = 25
    end
    object dbContaSite: TStringField
      FieldName = 'Site'
      Origin = 'dbo.CCorrente.Site'
      Size = 60
    end
    object dbContaFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.CCorrente.Filial'
    end
    object dbContaUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Origin = 'dbo.CCorrente.UltimoCheque'
    end
    object dbContaDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbContaSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
      Origin = 'dbo.CCorrente.SaldoFechamento'
    end
    object dbContaUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.CCorrente.UsuarioFechamento'
      Size = 10
    end
    object dbContaSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
      Origin = 'dbo.CCorrente.SaldoAtual'
    end
    object dbContaLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
      Origin = 'dbo.CCorrente.LimiteCredito'
    end
    object dbContaStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbContaDataInclusao: TDateField
      FieldName = 'DataInclusao'
      Origin = 'dbo.CCorrente.DataInclusao'
    end
    object dbContaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 352
    Top = 426
  end
  object dsConta: TDataSource
    DataSet = dbConta
    Left = 320
    Top = 456
  end
  object dbClienteDeb: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Nome'
    Left = 384
    Top = 426
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    Left = 416
    Top = 426
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
    Left = 416
    Top = 456
  end
  object dbLancamento1: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;NF;Seq;Cod1;Cod2;Cod3'
    Left = 448
    Top = 426
    object dbLancamento1Filial: TIntegerField
      FieldName = 'Filial'
    end
    object dbLancamento1Lancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbLancamento1Cliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbLancamento1ClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbLancamento1Prazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbLancamento1Cod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbLancamento1Cod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbLancamento1Cod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbLancamento1Historico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbLancamento1Doc: TStringField
      FieldName = 'Doc'
    end
    object dbLancamento1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbLancamento1Tributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbLancamento1BancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbLancamento1Cheque: TStringField
      FieldName = 'Cheque'
    end
    object dbLancamento1ValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbLancamento1Pago: TBooleanField
      FieldName = 'Pago'
    end
    object dbLancamento1Selecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbLancamento1Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbLancamento1Previsao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbLancamento1MovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbLancamento1NF: TIntegerField
      FieldName = 'NF'
    end
    object dbLancamento1Seq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
    object dbLancamento1Porcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbLancamento1Usuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbLancamento1UsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbLancamento1DataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbLancamento1DataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbLancamento1DataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbLancamento1DataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbLancamento1DataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
    object dbLancamento1PagtoPre: TIntegerField
      FieldName = 'PagtoPre'
    end
  end
  object dbMovBanco1: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbMovBanco1FilterRecord
    IndexFieldNames = 'MovBanco'
    Left = 480
    Top = 426
    object dbMovBanco1MovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBanco1BancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBanco1Fundo: TIntegerField
      FieldName = 'Fundo'
    end
    object dbMovBanco1Tipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovBanco1Doc: TStringField
      FieldName = 'Doc'
    end
    object dbMovBanco1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovBanco1Favorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbMovBanco1Cruzado: TBooleanField
      FieldName = 'Cruzado'
    end
    object dbMovBanco1Historico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbMovBanco1Status: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbMovBanco1Filial: TIntegerField
      FieldName = 'Filial'
    end
    object dbMovBanco1Usuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbMovBanco1Selecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbMovBanco1Aplicacao: TIntegerField
      FieldName = 'Aplicacao'
    end
    object dbMovBanco1DataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbMovBanco1DataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbMovBanco1DataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbMovBanco1DataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dbDuplicata: TMSTable
    TableName = 'dbo.Receber'
    MasterFields = 'Filial;NF'
    DetailFields = 'Filial;Duplicata'
    MasterSource = dsNF
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;Duplicata'
    Left = 544
    Top = 426
    object dbDuplicataFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbDuplicataDuplicata: TIntegerField
      FieldName = 'Duplicata'
    end
    object dbDuplicataSeq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
    object dbDuplicataSeqNum: TSmallintField
      FieldName = 'SeqNum'
    end
    object dbDuplicataPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbDuplicataDataEmissao: TDateField
      FieldName = 'DataEmissao'
    end
    object dbDuplicataCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbDuplicataPraca: TStringField
      FieldName = 'Praca'
    end
    object dbDuplicataDataVencto: TDateField
      FieldName = 'DataVencto'
    end
    object dbDuplicataValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbDuplicataAcrescimos: TCurrencyField
      FieldName = 'Acrescimos'
    end
    object dbDuplicataDescontos: TCurrencyField
      FieldName = 'Descontos'
    end
    object dbDuplicataBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbDuplicataDataPagto: TDateField
      FieldName = 'DataPagto'
    end
    object dbDuplicataValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbDuplicataDocPagto: TStringField
      FieldName = 'DocPagto'
      Size = 30
    end
  end
  object dsDuplicata: TDataSource
    DataSet = dbDuplicata
    Left = 544
    Top = 456
  end
  object dbNF: TMSTable
    TableName = 'dbo.NF'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;NF'
    Left = 512
    Top = 426
    object dbNFFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbNFNF: TIntegerField
      FieldName = 'NF'
    end
    object dbNFFatura: TStringField
      FieldName = 'Fatura'
      Size = 10
    end
    object dbNFNatureza: TStringField
      FieldName = 'Natureza'
      Size = 40
    end
    object dbNFCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbNFDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
      Size = 10
    end
    object dbNFIRenda: TFloatField
      FieldName = 'IRenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbNFImpostos: TFloatField
      FieldName = 'Impostos'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbNFNFBruto: TCurrencyField
      FieldName = 'NFBruto'
    end
    object dbNFValorIRenda: TCurrencyField
      FieldName = 'ValorIRenda'
    end
    object dbNFValorImpostos: TCurrencyField
      FieldName = 'ValorImpostos'
    end
    object dbNFNFLiquida: TCurrencyField
      FieldName = 'NFLiquida'
    end
    object dbNFObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
      Size = 10
    end
    object dbNFStatus: TBooleanField
      FieldName = 'Status'
    end
    object dbNFBancoIDDep: TIntegerField
      FieldName = 'BancoIDDep'
    end
    object dbNFUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbNFClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbNFClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbNFDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbNFDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbNFDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsNF: TDataSource
    DataSet = dbNF
    Left = 512
    Top = 456
  end
  object dbFuncionario: TMSTable
    TableName = 'dbo.Funcionario'
    Connection = frmMenu.dadosfin
    Filtered = True
    IndexFieldNames = 'Nome'
    Left = 579
    Top = 424
    object dbFuncionarioFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'dbo.Funcionario.Funcionario'
    end
    object dbFuncionarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Funcionario.Nome'
      Size = 40
    end
    object dbFuncionarioBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.Funcionario.Banco'
    end
    object dbFuncionarioAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.Funcionario.Agencia'
      Size = 10
    end
    object dbFuncionarioConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.Funcionario.Conta'
      Size = 10
    end
    object dbFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'dbo.Funcionario.CPF'
      Size = 18
    end
    object dbFuncionarioSalarioBruto: TCurrencyField
      FieldName = 'SalarioBruto'
      Origin = 'dbo.Funcionario.SalarioBruto'
    end
    object dbFuncionarioCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Funcionario.Cliente'
    end
    object dbFuncionarioDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Funcionario.DataFim'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = dbFuncionario
    Left = 579
    Top = 456
  end
  object dsMedico: TDataSource
    DataSet = dbMedico
    Left = 608
    Top = 457
  end
  object dsEnfermeiro: TDataSource
    DataSet = dbEnfermeiro
    Left = 642
    Top = 459
  end
  object dbMedico: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 608
    Top = 425
    object dbMedicoAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Auditores.Auditor'
    end
    object dbMedicoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Auditores.Nome'
      Size = 40
    end
    object dbMedicoCRM: TIntegerField
      FieldName = 'CRM'
      Origin = 'dbo.Auditores.CRM'
    end
    object dbMedicoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Auditores.Cliente'
    end
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Nome'
    Left = 640
    Top = 426
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
  end
end
