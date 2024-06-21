object frmRetornoHI: TfrmRetornoHI
  Left = 648
  Top = 94
  Width = 1233
  Height = 809
  Caption = 'Retorno de Dados - Estatisticas'
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
  object tabCliente: TTabControl
    Left = 0
    Top = 0
    Width = 1215
    Height = 762
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'B&&B'
      'Bradesco'
      'Sul Am'#233'rica'
      'Todos os Retornos')
    TabIndex = 0
    OnChange = tabClienteChange
    object pagRetorno: TPageControl
      Left = 4
      Top = 27
      Width = 1207
      Height = 731
      ActivePage = tabLeitura
      Align = alClient
      TabOrder = 0
      object tabLeitura: TTabSheet
        Caption = 'Processar Retorno'
        object Label4: TLabel
          Left = 0
          Top = 483
          Width = 1199
          Height = 16
          Align = alBottom
          Alignment = taCenter
          Caption = 'Diagn'#243'sticos'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 592
          Width = 1199
          Height = 5
          Cursor = crVSplit
          Align = alBottom
        end
        object ProgressBar1: TProgressBar
          Left = 0
          Top = 684
          Width = 1199
          Height = 16
          Align = alBottom
          TabOrder = 0
        end
        object Panel5: TPanel
          Left = 0
          Top = 597
          Width = 1199
          Height = 87
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 1199
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
            Width = 1199
            Height = 71
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
          Top = 289
          Width = 1199
          Height = 194
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Splitter1: TSplitter
            Left = 1195
            Top = 0
            Width = 4
            Height = 194
            Align = alRight
          end
          object Panel3: TPanel
            Left = 689
            Top = 0
            Width = 506
            Height = 194
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              Left = 0
              Top = 0
              Width = 506
              Height = 16
              Align = alTop
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
            object DBMemo1: TDBMemo
              Left = 0
              Top = 16
              Width = 506
              Height = 178
              Align = alClient
              DataField = 'Observacao'
              DataSource = dsProcesso
              TabOrder = 0
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 689
            Height = 194
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label5: TLabel
              Left = 0
              Top = 0
              Width = 689
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
              Width = 653
              Height = 178
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
                  FieldName = 'GlosaI'
                  Title.Caption = 'Glosa'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'GlosaNome'
                  Title.Caption = 'Nome'
                  Width = 113
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorApresentado'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Apresentado'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorM'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Medico'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorE'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Enfermeiro'
                  Width = 75
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Glosa Tot'
                  Width = 75
                  Visible = True
                end>
            end
            object Panel7: TPanel
              Left = 0
              Top = 16
              Width = 36
              Height = 178
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
          end
        end
        object tabFiltro: TTabControl
          Left = 0
          Top = 36
          Width = 1199
          Height = 253
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
            Width = 1191
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
            Width = 1191
            Height = 16
            Align = alTop
            Alignment = taCenter
            Color = 10747718
            DataField = 'NomePaciente'
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
            Width = 1155
            Height = 159
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
            OnKeyDown = grdProntuarioKeyDown
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ProcessaTexto'
                Title.Alignment = taCenter
                Title.Caption = 'Status'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PosAnalise'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AtendimentoHI'
                ReadOnly = True
                Title.Alignment = taRightJustify
                Title.Caption = 'Capeante'
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Senha'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ClienteCNPJ'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ClienteNome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDPaciente'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodigoPaciente'
                Title.Caption = 'Cod.Paciente Cliente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomePaciente'
                Title.Caption = 'Nome Paciente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Paciente'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomePacienteB'
                Title.Caption = 'Nome Paciente Sistema'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'RN'
                Title.Alignment = taCenter
                Width = 29
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PacienteNascimento'
                Title.Alignment = taCenter
                Title.Caption = 'Nascimento'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PacienteIdade'
                Title.Alignment = taRightJustify
                Title.Caption = 'Idade'
                Width = 49
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PacienteUnidade'
                Title.Alignment = taCenter
                Title.Caption = 'Un'
                Width = 24
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PacienteSexo'
                Title.Alignment = taCenter
                Title.Caption = 'Sexo'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Gemelar'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd.G'#234'meos'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HospitalCNPJ'
                Title.Caption = 'CNPJ Hosp'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Hospital'
                Title.Alignment = taRightJustify
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HospitalNome'
                Title.Caption = 'Nome'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ResposavelH'
                Title.Caption = 'Responsavel Prestador'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MedicoCRM'
                Title.Caption = 'CRM Med.'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MedicoNome'
                Title.Caption = 'Nome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Medico'
                Title.Alignment = taRightJustify
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MedicoNomeBusca'
                Title.Caption = 'Nome B&B'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EnfermeiroCoren'
                Title.Caption = 'COREN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EnfermeiroNome'
                Title.Caption = 'Nome'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Enfermeiro'
                Title.Alignment = taRightJustify
                Title.Caption = 'Enferm.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EnfermeiroNomeBusca'
                Title.Caption = 'Nome B&B'
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MedicoACRM'
                Title.Caption = 'CRM Aux.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MedicoANome'
                Title.Caption = 'Nome M'#233'dico Auxiliar'
                Width = 250
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataFechamento'
                Title.Alignment = taCenter
                Title.Caption = 'Fechamento'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MesCompetencia'
                Title.Alignment = taRightJustify
                Title.Caption = 'CP Mes'
                Width = 42
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AnoCompetencia'
                Title.Alignment = taRightJustify
                Title.Caption = 'CP Ano'
                Width = 42
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataInternacao'
                Title.Alignment = taCenter
                Title.Caption = 'Interna'#231#227'o'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataAlta'
                Title.Alignment = taCenter
                Title.Caption = 'Alta'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DiasUti'
                Title.Alignment = taRightJustify
                Title.Caption = 'UTI'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Apto'
                Title.Alignment = taRightJustify
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Enfermaria'
                Title.Alignment = taRightJustify
                Title.Caption = 'Enf.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Semi'
                Title.Alignment = taRightJustify
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Bercario'
                Title.Alignment = taRightJustify
                Title.Caption = 'Berc.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DayClinicQtd'
                Title.Alignment = taRightJustify
                Title.Caption = 'DC'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Isolamento'
                Title.Alignment = taRightJustify
                Title.Caption = 'Isola'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Diarias'
                Title.Alignment = taRightJustify
                Title.Caption = 'Total'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DiariasGlosadas'
                Title.Alignment = taRightJustify
                Title.Caption = 'Glosa'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DiariasCalculadas'
                Title.Alignment = taRightJustify
                Title.Caption = 'Calc.'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Title.Alignment = taRightJustify
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorGlosadoM'
                Title.Alignment = taRightJustify
                Title.Caption = 'Glosado M'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorGlosadoE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Glosado E'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorGlosado'
                Title.Alignment = taRightJustify
                Title.Caption = 'Glosado Tot'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Parcial'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NumeroParcial'
                Title.Alignment = taRightJustify
                Title.Caption = 'Num.'
                Width = 35
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataInicioP'
                Title.Alignment = taCenter
                Title.Caption = 'Inicio Parcial'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataFimP'
                Title.Alignment = taCenter
                Title.Caption = 'Fim Parcial'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Complemento'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cap.Original'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DayClinic'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Conclusao'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Internacao'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Tratamento'
                Title.Alignment = taCenter
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NABradesco'
                PickList.Strings = (
                  'Cobran'#231'a Indevida'
                  'Material Excedente'
                  'Interna'#231#227'o Complicada'
                  'Procedimentos combinados'
                  'OPME'
                  'Prorroga'#231#227'o'
                  'Sem Justificativa')
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodAMB'
                Title.Alignment = taRightJustify
                Title.Caption = '1o.AMB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMBNome'
                Title.Caption = 'Descri'#231#227'o'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAMB1'
                Title.Caption = '%HM'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QtdAMB'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd Amb'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ExtraAMB'
                Title.Caption = 'Extra Amb'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataAMB1'
                Title.Alignment = taCenter
                Title.Caption = 'Data Amb'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodAMB1'
                Title.Caption = '2o.AMB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AmbNome1'
                Title.Caption = 'Descri'#231#227'o'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAMB2'
                Title.Alignment = taRightJustify
                Title.Caption = '%HM'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QtdAMB1'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtd.AMB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ExtraAMB1'
                Title.Caption = 'Extra Amb'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataAMB2'
                Title.Alignment = taCenter
                Title.Caption = 'Data Amb'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CodAMB3'
                Title.Caption = '3o.AMB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AmbNome3'
                Title.Caption = 'Descri'#231#227'o'
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAMB3'
                Title.Alignment = taRightJustify
                Title.Caption = '%HM'
                Width = 40
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataAMB3'
                Title.Alignment = taCenter
                Title.Caption = 'Data Amb'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ObitoGravida'
                Title.Caption = 'Obito Gravida'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QtdRNVivo'
                Title.Caption = 'Qtd RN Vivo'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QtdRNMorto'
                Title.Caption = 'Qtd RN Morto'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QtdRNPrematuro'
                Title.Caption = 'Qtd RN Pre'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Acidente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UsuarioSite'
                Title.Caption = 'Usuario Site'
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataSite'
                Title.Caption = 'Data Site'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UsuarioI'
                Title.Caption = 'Usu'#225'rio Inclus'#227'o'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataInclusao'
                Title.Caption = 'Data Inclusao'
                Visible = True
              end>
          end
          object CoolBar1: TCoolBar
            Left = 4
            Top = 27
            Width = 1191
            Height = 31
            Bands = <
              item
                Control = cmpBusca
                ImageIndex = -1
                MinHeight = 21
                Width = 1187
              end
              item
                Control = DateTimePicker1
                ImageIndex = -1
                MinHeight = 24
                Width = 1187
              end>
            object cmpBusca: TEdit
              Left = 9
              Top = 0
              Width = 1174
              Height = 21
              TabOrder = 0
              OnChange = cmpBuscaChange
            end
            object DateTimePicker1: TDateTimePicker
              Left = 9
              Top = 23
              Width = 1174
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
            Height = 159
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
        object Panel1: TPanel
          Left = 0
          Top = 499
          Width = 1199
          Height = 93
          Align = alBottom
          Caption = 'Panel10'
          TabOrder = 4
          object grdDiagnostico: TDBGrid
            Left = 37
            Top = 1
            Width = 1161
            Height = 91
            Align = alClient
            DataSource = dsProcessoDiag
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdDiagnosticoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'CodCid'
                Title.Caption = 'CID'
                Width = 47
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Diagnostico'
                Title.Alignment = taRightJustify
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DiagnosticoNome'
                Title.Caption = 'Descri'#231#227'o BB'
                Width = 299
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descricao'
                Title.Caption = 'Descricao Retorno'
                Width = 297
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PrincipalTexto'
                Title.Alignment = taCenter
                Title.Caption = 'Principal'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AtendimentoHC'
                Title.Alignment = taRightJustify
                Title.Caption = 'HC'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Item'
                Title.Caption = 'Visita'
                Width = 30
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataAuditoria'
                Title.Alignment = taCenter
                Title.Caption = 'Auditoria'
                Width = 70
                Visible = True
              end>
          end
          object Panel14: TPanel
            Left = 1
            Top = 1
            Width = 36
            Height = 91
            Align = alLeft
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 1
            object cmdGravaD: TBitBtn
              Left = 4
              Top = 2
              Width = 30
              Height = 31
              Hint = 'Gravar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnClick = cmdGravaDClick
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
            object cmdExcluiD: TBitBtn
              Left = 4
              Top = 36
              Width = 30
              Height = 30
              Hint = 'Excluir'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnClick = cmdExcluiDClick
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
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1199
          Height = 36
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 5
          object cmdLerBR: TBitBtn
            Left = 4
            Top = 2
            Width = 147
            Height = 31
            Hint = 'Le arquivo de Retorno Bradesco '
            Caption = 'Baixar Arquivo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            Visible = False
            OnClick = cmdLerBRClick
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
          object cmdLerSA: TBitBtn
            Left = 4
            Top = 2
            Width = 147
            Height = 31
            Hint = 'Le arquivo de Retorno  Sul Am'#233'rica'
            Caption = 'Baixar Arquivo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Visible = False
            OnClick = cmdLerSAClick
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
          object cmdLerBB: TBitBtn
            Left = 4
            Top = 2
            Width = 147
            Height = 31
            Hint = 'Le arquivo de Retorno B&B'
            Caption = 'Baixar Arquivo'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
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
            TabOrder = 3
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
            Width = 148
            Height = 31
            Hint = 'Gera arquivo pra envio'
            Caption = 'Atualizar Dados'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
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
            Left = 901
            Top = 1
            Width = 297
            Height = 34
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            DesignSize = (
              297
              34)
            object BitBtn1: TBitBtn
              Left = 2
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
            Caption = 'Altera'#231#245'es '
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
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
          Width = 1199
          Height = 30
          Bands = <
            item
              Control = lblTexto
              ImageIndex = -1
              MinHeight = 21
              Width = 1195
            end
            item
              Control = lblData
              ImageIndex = -1
              MinHeight = 21
              Width = 1195
            end>
          object lblTexto: TEdit
            Left = 9
            Top = 0
            Width = 963
            Height = 21
            TabOrder = 0
            OnChange = lblTextoChange
          end
          object lblData: TDateTimePicker
            Left = 9
            Top = 23
            Width = 963
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
          Width = 1199
          Height = 634
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
            Width = 1191
            Height = 587
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
                Expanded = False
                FieldName = 'ClienteID'
                Title.Caption = 'Cliente'
                Width = 84
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
              end
              item
                Expanded = False
                FieldName = 'UsuarioLeitura'
                Title.Caption = 'Leitura'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataLeitura'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UsuarioValidacao'
                Title.Caption = 'Valida'#231#227'o'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataValidacao'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Usuario'
                Title.Caption = 'Inclus'#227'o'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataProcessamento'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 70
                Visible = True
              end>
          end
          object ProgressBar2: TProgressBar
            Left = 4
            Top = 614
            Width = 1191
            Height = 16
            Align = alBottom
            TabOrder = 1
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 1199
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
    BeforeInsert = dbEnfermeiroBeforeInsert
    IndexFieldNames = 'Enfermeiro'
    Left = 566
    Top = 192
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
  object dsProcessoDiag: TDataSource
    DataSet = dbProcessoDiag
    OnStateChange = dsProcessoDiagStateChange
    Left = 533
    Top = 224
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
    IndexFieldNames = 'CNPJ'
    Left = 567
    Top = 256
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
    end
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    BeforeInsert = dbAuditorBeforeInsert
    IndexFieldNames = 'Auditor'
    Left = 567
    Top = 224
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
  object dbDiagnostico: TMSTable
    TableName = 'dbo.Diagnosticos'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'CodCid'
    Left = 601
    Top = 161
    object dbDiagnosticoDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
      Origin = 'dbo.Diagnosticos.Diagnostico'
    end
    object dbDiagnosticoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Diagnosticos.Nome'
      Size = 75
    end
    object dbDiagnosticoCodCid: TStringField
      FieldName = 'CodCid'
      Origin = 'dbo.Diagnosticos.CodCid'
      Size = 11
    end
  end
  object dsRetorno: TDataSource
    DataSet = dbRetorno
    Left = 533
    Top = 256
  end
  object dbCodigo: TMSTable
    TableName = 'dbo.Codigo'
    Connection = frmMenu.dadosaud
    Left = 704
    Top = 256
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
  object dbAmb: TMSTable
    TableName = 'dbo.Amb'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'CodAMB'
    Left = 601
    Top = 192
    object dbAmbCodAMB: TIntegerField
      FieldName = 'CodAMB'
      Origin = 'dbo.Amb.CodAMB'
      Required = True
    end
    object dbAmbDescricaoAMB: TStringField
      FieldName = 'DescricaoAMB'
      Origin = 'dbo.Amb.DescricaoAMB'
      Size = 150
    end
    object dbAmbBradesco: TBooleanField
      FieldName = 'Bradesco'
    end
  end
  object dbGlosa: TMSTable
    TableName = 'dbo.GlosaI'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'GlosaI'
    Left = 601
    Top = 224
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
  object dbExcel: TMSTable
    TableName = 'dbo.relExcel'
    Connection = frmMenu.dadosaud
    Left = 736
    Top = 192
    object dbExcelDSDesigner1: TStringField
      FieldName = '1'
      Origin = 'dbo.relExcel.1'
      FixedChar = True
      Size = 11
    end
    object dbExcelBDEDesigner2: TStringField
      FieldName = '2'
      Origin = 'dbo.relExcel.2'
      Size = 2
    end
    object dbExcelBDEDesigner3: TStringField
      FieldName = '3'
      Origin = 'dbo.relExcel.3'
      Size = 12
    end
    object dbExcelBDEDesigner4: TStringField
      FieldName = '4'
      Origin = 'dbo.relExcel.4'
      Size = 12
    end
    object dbExcelBDEDesigner5: TStringField
      FieldName = '5'
      Origin = 'dbo.relExcel.5'
      Size = 3
    end
    object dbExcelBDEDesigner6: TStringField
      FieldName = '6'
      Origin = 'dbo.relExcel.6'
      Size = 11
    end
    object dbExcelBDEDesigner7: TStringField
      FieldName = '7'
      Origin = 'dbo.relExcel.7'
    end
    object dbExcelBDEDesigner8: TStringField
      FieldName = '8'
      Origin = 'dbo.relExcel.8'
      Size = 18
    end
    object dbExcelBDEDesigner9: TStringField
      FieldName = '9'
      Origin = 'dbo.relExcel.9'
      Size = 60
    end
    object dbExcelBDEDesigner10: TStringField
      FieldName = '10'
      Origin = 'dbo.relExcel.10'
      Size = 5
    end
    object dbExcelBDEDesigner11: TStringField
      FieldName = '11'
      Origin = 'dbo.relExcel.11'
      Size = 17
    end
    object dbExcelBDEDesigner12: TStringField
      FieldName = '12'
      Origin = 'dbo.relExcel.12'
      Size = 3
    end
    object dbExcelBDEDesigner13: TStringField
      FieldName = '13'
      Origin = 'dbo.relExcel.13'
      Size = 1
    end
    object dbExcelBDEDesigner14: TStringField
      FieldName = '14'
      Origin = 'dbo.relExcel.14'
      Size = 1
    end
    object dbExcelBDEDesigner15: TStringField
      FieldName = '15'
      Origin = 'dbo.relExcel.15'
      Size = 10
    end
    object dbExcelBDEDesigner16: TStringField
      FieldName = '16'
      Origin = 'dbo.relExcel.16'
      Size = 32
    end
    object dbExcelBDEDesigner17: TStringField
      FieldName = '17'
      Origin = 'dbo.relExcel.17'
      Size = 40
    end
    object dbExcelBDEDesigner18: TStringField
      FieldName = '18'
      Origin = 'dbo.relExcel.18'
      Size = 1
    end
    object dbExcelBDEDesigner19: TStringField
      FieldName = '19'
      Origin = 'dbo.relExcel.19'
      Size = 10
    end
    object dbExcelBDEDesigner20: TStringField
      FieldName = '20'
      Origin = 'dbo.relExcel.20'
      Size = 19
    end
    object dbExcelBDEDesigner21: TStringField
      FieldName = '21'
      Origin = 'dbo.relExcel.21'
      Size = 35
    end
    object dbExcelBDEDesigner22: TStringField
      FieldName = '22'
      Origin = 'dbo.relExcel.22'
      Size = 72
    end
    object dbExcelBDEDesigner23: TStringField
      FieldName = '23'
      Origin = 'dbo.relExcel.23'
      Size = 2
    end
    object dbExcelBDEDesigner24: TStringField
      FieldName = '24'
      Origin = 'dbo.relExcel.24'
      Size = 60
    end
    object dbExcelBDEDesigner25: TStringField
      FieldName = '25'
      Origin = 'dbo.relExcel.25'
      Size = 15
    end
    object dbExcelBDEDesigner26: TMemoField
      FieldName = '26'
      Origin = 'dbo.relExcel.26'
      BlobType = ftMemo
    end
    object dbExcelBDEDesigner27: TStringField
      FieldName = '27'
      Origin = 'dbo.relExcel.27'
      Size = 10
    end
    object dbExcelBDEDesigner28: TStringField
      FieldName = '28'
      Origin = 'dbo.relExcel.28'
      Size = 5
    end
    object dbExcelBDEDesigner29: TStringField
      FieldName = '29'
      Origin = 'dbo.relExcel.29'
      Size = 10
    end
    object dbExcelBDEDesigner30: TStringField
      FieldName = '30'
      Origin = 'dbo.relExcel.30'
      Size = 5
    end
    object dbExcelBDEDesigner31: TStringField
      FieldName = '31'
      Origin = 'dbo.relExcel.31'
      Size = 10
    end
    object dbExcelBDEDesigner32: TStringField
      FieldName = '32'
      Origin = 'dbo.relExcel.32'
      Size = 10
    end
    object dbExcelBDEDesigner33: TStringField
      FieldName = '33'
      Origin = 'dbo.relExcel.33'
    end
    object dbExcelBDEDesigner34: TStringField
      FieldName = '34'
      Origin = 'dbo.relExcel.34'
      Size = 3
    end
    object dbExcelBDEDesigner35: TStringField
      FieldName = '35'
      Origin = 'dbo.relExcel.35'
      Size = 3
    end
    object dbExcelBDEDesigner36: TStringField
      FieldName = '36'
      Origin = 'dbo.relExcel.36'
    end
    object dbExcelBDEDesigner37: TStringField
      FieldName = '37'
      Origin = 'dbo.relExcel.37'
      Size = 25
    end
    object dbExcelBDEDesigner38: TStringField
      FieldName = '38'
      Origin = 'dbo.relExcel.38'
      Size = 4
    end
    object dbExcelBDEDesigner39: TStringField
      FieldName = '39'
      Origin = 'dbo.relExcel.39'
      Size = 4
    end
    object dbExcelBDEDesigner40: TStringField
      FieldName = '40'
      Origin = 'dbo.relExcel.40'
      Size = 4
    end
    object dbExcelBDEDesigner41: TStringField
      FieldName = '41'
      Origin = 'dbo.relExcel.41'
      Size = 4
    end
    object dbExcelBDEDesigner42: TStringField
      FieldName = '42'
      Origin = 'dbo.relExcel.42'
      Size = 4
    end
    object dbExcelBDEDesigner43: TStringField
      FieldName = '43'
      Origin = 'dbo.relExcel.43'
      Size = 4
    end
    object dbExcelBDEDesigner44: TStringField
      FieldName = '44'
      Origin = 'dbo.relExcel.44'
      Size = 4
    end
    object dbExcelBDEDesigner45: TStringField
      FieldName = '45'
      Origin = 'dbo.relExcel.45'
      Size = 4
    end
    object dbExcelBDEDesigner46: TStringField
      FieldName = '46'
      Origin = 'dbo.relExcel.46'
      Size = 4
    end
    object dbExcelBDEDesigner47: TStringField
      FieldName = '47'
      Origin = 'dbo.relExcel.47'
      Size = 4
    end
    object dbExcelBDEDesigner48: TStringField
      FieldName = '48'
      Origin = 'dbo.relExcel.48'
      Size = 50
    end
    object dbExcelBDEDesigner49: TStringField
      FieldName = '49'
      Origin = 'dbo.relExcel.49'
      Size = 10
    end
    object dbExcelBDEDesigner50: TStringField
      FieldName = '50'
      Origin = 'dbo.relExcel.50'
      Size = 10
    end
    object dbExcelBDEDesigner51: TStringField
      FieldName = '51'
      Origin = 'dbo.relExcel.51'
      Size = 3
    end
    object dbExcelBDEDesigner52: TStringField
      FieldName = '52'
      Origin = 'dbo.relExcel.52'
      Size = 10
    end
    object dbExcelBDEDesigner53: TStringField
      FieldName = '53'
      Origin = 'dbo.relExcel.53'
      Size = 4
    end
    object dbExcelBDEDesigner54: TStringField
      FieldName = '54'
      Origin = 'dbo.relExcel.54'
      Size = 10
    end
    object dbExcelBDEDesigner55: TStringField
      FieldName = '55'
      Origin = 'dbo.relExcel.55'
      Size = 4
    end
    object dbExcelBDEDesigner56: TStringField
      FieldName = '56'
      Origin = 'dbo.relExcel.56'
      Size = 10
    end
    object dbExcelBDEDesigner57: TStringField
      FieldName = '57'
      Origin = 'dbo.relExcel.57'
      Size = 4
    end
    object dbExcelBDEDesigner58: TStringField
      FieldName = '58'
      Origin = 'dbo.relExcel.58'
      Size = 10
    end
    object dbExcelBDEDesigner59: TStringField
      FieldName = '59'
      Origin = 'dbo.relExcel.59'
      Size = 10
    end
    object dbExcelBDEDesigner60: TStringField
      FieldName = '60'
      Origin = 'dbo.relExcel.60'
      Size = 4
    end
    object dbExcelBDEDesigner61: TStringField
      FieldName = '61'
      Origin = 'dbo.relExcel.61'
      Size = 10
    end
    object dbExcelBDEDesigner62: TStringField
      FieldName = '62'
      Origin = 'dbo.relExcel.62'
      Size = 4
    end
    object dbExcelBDEDesigner63: TStringField
      FieldName = '63'
      Origin = 'dbo.relExcel.63'
      Size = 10
    end
    object dbExcelBDEDesigner64: TStringField
      FieldName = '64'
      Origin = 'dbo.relExcel.64'
      Size = 4
    end
    object dbExcelBDEDesigner65: TStringField
      FieldName = '65'
      Origin = 'dbo.relExcel.65'
      Size = 10
    end
    object dbExcelBDEDesigner66: TStringField
      FieldName = '66'
      Origin = 'dbo.relExcel.66'
      Size = 4
    end
    object dbExcelBDEDesigner67: TStringField
      FieldName = '67'
      Origin = 'dbo.relExcel.67'
      Size = 10
    end
    object dbExcelBDEDesigner68: TStringField
      FieldName = '68'
      Origin = 'dbo.relExcel.68'
      Size = 10
    end
    object dbExcelBDEDesigner69: TStringField
      FieldName = '69'
      Origin = 'dbo.relExcel.69'
      Size = 10
    end
    object dbExcelBDEDesigner70: TStringField
      FieldName = '70'
      Origin = 'dbo.relExcel.70'
      Size = 10
    end
    object dbExcelBDEDesigner71: TStringField
      FieldName = '71'
      Origin = 'dbo.relExcel.71'
      Size = 10
    end
    object dbExcelBDEDesigner72: TStringField
      FieldName = '72'
      Origin = 'dbo.relExcel.72'
      Size = 10
    end
    object dbExcelBDEDesigner73: TStringField
      FieldName = '73'
      Origin = 'dbo.relExcel.73'
      Size = 10
    end
    object dbExcelBDEDesigner74: TStringField
      FieldName = '74'
      Origin = 'dbo.relExcel.74'
      Size = 10
    end
    object dbExcelBDEDesigner75: TStringField
      FieldName = '75'
      Origin = 'dbo.relExcel.75'
      Size = 10
    end
    object dbExcelBDEDesigner76: TStringField
      FieldName = '76'
      Origin = 'dbo.relExcel.76'
      Size = 10
    end
    object dbExcelBDEDesigner77: TStringField
      FieldName = '77'
      Origin = 'dbo.relExcel.77'
      Size = 10
    end
    object dbExcelBDEDesigner78: TStringField
      FieldName = '78'
      Origin = 'dbo.relExcel.78'
      Size = 10
    end
    object dbExcelBDEDesigner79: TStringField
      FieldName = '79'
      Origin = 'dbo.relExcel.79'
      Size = 10
    end
    object dbExcelBDEDesigner80: TStringField
      FieldName = '80'
      Origin = 'dbo.relExcel.80'
      Size = 10
    end
    object dbExcelBDEDesigner81: TStringField
      FieldName = '81'
      Origin = 'dbo.relExcel.81'
      Size = 10
    end
    object dbExcelBDEDesigner82: TStringField
      FieldName = '82'
      Origin = 'dbo.relExcel.82'
      Size = 10
    end
    object dbExcelBDEDesigner83: TStringField
      FieldName = '83'
      Origin = 'dbo.relExcel.83'
      Size = 10
    end
    object dbExcelBDEDesigner84: TStringField
      FieldName = '84'
      Origin = 'dbo.relExcel.84'
      Size = 10
    end
    object dbExcelBDEDesigner85: TStringField
      FieldName = '85'
      Origin = 'dbo.relExcel.85'
      Size = 13
    end
    object dbExcelBDEDesigner86: TStringField
      FieldName = '86'
      Origin = 'dbo.relExcel.86'
      Size = 13
    end
    object dbExcelBDEDesigner87: TStringField
      FieldName = '87'
      Origin = 'dbo.relExcel.87'
      Size = 13
    end
    object dbExcelBDEDesigner88: TStringField
      FieldName = '88'
      Origin = 'dbo.relExcel.88'
      Size = 13
    end
    object dbExcelBDEDesigner89: TMemoField
      FieldName = '89'
      Origin = 'dbo.relExcel.89'
      BlobType = ftMemo
    end
    object dbExcelBDEDesigner90: TStringField
      FieldName = '90'
      Origin = 'dbo.relExcel.90'
      Size = 60
    end
    object dbExcelBDEDesigner91: TStringField
      FieldName = '91'
      Origin = 'dbo.relExcel.91'
      Size = 15
    end
    object dbExcelBDEDesigner92: TStringField
      FieldName = '92'
      Origin = 'dbo.relExcel.92'
      Size = 60
    end
    object dbExcelBDEDesigner93: TStringField
      FieldName = '93'
      Origin = 'dbo.relExcel.93'
    end
    object dbExcelBDEDesigner94: TStringField
      FieldName = '94'
      Origin = 'dbo.relExcel.94'
      Size = 60
    end
  end
  object dbAtendH: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'select * from AtendHI'
      'where AtendimentoHI=0')
    Left = 705
    Top = 160
    object dbAtendHCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'AtendHI.Cliente'
    end
    object dbAtendHSequencial: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'AtendHI.Sequencial'
    end
    object dbAtendHAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'AtendHI.AtendimentoHI'
    end
    object dbAtendHPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'AtendHI.Paciente'
    end
    object dbAtendHHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'AtendHI.Hospital'
    end
    object dbAtendHMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'AtendHI.Medico'
    end
    object dbAtendHEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'AtendHI.Enfermeiro'
    end
    object dbAtendHMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'AtendHI.MesCompetencia'
    end
    object dbAtendHAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'AtendHI.AnoCompetencia'
    end
    object dbAtendHDiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'AtendHI.DiasUTI'
      Precision = 5
    end
    object dbAtendHDiarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'AtendHI.Diarias'
      Precision = 5
    end
    object dbAtendHDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
      Origin = 'AtendHI.DiariasGlosadas'
      Precision = 5
    end
    object dbAtendHDiariasCalculadas: TIntegerField
      FieldName = 'DiariasCalculadas'
      Origin = 'AtendHI.DiariasCalculadas'
    end
    object dbAtendHValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'AtendHI.Valor'
    end
    object dbAtendHValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'AtendHI.ValorGlosadoM'
    end
    object dbAtendHValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'AtendHI.ValorGlosadoE'
    end
    object dbAtendHUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'AtendHI.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbAtendHObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'AtendHI.Observacao'
      BlobType = ftMemo
    end
    object dbAtendHComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'AtendHI.Complemento'
    end
    object dbAtendHNumeroParcial: TSmallintField
      FieldName = 'NumeroParcial'
      Origin = 'AtendHI.NumeroParcial'
    end
    object dbAtendHDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'AtendHI.DayClinic'
    end
    object dbAtendHIntercambio: TBooleanField
      FieldName = 'Intercambio'
      Origin = 'AtendHI.Intercambio'
    end
    object dbAtendHPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'AtendHI.PosAnalise'
    end
    object dbAtendHValorNaoAcordadoM: TCurrencyField
      FieldName = 'ValorNaoAcordadoM'
      Origin = 'AtendHI.ValorNaoAcordadoM'
    end
    object dbAtendHValorNaoAcordadoE: TCurrencyField
      FieldName = 'ValorNaoAcordadoE'
      Origin = 'AtendHI.ValorNaoAcordadoE'
    end
    object dbAtendHPacote: TBooleanField
      FieldName = 'Pacote'
      Origin = 'AtendHI.Pacote'
    end
    object dbAtendHMedicoACRM: TIntegerField
      FieldName = 'MedicoACRM'
      Origin = 'AtendHI.MedicoACRM'
    end
    object dbAtendHConclusao: TStringField
      FieldName = 'Conclusao'
      Origin = 'AtendHI.Conclusao'
      FixedChar = True
      Size = 1
    end
    object dbAtendHInternacao: TStringField
      FieldName = 'Internacao'
      Origin = 'AtendHI.Internacao'
      FixedChar = True
      Size = 1
    end
    object dbAtendHTratamento: TStringField
      FieldName = 'Tratamento'
      Origin = 'AtendHI.Tratamento'
      FixedChar = True
      Size = 1
    end
    object dbAtendHApto: TFloatField
      FieldName = 'Apto'
      Origin = 'AtendHI.Apto'
      Precision = 5
    end
    object dbAtendHEnfermaria: TFloatField
      FieldName = 'Enfermaria'
      Origin = 'AtendHI.Enfermaria'
      Precision = 5
    end
    object dbAtendHSemi: TFloatField
      FieldName = 'Semi'
      Origin = 'AtendHI.Semi'
      Precision = 5
    end
    object dbAtendHBercario: TFloatField
      FieldName = 'Bercario'
      Origin = 'AtendHI.Bercario'
      Precision = 5
    end
    object dbAtendHDayClinicQtd: TFloatField
      FieldName = 'DayClinicQtd'
      Origin = 'AtendHI.DayClinicQtd'
      Precision = 5
    end
    object dbAtendHIsolamento: TFloatField
      FieldName = 'Isolamento'
      Origin = 'AtendHI.Isolamento'
      Precision = 5
    end
    object dbAtendHCodAmb: TIntegerField
      FieldName = 'CodAmb'
      Origin = 'AtendHI.CodAmb'
    end
    object dbAtendHQtdAmb: TSmallintField
      FieldName = 'QtdAmb'
      Origin = 'AtendHI.QtdAmb'
    end
    object dbAtendHExtraAmb: TBooleanField
      FieldName = 'ExtraAmb'
      Origin = 'AtendHI.ExtraAmb'
    end
    object dbAtendHSenha: TStringField
      FieldName = 'Senha'
      Origin = 'AtendHI.Senha'
      FixedChar = True
      Size = 12
    end
    object dbAtendHCodAmb1: TIntegerField
      FieldName = 'CodAmb1'
      Origin = 'AtendHI.CodAmb1'
    end
    object dbAtendHQtdAmb1: TSmallintField
      FieldName = 'QtdAmb1'
      Origin = 'AtendHI.QtdAmb1'
    end
    object dbAtendHExtraAmb1: TBooleanField
      FieldName = 'ExtraAmb1'
      Origin = 'AtendHI.ExtraAmb1'
    end
    object dbAtendHSenha1: TStringField
      FieldName = 'Senha1'
      Origin = 'AtendHI.Senha1'
      FixedChar = True
      Size = 12
    end
    object dbAtendHRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'AtendHI.Retorno'
    end
    object dbAtendHRemessa: TIntegerField
      FieldName = 'Remessa'
      Origin = 'AtendHI.Remessa'
    end
    object dbAtendHVisita: TWordField
      FieldName = 'Visita'
      Origin = 'AtendHI.Visita'
    end
    object dbAtendHValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'AtendHI.ValorPago'
    end
    object dbAtendHObitoGravida: TStringField
      FieldName = 'ObitoGravida'
      Origin = 'AtendHI.ObitoGravida'
      FixedChar = True
      Size = 1
    end
    object dbAtendHQtdRNVivo: TSmallintField
      FieldName = 'QtdRNVivo'
      Origin = 'AtendHI.QtdRNVivo'
    end
    object dbAtendHQtdRNMorto: TSmallintField
      FieldName = 'QtdRNMorto'
      Origin = 'AtendHI.QtdRNMorto'
    end
    object dbAtendHQtdRNPrematuro: TSmallintField
      FieldName = 'QtdRNPrematuro'
      Origin = 'AtendHI.QtdRNPrematuro'
    end
    object dbAtendHAcidente: TStringField
      FieldName = 'Acidente'
      Origin = 'AtendHI.Acidente'
      FixedChar = True
      Size = 1
    end
    object dbAtendHUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'AtendHI.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbAtendHDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'AtendHI.DataInclusao'
    end
    object dbAtendHDataExclusao: TDateTimeField
      FieldName = 'DataExclusao'
      Origin = 'AtendHI.DataExclusao'
    end
    object dbAtendHDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'AtendHI.DataAlteracao'
    end
    object dbAtendHUsuarioSite: TStringField
      FieldName = 'UsuarioSite'
      Origin = 'AtendHI.UsuarioSite'
      FixedChar = True
      Size = 10
    end
    object dbAtendHDataSite: TDateTimeField
      FieldName = 'DataSite'
      Origin = 'AtendHI.DataSite'
    end
    object dbAtendHDataFimP: TDateTimeField
      FieldName = 'DataFimP'
      Origin = 'AtendHI.DataFimP'
    end
    object dbAtendHGemelar: TWordField
      FieldName = 'Gemelar'
      Origin = 'AtendHI.Gemelar'
    end
    object dbAtendHDataAmb1: TDateTimeField
      FieldName = 'DataAmb1'
      Origin = 'AtendHI.DataAmb1'
    end
    object dbAtendHDataAmb2: TDateTimeField
      FieldName = 'DataAmb2'
      Origin = 'AtendHI.DataAmb2'
    end
    object dbAtendHDataAmb3: TDateTimeField
      FieldName = 'DataAmb3'
      Origin = 'AtendHI.DataAmb3'
    end
    object dbAtendHPAmb1: TFloatField
      FieldName = 'PAmb1'
      Origin = 'AtendHI.PAmb1'
      Precision = 5
    end
    object dbAtendHPAmb2: TFloatField
      FieldName = 'PAmb2'
      Origin = 'AtendHI.PAmb2'
      Precision = 5
    end
    object dbAtendHPAmb3: TFloatField
      FieldName = 'PAmb3'
      Origin = 'AtendHI.PAmb3'
      Precision = 5
    end
    object dbAtendHCodAmb3: TIntegerField
      FieldName = 'CodAmb3'
      Origin = 'AtendHI.CodAmb3'
    end
    object dbAtendHResponsavelH: TStringField
      FieldName = 'ResponsavelH'
      Origin = 'AtendHI.ResponsavelH'
      Size = 60
    end
    object dbAtendHRN: TStringField
      FieldName = 'RN'
      Origin = 'AtendHI.RN'
      FixedChar = True
      Size = 1
    end
    object dbAtendHServico: TStringField
      FieldName = 'Servico'
      Origin = 'AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object dbAtendHProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'AtendHI.Produtividade'
    end
    object dbAtendHIDPaciente: TStringField
      FieldName = 'IDPaciente'
      Origin = 'AtendHI.IDPaciente'
      FixedChar = True
      Size = 10
    end
    object dbAtendHDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'AtendHI.DataFechamento'
    end
    object dbAtendHDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'AtendHI.DataInternacao'
    end
    object dbAtendHDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'AtendHI.DataAlta'
    end
    object dbAtendHParcial: TWordField
      FieldName = 'Parcial'
      Origin = 'AtendHI.Parcial'
    end
    object dbAtendHDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'AtendHI.DataInicioP'
    end
    object dbAtendHServicoC: TStringField
      FieldName = 'ServicoC'
      Origin = 'AtendHI.ServicoC'
      FixedChar = True
      Size = 3
    end
    object dbAtendHNABradesco: TStringField
      FieldName = 'NABradesco'
      Origin = 'AtendHI.NABradesco'
      FixedChar = True
      Size = 1
    end
    object dbAtendHAtendimentoHIO: TLargeintField
      FieldName = 'AtendimentoHIO'
      Origin = 'AtendHI.AtendimentoHIO'
    end
    object dbAtendHComplementoF: TBooleanField
      FieldName = 'ComplementoF'
      Origin = 'AtendHI.ComplementoF'
    end
    object dbAtendHDiariasLonga: TIntegerField
      FieldName = 'DiariasLonga'
    end
  end
  object dbItem: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM dbo.AtendHIGlosa'
      'where AtendimentoHI=0')
    Left = 703
    Top = 193
    object dbItemCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHIGlosa.Cliente'
    end
    object dbItemAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object dbItemTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.AtendHIGlosa.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbItemGlosaI: TStringField
      FieldName = 'GlosaI'
      Origin = 'dbo.AtendHIGlosa.GlosaI'
      FixedChar = True
      Size = 3
    end
    object dbItemValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.AtendHIGlosa.Valor'
    end
    object dbItemValorApresentado: TCurrencyField
      FieldName = 'ValorApresentado'
      Origin = 'dbo.AtendHIGlosa.ValorApresentado'
    end
  end
  object dbDiag: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM dbo.AtendHIDiagnostico'
      'where AtendimentoHI=0')
    Left = 704
    Top = 224
    object dbDiagCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHIDiagnostico.Cliente'
    end
    object dbDiagAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
    end
    object dbDiagDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
      Origin = 'dbo.AtendHIDiagnostico.Diagnostico'
    end
    object dbDiagAtendimentoHC: TIntegerField
      FieldName = 'AtendimentoHC'
      Origin = 'dbo.AtendHIDiagnostico.AtendimentoHC'
    end
    object dbDiagItem: TIntegerField
      FieldName = 'Item'
      Origin = 'dbo.AtendHIDiagnostico.Item'
    end
    object dbDiagDataAuditoria: TDateTimeField
      FieldName = 'DataAuditoria'
      Origin = 'dbo.AtendHIDiagnostico.DataAuditoria'
    end
    object dbDiagPrincipal: TBooleanField
      FieldName = 'Principal'
      Origin = 'dbo.AtendHIDiagnostico.Principal'
    end
    object dbDiagCodCid: TStringField
      FieldName = 'CodCid'
      Origin = 'dbo.AtendHIDiagnostico.CodCid'
      FixedChar = True
      Size = 11
    end
    object dbDiagGrupocid: TStringField
      FieldName = 'Grupocid'
      Origin = 'dbo.AtendHIDiagnostico.Grupocid'
      FixedChar = True
      Size = 1
    end
  end
  object dbPaciente: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM dbo.Pacientes'
      'order by Cliente,IDPaciente,CodigoPaciente')
    BeforeInsert = dbPacienteBeforeInsert
    Left = 568
    Top = 161
    object dbPacientePaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.Pacientes.Paciente'
    end
    object dbPacienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Pacientes.Nome'
      FixedChar = True
      Size = 40
    end
    object dbPacienteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Pacientes.Endereco'
      Size = 60
    end
    object dbPacienteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.Pacientes.Bairro'
      Size = 30
    end
    object dbPacienteCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Pacientes.Cidade'
      Size = 30
    end
    object dbPacienteUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Pacientes.UF'
      FixedChar = True
      Size = 2
    end
    object dbPacienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Pacientes.Cep'
      FixedChar = True
      Size = 9
    end
    object dbPacienteFone1: TStringField
      FieldName = 'Fone1'
      Origin = 'dbo.Pacientes.Fone1'
      Size = 60
    end
    object dbPacienteFone2: TStringField
      FieldName = 'Fone2'
      Origin = 'dbo.Pacientes.Fone2'
      Size = 60
    end
    object dbPacienteFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.Pacientes.Fax'
      Size = 60
    end
    object dbPacienteDocumento: TStringField
      FieldName = 'Documento'
      Origin = 'dbo.Pacientes.Documento'
      Size = 40
    end
    object dbPacienteContato: TStringField
      FieldName = 'Contato'
      Origin = 'dbo.Pacientes.Contato'
      Size = 40
    end
    object dbPacienteAnoNascimento: TSmallintField
      FieldName = 'AnoNascimento'
      Origin = 'dbo.Pacientes.AnoNascimento'
    end
    object dbPacienteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Pacientes.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbPacienteIdade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
    object dbPacienteCodigoPaciente: TStringField
      FieldName = 'CodigoPaciente'
      Origin = 'dbo.Pacientes.CodigoPaciente'
      FixedChar = True
      Size = 22
    end
    object dbPacienteUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 10
      Calculated = True
    end
    object dbPacienteSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'dbo.Pacientes.Sexo'
      FixedChar = True
      Size = 1
    end
    object dbPacienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Pacientes.Cliente'
    end
    object dbPacienteIDPaciente: TStringField
      FieldName = 'IDPaciente'
      Origin = 'dbo.Pacientes.IDPaciente'
      FixedChar = True
      Size = 10
    end
    object dbPacienteDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
      Origin = 'dbo.Pacientes.DataNascimento'
    end
    object dbPacienteDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Pacientes.DataInclusao'
    end
  end
  object dbExcel1: TMSTable
    TableName = 'dbo.relExcel1'
    Connection = frmMenu.dadosaud
    Left = 736
    Top = 224
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
  object qryProcessoTrab: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM  RetornoHI')
    Left = 672
    Top = 161
  end
  object dbProcesso: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'Select * from RetornoHI '
      'order by Retorno,Cliente,AtendimentoHI')
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
        DataType = ftUnknown
        Name = 'Retorno'
      end>
    object dbProcessoRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'RetornoHI.Retorno'
    end
    object dbProcessoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'RetornoHI.Cliente'
    end
    object dbProcessoClienteCNPJ: TStringField
      FieldName = 'ClienteCNPJ'
      Origin = 'RetornoHI.ClienteCNPJ'
      FixedChar = True
      Size = 15
    end
    object dbProcessoAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'RetornoHI.AtendimentoHI'
    end
    object dbProcessoSequencial: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'RetornoHI.Sequencial'
      ReadOnly = True
    end
    object dbProcessoPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'RetornoHI.Paciente'
    end
    object dbProcessoHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'RetornoHI.Hospital'
    end
    object dbProcessoHospitalCNPJ: TStringField
      FieldName = 'HospitalCNPJ'
      Origin = 'RetornoHI.HospitalCNPJ'
      FixedChar = True
      Size = 15
    end
    object dbProcessoMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'RetornoHI.Medico'
    end
    object dbProcessoEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'RetornoHI.Enfermeiro'
    end
    object dbProcessoMedicoCRM: TIntegerField
      FieldName = 'MedicoCRM'
      Origin = 'RetornoHI.MedicoCRM'
    end
    object dbProcessoMesCompetencia: TSmallintField
      FieldName = 'MesCompetencia'
      Origin = 'RetornoHI.MesCompetencia'
    end
    object dbProcessoAnoCompetencia: TSmallintField
      FieldName = 'AnoCompetencia'
      Origin = 'RetornoHI.AnoCompetencia'
    end
    object dbProcessoEnfermeiroCoren: TIntegerField
      FieldName = 'EnfermeiroCoren'
      Origin = 'RetornoHI.EnfermeiroCoren'
    end
    object dbProcessoDiasUti: TFloatField
      FieldName = 'DiasUti'
      Origin = 'RetornoHI.DiasUti'
      Precision = 5
    end
    object dbProcessoDiarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'RetornoHI.Diarias'
      Precision = 5
    end
    object dbProcessoDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
      Origin = 'RetornoHI.DiariasGlosadas'
      Precision = 5
    end
    object dbProcessoDiariasCalculadas: TSmallintField
      FieldName = 'DiariasCalculadas'
      Origin = 'RetornoHI.DiariasCalculadas'
    end
    object dbProcessoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'RetornoHI.Valor'
    end
    object dbProcessoValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
      Origin = 'RetornoHI.ValorGlosado'
    end
    object dbProcessoValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'RetornoHI.ValorGlosadoM'
    end
    object dbProcessoValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'RetornoHI.ValorGlosadoE'
    end
    object dbProcessoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'RetornoHI.Usuario'
      FixedChar = True
      Size = 10
    end
    object dbProcessoObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'RetornoHI.Observacao'
      BlobType = ftMemo
    end
    object dbProcessoComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'RetornoHI.Complemento'
    end
    object dbProcessoNumeroParcial: TSmallintField
      FieldName = 'NumeroParcial'
      Origin = 'RetornoHI.NumeroParcial'
    end
    object dbProcessoDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'RetornoHI.DayClinic'
    end
    object dbProcessoIntercambio: TBooleanField
      FieldName = 'Intercambio'
      Origin = 'RetornoHI.Intercambio'
    end
    object dbProcessoFatura: TIntegerField
      FieldName = 'Fatura'
      Origin = 'RetornoHI.Fatura'
    end
    object dbProcessoPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'RetornoHI.PosAnalise'
    end
    object dbProcessoNaoContabilizado: TWordField
      FieldName = 'NaoContabilizado'
      Origin = 'RetornoHI.NaoContabilizado'
    end
    object dbProcessoValorNaoAcordadoM: TCurrencyField
      FieldName = 'ValorNaoAcordadoM'
      Origin = 'RetornoHI.ValorNaoAcordadoM'
    end
    object dbProcessoValorNaoAcordadoE: TCurrencyField
      FieldName = 'ValorNaoAcordadoE'
      Origin = 'RetornoHI.ValorNaoAcordadoE'
    end
    object dbProcessoNomePacienteB: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePacienteB'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 40
      Lookup = True
    end
    object dbProcessoPacote: TBooleanField
      FieldName = 'Pacote'
      Origin = 'RetornoHI.Pacote'
    end
    object dbProcessoMedicoACRM: TIntegerField
      FieldName = 'MedicoACRM'
      Origin = 'RetornoHI.MedicoACRM'
    end
    object dbProcessoConclusao: TStringField
      FieldName = 'Conclusao'
      Origin = 'RetornoHI.Conclusao'
      FixedChar = True
      Size = 1
    end
    object dbProcessoInternacao: TStringField
      FieldName = 'Internacao'
      Origin = 'RetornoHI.Internacao'
      FixedChar = True
      Size = 1
    end
    object dbProcessoTratamento: TStringField
      FieldName = 'Tratamento'
      Origin = 'RetornoHI.Tratamento'
      FixedChar = True
      Size = 1
    end
    object dbProcessoApto: TFloatField
      FieldName = 'Apto'
      Origin = 'RetornoHI.Apto'
      Precision = 5
    end
    object dbProcessoEnfermaria: TFloatField
      FieldName = 'Enfermaria'
      Origin = 'RetornoHI.Enfermaria'
      Precision = 5
    end
    object dbProcessoSemi: TFloatField
      FieldName = 'Semi'
      Origin = 'RetornoHI.Semi'
      Precision = 5
    end
    object dbProcessoBercario: TFloatField
      FieldName = 'Bercario'
      Origin = 'RetornoHI.Bercario'
      Precision = 5
    end
    object dbProcessoDayClinicQtd: TFloatField
      FieldName = 'DayClinicQtd'
      Origin = 'RetornoHI.DayClinicQtd'
      Precision = 5
    end
    object dbProcessoIsolamento: TFloatField
      FieldName = 'Isolamento'
      Origin = 'RetornoHI.Isolamento'
      Precision = 5
    end
    object dbProcessoCodAMB: TIntegerField
      FieldName = 'CodAMB'
      Origin = 'RetornoHI.CodAMB'
    end
    object dbProcessoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'RetornoHI.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbProcessoProcessa: TStringField
      FieldName = 'Processa'
      Origin = 'RetornoHI.Processa'
      FixedChar = True
      Size = 1
    end
    object dbProcessoProcessaTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProcessaTexto'
      Size = 3
      Calculated = True
    end
    object dbProcessoMedicoNome: TStringField
      FieldName = 'MedicoNome'
      Origin = 'RetornoHI.MedicoNome'
      FixedChar = True
      Size = 35
    end
    object dbProcessoEnfermeiroNome: TStringField
      FieldName = 'EnfermeiroNome'
      Origin = 'RetornoHI.EnfermeiroNome'
      FixedChar = True
      Size = 35
    end
    object dbProcessoMedicoANome: TStringField
      FieldName = 'MedicoANome'
      Origin = 'RetornoHI.MedicoANome'
      FixedChar = True
      Size = 35
    end
    object dbProcessoSenha: TStringField
      FieldName = 'Senha'
      Origin = 'RetornoHI.Senha'
      FixedChar = True
      Size = 12
    end
    object dbProcessoNotas: TMemoField
      FieldName = 'Notas'
      Origin = 'RetornoHI.Notas'
      BlobType = ftMemo
    end
    object dbProcessoClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbProcessoHospitalNome: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalNome'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'Nome'
      KeyFields = 'Hospital'
      Size = 40
      Lookup = True
    end
    object dbProcessoMedicoNomeBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNomeBusca'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 40
      Lookup = True
    end
    object dbProcessoEnfermeiroNomeBusca: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNomeBusca'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermeiro'
      Size = 40
      Lookup = True
    end
    object dbProcessoStringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'AMBNome'
      LookupDataSet = dbAmb
      LookupKeyFields = 'CodAMB'
      LookupResultField = 'DescricaoAMB'
      KeyFields = 'CodAmb'
      Size = 60
      Lookup = True
    end
    object dbProcessoNomePaciente: TStringField
      FieldName = 'NomePaciente'
      Origin = 'RetornoHI.NomePaciente'
      FixedChar = True
      Size = 32
    end
    object dbProcessoCodigoPaciente: TStringField
      FieldName = 'CodigoPaciente'
      Origin = 'RetornoHI.CodigoPaciente'
      FixedChar = True
      Size = 22
    end
    object dbProcessoNaoValorizado: TWordField
      FieldName = 'NaoValorizado'
      Origin = 'RetornoHI.NaoValorizado'
    end
    object dbProcessoVisita: TWordField
      FieldName = 'Visita'
      Origin = 'RetornoHI.Visita'
    end
    object dbProcessoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'RetornoHI.ValorPago'
    end
    object dbProcessoParcial: TWordField
      FieldName = 'Parcial'
      Origin = 'RetornoHI.Parcial'
    end
    object dbProcessoObitoGravida: TStringField
      FieldName = 'ObitoGravida'
      Origin = 'RetornoHI.ObitoGravida'
      FixedChar = True
      Size = 1
    end
    object dbProcessoQtdRNVivo: TSmallintField
      FieldName = 'QtdRNVivo'
      Origin = 'RetornoHI.QtdRNVivo'
    end
    object dbProcessoQtdRNMorto: TSmallintField
      FieldName = 'QtdRNMorto'
      Origin = 'RetornoHI.QtdRNMorto'
    end
    object dbProcessoQtdRNPrematuro: TSmallintField
      FieldName = 'QtdRNPrematuro'
      Origin = 'RetornoHI.QtdRNPrematuro'
    end
    object dbProcessoAcidente: TStringField
      FieldName = 'Acidente'
      Origin = 'RetornoHI.Acidente'
      FixedChar = True
      Size = 1
    end
    object dbProcessoUsuarioSite: TStringField
      FieldName = 'UsuarioSite'
      Origin = 'RetornoHI.UsuarioSite'
      FixedChar = True
      Size = 10
    end
    object dbProcessoIDPaciente: TStringField
      FieldName = 'IDPaciente'
      Origin = 'RetornoHI.IDPaciente'
      FixedChar = True
      Size = 10
    end
    object dbProcessoQtdAMB: TSmallintField
      FieldName = 'QtdAMB'
      Origin = 'RetornoHI.QtdAMB'
    end
    object dbProcessoExtraAMB: TBooleanField
      FieldName = 'ExtraAMB'
      Origin = 'RetornoHI.ExtraAMB'
    end
    object dbProcessoCodAMB1: TIntegerField
      FieldName = 'CodAMB1'
      Origin = 'RetornoHI.CodAMB1'
    end
    object dbProcessoQtdAMB1: TSmallintField
      FieldName = 'QtdAMB1'
      Origin = 'RetornoHI.QtdAMB1'
    end
    object dbProcessoExtraAMB1: TBooleanField
      FieldName = 'ExtraAMB1'
      Origin = 'RetornoHI.ExtraAMB1'
    end
    object dbProcessoSenha1: TStringField
      FieldName = 'Senha1'
      Origin = 'RetornoHI.Senha1'
      FixedChar = True
      Size = 10
    end
    object dbProcessoAmbNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'AmbNome1'
      LookupDataSet = dbAmb
      LookupKeyFields = 'CodAMB'
      LookupResultField = 'DescricaoAMB'
      KeyFields = 'codamb1'
      Size = 60
      Lookup = True
    end
    object dbProcessoPacienteIdade: TSmallintField
      FieldName = 'PacienteIdade'
      Origin = 'RetornoHI.PacienteIdade'
    end
    object dbProcessoPacienteUnidade: TStringField
      FieldName = 'PacienteUnidade'
      Origin = 'RetornoHI.PacienteUnidade'
      FixedChar = True
      Size = 1
    end
    object dbProcessoPacienteSexo: TStringField
      FieldName = 'PacienteSexo'
      Origin = 'RetornoHI.PacienteSexo'
      FixedChar = True
      Size = 1
    end
    object dbProcessoGemelar: TWordField
      FieldName = 'Gemelar'
      Origin = 'RetornoHI.Gemelar'
    end
    object dbProcessoPAMB1: TFloatField
      FieldName = 'PAMB1'
      Origin = 'RetornoHI.PAMB1'
      Precision = 5
    end
    object dbProcessoPAMB2: TFloatField
      FieldName = 'PAMB2'
      Origin = 'RetornoHI.PAMB2'
      Precision = 5
    end
    object dbProcessoPAMB3: TFloatField
      FieldName = 'PAMB3'
      Origin = 'RetornoHI.PAMB3'
      Precision = 5
    end
    object dbProcessoCodAMB3: TIntegerField
      FieldName = 'CodAMB3'
      Origin = 'RetornoHI.CodAMB3'
    end
    object dbProcessoResponsavelH: TStringField
      FieldName = 'ResponsavelH'
      Origin = 'RetornoHI.ResponsavelH'
      Size = 60
    end
    object dbProcessoAmbNome3: TStringField
      FieldKind = fkLookup
      FieldName = 'AmbNome3'
      LookupDataSet = dbAmb
      LookupKeyFields = 'CodAMB'
      LookupResultField = 'DescricaoAMB'
      KeyFields = 'CodAmb3'
      Size = 60
      Lookup = True
    end
    object dbProcessoRN: TStringField
      FieldName = 'RN'
      Origin = 'RetornoHI.RN'
      FixedChar = True
      Size = 1
    end
    object dbProcessoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'RetornoHI.DataFechamento'
    end
    object dbProcessoDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'RetornoHI.DataInternacao'
    end
    object dbProcessoDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'RetornoHI.DataAlta'
    end
    object dbProcessoDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'RetornoHI.DataInicioP'
    end
    object dbProcessoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'RetornoHI.DataInclusao'
    end
    object dbProcessoDataExclusao: TDateTimeField
      FieldName = 'DataExclusao'
      Origin = 'RetornoHI.DataExclusao'
    end
    object dbProcessoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'RetornoHI.DataAlteracao'
    end
    object dbProcessoDataSite: TDateTimeField
      FieldName = 'DataSite'
      Origin = 'RetornoHI.DataSite'
    end
    object dbProcessoDataFimP: TDateTimeField
      FieldName = 'DataFimP'
      Origin = 'RetornoHI.DataFimP'
    end
    object dbProcessoDataAMB1: TDateTimeField
      FieldName = 'DataAMB1'
      Origin = 'RetornoHI.DataAMB1'
    end
    object dbProcessoDataAMB2: TDateTimeField
      FieldName = 'DataAMB2'
      Origin = 'RetornoHI.DataAMB2'
    end
    object dbProcessoDataAMB3: TDateTimeField
      FieldName = 'DataAMB3'
      Origin = 'RetornoHI.DataAMB3'
    end
    object dbProcessoPacienteNascimento: TDateTimeField
      FieldName = 'PacienteNascimento'
      Origin = 'RetornoHI.PacienteNascimento'
    end
    object dbProcessoAtendimentoHIO: TLargeintField
      FieldName = 'AtendimentoHIO'
      Origin = 'RetornoHI.AtendimentoHIO'
    end
    object dbProcessoNABradesco: TStringField
      FieldName = 'NABradesco'
      OnGetText = dbProcessoNABradescoGetText
      OnSetText = dbProcessoNABradescoSetText
      FixedChar = True
      Size = 1
    end
  end
  object dbProcessoGlosa: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM RetornoHIGlosa'
      'order by Retorno, Cliente, AtendimentoHI')
    AfterInsert = dbProcessoGlosaAfterInsert
    BeforePost = dbProcessoGlosaBeforePost
    AfterPost = dbProcessoGlosaAfterPost
    OnCalcFields = dbProcessoGlosaCalcFields
    MasterSource = dsProcesso
    MasterFields = 'Retorno;Cliente;AtendimentoHI'
    DetailFields = 'Retorno;Cliente;AtendimentoHI'
    Left = 501
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Retorno'
      end
      item
        DataType = ftUnknown
        Name = 'Cliente'
      end
      item
        DataType = ftUnknown
        Name = 'AtendimentoHI'
      end>
    object dbProcessoGlosaRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'RetornoHIGlosa.Retorno'
    end
    object dbProcessoGlosaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'RetornoHIGlosa.Cliente'
    end
    object dbProcessoGlosaTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'RetornoHIGlosa.Tipo'
      FixedChar = True
      Size = 1
    end
    object dbProcessoGlosaAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'RetornoHIGlosa.AtendimentoHI'
    end
    object dbProcessoGlosaGlosaI: TStringField
      FieldName = 'GlosaI'
      Origin = 'RetornoHIGlosa.GlosaI'
      FixedChar = True
      Size = 2
    end
    object dbProcessoGlosaValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'RetornoHIGlosa.Valor'
    end
    object dbProcessoGlosaValorApresentado: TCurrencyField
      FieldName = 'ValorApresentado'
      Origin = 'RetornoHIGlosa.ValorApresentado'
    end
    object dbProcessoGlosaMedEnf: TStringField
      FieldName = 'MedEnf'
      Origin = 'RetornoHIGlosa.MedEnf'
      FixedChar = True
      Size = 1
    end
    object dbProcessoGlosaGlosaNome: TStringField
      FieldKind = fkLookup
      FieldName = 'GlosaNome'
      LookupDataSet = dbGlosa
      LookupKeyFields = 'GlosaI'
      LookupResultField = 'Nome'
      KeyFields = 'GlosaI'
      Size = 40
      Lookup = True
    end
    object dbProcessoGlosaValorM: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorM'
      Calculated = True
    end
    object dbProcessoGlosaValorE: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorE'
      Calculated = True
    end
  end
  object dbProcessoDiag: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM RetornoHIDiagnostico'
      'order by Retorno, Cliente, AtendimentoHI, CodCid ')
    AfterInsert = dbProcessoDiagAfterInsert
    BeforePost = dbProcessoDiagBeforePost
    AfterPost = dbProcessoDiagAfterPost
    OnCalcFields = dbProcessoDiagCalcFields
    MasterSource = dsProcesso
    MasterFields = 'Retorno;Cliente;AtendimentoHI'
    DetailFields = 'Retorno;Cliente;AtendimentoHI'
    Left = 501
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Retorno'
      end
      item
        DataType = ftUnknown
        Name = 'Cliente'
      end
      item
        DataType = ftUnknown
        Name = 'AtendimentoHI'
      end>
    object dbProcessoDiagRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'RetornoHIDiagnostico.Retorno'
    end
    object dbProcessoDiagCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'RetornoHIDiagnostico.Cliente'
    end
    object dbProcessoDiagAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'RetornoHIDiagnostico.AtendimentoHI'
    end
    object dbProcessoDiagCodCid: TStringField
      FieldName = 'CodCid'
      Origin = 'RetornoHIDiagnostico.CodCid'
      FixedChar = True
      Size = 11
    end
    object dbProcessoDiagDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
      Origin = 'RetornoHIDiagnostico.Diagnostico'
    end
    object dbProcessoDiagAtendimentoHC: TIntegerField
      FieldName = 'AtendimentoHC'
      Origin = 'RetornoHIDiagnostico.AtendimentoHC'
    end
    object dbProcessoDiagItem: TSmallintField
      FieldName = 'Item'
      Origin = 'RetornoHIDiagnostico.Item'
    end
    object dbProcessoDiagDataAuditoria: TDateTimeField
      FieldName = 'DataAuditoria'
      Origin = 'RetornoHIDiagnostico.DataAuditoria'
    end
    object dbProcessoDiagPrincipal: TBooleanField
      FieldName = 'Principal'
      Origin = 'RetornoHIDiagnostico.Principal'
    end
    object dbProcessoDiagGrupoCid: TStringField
      FieldName = 'GrupoCid'
      Origin = 'RetornoHIDiagnostico.GrupoCid'
      FixedChar = True
      Size = 1
    end
    object dbProcessoDiagDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'RetornoHIDiagnostico.Descricao'
      Size = 50
    end
    object dbProcessoDiagDiagnosticoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'DiagnosticoNome'
      LookupDataSet = dbDiagnostico
      LookupKeyFields = 'CodCid'
      LookupResultField = 'Nome'
      KeyFields = 'CodCid'
      Size = 40
      Lookup = True
    end
    object dbProcessoDiagPrincipalTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'PrincipalTexto'
      Size = 3
      Calculated = True
    end
  end
  object dbRetorno: TMSQuery
    Connection = frmMenu.dadosaud
    SQL.Strings = (
      'SELECT * FROM Retorno where modulo=0'
      'order by Retorno desc')
    Filtered = True
    AfterInsert = dbRetornoAfterInsert
    OnCalcFields = dbRetornoCalcFields
    OnFilterRecord = dbRetornoFilterRecord
    Left = 501
    Top = 257
    object dbRetornoRetorno: TIntegerField
      FieldName = 'Retorno'
      ReadOnly = True
    end
    object dbRetornoNomeArquivo: TStringField
      FieldName = 'NomeArquivo'
      Size = 100
    end
    object dbRetornoProcessado: TBooleanField
      FieldName = 'Processado'
    end
    object dbRetornoUsuario: TStringField
      FieldName = 'Usuario'
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
    end
    object dbRetornoRegistrosok: TIntegerField
      FieldName = 'Registrosok'
    end
    object dbRetornoRegistrosInclusao: TIntegerField
      FieldName = 'RegistrosInclusao'
    end
    object dbRetornoRegistrosAlteracao: TIntegerField
      FieldName = 'RegistrosAlteracao'
    end
    object dbRetornoCapeantes: TIntegerField
      FieldName = 'Capeantes'
    end
    object dbRetornoRepetidos: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Repetidos'
      Calculated = True
    end
    object dbRetornoCliente: TIntegerField
      FieldName = 'Cliente'
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
    end
    object dbRetornoHoraProcessamento: TDateTimeField
      FieldName = 'HoraProcessamento'
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
    end
    object dbRetornoUsuarioLeitura: TStringField
      FieldName = 'UsuarioLeitura'
      FixedChar = True
      Size = 10
    end
    object dbRetornoDataLeitura: TDateTimeField
      FieldName = 'DataLeitura'
    end
    object dbRetornoUsuarioValidacao: TStringField
      FieldName = 'UsuarioValidacao'
      FixedChar = True
      Size = 10
    end
    object dbRetornoDataValidacao: TDateTimeField
      FieldName = 'DataValidacao'
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
    end
    object dbProdCliCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbProdCliDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbProdCliUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsProd: TDataSource
    DataSet = dbProd
    Left = 668
    Top = 229
  end
  object dbHospitalPre: TMSTable
    TableName = 'dbo.HospitalPre'
    Connection = frmMenu.dadosaud
    Left = 564
    Top = 287
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
    object dbHospitalPreZeraAuditor: TBooleanField
      FieldName = 'ZeraAuditor'
    end
    object dbHospitalPreZeraEnfermeiro: TBooleanField
      FieldName = 'ZeraEnfermeiro'
    end
    object dbHospitalPreDG: TBooleanField
      FieldName = 'DG'
    end
  end
end
