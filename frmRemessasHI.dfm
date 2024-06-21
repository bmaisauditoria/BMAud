object frmRemessaHI: TfrmRemessaHI
  Left = 296
  Top = 49
  Width = 887
  Height = 682
  Caption = 'Estat'#237'sticas - Remessa de Dados'
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 0
    Top = 29
    Width = 871
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Remessa '
    Color = 11206642
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 67
    Width = 871
    Height = 138
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 4
      Top = 6
      Width = 863
      Height = 128
      Align = alClient
      DataSource = dsRemessa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Remessa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeCliente'
          Title.Caption = 'Cliente'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataGeracao'
          Title.Alignment = taCenter
          Title.Caption = 'Gera'#231#227'o'
          Width = 80
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataEnvio'
          Title.Alignment = taCenter
          Title.Caption = 'Envio'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HoraEnvio'
          Title.Caption = 'Hora'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataFechamento'
          Title.Alignment = taCenter
          Title.Caption = 'Fechamento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UsuarioFechamento'
          Title.Caption = 'Usu'#225'rio'
          Visible = True
        end>
    end
  end
  object CoolBar2: TCoolBar
    Left = 0
    Top = 42
    Width = 871
    Height = 25
    Bands = <
      item
        Control = lblLocCodigo1
        ImageIndex = -1
        MinHeight = 21
        Width = 867
      end>
    object lblLocCodigo1: TEdit
      Left = 9
      Top = 0
      Width = 854
      Height = 21
      TabOrder = 0
      Text = '0'
      OnChange = lblLocCodigo1Change
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 205
    Width = 871
    Height = 8
    Align = alTop
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 871
    Height = 431
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Label2: TLabel
      Left = 0
      Top = 25
      Width = 871
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Capeantes'
      Color = 11206642
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 0
      Top = 38
      Width = 871
      Height = 13
      Align = alTop
      Alignment = taCenter
      Color = 10747718
      DataField = 'NomePaciente'
      DataSource = dsProcesso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Panel7: TPanel
      Left = 0
      Top = 51
      Width = 29
      Height = 180
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object cmdExcluiP: TBitBtn
        Left = 3
        Top = 5
        Width = 23
        Height = 22
        Hint = 'Excluir Capeante da Remssa'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
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
    object grdProntuario: TDBGrid
      Left = 29
      Top = 51
      Width = 842
      Height = 180
      Align = alClient
      DataSource = dsProcesso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
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
          FieldName = 'Paciente'
          ReadOnly = True
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodigoPaciente'
          ReadOnly = True
          Title.Caption = 'Cod.no Cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomePaciente'
          ReadOnly = True
          Title.Caption = 'Nome Paciente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HospitalCNPJ'
          ReadOnly = True
          Title.Caption = 'CNPJ Hosp'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hospital'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HospitalNome'
          ReadOnly = True
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MedicoCRM'
          ReadOnly = True
          Title.Caption = 'CRM Med.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MedicoNome'
          ReadOnly = True
          Title.Caption = 'Nome'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Medico'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EnfermeiroCOREN'
          ReadOnly = True
          Title.Caption = 'COREN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EnfermeiroNome'
          ReadOnly = True
          Title.Caption = 'Nome'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Enfermeiro'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Enferm.'
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataFechamento'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Fechamento'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MesCompetencia'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'CP Mes'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AnoCompetencia'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'CP Ano'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInternacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Interna'#231#227'o'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataAlta'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Alta'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DiasUTI'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'UTI'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Apto'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Enfermaria'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Enf.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Semi'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bercario'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Berc.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DayClinicQtd'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'DC'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Isolamento'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Isola'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Diarias'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DiariasGlosadas'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Glosa'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DiariasCalculadas'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Calc.'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorGlosadoM'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Glosado M'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorGlosadoE'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Glosado E'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorGlosado'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Glosado Tot'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Parcial'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumeroParcial'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Num.'
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DataInicioP'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Inicio Parcial'
          Width = 70
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DayClinic'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Conclusao'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Internacao'
          ReadOnly = True
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tratamento'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodAmb'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'AMB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMBNome'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdAmb'
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraAmb'
          Title.Caption = 'Extra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Senha'
          ReadOnly = True
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodAmb1'
          Title.Caption = 'AMB 2o.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AMBNome1'
          Title.Caption = 'Descri'#231#227'o'
          Width = 350
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QtdAmb1'
          Title.Caption = 'Qtd.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtraAmb1'
          Title.Caption = 'Extra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Senha1'
          Title.Caption = 'Senha '
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DataInclusao'
          ReadOnly = True
          Visible = True
        end>
    end
    object CoolBar1: TCoolBar
      Left = 0
      Top = 0
      Width = 871
      Height = 25
      Bands = <
        item
          Control = cmpBusca
          ImageIndex = -1
          MinHeight = 21
          Width = 867
        end>
      object cmpBusca: TEdit
        Left = 9
        Top = 0
        Width = 854
        Height = 21
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 231
      Width = 871
      Height = 200
      Align = alBottom
      Caption = 'Panel5'
      TabOrder = 3
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 433
        Height = 198
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 433
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Glosas'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object grdAuditoria: TDBGrid
          Left = 0
          Top = 13
          Width = 433
          Height = 185
          Align = alClient
          DataSource = dsGlosa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Columns = <
            item
              Expanded = False
              FieldName = 'GlosaI'
              ReadOnly = True
              Title.Caption = 'Glosa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GlosaNome'
              ReadOnly = True
              Title.Caption = 'Nome'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorApresentado'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'Apresentado'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorM'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'Medico'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorE'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'Enfermeiro'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Title.Caption = 'Glosa Tot'
              Width = 65
              Visible = True
            end>
        end
      end
      object Panel2: TPanel
        Left = 434
        Top = 1
        Width = 436
        Height = 198
        Align = alClient
        Caption = 'Panel10'
        TabOrder = 1
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 434
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Diagn'#243'sticos'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object grdDiagnostico: TDBGrid
          Left = 1
          Top = 14
          Width = 434
          Height = 183
          Align = alClient
          DataSource = dsDiag
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          Columns = <
            item
              Expanded = False
              FieldName = 'CodCid'
              ReadOnly = True
              Title.Caption = 'CID'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Diagnostico'
              ReadOnly = True
              Title.Alignment = taRightJustify
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DiagnosticoNome'
              ReadOnly = True
              Title.Caption = 'Descri'#231#227'o'
              Width = 311
              Visible = True
            end>
        end
      end
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 0
    Width = 871
    Height = 29
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      871
      29)
    object BitBtn5: TBitBtn
      Left = -51
      Top = 2
      Width = 30
      Height = 25
      Hint = 'Exclui o Retorno e todos os lan'#231'amentos'
      Anchors = [akTop, akRight]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
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
    object cmdGravaP: TBitBtn
      Left = 180
      Top = 2
      Width = 170
      Height = 25
      Hint = 'Gera Remessa de Dados'
      Caption = 'Selecionar dados'
      TabOrder = 1
      OnClick = cmdGravaPClick
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
    object cmdNovoP: TBitBtn
      Left = 350
      Top = 2
      Width = 170
      Height = 25
      Hint = 'Gera arquivo pra envio'
      Caption = 'Gerar arquivo'
      TabOrder = 2
      OnClick = cmdNovoPClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB98385B98385B98385B983
        85B98385B98385B98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB98385F6DDB7F4D7ACF3D3A1F1CF98F0CA8FB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA8E85F8E5C98A94D91E47
        F6888ECDF2D19CB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFCB9A82FAEDD91E49F90033FF1E48F6F4D8ABB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA887FCF5E98D9DED1E49
        FA8B97E0F6E0BDB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFE3B18EFEFBF6FCF7EDFBF2E4FAEDDAF8E8CEB98385FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92FFFFFFFEFCFAFDF9
        F2B98384B98384BE8675B78183B78183B78183B78183B78183B78183B78183B7
        8183FF00FFEDBD92FFFFFFFFFFFFFEFDFCB98384D39769FF00FFB78183EED1B1
        E1B894E1B68CDFB180DCAB75EFC686B78183FF00FFEDBD92DCA887DCA887428A
        3EB98384FF00FFFF00FFB78183CA8F6B952B009A3401993401993300E4B57CB7
        8183FF00FFFF00FFFF00FF03750F44D27330AB4AFF00FFFF00FFBA8E85F8EEE5
        A14213972E00942900BD7649FDE5B3B78183FF00FFFF00FF01780949CC725CE7
        8E38C658138E21FF00FFCB9A82FFFFFFD5A992922600A04112ECCCAEFFEFC5B7
        8183FF00FF45812C1097262EA8483ECA6026AF3D199F290A7D12DCA887FFFFFF
        FCF7F5AE5B33CD9574FBF1DEDECBB4B78183FF00FFFF00FFFF00FF03700827B8
        400D8A18FF00FFFF00FFE3B18EFFFFFFFFFFFFEDDBD1F9F2EAB78183B78183B7
        8475FF00FFFF00FFFF00FF097B1114AB25098611FF00FFFF00FFEDBD92FFFFFF
        FFFFFFFFFFFFFDFFFFB78183DC9D64FF00FFFF00FFFF00FF0A88120C91160EA3
        1B077B0DFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887B78183FF00FFFF
        00FF07800F07800F0490120D9C1907800FFF00FFFF00FFFF00FF}
    end
    object BitBtn1: TBitBtn
      Left = 520
      Top = 2
      Width = 170
      Height = 25
      Hint = 'Fechar/Abrir Remessa'
      Caption = 'Fechar (remessa enviada)'
      TabOrder = 3
      OnClick = BitBtn1Click
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
  end
  object dbRemessa: TMSTable
    TableName = 'dbo.RemessaHI'
    Connection = frmMenu.dadosaud
    Left = 494
    Top = 77
    object dbRemessaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.RemessaHI.Cliente'
    end
    object dbRemessaRemessa: TIntegerField
      FieldName = 'Remessa'
      Origin = 'dbo.RemessaHI.Remessa'
    end
    object dbRemessaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.RemessaHI.Usuario'
      Size = 10
    end
    object dbRemessaNomeCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCliente'
      LookupDataSet = dbCliente
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object dbRemessaUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.RemessaHI.UsuarioFechamento'
      Size = 10
    end
    object dbRemessaDataGeracao: TDateTimeField
      FieldName = 'DataGeracao'
      Origin = 'dbo.RemessaHI.DataGeracao'
    end
    object dbRemessaDataEnvio: TDateTimeField
      FieldName = 'DataEnvio'
      Origin = 'dbo.RemessaHI.DataEnvio'
    end
    object dbRemessaHoraEnvio: TDateTimeField
      FieldName = 'HoraEnvio'
      Origin = 'dbo.RemessaHI.HoraEnvio'
    end
    object dbRemessaDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.RemessaHI.DataFechamento'
    end
  end
  object dsRemessa: TDataSource
    DataSet = dbRemessa
    Left = 526
    Top = 77
  end
  object dbItem: TMSTable
    TableName = 'dbo.AtendHIGlosa'
    MasterFields = 'Cliente;AtendimentoHI'
    DetailFields = 'Cliente;AtendimentoHI'
    MasterSource = dsProcesso
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente;AtendimentoHI'
    Left = 494
    Top = 141
    object dbItemCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHIGlosa.Cliente'
    end
    object dbItemAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'dbo.AtendHIGlosa.AtendimentoHI'
    end
    object dbItemTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.AtendHIGlosa.Tipo'
      Size = 1
    end
    object dbItemGlosaI: TStringField
      FieldName = 'GlosaI'
      Origin = 'dbo.AtendHIGlosa.GlosaI'
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
    object dbItemGlosaNome: TStringField
      FieldKind = fkLookup
      FieldName = 'GlosaNome'
      LookupDataSet = dbGlosa
      LookupKeyFields = 'GlosaI'
      LookupResultField = 'Nome'
      KeyFields = 'GlosaI'
      Size = 40
      Lookup = True
    end
  end
  object dbProcesso: TMSTable
    TableName = 'dbo.AtendHI'
    MasterFields = 'Remessa'
    DetailFields = 'Remessa'
    MasterSource = dsRemessa
    Connection = frmMenu.dadosaud
    Left = 494
    Top = 109
    object dbProcessoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHI.Cliente'
    end
    object dbProcessoAtendimentoHI: TLargeintField
      DisplayWidth = 15
      FieldName = 'AtendimentoHI'
      Origin = 'dbo.AtendHI.AtendimentoHI'
    end
    object dbProcessoSequencial: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'dbo.AtendHI.Sequencial'
      ReadOnly = True
    end
    object dbProcessoPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.AtendHI.Paciente'
    end
    object dbProcessoHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.AtendHI.Hospital'
    end
    object dbProcessoMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'dbo.AtendHI.Medico'
    end
    object dbProcessoEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.AtendHI.Enfermeiro'
    end
    object dbProcessoMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.AtendHI.MesCompetencia'
    end
    object dbProcessoAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.AtendHI.AnoCompetencia'
    end
    object dbProcessoDiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'dbo.AtendHI.DiasUTI'
      Precision = 5
    end
    object dbProcessoDiarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'dbo.AtendHI.Diarias'
      Precision = 5
    end
    object dbProcessoDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
      Origin = 'dbo.AtendHI.DiariasGlosadas'
      Precision = 5
    end
    object dbProcessoDiariasCalculadas: TIntegerField
      FieldName = 'DiariasCalculadas'
      Origin = 'dbo.AtendHI.DiariasCalculadas'
    end
    object dbProcessoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.AtendHI.Valor'
    end
    object dbProcessoValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'dbo.AtendHI.ValorGlosadoM'
    end
    object dbProcessoValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'dbo.AtendHI.ValorGlosadoE'
    end
    object dbProcessoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.AtendHI.Usuario'
      Size = 10
    end
    object dbProcessoObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'dbo.AtendHI.Observacao'
      BlobType = ftMemo
    end
    object dbProcessoComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'dbo.AtendHI.Complemento'
    end
    object dbProcessoParcial: TIntegerField
      FieldName = 'Parcial'
      Origin = 'dbo.AtendHI.Parcial'
    end
    object dbProcessoNumeroParcial: TIntegerField
      FieldName = 'NumeroParcial'
      Origin = 'dbo.AtendHI.NumeroParcial'
    end
    object dbProcessoDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'dbo.AtendHI.DayClinic'
    end
    object dbProcessoIntercambio: TBooleanField
      FieldName = 'Intercambio'
      Origin = 'dbo.AtendHI.Intercambio'
    end
    object dbProcessoPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'dbo.AtendHI.PosAnalise'
    end
    object dbProcessoValornaoacordadom: TCurrencyField
      FieldName = 'Valornaoacordadom'
      Origin = 'dbo.AtendHI.Valornaoacordadom'
    end
    object dbProcessoValornaoacordadoe: TCurrencyField
      FieldName = 'Valornaoacordadoe'
      Origin = 'dbo.AtendHI.Valornaoacordadoe'
    end
    object dbProcessoPacote: TBooleanField
      FieldName = 'Pacote'
      Origin = 'dbo.AtendHI.Pacote'
    end
    object dbProcessoMedicoACRM: TIntegerField
      FieldName = 'MedicoACRM'
      Origin = 'dbo.AtendHI.MedicoACRM'
    end
    object dbProcessoConclusao: TStringField
      FieldName = 'Conclusao'
      Origin = 'dbo.AtendHI.Conclusao'
      Size = 1
    end
    object dbProcessoInternacao: TStringField
      FieldName = 'Internacao'
      Origin = 'dbo.AtendHI.Internacao'
      Size = 1
    end
    object dbProcessoTratamento: TStringField
      FieldName = 'Tratamento'
      Origin = 'dbo.AtendHI.Tratamento'
      Size = 1
    end
    object dbProcessoApto: TFloatField
      FieldName = 'Apto'
      Origin = 'dbo.AtendHI.Apto'
      Precision = 5
    end
    object dbProcessoEnfermaria: TFloatField
      FieldName = 'Enfermaria'
      Origin = 'dbo.AtendHI.Enfermaria'
      Precision = 5
    end
    object dbProcessoSemi: TFloatField
      FieldName = 'Semi'
      Origin = 'dbo.AtendHI.Semi'
      Precision = 5
    end
    object dbProcessoBercario: TFloatField
      FieldName = 'Bercario'
      Origin = 'dbo.AtendHI.Bercario'
      Precision = 5
    end
    object dbProcessoDayClinicQtd: TFloatField
      FieldName = 'DayClinicQtd'
      Origin = 'dbo.AtendHI.DayClinicQtd'
      Precision = 5
    end
    object dbProcessoIsolamento: TFloatField
      FieldName = 'Isolamento'
      Origin = 'dbo.AtendHI.Isolamento'
      Precision = 5
    end
    object dbProcessoCodAmb: TIntegerField
      FieldName = 'CodAmb'
      Origin = 'dbo.AtendHI.CodAmb'
    end
    object dbProcessoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.AtendHI.UsuarioI'
      Size = 10
    end
    object dbProcessoRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'dbo.AtendHI.Retorno'
    end
    object dbProcessoSenha: TStringField
      FieldName = 'Senha'
      Origin = 'dbo.AtendHI.Senha'
      Size = 12
    end
    object dbProcessoValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.AtendHI.ValorPago'
    end
    object dbProcessoRemessa: TIntegerField
      FieldName = 'Remessa'
      Origin = 'dbo.AtendHI.Remessa'
    end
    object dbProcessoCodigoPaciente: TStringField
      FieldKind = fkLookup
      FieldName = 'CodigoPaciente'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'CodigoPaciente'
      KeyFields = 'Paciente'
      Lookup = True
    end
    object dbProcessoNomePaciente: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePaciente'
      LookupDataSet = dbPaciente
      LookupKeyFields = 'Paciente'
      LookupResultField = 'Nome'
      KeyFields = 'Paciente'
      Size = 50
      Lookup = True
    end
    object dbProcessoHospitalCNPJ: TStringField
      FieldKind = fkLookup
      FieldName = 'HospitalCNPJ'
      LookupDataSet = dbHospital
      LookupKeyFields = 'Hospital'
      LookupResultField = 'CNPJ'
      KeyFields = 'Hospital'
      Size = 12
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
    object dbProcessoMedicoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'MedicoNome'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'Nome'
      KeyFields = 'Medico'
      Size = 35
      Lookup = True
    end
    object dbProcessoAMBNome: TStringField
      FieldKind = fkLookup
      FieldName = 'AMBNome'
      LookupDataSet = dbAmb
      LookupKeyFields = 'CodAMB'
      LookupResultField = 'DescricaoAMB'
      KeyFields = 'CodAmb'
      Size = 60
      Lookup = True
    end
    object dbProcessoEnfermeiroNome: TStringField
      FieldKind = fkLookup
      FieldName = 'EnfermeiroNome'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'Nome'
      KeyFields = 'Enfermaria'
      Size = 35
      Lookup = True
    end
    object dbProcessoMedicoCRM: TIntegerField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'MedicoCRM'
      LookupDataSet = dbAuditor
      LookupKeyFields = 'Auditor'
      LookupResultField = 'CRM'
      KeyFields = 'Medico'
      Lookup = True
    end
    object dbProcessoEnfermeiroCOREN: TIntegerField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'EnfermeiroCOREN'
      LookupDataSet = dbEnfermeiro
      LookupKeyFields = 'Enfermeiro'
      LookupResultField = 'COREN'
      KeyFields = 'Enfermaria'
      Lookup = True
    end
    object dbProcessoQtdAmb: TIntegerField
      FieldName = 'QtdAmb'
      Origin = 'dbo.AtendHI.QtdAmb'
    end
    object dbProcessoExtraAmb: TBooleanField
      FieldName = 'ExtraAmb'
      Origin = 'dbo.AtendHI.ExtraAmb'
    end
    object dbProcessoCodAmb1: TIntegerField
      FieldName = 'CodAmb1'
      Origin = 'dbo.AtendHI.CodAmb1'
    end
    object dbProcessoQtdAmb1: TIntegerField
      FieldName = 'QtdAmb1'
      Origin = 'dbo.AtendHI.QtdAmb1'
    end
    object dbProcessoExtraAmb1: TBooleanField
      FieldName = 'ExtraAmb1'
      Origin = 'dbo.AtendHI.ExtraAmb1'
    end
    object dbProcessoSenha1: TStringField
      FieldName = 'Senha1'
      Origin = 'dbo.AtendHI.Senha1'
      Size = 12
    end
    object dbProcessoAMBNome1: TStringField
      FieldKind = fkLookup
      FieldName = 'AMBNome1'
      LookupDataSet = dbAmb
      LookupKeyFields = 'CodAMB'
      LookupResultField = 'DescricaoAMB'
      KeyFields = 'codamb1'
      Size = 60
      Lookup = True
    end
    object dbProcessoQtdRNVivo: TIntegerField
      FieldName = 'QtdRNVivo'
      Origin = 'dbo.AtendHI.QtdRNVivo'
    end
    object dbProcessoQtdRNMorto: TIntegerField
      FieldName = 'QtdRNMorto'
      Origin = 'dbo.AtendHI.QtdRNMorto'
    end
    object dbProcessoQtdRNPrematuro: TIntegerField
      FieldName = 'QtdRNPrematuro'
      Origin = 'dbo.AtendHI.QtdRNPrematuro'
    end
    object dbProcessoAcidente: TStringField
      FieldName = 'Acidente'
      Origin = 'dbo.AtendHI.Acidente'
      Size = 1
    end
    object dbProcessoObitoGravida: TStringField
      FieldName = 'ObitoGravida'
      Origin = 'dbo.AtendHI.ObitoGravida'
      Size = 1
    end
    object dbProcessoIDPaciente: TStringField
      FieldName = 'IDPaciente'
      Origin = 'dbo.AtendHI.IDPaciente'
      FixedChar = True
      Size = 10
    end
    object dbProcessoVisita: TWordField
      FieldName = 'Visita'
      Origin = 'dbo.AtendHI.Visita'
    end
    object dbProcessoUsuarioSite: TStringField
      FieldName = 'UsuarioSite'
      Origin = 'dbo.AtendHI.UsuarioSite'
      FixedChar = True
      Size = 10
    end
    object dbProcessoMedicoA: TStringField
      FieldName = 'MedicoA'
      Origin = 'dbo.AtendHI.MedicoA'
      FixedChar = True
      Size = 40
    end
    object dbProcessoMedicoAEspec: TStringField
      FieldName = 'MedicoAEspec'
      Origin = 'dbo.AtendHI.MedicoAEspec'
      FixedChar = True
      Size = 40
    end
    object dbProcessoGemelar: TWordField
      FieldName = 'Gemelar'
      Origin = 'dbo.AtendHI.Gemelar'
    end
    object dbProcessoDataAmb1: TDateTimeField
      FieldName = 'DataAmb1'
      Origin = 'dbo.AtendHI.DataAmb1'
    end
    object dbProcessoDataAmb2: TDateTimeField
      FieldName = 'DataAmb2'
      Origin = 'dbo.AtendHI.DataAmb2'
    end
    object dbProcessoDataAmb3: TDateTimeField
      FieldName = 'DataAmb3'
      Origin = 'dbo.AtendHI.DataAmb3'
    end
    object dbProcessoPAmb1: TFloatField
      FieldName = 'PAmb1'
      Origin = 'dbo.AtendHI.PAmb1'
      Precision = 5
    end
    object dbProcessoPAmb2: TFloatField
      FieldName = 'PAmb2'
      Origin = 'dbo.AtendHI.PAmb2'
      Precision = 5
    end
    object dbProcessoPAmb3: TFloatField
      FieldName = 'PAmb3'
      Origin = 'dbo.AtendHI.PAmb3'
      Precision = 5
    end
    object dbProcessoCodAmb3: TIntegerField
      FieldName = 'CodAmb3'
      Origin = 'dbo.AtendHI.CodAmb3'
    end
    object dbProcessoResponsavelH: TStringField
      FieldName = 'ResponsavelH'
      Origin = 'dbo.AtendHI.ResponsavelH'
      Size = 60
    end
    object dbProcessoRN: TStringField
      FieldName = 'RN'
      Origin = 'dbo.AtendHI.RN'
      FixedChar = True
      Size = 1
    end
    object dbProcessoPExcedente: TWordField
      FieldName = 'PExcedente'
      Origin = 'dbo.AtendHI.PExcedente'
    end
    object dbProcessoPAberto: TWordField
      FieldName = 'PAberto'
      Origin = 'dbo.AtendHI.PAberto'
    end
    object dbProcessoPAbertoMotivo: TStringField
      FieldName = 'PAbertoMotivo'
      Origin = 'dbo.AtendHI.PAbertoMotivo'
      FixedChar = True
      Size = 1
    end
    object dbProcessoServico: TStringField
      FieldName = 'Servico'
      Origin = 'dbo.AtendHI.Servico'
      FixedChar = True
      Size = 3
    end
    object dbProcessoProdutividade: TIntegerField
      FieldName = 'Produtividade'
      Origin = 'dbo.AtendHI.Produtividade'
    end
    object dbProcessoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.AtendHI.DataFechamento'
    end
    object dbProcessoDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'dbo.AtendHI.DataInternacao'
    end
    object dbProcessoDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'dbo.AtendHI.DataAlta'
    end
    object dbProcessoDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'dbo.AtendHI.DataInicioP'
    end
    object dbProcessoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.AtendHI.DataInclusao'
    end
    object dbProcessoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.AtendHI.DataAlteracao'
    end
    object dbProcessoDataSite: TDateTimeField
      FieldName = 'DataSite'
      Origin = 'dbo.AtendHI.DataSite'
    end
    object dbProcessoDataFimP: TDateTimeField
      FieldName = 'DataFimP'
      Origin = 'dbo.AtendHI.DataFimP'
    end
    object dbProcessoAtendimentoHIO: TLargeintField
      FieldName = 'AtendimentoHIO'
      Origin = 'dbo.AtendHI.AtendimentoHIO'
    end
  end
  object dsProcesso: TDataSource
    DataSet = dbProcesso
    Left = 526
    Top = 109
  end
  object dsGlosa: TDataSource
    DataSet = dbItem
    Left = 526
    Top = 141
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Cliente'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Nome'
    Left = 558
    Top = 77
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
      EditMask = 'LL;1;_'
      Size = 2
    end
    object dbClienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Cliente.Cep'
      EditMask = '00000\-999;1;_'
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
      EditMask = '99\.999\.999\/9999\-99;0;_'
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
    object dbClienteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Cliente.Usuario'
      Size = 10
    end
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 590
    Top = 77
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = '*.txt|Arquivo texto'
    Left = 622
    Top = 77
  end
  object dbItemDiag: TMSTable
    TableName = 'dbo.AtendHIDiagnostico'
    MasterFields = 'Cliente;AtendimentoHI'
    DetailFields = 'Cliente;AtendimentoHI'
    MasterSource = dsProcesso
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente;AtendimentoHI'
    Left = 494
    Top = 173
    object dbItemDiagCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHIDiagnostico.Cliente'
    end
    object dbItemDiagAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'dbo.AtendHIDiagnostico.AtendimentoHI'
    end
    object dbItemDiagDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
      Origin = 'dbo.AtendHIDiagnostico.Diagnostico'
    end
    object dbItemDiagAtendimentoHC: TIntegerField
      FieldName = 'AtendimentoHC'
      Origin = 'dbo.AtendHIDiagnostico.AtendimentoHC'
    end
    object dbItemDiagItem: TIntegerField
      FieldName = 'Item'
      Origin = 'dbo.AtendHIDiagnostico.Item'
    end
    object dbItemDiagPrincipal: TBooleanField
      FieldName = 'Principal'
      Origin = 'dbo.AtendHIDiagnostico.Principal'
    end
    object dbItemDiagCodCid: TStringField
      FieldName = 'CodCid'
      Origin = 'dbo.AtendHIDiagnostico.CodCid'
      Size = 11
    end
    object dbItemDiagGrupocid: TStringField
      FieldName = 'Grupocid'
      Origin = 'dbo.AtendHIDiagnostico.Grupocid'
      Size = 1
    end
    object dbItemDiagDiagnosticoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'DiagnosticoNome'
      LookupDataSet = dbDiagnostico
      LookupKeyFields = 'Diagnostico'
      LookupResultField = 'Nome'
      KeyFields = 'Diagnostico'
      Size = 50
      Lookup = True
    end
    object dbItemDiagDataAuditoria: TDateTimeField
      FieldName = 'DataAuditoria'
      Origin = 'dbo.AtendHIDiagnostico.DataAuditoria'
    end
  end
  object dbPaciente: TMSTable
    TableName = 'dbo.Pacientes'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Paciente'
    Left = 558
    Top = 109
    object dbPacientePaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.Pacientes.Paciente'
    end
    object dbPacienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Pacientes.Nome'
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
      EditMask = 'LL;1;_'
      Size = 2
    end
    object dbPacienteCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Pacientes.Cep'
      EditMask = '00000\-999;1;_'
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
    object dbPacienteAnoNascimento: TIntegerField
      DisplayWidth = 4
      FieldName = 'AnoNascimento'
      Origin = 'dbo.Pacientes.AnoNascimento'
    end
    object dbPacienteUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Pacientes.Usuario'
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
      Size = 22
    end
    object dbPacienteIDPaciente: TStringField
      FieldName = 'IDPaciente'
      Origin = 'dbo.Pacientes.IDPaciente'
      Size = 10
    end
    object dbPacienteUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Unidade'
      Size = 10
      Calculated = True
    end
    object dbPacienteCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Pacientes.Cliente'
    end
    object dbPacienteSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'dbo.Pacientes.Sexo'
      Size = 1
    end
    object dbPacienteDataNascimento: TDateTimeField
      FieldName = 'DataNascimento'
      Origin = 'dbo.Pacientes.DataNascimento'
    end
  end
  object dsPaciente: TDataSource
    DataSet = dbPaciente
    Left = 590
    Top = 109
  end
  object dbProcessoBusca: TMSTable
    TableName = 'dbo.AtendHI'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'Cliente;AtendimentoHI'
    Left = 558
    Top = 141
    object dbProcessoBuscaCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.AtendHI.Cliente'
    end
    object dbProcessoBuscaAtendimentoHI: TLargeintField
      FieldName = 'AtendimentoHI'
      Origin = 'dbo.AtendHI.AtendimentoHI'
    end
    object dbProcessoBuscaSequencial: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sequencial'
      Origin = 'dbo.AtendHI.Sequencial'
      ReadOnly = True
    end
    object dbProcessoBuscaPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'dbo.AtendHI.Paciente'
    end
    object dbProcessoBuscaHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'dbo.AtendHI.Hospital'
    end
    object dbProcessoBuscaMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'dbo.AtendHI.Medico'
    end
    object dbProcessoBuscaEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'dbo.AtendHI.Enfermeiro'
    end
    object dbProcessoBuscaMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'dbo.AtendHI.MesCompetencia'
    end
    object dbProcessoBuscaAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'dbo.AtendHI.AnoCompetencia'
    end
    object dbProcessoBuscaDiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'dbo.AtendHI.DiasUTI'
      Precision = 5
    end
    object dbProcessoBuscaDiarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'dbo.AtendHI.Diarias'
      Precision = 5
    end
    object dbProcessoBuscaDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
      Origin = 'dbo.AtendHI.DiariasGlosadas'
      Precision = 5
    end
    object dbProcessoBuscaDiariasCalculadas: TIntegerField
      FieldName = 'DiariasCalculadas'
      Origin = 'dbo.AtendHI.DiariasCalculadas'
    end
    object dbProcessoBuscaValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.AtendHI.Valor'
    end
    object dbProcessoBuscaValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'dbo.AtendHI.ValorGlosadoM'
    end
    object dbProcessoBuscaValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'dbo.AtendHI.ValorGlosadoE'
    end
    object dbProcessoBuscaUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.AtendHI.Usuario'
      Size = 10
    end
    object dbProcessoBuscaObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'dbo.AtendHI.Observacao'
      BlobType = ftMemo
    end
    object dbProcessoBuscaComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'dbo.AtendHI.Complemento'
    end
    object dbProcessoBuscaParcial: TIntegerField
      FieldName = 'Parcial'
      Origin = 'dbo.AtendHI.Parcial'
    end
    object dbProcessoBuscaNumeroParcial: TIntegerField
      FieldName = 'NumeroParcial'
      Origin = 'dbo.AtendHI.NumeroParcial'
    end
    object dbProcessoBuscaDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'dbo.AtendHI.DayClinic'
    end
    object dbProcessoBuscaIntercambio: TBooleanField
      FieldName = 'Intercambio'
      Origin = 'dbo.AtendHI.Intercambio'
    end
    object dbProcessoBuscaPosAnalise: TBooleanField
      FieldName = 'PosAnalise'
      Origin = 'dbo.AtendHI.PosAnalise'
    end
    object dbProcessoBuscaValornaoacordadom: TCurrencyField
      FieldName = 'Valornaoacordadom'
      Origin = 'dbo.AtendHI.Valornaoacordadom'
    end
    object dbProcessoBuscaValornaoacordadoe: TCurrencyField
      FieldName = 'Valornaoacordadoe'
      Origin = 'dbo.AtendHI.Valornaoacordadoe'
    end
    object dbProcessoBuscaPacote: TBooleanField
      FieldName = 'Pacote'
      Origin = 'dbo.AtendHI.Pacote'
    end
    object dbProcessoBuscaMedicoACRM: TIntegerField
      FieldName = 'MedicoACRM'
      Origin = 'dbo.AtendHI.MedicoACRM'
    end
    object dbProcessoBuscaConclusao: TStringField
      FieldName = 'Conclusao'
      Origin = 'dbo.AtendHI.Conclusao'
      Size = 1
    end
    object dbProcessoBuscaInternacao: TStringField
      FieldName = 'Internacao'
      Origin = 'dbo.AtendHI.Internacao'
      Size = 1
    end
    object dbProcessoBuscaTratamento: TStringField
      FieldName = 'Tratamento'
      Origin = 'dbo.AtendHI.Tratamento'
      Size = 1
    end
    object dbProcessoBuscaApto: TFloatField
      FieldName = 'Apto'
      Origin = 'dbo.AtendHI.Apto'
      Precision = 5
    end
    object dbProcessoBuscaEnfermaria: TFloatField
      FieldName = 'Enfermaria'
      Origin = 'dbo.AtendHI.Enfermaria'
      Precision = 5
    end
    object dbProcessoBuscaSemi: TFloatField
      FieldName = 'Semi'
      Origin = 'dbo.AtendHI.Semi'
      Precision = 5
    end
    object dbProcessoBuscaBercario: TFloatField
      FieldName = 'Bercario'
      Origin = 'dbo.AtendHI.Bercario'
      Precision = 5
    end
    object dbProcessoBuscaDayClinicQtd: TFloatField
      FieldName = 'DayClinicQtd'
      Origin = 'dbo.AtendHI.DayClinicQtd'
      Precision = 5
    end
    object dbProcessoBuscaIsolamento: TFloatField
      FieldName = 'Isolamento'
      Origin = 'dbo.AtendHI.Isolamento'
      Precision = 5
    end
    object dbProcessoBuscaCodAmb: TIntegerField
      FieldName = 'CodAmb'
      Origin = 'dbo.AtendHI.CodAmb'
    end
    object dbProcessoBuscaUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.AtendHI.UsuarioI'
      Size = 10
    end
    object dbProcessoBuscaRetorno: TIntegerField
      FieldName = 'Retorno'
      Origin = 'dbo.AtendHI.Retorno'
    end
    object dbProcessoBuscaRemessa: TIntegerField
      FieldName = 'Remessa'
      Origin = 'dbo.AtendHI.Remessa'
    end
    object dbProcessoBuscaSenha: TStringField
      FieldName = 'Senha'
      Origin = 'dbo.AtendHI.Senha'
      Size = 12
    end
    object dbProcessoBuscaVisita: TIntegerField
      FieldName = 'Visita'
      Origin = 'dbo.AtendHI.Visita'
    end
    object dbProcessoBuscaValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.AtendHI.ValorPago'
    end
    object dbProcessoBuscaDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.AtendHI.DataFechamento'
    end
    object dbProcessoBuscaDataInternacao: TDateTimeField
      FieldName = 'DataInternacao'
      Origin = 'dbo.AtendHI.DataInternacao'
    end
    object dbProcessoBuscaDataAlta: TDateTimeField
      FieldName = 'DataAlta'
      Origin = 'dbo.AtendHI.DataAlta'
    end
    object dbProcessoBuscaDataInicioP: TDateTimeField
      FieldName = 'DataInicioP'
      Origin = 'dbo.AtendHI.DataInicioP'
    end
  end
  object dsDiag: TDataSource
    DataSet = dbItemDiag
    Left = 526
    Top = 173
  end
  object dbHospital: TMSTable
    TableName = 'dbo.Hospital'
    Connection = frmMenu.dadosaud
    IndexFieldNames = 'CNPJ'
    Left = 558
    Top = 173
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
  end
  object dbEnfermeiro: TMSTable
    TableName = 'dbo.Enfermeiros'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Enfermeiro'
    Left = 590
    Top = 141
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
  end
  object dbAuditor: TMSTable
    TableName = 'dbo.Auditores'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'Auditor'
    Left = 590
    Top = 173
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
  end
  object dbAmb: TMSTable
    TableName = 'dbo.Amb'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'CodAMB'
    Left = 622
    Top = 141
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
  end
  object dbDiagnostico: TMSTable
    TableName = 'dbo.Diagnosticos'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'CodCid'
    Left = 558
    Top = 204
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
  object dbGlosa: TMSTable
    TableName = 'dbo.GlosaI'
    Connection = frmMenu.dadosaud
    Active = True
    IndexFieldNames = 'GlosaI'
    Left = 590
    Top = 204
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
end
