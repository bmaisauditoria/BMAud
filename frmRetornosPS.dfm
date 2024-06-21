object frmRetornoPS: TfrmRetornoPS
  Left = 263
  Top = 0
  Width = 1014
  Height = 688
  Caption = 'Retorno de Dados - Pronto Socorro'
  Color = clBtnFace
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
  object pagRetorno: TPageControl
    Left = 0
    Top = 0
    Width = 996
    Height = 641
    ActivePage = tabLeitura
    Align = alClient
    TabOrder = 0
    object tabLeitura: TTabSheet
      Caption = 'Processar Retorno'
      object Splitter2: TSplitter
        Left = 0
        Top = 502
        Width = 988
        Height = 4
        Cursor = crVSplit
        Align = alBottom
      end
      object ProgressBar1: TProgressBar
        Left = 0
        Top = 594
        Width = 988
        Height = 16
        Align = alBottom
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 0
        Top = 506
        Width = 988
        Height = 88
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 988
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Valida'#231#227'o do Registro'
          Color = 12040191
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBMemo4: TDBMemo
          Left = 0
          Top = 16
          Width = 988
          Height = 72
          Align = alClient
          DataField = 'Notas'
          DataSource = dsProcesso
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 308
        Width = 988
        Height = 194
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Splitter1: TSplitter
          Left = 985
          Top = 0
          Height = 194
          Align = alRight
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 985
          Height = 194
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            Left = 0
            Top = 113
            Width = 985
            Height = 16
            Align = alBottom
            Alignment = taCenter
            Caption = 'Observa'#231#245'es'
            Color = 11206642
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 0
            Top = 0
            Width = 985
            Height = 16
            Align = alTop
            Alignment = taCenter
            Caption = 'Glosas'
            Color = 11206642
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object grdAuditoria: TDBGrid
            Left = 36
            Top = 16
            Width = 949
            Height = 97
            Align = alClient
            DataSource = dsProcessoGlosa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdAuditoriaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Tipo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Glosa1'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Glosa2'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorGlosadoM'
                Title.Alignment = taRightJustify
                Title.Caption = 'Medico'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorGlosadoE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Enfermeiro'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UsuarioI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataInclusao'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataAlteracao'
                Width = 78
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 0
            Top = 16
            Width = 36
            Height = 97
            Align = alLeft
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 1
            object cmdGravaA: TBitBtn
              Left = 4
              Top = 2
              Width = 30
              Height = 31
              Hint = 'Gravar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = cmdGravaAClick
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
            object cmdExcuiA: TBitBtn
              Left = 4
              Top = 34
              Width = 30
              Height = 31
              Hint = 'Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = cmdExcuiAClick
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
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 129
            Width = 985
            Height = 65
            Align = alBottom
            DataField = 'Observacao'
            DataSource = dsProcesso
            TabOrder = 2
          end
        end
      end
      object tabFiltro: TTabControl
        Left = 0
        Top = 36
        Width = 988
        Height = 272
        Align = alClient
        TabOrder = 3
        Tabs.Strings = (
          'Todas'
          'Ok'
          'N'#227'o Ok')
        TabIndex = 0
        OnChange = tabFiltroChange
        object Label1: TLabel
          Left = 4
          Top = 58
          Width = 980
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Capeantes'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 4
          Top = 74
          Width = 980
          Height = 16
          Align = alTop
          Alignment = taCenter
          Color = 10747718
          DataField = 'AtendimentoPS'
          DataSource = dsProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object grdProntuario: TDBGrid
          Left = 40
          Top = 90
          Width = 944
          Height = 178
          Align = alClient
          DataSource = dsProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdProntuarioDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ProcessaTexto'
              Title.Caption = 'Status'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AtendimentoPS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteCNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteNome'
              Title.Caption = 'Cliente Site'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteBusca'
              Title.Caption = 'Cliente Sistema'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HospitalCNPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HospitalNome'
              Title.Caption = 'HospitalSite'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hospital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HospitalBusca'
              Title.Caption = 'Hospital Sistema'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MedicoCRM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MedicoNome'
              Title.Caption = 'Medico Site'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Medico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MedicoBusca'
              Title.Caption = 'Medico Sistema'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EnfermeiroCoren'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EnfermeiroNome'
              Title.Caption = 'Enfermeiro Site'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Enfermeiro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EnfermeiroBusca'
              Title.Caption = 'Enfermeiro Sistema'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataFechamento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MesCompetencia'
              Title.Alignment = taRightJustify
              Title.Caption = 'Mes'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AnoCompetencia'
              Title.Alignment = taRightJustify
              Title.Caption = 'Ano'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QtdAtendimento'
              Title.Alignment = taRightJustify
              Title.Caption = 'Qtd. Atendimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taRightJustify
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorGlosado'
              Title.Alignment = taRightJustify
              Title.Caption = 'Glosado'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorNaoAcordado'
              Title.Alignment = taRightJustify
              Title.Caption = 'N'#227'o Acordado'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PosAnalise'
              Title.Caption = 'Pos Analise'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UsuarioI'
              Title.Caption = 'Usuario Inclus'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataInclusao'
              Title.Caption = 'Inclus'#227'o'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Usuario'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataAlteracao'
              Title.Caption = 'Altera'#231#227'o'
              Width = 70
              Visible = True
            end>
        end
        object CoolBar1: TCoolBar
          Left = 4
          Top = 27
          Width = 980
          Height = 31
          Bands = <
            item
              Control = cmpBusca
              ImageIndex = -1
              MinHeight = 21
              Width = 976
            end
            item
              Control = DateTimePicker1
              ImageIndex = -1
              MinHeight = 24
              Width = 976
            end>
          object cmpBusca: TEdit
            Left = 9
            Top = 0
            Width = 963
            Height = 21
            TabOrder = 0
            OnChange = cmpBuscaChange
          end
          object DateTimePicker1: TDateTimePicker
            Left = 9
            Top = 23
            Width = 963
            Height = 24
            Date = 35773.595042013900000000
            Time = 35773.595042013900000000
            TabOrder = 1
            OnChange = lblDataChange
          end
        end
        object listPlan: TListBox
          Left = 985
          Top = 187
          Width = 149
          Height = 70
          ItemHeight = 16
          TabOrder = 2
          Visible = False
        end
        object Panel13: TPanel
          Left = 4
          Top = 90
          Width = 36
          Height = 178
          Align = alLeft
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 3
          object cmdGravaP: TBitBtn
            Left = 2
            Top = 2
            Width = 31
            Height = 31
            Hint = 'Gravar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = cmdGravaPClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
              9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
              D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
              4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
              E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
              D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
              4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
              DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
              CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
              6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
              A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
              CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
              6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
              F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
              CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
              6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
              F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
              CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
              6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
              F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
              97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
              3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object cmdExcluiP: TBitBtn
            Left = 2
            Top = 33
            Width = 31
            Height = 31
            Hint = 'Excluir'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
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
          object BitBtn3: TBitBtn
            Left = 2
            Top = 64
            Width = 31
            Height = 31
            Hint = 'Altera o Status do Prontu'#225'rio'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn3Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFB78183A47874A47874A47874A47874A47874A4
              7874A47874A47874A47874A47874A47874986B66FF00FFFF00FFFF00FFB78183
              FDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC97F3D1
              99986B66FF00FFFF00FFFF00FFB48176FEF3E3F8E7D3F5E3CBF5DFC3CFCF9F01
              8A02018A02CCC68BEECC9AEECC97F3D199986B66FF00FFFF00FFFF00FFB48176
              FFF7EBF9EBDA018A02D1D6AC018A02D0CF9ECECC98018A02CCC689EFCD99F3D1
              98986B66FF00FFFF00FFFF00FFBA8E85FFFCF4FAEFE4018A02018A02D1D5ADF5
              DFC2F4DBBBCDCC98018A02F0D0A1F3D29B986B66FF00FFFF00FFFF00FFBA8E85
              FFFFFDFBF4EC018A02018A02018A02F5E3C9F5DFC2F4DBBAF2D7B1F0D4A9F5D5
              A3986B66FF00FFFF00FFFF00FFCB9A82FFFFFFFEF9F5FBF3ECFAEFE2F9EADAF8
              E7D2018A02018A02018A02F2D8B2F6D9AC986B66FF00FFFF00FFFF00FFCB9A82
              FFFFFFFFFEFD018A02D6E3C9F9EFE3F8EADAD2D9B3018A02018A02F4DBB9F8DD
              B4986B66FF00FFFF00FFFF00FFDCA887FFFFFFFFFFFFD9EDD8018A02D6E3C8D5
              E0C1018A02D3D8B2018A02F7E1C2F0DAB7986B66FF00FFFF00FFFF00FFDCA887
              FFFFFFFFFFFFFFFFFFD9EDD8018A02018A02D5DFC1FAEDDCFCEFD9E6D9C4C6BC
              A9986B66FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFD
              F8F3FDF6ECF1E1D5B48176B48176B48176B48176FF00FFFF00FFFF00FFE3B18E
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9B48176E8B270ECA5
              4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFE4D4D2B48176FAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
              FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB48176CF9B86FF00
              FFFF00FFFF00FFFF00FFFF00FFEDBD92DAA482DAA482DAA482DAA482DAA482DA
              A482DAA482DAA482B48176FF00FFFF00FFFF00FFFF00FFFF00FF}
          end
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 988
        Height = 36
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 4
        object cmdLerBB: TBitBtn
          Left = 4
          Top = 2
          Width = 147
          Height = 31
          Hint = 'Le arquivo de Retorno - Layout B&&B'
          Caption = 'Ler Arquivo'
          TabOrder = 0
          OnClick = cmdLerBBClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF0274AC
            0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274AC0274
            AC0274ACFF00FFFF00FF8E5D598E5D598E5D598E5D598E5D598E5D597342414A
            BFF74ABFF64ABFF74ABFF64BC0F72398CC0274ACFF00FFFF00FF96645CFFFEDC
            FFE7BDFFE2B1FFDAA4FFEFA6265B1D046B0B046B0B046B0B37ABA353C7F7279D
            CE6ACBE50274ACFF00FFA16E5FFFFBEEFFE3CAFFDDBCFFD4ADFFE6AD7342414C
            C0CA046B0B088013046B0B32A4822AA0C799EDF70274ACFF00FFAF7965FFFBF8
            FFEBD7FEE6CAFFDCBAFFEEBC73424169DCFB6ADCFB046B0B14A428046B0B2092
            8A9FF0F70274ACFF00FFBD866AFFFEFEFFF4E7FEEDD9FEE3C7FFFAD073424174
            E5FC74E5FC42AF91046B0B21B43E046B0B97EBE552BBD70274ACCC926FFFFFFF
            FEF7F0FFF6E9FFF4E2FFFFE673424197DCCF88D0BB649162046B0B35D05D046B
            0B7AA37A86A78F0274ACD89E74FFFFFFFFFCFAFCF4EBDCC2B8BCA5A973424102
            6D66046B0B046B0B2EC2533FDA6E2AB64C046B0B046B0B0274ACE1A577FEFBFA
            FEFBFAEAE0E0A0675BA0675BD49F6083F2FE48B58E046B0B42E17548E98033C2
            5A046B0BEDDDA1734241E1A577D1926DD1926DD1926DA0675BC2B1708FE9E789
            F8FE8AFAFE5D6A37046B0B2DBC53046B0BEBD3ABFFEEBC734241FF00FF0274AC
            FEFEFE8FFEFF8FFEFF8FFEFF0274AC0274AC0274ACBD866A6AA76C046B0BE6E0
            C5FEE3C7FFFAD0734241FF00FFFF00FF0274AC0274AC0274AC0274ACFF00FFFF
            00FFFF00FFCC926FFFFFFFFEF7F0FFF6E9FFF4E2FFFFE6734241FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD89E74FFFFFFFFFCFAFCF4
            EBDCC2B8BCA5A9734241FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFE1A577FEFBFAFEFBFAEAE0E0A0675BA0675BD49F60FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE1A577D1926DD1926DD192
            6DA0675BD49F60FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdValidar: TBitBtn
          Left = 151
          Top = 2
          Width = 148
          Height = 31
          Hint = 'Validar os dados'
          Caption = 'Validar os dados'
          TabOrder = 1
          OnClick = cmdValidarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFA67A75A67A75A67A75A67A75A67A75A67A75A67A75A6
            7A75A67A75A67A75FF00FF000000000000000000000000FF00FFA67A75F1E1D6
            EEDBCDECD6C5EAD1BDE7CCB5E5C8ADE3C3A5E0BF9DA67A75FF00FF000000FF00
            FF0335FB000000FF00FFA67A75FCF7F2FAF1E7F9ECDCF7E7D2F5E2C8F4DDBEF3
            D8B4F1D4A9A67A75FF00FF0000000335FB0335FB000000FF00FFA67A75A67A75
            A67A75A67A75A67A75A67A75A67A75A67A75A67A75A67A75FF00FF0000000000
            000000000330E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FBA67A75A67A75
            A67A75A67A75A67A75A67A75A67A75A67A75A67A75A67A75FF00FF0000000000
            00000000000000FF00FFA67A75F1E1D6EEDBCDECD6C5EAD1BDE7CCB5E5C8ADE3
            C3A5E0BF9DA67A75FF00FF000000FF00FF0335FB000000FF00FFA67A75FCF7F2
            FAF1E7F9ECDCF7E7D2F5E2C8F4DDBEF3D8B4F1D4A9A67A75FF00FF0000000335
            FB0335FB000000FF00FFA67A75A67A75A67A75A67A75A67A75A67A75A67A75A6
            7A75A67A75A67A75FF00FF0000000000000000000330E2FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FF0335FBA67A75A67A75A67A75A67A75A67A75A67A75A67A75A6
            7A75A67A75A67A75FF00FF000000000000000000000000FF00FFA67A75F1E1D6
            EEDBCDECD6C5EAD1BDE7CCB5E5C8ADE3C3A5E0BF9DA67A75FF00FF000000FF00
            FF0335FB000000FF00FFA67A75FCF7F2FAF1E7F9ECDCF7E7D2F5E2C8F4DDBEF3
            D8B4F1D4A9A67A75FF00FF0000000335FB0335FB000000FF00FFA67A75A67A75
            A67A75A67A75A67A75A67A75A67A75A67A75A67A75A67A75FF00FF0000000000
            000000000330E2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB}
        end
        object cmdRel: TBitBtn
          Left = 450
          Top = 2
          Width = 37
          Height = 31
          Hint = 'Relatorio de Retorno - Rejeitados'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cmdRelClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
            6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
            6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
            B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
            3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
            CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
            090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
            DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
            FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
            C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
            92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
            FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
            CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
            B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
            D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
            E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
            8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdAtualizar: TBitBtn
          Left = 487
          Top = 2
          Width = 136
          Height = 31
          Hint = 'Gera arquivo pra envio'
          Caption = 'Atualizar Dados'
          TabOrder = 3
          OnClick = cmdAtualizarClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF004B00004B00A18283A18283A18283A1
            8283A18283A18283A18283004B00004B00FF00FFFF00FFFF00FFFF00FF004B00
            008100008100DDD4D5004B00004B00DCE0E0D7DADECED5D7BDBABD004B000163
            01004B00FF00FFFF00FFFF00FF004B00008100008100E2D9D9004B00004B00D9
            D8DAD9DEE1D3D9DCC1BDC1004B00016301004B00FF00FFFF00FFFF00FF004B00
            008100008100E6DCDC004B00004B00D5D3D5D8DEE1D7DDE0C6C2C5004B000163
            01004B00FF00FFFF00FFFF00FF004B00008100008100EADEDEE7DDDDDDD4D5D7
            D3D5D5D7D9D7D8DACAC2C5004B00016301004B00FF00FFFF00FFFF00FF004B00
            0081000081000081000081000081000081000081000081000081000081000081
            00004B00FF00FFFF00FFFF00FF004B000081009DC29D9DC29D9DC29D9DC29D9D
            C29D9DC29D9DC29D9DC29D9DC29D008100004B00FF00FFFF00FFFF00FF004B00
            008100F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F70081
            00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
            F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FF004B00
            008100F7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F70081
            00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
            F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FF004B00
            008100F7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F70081
            00004B00FF00FFFF00FFFF00FF004B00008100F7F7F7F7F7F7F7F7F7F7F7F7F7
            F7F7F7F7F7F7F7F7F7F7F7F7F7F7008100004B00FF00FFFF00FFFF00FFFF00FF
            004B00F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7004B
            00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object Panel11: TPanel
          Left = 689
          Top = 1
          Width = 298
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 4
          DesignSize = (
            298
            34)
          object BitBtn1: TBitBtn
            Left = 4
            Top = 1
            Width = 37
            Height = 31
            Hint = 'Retorno Anterior'
            Anchors = [akTop, akRight]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn1Click
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E00000001000000010000006B00000073
              0000007B000000940000009C0000087B08000884080008A5080010731000107B
              10001084100010A5100018731800187B180018841800188C180018A51800217B
              2100218C210021942100219C210021A5210029942900299C290029A529003194
              3100319C310031A53100399C390039A53900429C420042A542004AA54A0052A5
              520052AD52005AAD5A0063AD630063B563006BB56B0073BD73007BB57B007BBD
              7B0084B584008CBD8C008CC68C009CCE9C00A5D6A500B5DEB500FF00FF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00303131313131
              31313131313131313130312A080C0C0C0D0D0909050502012831310A12161919
              16171410100B07030031310F161C1C1C1D202E31201B1004023131131C1F1F1F
              202E3131201D1507053131161E2021202E313131201D150B0631311A2021202E
              31313131201D15100A31311E21202E31313131311F1B14140E31311F21212E31
              313131311C171414113131212323212E313131311C1916161131312126262322
              2E3131311C1916161131312329272423232E31311E1C1919113131262C292625
              24242E31201F1C19113131272D2C29272625242322201F190C31312F27252321
              2120201F1E1C19122B3130313131313131313131313131313130}
          end
          object BitBtn2: TBitBtn
            Left = 261
            Top = 1
            Width = 37
            Height = 31
            Hint = 'Pr'#243'ximo Retorno'
            Anchors = [akTop, akRight]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn2Click
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000E30E0000E30E00000001000000010000006B00000073
              0000007B000000940000009C0000087B08000884080008A5080010731000107B
              10001084100010A5100018731800187B180018841800188C180018A51800217B
              2100218C210021942100219C210021A5210029942900299C290029A529003194
              3100319C3100399C390039A53900429C420042A542004AA54A0052A5520052AD
              52005AAD5A0063AD630063B563006BB56B0073BD73007BB57B007BBD7B0084B5
              84008CBD8C008CC68C009CCE9C00A5D6A500B5DEB500FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F3030303030
              3030303030303030302F3029080C0C0C0D0D0909050502012730300A12161919
              16171410100B07030030300F161B1B1B302D1F1F1F181004023030131B1E1E1E
              30302D1F1F1C1507053030161D1F201F3030302D1F1C150B0630301A1F201F1F
              303030302D1C15100A30301D201F1F1F30303030302D14140E30301E20201F1F
              30303030302D1414113030202222201F303030302D1916161130302025252221
              3030302D1B191616113030222826232230302D1D1D1B1919113030252B282524
              302D22201F1E1B19113030262C2B282625242322211F1E190C30302E26242220
              201F1F1E1D1B19122A302F30303030303030303030303030302F}
          end
          object Panel6: TPanel
            Left = 41
            Top = 1
            Width = 219
            Height = 31
            TabOrder = 2
            object Label3: TLabel
              Left = 26
              Top = 7
              Width = 131
              Height = 16
              Caption = 'Visualizando Retorno:'
            end
            object DBText1: TDBText
              Left = 158
              Top = 6
              Width = 34
              Height = 19
              DataField = 'Retorno'
              DataSource = dsRetorno
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object BitBtn4: TBitBtn
          Left = 299
          Top = 2
          Width = 151
          Height = 31
          Hint = 'Altera'#231#245'es em massa'
          Caption = 'Altera'#231#245'es'
          TabOrder = 5
          OnClick = BitBtn4Click
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000430B0000430B000000010000000100008C5A5A009C6B
            6B00A57B73000000840084848400B58C8C0039529C00395AAD004A6BBD005A73
            C600C6C6C6006384CE00F7E7CE00F7EFDE00FFF7E700FFFFEF00FF00FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00101010070606
            0606060606060607101010100805000000000000000000000710101008050D0D
            0D0D0D0D0D0D0D000610101008050D040404040404040D000610101008050D0C
            0C0C0C0C0C0C0D000610101008050D040404040404040D000610101008050D0D
            0D0D0D0D0D0D0D010610101008050E0E030D0A03030A0E010610101009050F0F
            030F030F0F030F010610101009050F0F030F0F0F0F030F020610101009050F0F
            030F0303030A0F02061010100B0511030311031111111105061010100B051111
            0311030303031105061010100B0511111111111111111105061010100B050505
            050505050505050507101010100B090808080808080808081010}
        end
      end
    end
    object tabRetorno: TTabSheet
      Caption = 'Retornos'
      ImageIndex = 1
      object CoolBar2: TCoolBar
        Left = 0
        Top = 36
        Width = 988
        Height = 30
        Bands = <
          item
            Control = lblTexto
            ImageIndex = -1
            MinHeight = 21
            Width = 984
          end
          item
            Control = lblData
            ImageIndex = -1
            MinHeight = 21
            Width = 984
          end>
        object lblTexto: TEdit
          Left = 9
          Top = 0
          Width = 971
          Height = 21
          TabOrder = 0
          OnChange = lblTextoChange
        end
        object lblData: TDateTimePicker
          Left = 9
          Top = 23
          Width = 971
          Height = 21
          Date = 35773.595042013900000000
          Time = 35773.595042013900000000
          TabOrder = 1
          OnChange = lblDataChange
        end
      end
      object tabOrdemRetorno: TTabControl
        Left = 0
        Top = 66
        Width = 988
        Height = 544
        Align = alClient
        TabOrder = 1
        Tabs.Strings = (
          'Retorno'
          'Data'
          'Nome Arquivo')
        TabIndex = 0
        OnChange = tabOrdemRetornoChange
        object grdRetorno: TDBGrid
          Left = 4
          Top = 27
          Width = 980
          Height = 497
          Align = alClient
          DataSource = dsRetorno
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdRetornoDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'Retorno'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataProcessamento'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Width = 70
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'HoraTexto'
              Title.Alignment = taRightJustify
              Title.Caption = 'Hora'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeArquivo'
              Title.Caption = 'Nome Arquivo'
              Width = 243
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Registros'
              Title.Alignment = taRightJustify
              Title.Caption = 'Enviados'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Capeantes'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Repetidos'
              Title.Alignment = taRightJustify
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Registrosok'
              Title.Alignment = taRightJustify
              Title.Caption = 'Ok'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RegistrosInclusao'
              Title.Alignment = taRightJustify
              Title.Caption = 'Inclus'#227'o'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RegistrosAlteracao'
              Title.Alignment = taRightJustify
              Title.Caption = 'Altera'#231#227'o'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ProcessadoTexto'
              Title.Alignment = taCenter
              Title.Caption = 'Processado?'
              Visible = True
            end>
        end
        object ProgressBar2: TProgressBar
          Left = 4
          Top = 524
          Width = 980
          Height = 16
          Align = alBottom
          TabOrder = 1
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 988
        Height = 36
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object BitBtn5: TBitBtn
          Left = 11
          Top = 2
          Width = 37
          Height = 31
          Hint = 'Exclui o Retorno e todos os lan'#231'amentos'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BitBtn5Click
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
    end
  end
  object dsProcesso: TDataSource
    DataSet = dbProcesso
    OnStateChange = dsProcessoStateChange
    Left = 533
    Top = 161
  end
  object dsProcessoGlosa: TDataSource
    DataSet = dbProcessoGlosa
    OnStateChange = dsProcessoGlosaStateChange
    Left = 532
    Top = 192
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Cliente'
    Left = 635
    Top = 192
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Cliente.Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Cliente.Nome'
      Size = 40
    end
    object dbClienteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Cliente.Endereco'
      Size = 40
    end
    object dbClienteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.Cliente.Bairro'
      Size = 30
    end
    object dbClienteCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Cliente.Cidade'
      Size = 30
    end
    object dbClienteUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Cliente.UF'
      Size = 2
    end
    object dbClienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Cliente.Cep'
      Size = 9
    end
    object dbClienteFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'dbo.Cliente.Fone1'
      Size = 60
    end
    object dbClienteFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'dbo.Cliente.Fone2'
      Size = 60
    end
    object dbClienteFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.Cliente.Fax'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Cliente.CGC'
      Size = 18
    end
    object dbClienteContato: TStringField
      FieldName = 'Contato'
      Origin = 'dbo.Cliente.Contato'
      Size = 40
    end
    object dbClienteEmail: TStringField
      FieldName = 'Email'
      Origin = 'dbo.Cliente.Email'
      Size = 30
    end
    object dbClienteHomePage: TStringField
      FieldName = 'HomePage'
      Origin = 'dbo.Cliente.HomePage'
      Size = 60
    end
    object dbClienteDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Cliente.DataInclusao'
    end
    object dbClienteClienteID: TStringField
      FieldName = 'ClienteID'
      Origin = 'dbo.Cliente.ClienteID'
      FixedChar = True
      Size = 10
    end
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    Active = True
    BeforeInsert = dbEnfermeiroBeforeInsert
    IndexFieldNames = 'Enfermeiro'
    Left = 566
    Top = 161
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
    object dbEnfermeiroUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Enfermeiros.Usuario'
      Size = 10
    end
    object dbEnfermeiroDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Enfermeiros.DataInclusao'
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Arquivos csv |*.csv'
    Title = 'Arquivos Retorno '
    Left = 736
    Top = 161
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'CNPJ'
    Left = 567
    Top = 225
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.Hospital.Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Hospital.Nome'
      Size = 60
    end
    object dbHospitalCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'dbo.Hospital.CNPJ'
      Size = 18
    end
    object dbHospitalRegiao: TIntegerField
      FieldName = 'Regiao'
      Origin = 'dbo.Hospital.Regiao'
    end
    object dbHospitalCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Hospital.Cidade'
      Size = 30
    end
    object dbHospitalUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Hospital.UF'
      Size = 2
    end
    object dbHospitalCodBradesco: TIntegerField
      FieldName = 'CodBradesco'
      Origin = 'dbo.Hospital.CodBradesco'
    end
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    Active = True
    BeforeInsert = dbAuditorBeforeInsert
    IndexFieldNames = 'Auditor'
    Left = 567
    Top = 193
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
    object dbAuditorUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Auditores.Usuario'
      Size = 10
    end
    object dbAuditorDataInicio: TDateTimeField
      FieldName = 'DataInicio'
      Origin = 'dbo.Auditores.DataInicio'
    end
    object dbAuditorDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Auditores.DataFim'
    end
    object dbAuditorDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Auditores.DataInclusao'
    end
  end
  object dsRetorno: TDataSource
    DataSet = dbRetorno
    Left = 533
    Top = 224
  end
  object dbCodigo: TMSTable
    TableName = 'dbo.Codigo'
    Connection = frmMenu.dadosaud
    Left = 637
    Top = 288
    object dbCodigoCampo: TStringField
      FieldName = 'Campo'
      Origin = 'dbo.Codigo.Campo'
      Size = 15
    end
    object dbCodigoUltimo: TIntegerField
      FieldName = 'Ultimo'
      Origin = 'dbo.Codigo.Ultimo'
    end
  end
  object dbGlosa: TMSTable
    TableName = 'dbo.GlosaI'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'GlosaI'
    Left = 601
    Top = 192
    object dbGlosaGlosaI: TStringField
      FieldName = 'GlosaI'
      Origin = 'dbo.GlosaI.GlosaI'
      Size = 2
    end
    object dbGlosaNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.GlosaI.Nome'
      Size = 70
    end
    object dbGlosaResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'dbo.GlosaI.Responsavel'
      Size = 1
    end
  end
  object dbClienteID: TMSTable
    TableName = 'dbo.ClienteID'
    MasterFields = 'Cliente'
    MasterSource = dsCliente
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente'
    Left = 635
    Top = 161
    object dbClienteIDCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.ClienteID.Cliente'
    end
    object dbClienteIDPrincipal: TIntegerField
      FieldName = 'Principal'
      Origin = 'dbo.ClienteID.Principal'
    end
    object dbClienteIDID: TStringField
      FieldName = 'ID'
      Origin = 'dbo.ClienteID.ID'
      Size = 10
    end
    object dbClienteIDDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'dbo.ClienteID.Descricao'
      Size = 40
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 670
    Top = 192
  end
  object dbAtendH: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHPS'
      'where AtendimentoPS=0'
      'order by AtendimentoPS')
    Left = 705
    Top = 160
    object dbAtendHAtendimentoPS: TIntegerField
      FieldName = 'AtendimentoPS'
      Origin = 'AtendHPS.AtendimentoPS'
    end
    object dbAtendHSequencial: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'AtendHPS.Sequencial'
      ReadOnly = True
    end
    object dbAtendHTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'AtendHPS.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbAtendHCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHPS.Cliente'
    end
    object dbAtendHHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHPS.Hospital'
    end
    object dbAtendHMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHPS.Medico'
    end
    object dbAtendHEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHPS.Enfermeiro'
    end
    object dbAtendHDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'AtendHPS.DataFechamento'
    end
    object dbAtendHMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHPS.MesCompetencia'
    end
    object dbAtendHAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHPS.AnoCompetencia'
    end
    object dbAtendHQtdAtendimento: TSmallintField
      FieldName = 'QtdAtendimento'
      Origin = 'AtendHPS.QtdAtendimento'
    end
    object dbAtendHValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'AtendHPS.Valor'
    end
    object dbAtendHValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
      Origin = 'AtendHPS.ValorGlosado'
    end
    object dbAtendHValorNaoAcordado: TCurrencyField
      FieldName = 'ValorNaoAcordado'
      Origin = 'AtendHPS.ValorNaoAcordado'
    end
    object dbAtendHUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'AtendHPS.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbAtendHObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'AtendHPS.Observacao'
      BlobType = ftMemo
    end
    object dbAtendHDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'AtendHPS.DataInclusao'
    end
    object dbAtendHPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'AtendHPS.PosAnalise'
    end
    object dbAtendHDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'AtendHPS.DataAlteracao'
    end
    object dbAtendHUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'AtendHPS.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbAtendHRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'AtendHPS.Retorno'
    end
    object dbAtendHDataRetorno: TDateTimeField
      FieldName = 'DataRetorno'
    end
  end
  object dbItem: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM dbo.AtendHPSItem'
      'where AtendimentoPS=0'
      'order by AtendimentoPS,Tipo,Glosa1')
    Left = 703
    Top = 193
    object dbItemAtendimentoPS: TIntegerField
      FieldName = 'AtendimentoPS'
      Origin = 'dbo.AtendHPSItem.AtendimentoPS'
    end
    object dbItemTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.AtendHPSItem.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbItemGlosa1: TSmallintField
      FieldName = 'Glosa1'
      Origin = 'dbo.AtendHPSItem.Glosa1'
    end
    object dbItemGlosa2: TSmallintField
      FieldName = 'Glosa2'
      Origin = 'dbo.AtendHPSItem.Glosa2'
    end
    object dbItemValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'dbo.AtendHPSItem.ValorGlosadoM'
    end
    object dbItemValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'dbo.AtendHPSItem.ValorGlosadoE'
    end
    object dbItemUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.AtendHPSItem.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbItemObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'dbo.AtendHPSItem.Observacao'
      Size = 60
    end
    object dbItemDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.AtendHPSItem.DataInclusao'
    end
    object dbItemUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.AtendHPSItem.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbItemDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.AtendHPSItem.DataAlteracao'
    end
  end
  object qryProcessoTrab: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM  RetornoPS'
      '')
    Left = 672
    Top = 161
  end
  object dbProcesso: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from RetornoPS '
      'order by Retorno,AtendimentoPS')
    Filtered = True
    AfterInsert = dbProcessoAfterInsert
    BeforePost = dbProcessoBeforePost
    AfterPost = dbProcessoAfterPost
    OnCalcFields = dbProcessoCalcFields
    OnFilterRecord = dbProcessoFilterRecord
    MasterSource = dsRetorno
    MasterFields = 'Retorno'
    DetailFields = 'Retorno'
    Left = 501
    Top = 161
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Retorno'
        ParamType = ptInput
      end>
    object dbProcessoRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'RetornoPS.Retorno'
    end
    object dbProcessoAtendimentoPS: TIntegerField
      FieldName = 'AtendimentoPS'
      Origin = 'RetornoPS.AtendimentoPS'
    end
    object dbProcessoSequencial: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'RetornoPS.Sequencial'
      ReadOnly = True
    end
    object dbProcessoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'RetornoPS.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbProcessoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'RetornoPS.Cliente'
    end
    object dbProcessoHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'RetornoPS.Hospital'
    end
    object dbProcessoMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'RetornoPS.Medico'
    end
    object dbProcessoEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'RetornoPS.Enfermeiro'
    end
    object dbProcessoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'RetornoPS.DataFechamento'
    end
    object dbProcessoMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'RetornoPS.MesCompetencia'
    end
    object dbProcessoAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'RetornoPS.AnoCompetencia'
    end
    object dbProcessoQtdAtendimento: TSmallintField
      FieldName = 'QtdAtendimento'
      Origin = 'RetornoPS.QtdAtendimento'
    end
    object dbProcessoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'RetornoPS.Valor'
    end
    object dbProcessoValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
      Origin = 'RetornoPS.ValorGlosado'
    end
    object dbProcessoValorNaoAcordado: TCurrencyField
      FieldName = 'ValorNaoAcordado'
      Origin = 'RetornoPS.ValorNaoAcordado'
    end
    object dbProcessoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'RetornoPS.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProcessoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'RetornoPS.DataInclusao'
    end
    object dbProcessoPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'RetornoPS.PosAnalise'
    end
    object dbProcessoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'RetornoPS.DataAlteracao'
    end
    object dbProcessoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'RetornoPS.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbProcessoProcessa: TStringField
      FieldName = 'Processa'
      Origin = 'RetornoPS.Processa'
      FixedChar = True
      Size = 1
    end
    object dbProcessoClienteCNPJ: TStringField
      FieldName = 'ClienteCNPJ'
      Origin = 'RetornoPS.ClienteCNPJ'
      FixedChar = True
      Size = 18
    end
    object dbProcessoClienteNome: TStringField
      FieldName = 'ClienteNome'
      Origin = 'RetornoPS.ClienteNome'
      FixedChar = True
      Size = 40
    end
    object dbProcessoHospitalCNPJ: TStringField
      FieldName = 'HospitalCNPJ'
      Origin = 'RetornoPS.HospitalCNPJ'
      FixedChar = True
      Size = 18
    end
    object dbProcessoHospitalNome: TStringField
      FieldName = 'HospitalNome'
      Origin = 'RetornoPS.HospitalNome'
      FixedChar = True
      Size = 40
    end
    object dbProcessoMedicoCRM: TIntegerField
      FieldName = 'MedicoCRM'
      Origin = 'RetornoPS.MedicoCRM'
    end
    object dbProcessoEnfermeiroCoren: TIntegerField
      FieldName = 'EnfermeiroCoren'
      Origin = 'RetornoPS.EnfermeiroCoren'
    end
    object dbProcessoProcessaTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProcessaTexto'
      Size = 3
      Calculated = True
    end
    object dbProcessoMedicoNome: TStringField
      FieldName = 'MedicoNome'
      Origin = 'RetornoPS.MedicoNome'
      FixedChar = True
      Size = 40
    end
    object dbProcessoEnfermeiroNome: TStringField
      FieldName = 'EnfermeiroNome'
      Origin = 'RetornoPS.EnfermeiroNome'
      FixedChar = True
      Size = 40
    end
    object dbProcessoHospitalBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalBusca'
      LookupDataSet = dbHospital
      LookupKeyFields = 'CNPJ'
      LookupResultField = 'Nome'
      KeyFields = 'HospitalCNPJ'
      Size = 40
      Lookup = True
    end
    object dbProcessoClienteBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteBusca'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CGC'
      LookupResultField = 'Nome'
      KeyFields = 'ClienteCNPJ'
      Size = 40
      Lookup = True
    end
    object dbProcessoMedicoBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoBusca'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'CRM'
      LookupResultField = 'Nome'
      KeyFields = 'MedicoCRM'
      Size = 40
      Lookup = True
    end
    object dbProcessoEnfermeiroBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroBusca'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'COREN'
      LookupResultField = 'Nome'
      KeyFields = 'EnfermeiroCoren'
      Size = 40
      Lookup = True
    end
    object dbProcessoObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'RetornoPS.Observacao'
      BlobType = ftMemo
    end
    object dbProcessoNotas: TMemoField
      FieldName = 'Notas'
      Origin = 'RetornoPS.Notas'
      BlobType = ftMemo
    end
  end
  object dbProcessoGlosa: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM RetornoPSItem'
      'order by Retorno,AtendimentoPS, Tipo, Glosa1')
    AfterInsert = dbProcessoGlosaAfterInsert
    BeforePost = dbProcessoGlosaBeforePost
    AfterPost = dbProcessoGlosaAfterPost
    MasterSource = dsProcesso
    MasterFields = 'Retorno;AtendimentoPS'
    DetailFields = 'Retorno;AtendimentoPS'
    Left = 501
    Top = 193
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Retorno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'AtendimentoPS'
        ParamType = ptInput
      end>
    object dbProcessoGlosaRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'RetornoPSItem.Retorno'
    end
    object dbProcessoGlosaAtendimentoPS: TIntegerField
      FieldName = 'AtendimentoPS'
      Origin = 'RetornoPSItem.AtendimentoPS'
    end
    object dbProcessoGlosaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'RetornoPSItem.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbProcessoGlosaGlosa1: TSmallintField
      FieldName = 'Glosa1'
      Origin = 'RetornoPSItem.Glosa1'
    end
    object dbProcessoGlosaGlosa2: TSmallintField
      FieldName = 'Glosa2'
      Origin = 'RetornoPSItem.Glosa2'
    end
    object dbProcessoGlosaValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'RetornoPSItem.ValorGlosadoM'
    end
    object dbProcessoGlosaValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'RetornoPSItem.ValorGlosadoE'
    end
    object dbProcessoGlosaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'RetornoPSItem.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProcessoGlosaObservacao: TStringField
      FieldName = 'Observacao'
      Origin = 'RetornoPSItem.Observacao'
      Size = 60
    end
    object dbProcessoGlosaDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'RetornoPSItem.DataInclusao'
    end
    object dbProcessoGlosaUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'RetornoPSItem.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbProcessoGlosaDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'RetornoPSItem.DataAlteracao'
    end
  end
  object dbRetorno: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM Retorno where Modulo=1'
      'order by Retorno')
    AfterInsert = dbRetornoAfterInsert
    OnCalcFields = dbRetornoCalcFields
    Left = 501
    Top = 225
    object dbRetornoRetorno: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Retorno'
      Origin = 'Retorno.Retorno'
      ReadOnly = True
    end
    object dbRetornoNomeArquivo: TStringField
      FieldName = 'NomeArquivo'
      Origin = 'Retorno.NomeArquivo'
      Size = 100
    end
    object dbRetornoProcessado: TBooleanField
      FieldName = 'Processado'
      Origin = 'Retorno.Processado'
    end
    object dbRetornoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Retorno.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbRetornoProcessadoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProcessadoTexto'
      Size = 3
      Calculated = True
    end
    object dbRetornoRegistros: TIntegerField
      FieldName = 'Registros'
      Origin = 'Retorno.Registros'
    end
    object dbRetornoRegistrosok: TIntegerField
      FieldName = 'Registrosok'
      Origin = 'Retorno.Registrosok'
    end
    object dbRetornoRegistrosInclusao: TIntegerField
      FieldName = 'RegistrosInclusao'
      Origin = 'Retorno.RegistrosInclusao'
    end
    object dbRetornoRegistrosAlteracao: TIntegerField
      FieldName = 'RegistrosAlteracao'
      Origin = 'Retorno.RegistrosAlteracao'
    end
    object dbRetornoCapeantes: TIntegerField
      FieldName = 'Capeantes'
      Origin = 'Retorno.Capeantes'
    end
    object dbRetornoRepetidos: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Repetidos'
      Calculated = True
    end
    object dbRetornoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'Retorno.Cliente'
    end
    object dbRetornoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbRetornoDataProcessamento: TDateTimeField
      FieldName = 'DataProcessamento'
      Origin = 'Retorno.DataProcessamento'
    end
    object dbRetornoHoraProcessamento: TDateTimeField
      FieldName = 'HoraProcessamento'
      Origin = 'Retorno.HoraProcessamento'
    end
    object dbRetornoHoraTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'HoraTexto'
      Size = 10
      Calculated = True
    end
    object dbRetornoClienteID: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteID'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'ClienteID'
      KeyFields = 'Cliente'
      Size = 10
      Lookup = True
    end
    object dbRetornoModulo: TSmallintField
      FieldName = 'Modulo'
      Origin = 'Retorno.Modulo'
    end
  end
  object dbProd: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from Produtividade'
      'order by AnoCompetencia,MesCompetencia,Produtividade')
    Left = 636
    Top = 225
    object dbProdAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'Produtividade.AnoCompetencia'
    end
    object dbProdMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'Produtividade.MesCompetencia'
    end
    object dbProdProdutividade: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Produtividade'
      Origin = 'Produtividade.Produtividade'
    end
    object dbProdDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'Produtividade.DataInclusao'
    end
    object dbProdUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'Produtividade.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProdStatus: TStringField
      FieldName = 'Status'
      Origin = 'Produtividade.Status'
      FixedChar = True
      Size = 1
    end
  end
  object dbProdCli: TMSTable
    TableName = 'dbo.ProdutividadeCli'
    MasterFields = 'Produtividade'
    DetailFields = 'Produtividade'
    MasterSource = dsProd
    Connection = frmMenu.dadosaud
    Left = 636
    Top = 255
    object dbProdCliProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'dbo.ProdutividadeCli.Produtividade'
    end
    object dbProdCliCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.ProdutividadeCli.Cliente'
    end
    object dbProdCliDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.ProdutividadeCli.DataInclusao'
    end
    object dbProdCliUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.ProdutividadeCli.Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsProd: TDataSource
    DataSet = dbProd
    Left = 668
    Top = 221
  end
  object dbHospitalPre: TMSTable
    TableName = 'dbo.HospitalPre'
    Connection = frmMenu.dadosaud
    Left = 601
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Hospital'
      end>
    object dbHospitalPreHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.HospitalPre.Hospital'
    end
    object dbHospitalPreCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.HospitalPre.Cliente'
    end
    object dbHospitalPreAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.HospitalPre.Auditor'
    end
    object dbHospitalPreEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.HospitalPre.Enfermeiro'
    end
    object dbHospitalPreClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'ClienteID'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbHospitalPreAuditorNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AuditorNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Auditor'
      Size = 40
      Lookup = True
    end
    object dbHospitalPreEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
  end
  object dbExcel1: TMSTable
    TableName = 'dbo.relExcel1'
    Connection = frmMenu.dadosaud
    Left = 736
    Top = 192
    object dbExcel1DSDesigner1: TStringField
      FieldName = '1'
      Origin = 'dbo.relExcel1.1'
      FixedChar = True
    end
    object dbExcel1DSDesigner2: TStringField
      FieldName = '2'
      Origin = 'dbo.relExcel1.2'
      FixedChar = True
    end
    object dbExcel1DSDesigner3: TStringField
      FieldName = '3'
      Origin = 'dbo.relExcel1.3'
      FixedChar = True
    end
    object dbExcel1DSDesigner4: TStringField
      FieldName = '4'
      Origin = 'dbo.relExcel1.4'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner5: TStringField
      FieldName = '5'
      Origin = 'dbo.relExcel1.5'
      FixedChar = True
    end
    object dbExcel1DSDesigner6: TStringField
      FieldName = '6'
      Origin = 'dbo.relExcel1.6'
      FixedChar = True
    end
    object dbExcel1DSDesigner7: TStringField
      FieldName = '7'
      Origin = 'dbo.relExcel1.7'
      FixedChar = True
    end
    object dbExcel1DSDesigner8: TStringField
      FieldName = '8'
      Origin = 'dbo.relExcel1.8'
      FixedChar = True
      Size = 40
    end
    object dbExcel1DSDesigner9: TStringField
      FieldName = '9'
      Origin = 'dbo.relExcel1.9'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner10: TStringField
      FieldName = '10'
      Origin = 'dbo.relExcel1.10'
      FixedChar = True
    end
    object dbExcel1DSDesigner11: TStringField
      FieldName = '11'
      Origin = 'dbo.relExcel1.11'
      FixedChar = True
    end
    object dbExcel1DSDesigner12: TStringField
      FieldName = '12'
      Origin = 'dbo.relExcel1.12'
      FixedChar = True
    end
    object dbExcel1DSDesigner13: TStringField
      FieldName = '13'
      Origin = 'dbo.relExcel1.13'
      FixedChar = True
    end
    object dbExcel1DSDesigner14: TStringField
      FieldName = '14'
      Origin = 'dbo.relExcel1.14'
      FixedChar = True
    end
    object dbExcel1DSDesigner15: TStringField
      FieldName = '15'
      Origin = 'dbo.relExcel1.15'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner16: TStringField
      FieldName = '16'
      Origin = 'dbo.relExcel1.16'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner17: TStringField
      FieldName = '17'
      Origin = 'dbo.relExcel1.17'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner18: TStringField
      FieldName = '18'
      Origin = 'dbo.relExcel1.18'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner19: TStringField
      FieldName = '19'
      Origin = 'dbo.relExcel1.19'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner20: TStringField
      FieldName = '20'
      Origin = 'dbo.relExcel1.20'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner21: TStringField
      FieldName = '21'
      Origin = 'dbo.relExcel1.21'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner22: TStringField
      FieldName = '22'
      Origin = 'dbo.relExcel1.22'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner23: TStringField
      FieldName = '23'
      Origin = 'dbo.relExcel1.23'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner24: TStringField
      FieldName = '24'
      Origin = 'dbo.relExcel1.24'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner25: TStringField
      FieldName = '25'
      Origin = 'dbo.relExcel1.25'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner26: TStringField
      FieldName = '26'
      Origin = 'dbo.relExcel1.26'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner27: TStringField
      FieldName = '27'
      Origin = 'dbo.relExcel1.27'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner28: TStringField
      FieldName = '28'
      Origin = 'dbo.relExcel1.28'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner29: TStringField
      FieldName = '29'
      Origin = 'dbo.relExcel1.29'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner30: TStringField
      FieldName = '30'
      Origin = 'dbo.relExcel1.30'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner31: TStringField
      FieldName = '31'
      Origin = 'dbo.relExcel1.31'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner32: TStringField
      FieldName = '32'
      Origin = 'dbo.relExcel1.32'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner33: TStringField
      FieldName = '33'
      Origin = 'dbo.relExcel1.33'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner34: TStringField
      FieldName = '34'
      Origin = 'dbo.relExcel1.34'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner35: TStringField
      FieldName = '35'
      Origin = 'dbo.relExcel1.35'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner36: TStringField
      FieldName = '36'
      Origin = 'dbo.relExcel1.36'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner37: TStringField
      FieldName = '37'
      Origin = 'dbo.relExcel1.37'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner38: TStringField
      FieldName = '38'
      Origin = 'dbo.relExcel1.38'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner39: TStringField
      FieldName = '39'
      Origin = 'dbo.relExcel1.39'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner40: TStringField
      FieldName = '40'
      Origin = 'dbo.relExcel1.40'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner41: TStringField
      FieldName = '41'
      Origin = 'dbo.relExcel1.41'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner42: TStringField
      FieldName = '42'
      Origin = 'dbo.relExcel1.42'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner43: TStringField
      FieldName = '43'
      Origin = 'dbo.relExcel1.43'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner44: TStringField
      FieldName = '44'
      Origin = 'dbo.relExcel1.44'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner45: TStringField
      FieldName = '45'
      Origin = 'dbo.relExcel1.45'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner46: TStringField
      FieldName = '46'
      Origin = 'dbo.relExcel1.46'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner47: TStringField
      FieldName = '47'
      Origin = 'dbo.relExcel1.47'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner48: TStringField
      FieldName = '48'
      Origin = 'dbo.relExcel1.48'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner49: TStringField
      FieldName = '49'
      Origin = 'dbo.relExcel1.49'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner50: TStringField
      FieldName = '50'
      Origin = 'dbo.relExcel1.50'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner51: TStringField
      FieldName = '51'
      Origin = 'dbo.relExcel1.51'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner52: TStringField
      FieldName = '52'
      Origin = 'dbo.relExcel1.52'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner53: TStringField
      FieldName = '53'
      Origin = 'dbo.relExcel1.53'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner54: TStringField
      FieldName = '54'
      Origin = 'dbo.relExcel1.54'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner55: TStringField
      FieldName = '55'
      Origin = 'dbo.relExcel1.55'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner56: TStringField
      FieldName = '56'
      Origin = 'dbo.relExcel1.56'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner57: TStringField
      FieldName = '57'
      Origin = 'dbo.relExcel1.57'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner58: TStringField
      FieldName = '58'
      Origin = 'dbo.relExcel1.58'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner59: TStringField
      FieldName = '59'
      Origin = 'dbo.relExcel1.59'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner60: TStringField
      FieldName = '60'
      Origin = 'dbo.relExcel1.60'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner61: TStringField
      FieldName = '61'
      Origin = 'dbo.relExcel1.61'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner62: TStringField
      FieldName = '62'
      Origin = 'dbo.relExcel1.62'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner63: TStringField
      FieldName = '63'
      Origin = 'dbo.relExcel1.63'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner64: TStringField
      FieldName = '64'
      Origin = 'dbo.relExcel1.64'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner65: TStringField
      FieldName = '65'
      Origin = 'dbo.relExcel1.65'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner66: TStringField
      FieldName = '66'
      Origin = 'dbo.relExcel1.66'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner67: TStringField
      FieldName = '67'
      Origin = 'dbo.relExcel1.67'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner68: TStringField
      FieldName = '68'
      Origin = 'dbo.relExcel1.68'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner69: TStringField
      FieldName = '69'
      Origin = 'dbo.relExcel1.69'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner70: TStringField
      FieldName = '70'
      Origin = 'dbo.relExcel1.70'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner71: TStringField
      FieldName = '71'
      Origin = 'dbo.relExcel1.71'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner72: TStringField
      FieldName = '72'
      Origin = 'dbo.relExcel1.72'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner73: TStringField
      FieldName = '73'
      Origin = 'dbo.relExcel1.73'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner74: TStringField
      FieldName = '74'
      Origin = 'dbo.relExcel1.74'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner75: TStringField
      FieldName = '75'
      Origin = 'dbo.relExcel1.75'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner76: TStringField
      FieldName = '76'
      Origin = 'dbo.relExcel1.76'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner77: TStringField
      FieldName = '77'
      Origin = 'dbo.relExcel1.77'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner78: TStringField
      FieldName = '78'
      Origin = 'dbo.relExcel1.78'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner79: TStringField
      FieldName = '79'
      Origin = 'dbo.relExcel1.79'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner80: TStringField
      FieldName = '80'
      Origin = 'dbo.relExcel1.80'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner81: TStringField
      FieldName = '81'
      Origin = 'dbo.relExcel1.81'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner82: TStringField
      FieldName = '82'
      Origin = 'dbo.relExcel1.82'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner83: TStringField
      FieldName = '83'
      Origin = 'dbo.relExcel1.83'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner84: TStringField
      FieldName = '84'
      Origin = 'dbo.relExcel1.84'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner85: TStringField
      FieldName = '85'
      Origin = 'dbo.relExcel1.85'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner86: TStringField
      FieldName = '86'
      Origin = 'dbo.relExcel1.86'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner87: TStringField
      FieldName = '87'
      Origin = 'dbo.relExcel1.87'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner88: TStringField
      FieldName = '88'
      Origin = 'dbo.relExcel1.88'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner89: TStringField
      FieldName = '89'
      Origin = 'dbo.relExcel1.89'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner90: TStringField
      FieldName = '90'
      Origin = 'dbo.relExcel1.90'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner91: TStringField
      FieldName = '91'
      Origin = 'dbo.relExcel1.91'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner92: TStringField
      FieldName = '92'
      Origin = 'dbo.relExcel1.92'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner93: TStringField
      FieldName = '93'
      Origin = 'dbo.relExcel1.93'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner94: TStringField
      FieldName = '94'
      Origin = 'dbo.relExcel1.94'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner95: TStringField
      FieldName = '95'
      Origin = 'dbo.relExcel1.95'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner96: TStringField
      FieldName = '96'
      Origin = 'dbo.relExcel1.96'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner97: TStringField
      FieldName = '97'
      Origin = 'dbo.relExcel1.97'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner98: TStringField
      FieldName = '98'
      Origin = 'dbo.relExcel1.98'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner99: TStringField
      FieldName = '99'
      Origin = 'dbo.relExcel1.99'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner100: TStringField
      FieldName = '100'
      Origin = 'dbo.relExcel1.100'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner101: TStringField
      FieldName = '101'
      Origin = 'dbo.relExcel1.101'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner102: TStringField
      FieldName = '102'
      Origin = 'dbo.relExcel1.102'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner103: TStringField
      FieldName = '103'
      Origin = 'dbo.relExcel1.103'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner104: TStringField
      FieldName = '104'
      Origin = 'dbo.relExcel1.104'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner105: TStringField
      FieldName = '105'
      Origin = 'dbo.relExcel1.105'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner106: TStringField
      FieldName = '106'
      Origin = 'dbo.relExcel1.106'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner107: TStringField
      FieldName = '107'
      Origin = 'dbo.relExcel1.107'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner108: TStringField
      FieldName = '108'
      Origin = 'dbo.relExcel1.108'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner109: TStringField
      FieldName = '109'
      Origin = 'dbo.relExcel1.109'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner110: TStringField
      FieldName = '110'
      Origin = 'dbo.relExcel1.110'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner111: TStringField
      FieldName = '111'
      Origin = 'dbo.relExcel1.111'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner112: TStringField
      FieldName = '112'
      Origin = 'dbo.relExcel1.112'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner113: TStringField
      FieldName = '113'
      Origin = 'dbo.relExcel1.113'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner114: TStringField
      FieldName = '114'
      Origin = 'dbo.relExcel1.114'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner115: TStringField
      FieldName = '115'
      Origin = 'dbo.relExcel1.115'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner116: TStringField
      FieldName = '116'
      Origin = 'dbo.relExcel1.116'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner117: TStringField
      FieldName = '117'
      Origin = 'dbo.relExcel1.117'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner118: TStringField
      FieldName = '118'
      Origin = 'dbo.relExcel1.118'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner119: TStringField
      FieldName = '119'
      Origin = 'dbo.relExcel1.119'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner120: TStringField
      FieldName = '120'
      Origin = 'dbo.relExcel1.120'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner121: TStringField
      FieldName = '121'
      Origin = 'dbo.relExcel1.121'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner122: TStringField
      FieldName = '122'
      Origin = 'dbo.relExcel1.122'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner123: TStringField
      FieldName = '123'
      Origin = 'dbo.relExcel1.123'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner124: TStringField
      FieldName = '124'
      Origin = 'dbo.relExcel1.124'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner125: TStringField
      FieldName = '125'
      Origin = 'dbo.relExcel1.125'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner126: TStringField
      FieldName = '126'
      Origin = 'dbo.relExcel1.126'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner127: TStringField
      FieldName = '127'
      Origin = 'dbo.relExcel1.127'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner128: TStringField
      FieldName = '128'
      Origin = 'dbo.relExcel1.128'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner129: TStringField
      FieldName = '129'
      Origin = 'dbo.relExcel1.129'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner130: TStringField
      FieldName = '130'
      Origin = 'dbo.relExcel1.130'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner131: TStringField
      FieldName = '131'
      Origin = 'dbo.relExcel1.131'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner132: TStringField
      FieldName = '132'
      Origin = 'dbo.relExcel1.132'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner133: TStringField
      FieldName = '133'
      Origin = 'dbo.relExcel1.133'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner134: TStringField
      FieldName = '134'
      Origin = 'dbo.relExcel1.134'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner135: TStringField
      FieldName = '135'
      Origin = 'dbo.relExcel1.135'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner136: TStringField
      FieldName = '136'
      Origin = 'dbo.relExcel1.136'
      FixedChar = True
      Size = 60
    end
    object dbExcel1DSDesigner137: TStringField
      FieldName = '137'
      Origin = 'dbo.relExcel1.137'
      FixedChar = True
    end
    object dbExcel1DSDesigner138: TStringField
      FieldName = '138'
      Origin = 'dbo.relExcel1.138'
      FixedChar = True
    end
    object dbExcel1DSDesigner139: TStringField
      FieldName = '139'
      Origin = 'dbo.relExcel1.139'
      FixedChar = True
    end
    object dbExcel1DSDesigner140: TStringField
      FieldName = '140'
      Origin = 'dbo.relExcel1.140'
      FixedChar = True
    end
    object dbExcel1DSDesigner141: TStringField
      FieldName = '141'
      Origin = 'dbo.relExcel1.141'
      FixedChar = True
    end
    object dbExcel1DSDesigner142: TStringField
      FieldName = '142'
      Origin = 'dbo.relExcel1.142'
      FixedChar = True
    end
    object dbExcel1DSDesigner143: TStringField
      FieldName = '143'
      Origin = 'dbo.relExcel1.143'
      FixedChar = True
      Size = 100
    end
  end
end
