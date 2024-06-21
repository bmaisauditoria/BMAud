object frmRec: TfrmRec
  Left = 284
  Top = 114
  Width = 1014
  Height = 613
  Caption = 'Receber'
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
  object pagReceber: TPageControl
    Left = 0
    Top = 27
    Width = 998
    Height = 548
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object tabReceber: TTabSheet
      Caption = 'Duplicatas'
      object tabRec: TTabControl
        Left = 0
        Top = 119
        Width = 990
        Height = 401
        Align = alClient
        TabOrder = 0
        Tabs.Strings = (
          'Duplicata'
          'Cliente '
          'Vencimento'
          'Emiss'#227'o')
        TabIndex = 0
        OnChange = tabRecChange
        object pnlLista: TPanel
          Left = 4
          Top = 24
          Width = 982
          Height = 373
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object grdRec: TDBGrid
            Left = 0
            Top = 0
            Width = 982
            Height = 262
            Align = alClient
            DataSource = dsReceber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = grdRecDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Status'
                Title.Caption = 'St'
                Width = 16
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Duplicata'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Seq'
                Title.Caption = 'P'
                Width = 20
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ClienteNome'
                Title.Caption = 'Cliente'
                Width = 243
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataEmissao'
                Title.Alignment = taCenter
                Title.Caption = 'Emiss'#227'o'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DataVencto'
                Title.Alignment = taCenter
                Title.Caption = 'Vencto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ValorLiquido'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ContaNome'
                Title.Caption = 'Conta '
                Width = 109
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
                FieldName = 'ValorPago'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Pago'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DocPagto'
                Title.Caption = 'Documento'
                Width = 120
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 0
            Top = 262
            Width = 982
            Height = 87
            Align = alBottom
            Caption = ' '
            TabOrder = 0
            object Label1: TLabel
              Left = 1
              Top = 1
              Width = 51
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Hist'#243'rico'
              Color = 8454143
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBMemo2: TDBMemo
              Left = 1
              Top = 14
              Width = 980
              Height = 72
              Align = alClient
              DataField = 'Hist'#243'rico'
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 0
            Top = 349
            Width = 982
            Height = 24
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              Left = 163
              Top = 5
              Width = 80
              Height = 13
              Alignment = taRightJustify
              Caption = 'Total Duplicatas:'
            end
            object Label14: TLabel
              Left = 366
              Top = 5
              Width = 75
              Height = 13
              Alignment = taRightJustify
              Caption = 'Total em Aberto'
            end
            object Label34: TLabel
              Left = 641
              Top = 5
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'Total Pago:'
            end
            object DBText4: TDBText
              Left = 246
              Top = 3
              Width = 65
              Height = 17
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'qtd'
              DataSource = dsTotDup
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText8: TDBText
              Left = 448
              Top = 3
              Width = 120
              Height = 17
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'valoraberto'
              DataSource = dsTotDup
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 698
              Top = 3
              Width = 120
              Height = 17
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'valorpago'
              DataSource = dsTotDup
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
        end
        object pnlFicha: TPanel
          Left = 4
          Top = 24
          Width = 982
          Height = 373
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 982
            Height = 151
            Align = alTop
            BevelOuter = bvNone
            Caption = ' '
            TabOrder = 0
            object Label16: TLabel
              Left = 8
              Top = 23
              Width = 45
              Height = 13
              Caption = 'Duplicata'
              FocusControl = cmpDup
            end
            object Label18: TLabel
              Left = 8
              Top = 66
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
              FocusControl = cmpDup
            end
            object Label19: TLabel
              Left = 112
              Top = 66
              Width = 56
              Height = 13
              Caption = 'Vencimento'
              FocusControl = cmpDup
            end
            object Label20: TLabel
              Left = 510
              Top = 66
              Width = 28
              Height = 13
              Caption = 'Pra'#231'a'
              FocusControl = DBEdit4
            end
            object Label22: TLabel
              Left = 219
              Top = 66
              Width = 24
              Height = 13
              Caption = 'Valor'
              FocusControl = DBEdit6
            end
            object Label23: TLabel
              Left = 316
              Top = 66
              Width = 54
              Height = 13
              Caption = 'Acr'#233'scimos'
              FocusControl = DBEdit7
            end
            object Label24: TLabel
              Left = 413
              Top = 66
              Width = 51
              Height = 13
              Caption = 'Descontos'
              FocusControl = DBEdit8
            end
            object Label25: TLabel
              Left = 8
              Top = 106
              Width = 31
              Height = 13
              Caption = 'Banco'
            end
            object Label27: TLabel
              Left = 225
              Top = 106
              Width = 39
              Height = 13
              Caption = 'Ag'#234'ncia'
            end
            object Label28: TLabel
              Left = 282
              Top = 106
              Width = 28
              Height = 13
              Caption = 'Conta'
            end
            object Label29: TLabel
              Left = 545
              Top = 106
              Width = 54
              Height = 13
              Caption = 'Data Pagto'
            end
            object Label30: TLabel
              Left = 649
              Top = 106
              Width = 52
              Height = 13
              Caption = 'Valor Pago'
              FocusControl = DBEdit13
            end
            object Label31: TLabel
              Left = 353
              Top = 106
              Width = 55
              Height = 13
              Caption = 'Documento'
              FocusControl = DBEdit14
            end
            object Label2: TLabel
              Left = 171
              Top = 106
              Width = 31
              Height = 13
              Caption = 'Banco'
            end
            object DBText1: TDBText
              Left = 171
              Top = 123
              Width = 48
              Height = 17
              Color = clWhite
              DataField = 'Banco'
              DataSource = dsReceber
              ParentColor = False
            end
            object DBText2: TDBText
              Left = 225
              Top = 123
              Width = 51
              Height = 17
              Color = clWhite
              DataField = 'Agencia'
              DataSource = dsReceber
              ParentColor = False
            end
            object DBText3: TDBText
              Left = 282
              Top = 123
              Width = 65
              Height = 17
              Color = clWhite
              DataField = 'Conta'
              DataSource = dsReceber
              ParentColor = False
            end
            object DBText5: TDBText
              Left = 0
              Top = 0
              Width = 982
              Height = 15
              Align = alTop
              Alignment = taCenter
              Color = 11468718
              DataSource = dsCliente
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 889
              Top = 36
              Width = 70
              Height = 17
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'DataInclusao'
              DataSource = dsReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label9: TLabel
              Left = 904
              Top = 18
              Width = 40
              Height = 13
              Caption = 'Inclus'#227'o'
            end
            object Label10: TLabel
              Left = 745
              Top = 105
              Width = 97
              Height = 15
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
            object cmpCalculado: TDBText
              Left = 745
              Top = 123
              Width = 97
              Height = 17
              Alignment = taRightJustify
              Color = clWhite
              DataField = 'ValorPagoCalculado'
              DataSource = dsReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object cmpDup: TDBEdit
              Left = 8
              Top = 39
              Width = 64
              Height = 21
              DataField = 'Duplicata'
              DataSource = dsReceber
              TabOrder = 0
              OnExit = cmpDupExit
            end
            object cmpSeq: TDBEdit
              Left = 72
              Top = 39
              Width = 17
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Seq'
              DataSource = dsReceber
              TabOrder = 1
            end
            object DBDateTimePicker1: TDBDateTimePicker
              Left = 8
              Top = 82
              Width = 90
              Height = 21
              Date = 41185.442099675930000000
              Time = 41185.442099675930000000
              TabOrder = 4
              DataField = 'DataEmissao'
              DataSource = dsReceber
            end
            object DBDateTimePicker2: TDBDateTimePicker
              Left = 112
              Top = 82
              Width = 90
              Height = 21
              Date = 41185.442099675930000000
              Time = 41185.442099675930000000
              TabOrder = 5
              DataField = 'DataVencto'
              DataSource = dsReceber
            end
            object DBEdit4: TDBEdit
              Left = 510
              Top = 82
              Width = 209
              Height = 21
              DataField = 'Praca'
              DataSource = dsReceber
              TabOrder = 9
            end
            object DBEdit6: TDBEdit
              Left = 219
              Top = 82
              Width = 90
              Height = 21
              DataField = 'Valor'
              DataSource = dsReceber
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 316
              Top = 82
              Width = 90
              Height = 21
              DataField = 'Acrescimos'
              DataSource = dsReceber
              TabOrder = 7
            end
            object DBEdit8: TDBEdit
              Left = 413
              Top = 82
              Width = 90
              Height = 21
              DataField = 'Descontos'
              DataSource = dsReceber
              TabOrder = 8
            end
            object DBEdit13: TDBEdit
              Left = 649
              Top = 121
              Width = 90
              Height = 21
              DataField = 'ValorPago'
              DataSource = dsReceber
              TabOrder = 13
            end
            object DBEdit14: TDBEdit
              Left = 353
              Top = 121
              Width = 185
              Height = 21
              DataField = 'DocPagto'
              DataSource = dsReceber
              TabOrder = 11
            end
            object pagCliente: TPageControl
              Left = 100
              Top = 23
              Width = 313
              Height = 41
              ActivePage = TabSheet16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabHeight = 12
              TabOrder = 2
              object TabSheet16: TTabSheet
                Caption = 'Cliente'
                object cmpCliente: TDBLookupComboBox
                  Left = 1
                  Top = 0
                  Width = 300
                  Height = 19
                  DataField = 'Cliente'
                  DataSource = dsReceber
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsCliente
                  TabOrder = 0
                end
              end
              object TabSheet17: TTabSheet
                Caption = 'CNPJ'
                object DBLookupComboBox6: TDBLookupComboBox
                  Left = 0
                  Top = 0
                  Width = 300
                  Height = 19
                  DataField = 'Cliente'
                  DataSource = dsReceber
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsCliente
                  TabOrder = 0
                end
              end
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 8
              Top = 121
              Width = 153
              Height = 21
              DataField = 'BancoID'
              DataSource = dsReceber
              KeyField = 'BancoID'
              ListField = 'Nome'
              ListSource = dsBanco
              TabOrder = 10
              OnCloseUp = DBLookupComboBox2CloseUp
            end
            object Panel10: TPanel
              Left = 874
              Top = 57
              Width = 100
              Height = 37
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 14
              object Label11: TLabel
                Left = 1
                Top = 1
                Width = 44
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
              object DBText46: TDBText
                Left = 1
                Top = 14
                Width = 94
                Height = 18
                Align = alClient
                Alignment = taCenter
                DataField = 'Usuario'
                DataSource = dsReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object DBEdit1: TDBEdit
              Left = 545
              Top = 121
              Width = 90
              Height = 21
              DataField = 'DataPagto'
              DataSource = dsReceber
              TabOrder = 12
            end
            object pagClienteDeb: TPageControl
              Left = 427
              Top = 23
              Width = 313
              Height = 41
              ActivePage = TabSheet1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabHeight = 12
              TabOrder = 3
              object TabSheet1: TTabSheet
                Caption = 'Cliente de Cr'#233'dito'
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 1
                  Top = 0
                  Width = 300
                  Height = 19
                  DataField = 'ClienteDeb'
                  DataSource = dsReceber
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsClienteDeb
                  NullValueKey = 46
                  TabOrder = 0
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'CNPJ'
                object DBLookupComboBox4: TDBLookupComboBox
                  Left = 0
                  Top = 0
                  Width = 300
                  Height = 19
                  DataField = 'ClienteDeb'
                  DataSource = dsReceber
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsClienteDeb
                  NullValueKey = 46
                  TabOrder = 0
                end
              end
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 151
            Width = 982
            Height = 222
            Align = alClient
            Caption = 'Panel1'
            TabOrder = 1
            object Label5: TLabel
              Left = 1
              Top = 1
              Width = 51
              Height = 13
              Align = alTop
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
            object DBMemo6: TDBMemo
              Left = 1
              Top = 14
              Width = 980
              Height = 207
              Align = alClient
              DataField = 'Historico'
              DataSource = dsReceber
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
      object CoolBar1: TCoolBar
        Left = 0
        Top = 94
        Width = 990
        Height = 25
        Bands = <
          item
            Control = cmbTexto
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end
          item
            Control = cmbData1
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end
          item
            Control = cmbCli1
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end>
        object cmbTexto: TComboBox
          Left = 9
          Top = 0
          Width = 973
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbTextoChange
        end
        object cmbData1: TDateTimePicker
          Left = 9
          Top = 23
          Width = 973
          Height = 21
          Date = 37851.000000000000000000
          Time = 37851.000000000000000000
          TabOrder = 1
          OnChange = cmbData1Change
        end
        object cmbCli1: TDBLookupComboBox
          Left = 9
          Top = 46
          Width = 973
          Height = 21
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          TabOrder = 2
          OnClick = cmbCli1Click
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 29
        Width = 990
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label35: TLabel
          Left = 0
          Top = 0
          Width = 990
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Filtro'
          Color = 11206642
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object chkAberto: TCheckBox
          Left = 10
          Top = 30
          Width = 73
          Height = 17
          Caption = 'Em aberto'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = chkAbertoClick
        end
        object chkPaga: TCheckBox
          Left = 170
          Top = 30
          Width = 62
          Height = 17
          Caption = 'Pagas'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chkAbertoClick
        end
        object chkVencida: TCheckBox
          Left = 90
          Top = 30
          Width = 73
          Height = 17
          Caption = 'Vencidas'
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = chkAbertoClick
        end
        object DataIni: TDateTimePicker
          Left = 328
          Top = 33
          Width = 90
          Height = 21
          Date = 37888.000000000000000000
          Time = 37888.000000000000000000
          TabOrder = 3
          Visible = False
          OnChange = chkAbertoClick
        end
        object DataFim: TDateTimePicker
          Left = 427
          Top = 33
          Width = 90
          Height = 21
          Date = 37888.000000000000000000
          Time = 37888.000000000000000000
          TabOrder = 4
          Visible = False
          OnChange = chkAbertoClick
        end
        object cmbClienteF: TDBLookupComboBox
          Left = 656
          Top = 16
          Width = 298
          Height = 21
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          NullValueKey = 46
          TabOrder = 5
          Visible = False
          OnCloseUp = chkAbertoClick
        end
        object cmbBancoF: TDBLookupComboBox
          Left = 656
          Top = 40
          Width = 298
          Height = 21
          KeyField = 'BancoID'
          ListField = 'Nome'
          ListSource = dsBanco
          NullValueKey = 46
          TabOrder = 6
          Visible = False
          OnCloseUp = chkAbertoClick
        end
        object chkPeriodo: TCheckBox
          Left = 328
          Top = 16
          Width = 74
          Height = 17
          Caption = 'Periodo'
          TabOrder = 7
          OnClick = chkPeriodoClick
        end
        object chkPeriodo1: TRadioButton
          Left = 392
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Vencto'
          Checked = True
          TabOrder = 8
          TabStop = True
          Visible = False
          OnClick = chkAbertoClick
        end
        object chkPeriodo2: TRadioButton
          Left = 449
          Top = 16
          Width = 63
          Height = 17
          Caption = 'Emiss'#227'o'
          TabOrder = 9
          Visible = False
          OnClick = chkAbertoClick
        end
        object chkCli: TCheckBox
          Left = 562
          Top = 18
          Width = 94
          Height = 17
          Caption = 'Todos Clientes'
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = chkCliClick
        end
        object chkBanco: TCheckBox
          Left = 562
          Top = 42
          Width = 94
          Height = 17
          Caption = 'Todos Bancos'
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = chkBancoClick
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 29
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 3
        object cmdFicha: TSpeedButton
          Left = 217
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Exibe Ficha'
          AllowAllUp = True
          GroupIndex = 2
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
          Left = 242
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Exibe Lista'
          AllowAllUp = True
          GroupIndex = 2
          Down = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A47874A47874A478
            74A478748C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA87C75FEE5CBFF
            E2C4FFDFBEFFDCB8FFD9B1FED6ACFFD4A6FFD1A28C5D5CFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFAD8078FFEAD4E5A657E5A657E5A657E5A657E5A657E5A6
            57FFD4A88C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4867AFEEEDDFF
            EBD6FFE8CFFFE4C9FEE1C2FEDDBBFFDBB5FFD8AF8C5D5CFF00FFA47874A47874
            A47874A47874A47874BA8D7DFEF2E5E5A657E5A657E5A657E5A657E5A657E5A6
            57FEDCB78C5D5CFF00FFA87C75FEE5CBFFE2C4FFDFBEFFDCB8C29581FEF6ECFE
            F3E6FEEFE1FFEDDAFEE9D4FEE6CCFFE2C6FEDFBF8C5D5CFF00FFAD8078FFEAD4
            E5A657E5A657E5A657CA9B83FFF9F3E5A657E5A657E5A657E5A657E5A657E5A6
            57FEE3C88C5D5CFF00FFB4867AFEEEDDFFEBD6FFE8CFFFE4C9D1A286FEFBF9FE
            F9F4FEF7EFFEF5EAFEF1E4FEEEDEFEEBD7FEE8D08C5D5CFF00FFBA8D7DFEF2E5
            E5A657E5A657E5A657D8A98AFEFEFDFEFCFAFEFAF6FEF8F1FEF5ECEBDFDBD3C2
            C0BAA9AA8C5D5CFF00FFC29581FEF6ECFEF3E6FEEFE1FFEDDADFB08DFEFEFEFE
            FEFEFEFCFBFEFBF7FEF8F2B48176B48176B48176B17F74FF00FFCA9B83FFF9F3
            E5A657E5A657E5A657E4B58EFEFEFEFEFEFEFEFEFEFEFDFCFEFBF8B48176EBB5
            6FE49B42FF00FFFF00FFD1A286FEFBF9FEF9F4FEF7EFFEF5EAE8B890DCA887DC
            A887DCA887DCA887DCA887B48176F0B25EFF00FFFF00FFFF00FFD8A98AFEFEFD
            FEFCFAFEFAF6FEF8F1FEF5ECEBDFDBD3C2C0BAA9AA8C5D5CFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFDFB08DFEFEFEFEFEFEFEFCFBFEFBF7FEF8F2B48176B4
            8176B48176B17F74FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4B58EFEFEFE
            FEFEFEFEFEFEFEFDFCFEFBF8B48176EBB56FE49B42FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFE8B890DCA887DCA887DCA887DCA887DCA887B48176F0
            B25EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = cmdListaClick
        end
        object Panel15: TPanel
          Left = 870
          Top = 1
          Width = 119
          Height = 27
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn3: TBitBtn
            Left = 45
            Top = 2
            Width = 30
            Height = 25
            Hint = 'Cliente Anterior'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn3Click
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
          object BitBtn4: TBitBtn
            Left = 80
            Top = 2
            Width = 30
            Height = 25
            Hint = 'Pr'#243'ximo Cliente'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn4Click
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
        object cmdAltera: TBitBtn
          Left = 33
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
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
          Hint = 'Gravar'
          Caption = 'Ok'
          Default = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
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
          TabOrder = 3
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
          Hint = 'Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = cmdExcluiClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463EDA463EDA463EDA4
            63EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFEDA463FFE5BAFECCA3F4B781EEA665EDA462EEA767FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFEDA463FFF6CCFEE2B7FCCA9FF4B681EEA6
            66EDA463EDA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFED
            A463FFFBCCFEE2B7FCCBA0F4B782EEA666EDA462EDA463FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFF4CA90FFFFD4FFE7BCFED0A6F6BA86EEA6
            68EDA462EDA463EDA463FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDA463FE
            F2C7FFFACFFAD3A1F6BB87F2B177EEA565EDA360EDA463EDA463FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFEDA767E7AB68D77F32DA8136E3954CEAAA66EEB6
            77EFB473EDA766EDA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD77D32B7
            4100C95F13DE8339E9A560F0C284F7DAA4F4D79FEEBA79EAA35FFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFDA833AC2550BCB6518E0873F004B00004B00FCEE
            BDFBE6B5F0BC7FEAA462FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFDE843C004B001E9A3639D767004B00EDA463FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF93625D9C695FFF00FFFF00FF004B000A721226AC4423BA410C86
            16004B00FF00FFFF00FFAD81799F6F6AC79D83C4987E9C695DB67844915C5AFF
            00FF004B00004B000F72170C8C18004B00004B00FF00FFFF00FFA17675DEB27D
            9F5B339C6B67C29379AC7658915D59FF00FFFF00FFFF00FF026305004B00FF00
            FFFF00FFFF00FFFF00FF8C5959905B55AF5E16D1A177A16E63A16A50FF00FFFF
            00FFFF00FFFF00FF026305004B00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            9E5E3AA17065C5A9AB976867FF00FFFF00FF004B00004B00004B00FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF8F5C59936566976868FF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object BitBtn6: TBitBtn
          Left = 183
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Verifica recebimento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BitBtn6Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            AB8179B3897BB3897BB3897BB3897BB3897BB3897BB3897BB3897BB3897BB389
            7BB3897BB3897BFF00FFFF00FFFF00FFAE837AF8E7CDF7E5C8F6E3C4F6E0BFF5
            DFBAF4DDB6F4DBB2F2D8AEF2D6A9F1D5A6F1D3A3B3897BFF00FFFF00FFFF00FF
            B1867BF8EAD3F8E8CFF7E5CAF6E4C4009900F5DFBCF4DDB7F4DAB3F3D8AEF3D7
            AAF2D5A6B3897BFF00FFFF00FFFF00FFB5887BF9ECD9F8EBD4F7E8CF00990000
            9900009900F6DFBDF4DDB8F3DCB3F3D9AFF3D7ABB3897BFF00FFFF00FFFF00FF
            B98B7CFAEFDEF9EDD90099004993427AA8660099006B9F56F5DFBDF4DDB8F4DB
            B4F3DAB0B3897BFF00FFFF00FFFF00FFBD8F7DFBF2E3FBF0DF009900F3E9D0F8
            E9D0BAC89B009900009900F1DEBBF4DEB9F4DCB5B3897BFF00FFFF00FFFF00FF
            C1917EFBF4E9FBF2E4FAF0DFFAEEDBF9ECD6F8EAD2ECE1C4009900009900F5E0
            BFF5DEBAB3897BFF00FFFF00FFFF00FFC5957EFDF6EDFCF4EAFBF3E5FBF1E1F9
            EEDCFAECD7F8EAD2F8E8CEF7E6C9F7E3C5F6E0BFB3897BFF00FFFF00FFFF00FF
            CA987FFDF9F1DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
            3EF6E3C6B3897BFF00FFFF00FFFF00FFCE9B80FDFAF6FDF9F3FDF7EFFCF5EBFC
            F3E6FAF1E2FAF0DEFAEDD9F9EAD4F8E8D0F7E6CAB3897BFF00FFFF00FFFF00FF
            D19E81FEFCFAFEFBF6FEF9F3FDF7EFFCF5ECFBF3E7FAF1E3FAEFDEF9EEDAF9EB
            D5F8E9D1B3897BFF00FFFF00FFFF00FFD5A081FEFDFCDF993EDF993EDF993EDF
            993EDF993EDF993EDF993EDF993EDF993EF9EBD6B3897BFF00FFFF00FFFF00FF
            D8A282FFFFFFFFFEFDFEFDFBFEFCF7FEFAF4FDF8F1FDF7EDFBF5E9FBF3E4FAF1
            E0FAEFDCB3897BFF00FFFF00FFFF00FFDAA482FFFFFFFFFFFFFFFFFDFFFDFBFE
            FCF8FEFAF4FDF9F2FCF7EEFCF5EAFCF3E5FAF1E1B3897BFF00FFFF00FFFF00FF
            DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA4
            82DAA482DAA482FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdRel1: TBitBtn
          Left = 275
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Duplicatas emitidas no per'#237'odo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cmdRel1Click
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
        object cmdRel2: TBitBtn
          Left = 301
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Duplicatas em aberto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = cmdRel2Click
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
        object cmdNovo: TBitBtn
          Left = 8
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Incluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = cmdNovoClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183B78183FF00FFFF00FFFF00FFC7A79CFEEED4F7E3C5F6DFBCF5DBB4F3
            D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
            C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
            97F3D199B78183FF00FFFF00FFFF00FFC7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3
            DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
            C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
            99F3D198B78183FF00FFFF00FFFF00FFCEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5
            E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
            D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
            A9F5D5A3B78183FF00FFFF00FFFF00FFD7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9
            EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
            DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
            B9F8DDB4B78183FF00FFFF00FFFF00FFDEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FB
            F3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
            E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
            C4C6BCA9B78183FF00FFFF00FFFF00FFE5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDF8F3FDF6ECF1E1D5C6A194B59489B08F81B78183FF00FFFF00FFFF00FF
            E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
            70ECA54AC58768FF00FFFF00FFFF00FFECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE4D4D2C89A7FFAC577CD9377FF00FFFF00FFFF00FFFF00FF
            EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
            86FF00FFFF00FFFF00FFFF00FFFF00FFE9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EA
            CBB8EACBB8EACCB9DABBB0B8857AFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdRel3: TBitBtn
          Left = 327
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Duplicatas emitidas e n'#227'o recebidas no per'#237'odo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = cmdRel3Click
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
        object BitBtn5: TBitBtn
          Left = 158
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Cancela o pagamento'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = BitBtn5Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
            7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
            0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
            B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
            E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
            6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
            FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF89BAF48FC0F92A86F110
            75EE1275EC1E79EC84B5F489BAF4FFFFFF58A5F5005EC70858AB137AE371B5FB
            FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
            FDB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF419EFD3495FB298DF992C5FBE6
            F1FEE5F1FD88BCF71075EE0B70EBB4D2F8E6F3FF0E7BE9065AB02F8FF1B7DAFD
            FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
            F7F0F8FF1A82EC055CB53693F0B8DAFEFFFFFF59ACFF3499FF55A9FEE8F3FF85
            BFFD83BDFCE7F2FE4498F61A7FF2D3E6FCD9EBFE117DE9095CB22689EDAFD6FD
            FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
            FE99C9FA0773E10958ABFF00FF3994F0F1F8FFFBFDFF78BBFF61AFFF3499FF34
            99FF3398FF3095FD68B0FCF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
            CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
            F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
            FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
            E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
            ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notas Fiscais'
      ImageIndex = 1
      object tabNF: TTabControl
        Left = 0
        Top = 54
        Width = 990
        Height = 466
        Align = alClient
        TabOrder = 0
        Tabs.Strings = (
          'N'#250'mero'
          'Cliente'
          'Emiss'#227'o')
        TabIndex = 0
        OnChange = tabNFChange
        object grdNF: TDBGrid
          Left = 4
          Top = 24
          Width = 982
          Height = 438
          Align = alClient
          DataSource = dsNF
          FixedColor = clHighlight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clHighlightText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = grdNFDrawColumnCell
          OnKeyDown = grdNFKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'NF'
              Title.Alignment = taRightJustify
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fatura'
              Title.Alignment = taRightJustify
              Width = 40
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataEmissao'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Width = 70
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DataVencto'
              Title.Alignment = taCenter
              Title.Caption = 'Vencto.'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ClienteNome'
              Title.Caption = 'Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NFBruto'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Bruto'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorIRenda'
              Title.Alignment = taRightJustify
              Title.Caption = 'I.Renda'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorImpostos'
              Title.Alignment = taRightJustify
              Title.Caption = 'Pis+Cofins+CSLL'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NFLiquida'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor L'#237'quido'
              Width = 90
              Visible = True
            end>
        end
        object pnlNF: TPanel
          Left = 4
          Top = 24
          Width = 982
          Height = 438
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel9: TPanel
            Left = 0
            Top = 197
            Width = 982
            Height = 241
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel9'
            TabOrder = 0
            object Splitter1: TSplitter
              Left = 978
              Top = 0
              Width = 4
              Height = 241
              Align = alRight
            end
            object pagNF: TPageControl
              Left = 0
              Top = 0
              Width = 978
              Height = 241
              ActivePage = TabSheet8
              Align = alClient
              TabOrder = 0
              object tabItens: TTabSheet
                Caption = 'Itens NF'
                ImageIndex = 2
                object grdItens: TDBGrid
                  Left = 30
                  Top = 0
                  Width = 940
                  Height = 213
                  Align = alClient
                  DataSource = dsNFItens
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Item'
                      Title.Alignment = taRightJustify
                      Width = 30
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'ServicoB'
                      Title.Caption = 'Servi'#231'o'
                      Width = 192
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Descricao'
                      Title.Caption = 'Descri'#231#227'o a ser impressa na NF'
                      Width = 480
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Qtd'
                      Title.Alignment = taRightJustify
                      Width = 50
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Valor'
                      Title.Alignment = taRightJustify
                      Width = 75
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Total'
                      Title.Alignment = taRightJustify
                      Width = 75
                      Visible = True
                    end>
                end
                object Panel17: TPanel
                  Left = 0
                  Top = 0
                  Width = 30
                  Height = 213
                  Align = alLeft
                  BevelOuter = bvLowered
                  TabOrder = 1
                  object cmdNovoE: TBitBtn
                    Left = 3
                    Top = 2
                    Width = 25
                    Height = 25
                    Hint = 'Cadastra Novo Diagn'#243'stico'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    OnClick = cmdNovoEClick
                    Glyph.Data = {
                      36030000424D3603000000000000360000002800000010000000100000000100
                      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
                      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
                      83B78183B78183FF00FFFF00FFFF00FFC7A79CFEEED4F7E3C5F6DFBCF5DBB4F3
                      D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
                      C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
                      97F3D199B78183FF00FFFF00FFFF00FFC7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3
                      DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
                      C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
                      99F3D198B78183FF00FFFF00FFFF00FFCEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5
                      E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
                      D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
                      A9F5D5A3B78183FF00FFFF00FFFF00FFD7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9
                      EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
                      DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
                      B9F8DDB4B78183FF00FFFF00FFFF00FFDEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FB
                      F3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
                      E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
                      C4C6BCA9B78183FF00FFFF00FFFF00FFE5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFF
                      FEFDFDF8F3FDF6ECF1E1D5C6A194B59489B08F81B78183FF00FFFF00FFFF00FF
                      E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
                      70ECA54AC58768FF00FFFF00FFFF00FFECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFE4D4D2C89A7FFAC577CD9377FF00FFFF00FFFF00FFFF00FF
                      EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
                      86FF00FFFF00FFFF00FFFF00FFFF00FFE9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EA
                      CBB8EACBB8EACCB9DABBB0B8857AFF00FFFF00FFFF00FFFF00FF}
                  end
                  object cmdGravaE: TBitBtn
                    Left = 3
                    Top = 27
                    Width = 25
                    Height = 25
                    Hint = 'Grava Diagn'#243'stico'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    OnClick = cmdGravaEClick
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
                  object cmdExcluiE: TBitBtn
                    Left = 3
                    Top = 53
                    Width = 25
                    Height = 25
                    Hint = 'Exclui Diagn'#243'stico'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    OnClick = cmdExcluiEClick
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
              object TabSheet8: TTabSheet
                Caption = 'Descri'#231#227'o dos Servi'#231'os'
                object Panel12: TPanel
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 151
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'Panel12'
                  TabOrder = 0
                  object Label26: TLabel
                    Left = 0
                    Top = 0
                    Width = 970
                    Height = 13
                    Align = alTop
                    Alignment = taCenter
                    Caption = 'Observa'#231#245'es da NF'
                    Color = 11206642
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                  end
                  object DBMemo3: TDBMemo
                    Left = 0
                    Top = 13
                    Width = 970
                    Height = 138
                    Align = alClient
                    DataField = 'Descricao'
                    DataSource = dsNF
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Courier New'
                    Font.Style = []
                    ParentFont = False
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
                object Panel11: TPanel
                  Left = 0
                  Top = 151
                  Width = 970
                  Height = 62
                  Align = alBottom
                  BevelOuter = bvNone
                  Caption = 'Panel11'
                  TabOrder = 1
                  object Label21: TLabel
                    Left = 0
                    Top = 0
                    Width = 970
                    Height = 13
                    Align = alTop
                    Alignment = taCenter
                    Caption = 'Observa'#231#245'es - n'#227'o impresso na Nota'
                    Color = 11206642
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                  end
                  object DBMemo1: TDBMemo
                    Left = 0
                    Top = 13
                    Width = 970
                    Height = 49
                    Align = alClient
                    DataField = 'Observacao'
                    DataSource = dsNF
                    MaxLength = 180
                    ScrollBars = ssVertical
                    TabOrder = 0
                  end
                end
              end
              object TabSheet9: TTabSheet
                Caption = 'Duplicatas'
                ImageIndex = 1
                object grdDuplicata: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 213
                  Align = alClient
                  DataSource = dsDuplicata
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnDrawColumnCell = grdRecDrawColumnCell
                  OnDblClick = grdDuplicataDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Seq'
                      Width = 27
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'DataEmissao'
                      Title.Alignment = taCenter
                      Title.Caption = 'Emiss'#227'o'
                      Width = 70
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'DataVencto'
                      Title.Alignment = taCenter
                      Title.Caption = 'Vencto'
                      Width = 70
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
                      FieldName = 'Acrescimos'
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Acr'#233'scimos'
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Descontos'
                      Title.Alignment = taRightJustify
                      Width = 80
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
                      FieldName = 'ValorPago'
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Valor Pago'
                      Width = 80
                      Visible = True
                    end>
                end
              end
              object TabSheet10: TTabSheet
                Caption = 'Lancamentos'
                ImageIndex = 3
                object DBGrid1: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 970
                  Height = 213
                  Align = alClient
                  DataSource = dsLancamentos
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  OnDrawColumnCell = grdRecDrawColumnCell
                  OnDblClick = grdDuplicataDblClick
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Lancamento'
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Lan'#231'amento'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Seq'
                      Width = 27
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'DataEmissao'
                      Title.Alignment = taCenter
                      Title.Caption = 'Emiss'#227'o'
                      Width = 70
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'DataVencto'
                      Title.Alignment = taCenter
                      Title.Caption = 'Vencto'
                      Width = 70
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
                      FieldName = 'ValorPago'
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Valor Pago'
                      Width = 80
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'MovBanco'
                      Title.Alignment = taRightJustify
                      Title.Caption = 'Mov.Banco'
                      Width = 80
                      Visible = True
                    end>
                end
              end
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 982
            Height = 197
            Align = alTop
            BevelOuter = bvNone
            Caption = #39
            TabOrder = 1
            object Label4: TLabel
              Left = 121
              Top = 6
              Width = 39
              Height = 13
              Caption = 'Emiss'#227'o'
            end
            object Label6: TLabel
              Left = 220
              Top = 6
              Width = 174
              Height = 13
              Caption = 'Natureza - Presta'#231#227'o de Servi'#231'os de'
              FocusControl = DBEdit3
            end
            object Label17: TLabel
              Left = 107
              Top = 92
              Width = 56
              Height = 13
              Caption = 'Vencimento'
              FocusControl = cmpDup
            end
            object Label37: TLabel
              Left = 5
              Top = 92
              Width = 30
              Height = 13
              Caption = 'Fatura'
              FocusControl = DBEdit10
            end
            object Label40: TLabel
              Left = 220
              Top = 92
              Width = 100
              Height = 13
              Caption = 'Banco para Dep'#243'sito'
              FocusControl = DBEdit10
            end
            object lblCancelada: TLabel
              Left = 0
              Top = 184
              Width = 982
              Height = 13
              Align = alBottom
              Alignment = taCenter
              Caption = 'x-x-x-x-x-x NOTA FISCAL CANCELADA x-x-x-x-x-x '
              Color = clRed
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label41: TLabel
              Left = 5
              Top = 129
              Width = 26
              Height = 13
              Caption = 'Msg1'
              FocusControl = DBEdit10
            end
            object Label42: TLabel
              Left = 140
              Top = 129
              Width = 26
              Height = 13
              Caption = 'Msg2'
              FocusControl = DBEdit10
            end
            object Label43: TLabel
              Left = 275
              Top = 129
              Width = 26
              Height = 13
              Caption = 'Msg3'
              FocusControl = DBEdit10
            end
            object Label44: TLabel
              Left = 410
              Top = 129
              Width = 26
              Height = 13
              Caption = 'Msg4'
              FocusControl = DBEdit10
            end
            object cmpEmissao: TDBDateTimePicker
              Left = 121
              Top = 20
              Width = 90
              Height = 21
              Date = 40179.000000000000000000
              Time = 40179.000000000000000000
              TabOrder = 0
              DataField = 'DataEmissao'
              DataSource = dsNF
            end
            object DBEdit3: TDBEdit
              Left = 220
              Top = 20
              Width = 316
              Height = 21
              DataField = 'Natureza'
              DataSource = dsNF
              TabOrder = 1
            end
            object Panel13: TPanel
              Left = 5
              Top = 5
              Width = 108
              Height = 37
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 12
              object Label32: TLabel
                Left = 1
                Top = 1
                Width = 102
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 'Nota Fiscal'
                Color = clGreen
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object DBText7: TDBText
                Left = 1
                Top = 14
                Width = 102
                Height = 18
                Align = alClient
                Alignment = taCenter
                Color = clWhite
                DataField = 'NF'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial Black'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object DBDateTimePicker5: TDBDateTimePicker
              Left = 107
              Top = 106
              Width = 90
              Height = 21
              Date = 0.435198032399057400
              Time = 0.435198032399057400
              TabOrder = 5
              DataField = 'DataVencto'
              DataSource = dsNF
            end
            object DBEdit10: TDBEdit
              Left = 5
              Top = 106
              Width = 90
              Height = 21
              DataField = 'Fatura'
              DataSource = dsNF
              TabOrder = 4
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 220
              Top = 106
              Width = 313
              Height = 21
              DataField = 'BancoIDDep'
              DataSource = dsNF
              KeyField = 'BancoID'
              ListField = 'Nome'
              ListSource = dsBanco
              NullValueKey = 46
              TabOrder = 6
            end
            object Panel6: TPanel
              Left = 622
              Top = 0
              Width = 360
              Height = 184
              Align = alRight
              TabOrder = 11
              DesignSize = (
                360
                184)
              object Label13: TLabel
                Left = 85
                Top = 24
                Width = 90
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = 'NF Bruta'
                Color = clGreen
                FocusControl = DBEdit12
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label12: TLabel
                Left = 129
                Top = 48
                Width = 46
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = '% IRenda'
                FocusControl = DBEdit11
              end
              object Label38: TLabel
                Left = 94
                Top = 139
                Width = 81
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = 'Pis+Cofins+CSLL'
                FocusControl = DBEdit15
              end
              object Label33: TLabel
                Left = 87
                Top = 164
                Width = 90
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = 'NF Liquida'
                Color = clGreen
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label15: TLabel
                Left = 1
                Top = 1
                Width = 358
                Height = 13
                Align = alTop
                Alignment = taCenter
                Caption = 'Valores'
                Color = 11206642
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
              end
              object Label7: TLabel
                Left = 161
                Top = 72
                Width = 14
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = 'Pis'
                FocusControl = DBEdit2
              end
              object Label36: TLabel
                Left = 146
                Top = 95
                Width = 29
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = 'Cofins'
                FocusControl = DBEdit18
              end
              object Label39: TLabel
                Left = 149
                Top = 117
                Width = 26
                Height = 13
                Alignment = taRightJustify
                Anchors = [akTop, akRight]
                Caption = 'CSLL'
                FocusControl = DBEdit20
              end
              object DBEdit15: TDBEdit
                Left = 182
                Top = 135
                Width = 40
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Impostos'
                DataSource = dsNF
                TabOrder = 9
              end
              object DBEdit11: TDBEdit
                Left = 182
                Top = 44
                Width = 40
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'IRenda'
                DataSource = dsNF
                TabOrder = 1
              end
              object DBEdit12: TDBEdit
                Left = 227
                Top = 20
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'NFBruto'
                DataSource = dsNF
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 227
                Top = 44
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ValorIRenda'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit16: TDBEdit
                Left = 227
                Top = 135
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ValorImpostos'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit9: TDBEdit
                Left = 227
                Top = 160
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'NFLiquida'
                DataSource = dsNF
                TabOrder = 11
              end
              object DBEdit2: TDBEdit
                Left = 182
                Top = 66
                Width = 40
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Pis'
                DataSource = dsNF
                TabOrder = 3
              end
              object DBEdit17: TDBEdit
                Left = 227
                Top = 66
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ValorPis'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit18: TDBEdit
                Left = 182
                Top = 89
                Width = 40
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'Cofins'
                DataSource = dsNF
                TabOrder = 5
              end
              object DBEdit19: TDBEdit
                Left = 227
                Top = 89
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ValorCofins'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit20: TDBEdit
                Left = 182
                Top = 112
                Width = 40
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'CSLL'
                DataSource = dsNF
                TabOrder = 7
              end
              object DBEdit21: TDBEdit
                Left = 227
                Top = 112
                Width = 90
                Height = 21
                Anchors = [akTop, akRight]
                DataField = 'ValorCSLL'
                DataSource = dsNF
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object BitBtn7: TBitBtn
                Left = 326
                Top = 20
                Width = 25
                Height = 25
                Hint = 'Calcula Total'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 12
                OnClick = BitBtn7Click
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
              end
            end
            object pagCliente1: TPageControl
              Left = 5
              Top = 45
              Width = 260
              Height = 41
              ActivePage = TabSheet4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabHeight = 12
              TabOrder = 2
              object TabSheet4: TTabSheet
                Caption = 'Cliente'
                object DBLookupComboBox5: TDBLookupComboBox
                  Left = 1
                  Top = 0
                  Width = 250
                  Height = 19
                  DataField = 'Cliente'
                  DataSource = dsNF
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsCliente
                  TabOrder = 0
                end
              end
              object TabSheet5: TTabSheet
                Caption = 'CNPJ'
                object DBLookupComboBox7: TDBLookupComboBox
                  Left = 0
                  Top = 0
                  Width = 250
                  Height = 19
                  DataField = 'Cliente'
                  DataSource = dsNF
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsCliente
                  TabOrder = 0
                end
              end
            end
            object pagClienteDeb1: TPageControl
              Left = 275
              Top = 45
              Width = 260
              Height = 41
              ActivePage = TabSheet6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Small Fonts'
              Font.Style = []
              ParentFont = False
              TabHeight = 12
              TabOrder = 3
              object TabSheet6: TTabSheet
                Caption = 'Cliente de Cr'#233'dito'
                object DBLookupComboBox8: TDBLookupComboBox
                  Left = 1
                  Top = 0
                  Width = 250
                  Height = 19
                  DataField = 'ClienteDeb'
                  DataSource = dsNF
                  KeyField = 'CliFor'
                  ListField = 'Nome'
                  ListSource = dsClienteDeb
                  TabOrder = 0
                end
              end
              object TabSheet7: TTabSheet
                Caption = 'CNPJ'
                object DBLookupComboBox9: TDBLookupComboBox
                  Left = 0
                  Top = 0
                  Width = 250
                  Height = 19
                  DataField = 'ClienteDeb'
                  DataSource = dsNF
                  KeyField = 'CliFor'
                  ListField = 'CGC'
                  ListSource = dsClienteDeb
                  TabOrder = 0
                end
              end
            end
            object DBLookupComboBox10: TDBLookupComboBox
              Left = 5
              Top = 144
              Width = 125
              Height = 21
              DataField = 'Msg1'
              DataSource = dsNF
              KeyField = 'Msg'
              ListField = 'Msg'
              ListSource = dsMsg
              NullValueKey = 46
              TabOrder = 7
            end
            object DBLookupComboBox11: TDBLookupComboBox
              Left = 140
              Top = 144
              Width = 125
              Height = 21
              DataField = 'Msg2'
              DataSource = dsNF
              KeyField = 'Msg'
              ListField = 'Msg'
              ListSource = dsMsg
              NullValueKey = 46
              TabOrder = 8
            end
            object DBLookupComboBox12: TDBLookupComboBox
              Left = 275
              Top = 144
              Width = 125
              Height = 21
              DataField = 'Msg3'
              DataSource = dsNF
              KeyField = 'Msg'
              ListField = 'Msg'
              ListSource = dsMsg
              NullValueKey = 46
              TabOrder = 9
            end
            object DBLookupComboBox13: TDBLookupComboBox
              Left = 410
              Top = 144
              Width = 125
              Height = 21
              DataField = 'Msg4'
              DataSource = dsNF
              KeyField = 'Msg'
              ListField = 'Msg'
              ListSource = dsMsg
              NullValueKey = 46
              TabOrder = 10
            end
          end
        end
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 29
        Width = 990
        Height = 25
        Bands = <
          item
            Control = cmbNome
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end
          item
            Control = cmbData
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end
          item
            Control = cmbCli
            ImageIndex = -1
            MinHeight = 21
            Width = 986
          end>
        object cmbNome: TComboBox
          Left = 9
          Top = 0
          Width = 973
          Height = 21
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbNomeChange
        end
        object cmbData: TDateTimePicker
          Left = 9
          Top = 23
          Width = 973
          Height = 21
          Date = 37851.940849733790000000
          Time = 37851.940849733790000000
          TabOrder = 1
          OnChange = cmbDataChange
        end
        object cmbCli: TDBLookupComboBox
          Left = 9
          Top = 46
          Width = 973
          Height = 21
          KeyField = 'CliFor'
          ListField = 'Nome'
          ListSource = dsCliente
          TabOrder = 2
          OnClick = cmbCliClick
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 990
        Height = 29
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object cmdFichaNF: TSpeedButton
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
          OnClick = cmdFichaNFClick
        end
        object cmdListaNF: TSpeedButton
          Left = 191
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Exibe Lista'
          AllowAllUp = True
          GroupIndex = 2
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFA47874A47874A47874A47874A47874A47874A47874A478
            74A478748C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA87C75FEE5CBFF
            E2C4FFDFBEFFDCB8FFD9B1FED6ACFFD4A6FFD1A28C5D5CFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFAD8078FFEAD4E5A657E5A657E5A657E5A657E5A657E5A6
            57FFD4A88C5D5CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4867AFEEEDDFF
            EBD6FFE8CFFFE4C9FEE1C2FEDDBBFFDBB5FFD8AF8C5D5CFF00FFA47874A47874
            A47874A47874A47874BA8D7DFEF2E5E5A657E5A657E5A657E5A657E5A657E5A6
            57FEDCB78C5D5CFF00FFA87C75FEE5CBFFE2C4FFDFBEFFDCB8C29581FEF6ECFE
            F3E6FEEFE1FFEDDAFEE9D4FEE6CCFFE2C6FEDFBF8C5D5CFF00FFAD8078FFEAD4
            E5A657E5A657E5A657CA9B83FFF9F3E5A657E5A657E5A657E5A657E5A657E5A6
            57FEE3C88C5D5CFF00FFB4867AFEEEDDFFEBD6FFE8CFFFE4C9D1A286FEFBF9FE
            F9F4FEF7EFFEF5EAFEF1E4FEEEDEFEEBD7FEE8D08C5D5CFF00FFBA8D7DFEF2E5
            E5A657E5A657E5A657D8A98AFEFEFDFEFCFAFEFAF6FEF8F1FEF5ECEBDFDBD3C2
            C0BAA9AA8C5D5CFF00FFC29581FEF6ECFEF3E6FEEFE1FFEDDADFB08DFEFEFEFE
            FEFEFEFCFBFEFBF7FEF8F2B48176B48176B48176B17F74FF00FFCA9B83FFF9F3
            E5A657E5A657E5A657E4B58EFEFEFEFEFEFEFEFEFEFEFDFCFEFBF8B48176EBB5
            6FE49B42FF00FFFF00FFD1A286FEFBF9FEF9F4FEF7EFFEF5EAE8B890DCA887DC
            A887DCA887DCA887DCA887B48176F0B25EFF00FFFF00FFFF00FFD8A98AFEFEFD
            FEFCFAFEFAF6FEF8F1FEF5ECEBDFDBD3C2C0BAA9AA8C5D5CFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFDFB08DFEFEFEFEFEFEFEFCFBFEFBF7FEF8F2B48176B4
            8176B48176B17F74FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE4B58EFEFEFE
            FEFEFEFEFEFEFEFDFCFEFBF8B48176EBB56FE49B42FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFE8B890DCA887DCA887DCA887DCA887DCA887B48176F0
            B25EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          OnClick = cmdListaNFClick
        end
        object Panel16: TPanel
          Left = 870
          Top = 1
          Width = 119
          Height = 27
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn1: TBitBtn
            Left = 45
            Top = 1
            Width = 30
            Height = 25
            Hint = 'Cliente Anterior'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = BitBtn1Click
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
          object BitBtn2: TBitBtn
            Left = 80
            Top = 1
            Width = 30
            Height = 25
            Hint = 'Pr'#243'ximo Cliente'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn2Click
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
        object cmdNovoNF: TBitBtn
          Left = 8
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Incluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = cmdNovoNFClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183B78183FF00FFFF00FFFF00FFC7A79CFEEED4F7E3C5F6DFBCF5DBB4F3
            D7ABF3D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
            C7A79EFDEFD9F6E3CBF5DFC2F4DBBAF2D7B2F1D4A9F1D0A2EECC99EECC97EECC
            97F3D199B78183FF00FFFF00FFFF00FFC7A9A1FEF3E3F8E7D3F5E3CBF5DFC3F3
            DBBBF2D7B2F1D4ABF0D0A3EECC9AEECC97F3D199B78183FF00FFFF00FFFF00FF
            C9ACA5FFF7EBF9EBDAF7E7D2F6E3CAF5DFC2F4DBB9F2D7B2F1D4AAF0D0A1EFCD
            99F3D198B78183FF00FFFF00FFFF00FFCEB2AAFFFCF4FAEFE4F8EADAF7E7D3F5
            E2CBF5DFC2F4DBBBF1D7B2F1D3AAF0D0A1F3D29BB78183FF00FFFF00FFFF00FF
            D3B7AFFFFFFDFBF4ECFAEFE3F9EBDAF7E7D2F5E3C9F5DFC2F4DBBAF2D7B1F0D4
            A9F5D5A3B78183FF00FFFF00FFFF00FFD7BBB2FFFFFFFEF9F5FBF3ECFAEFE2F9
            EADAF8E7D2F5E3CAF5DEC2F4DBBAF2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
            DABEB3FFFFFFFFFEFDFDF8F4FBF3ECF9EFE3F8EADAF7E7D2F6E2CAF6DEC1F4DB
            B9F8DDB4B78183FF00FFFF00FFFF00FFDEC1B5FFFFFFFFFFFFFFFEFDFEF9F4FB
            F3EBFAEFE2F9EBD9F8E6D1F6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
            E2C5B5FFFFFFFFFFFFFFFFFFFFFEFDFDF9F4FBF3EBFAEEE2FAEDDCFCEFD9E6D9
            C4C6BCA9B78183FF00FFFF00FFFF00FFE5C7B7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFDFDF8F3FDF6ECF1E1D5C6A194B59489B08F81B78183FF00FFFF00FFFF00FF
            E9CBB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFEF9E3CFC9BF8C76E8B2
            70ECA54AC58768FF00FFFF00FFFF00FFECCDBAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE4D4D2C89A7FFAC577CD9377FF00FFFF00FFFF00FFFF00FF
            EACAB6FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEC7977CCF9B
            86FF00FFFF00FFFF00FFFF00FFFF00FFE9C6B1EBCCB8EBCCB8EBCCB8EBCBB8EA
            CBB8EACBB8EACCB9DABBB0B8857AFF00FFFF00FFFF00FFFF00FF}
        end
        object cmdAlteraNF: TBitBtn
          Left = 33
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = cmdAlteraNFClick
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
        object cmdGravaNF: TBitBtn
          Left = 58
          Top = 2
          Width = 50
          Height = 25
          Hint = 'Gravar'
          Caption = 'Ok'
          Default = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = cmdGravaNFClick
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
        object cmdCancelaNF: TBitBtn
          Left = 108
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Cancela Inclus'#227'o/Altera'#231#227'o'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = cmdCancelaNFClick
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
        object cmdExcluiNF: TBitBtn
          Left = 133
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Cancelar NF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = cmdExcluiNFClick
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
        object cmdRelNF: TBitBtn
          Left = 224
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Relat'#243'rio de Notas Fiscais'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = cmdRelNFClick
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
        object cmdImpNF: TBitBtn
          Left = 250
          Top = 2
          Width = 25
          Height = 25
          Hint = 'Nota Fiscal'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = cmdImpNFClick
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
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 998
    Height = 27
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label3: TLabel
      Left = 9
      Top = 8
      Width = 82
      Height = 13
      Caption = 'Selecione a Filial '
    end
    object cmbFilial: TDBLookupComboBox
      Left = 96
      Top = 3
      Width = 465
      Height = 21
      KeyField = 'Filial'
      ListField = 'Nome'
      ListSource = dsFilial
      TabOrder = 0
    end
  end
  object dbReceber: TMSTable
    TableName = 'dbo.Receber'
    MasterFields = 'Filial'
    DetailFields = 'Filial'
    MasterSource = dsFilial
    Connection = frmMenu.dadosfin
    Filtered = True
    AfterInsert = dbReceberAfterInsert
    BeforeEdit = dbReceberBeforeEdit
    BeforePost = dbReceberBeforePost
    AfterPost = dbReceberAfterPost
    AfterDelete = dbReceberAfterDelete
    OnCalcFields = dbReceberCalcFields
    OnFilterRecord = dbReceberFilterRecord
    Left = 78
    Top = 401
    object dbReceberFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Receber.Filial'
    end
    object dbReceberDuplicata: TIntegerField
      FieldName = 'Duplicata'
      Origin = 'dbo.Receber.Duplicata'
    end
    object dbReceberSeq: TStringField
      FieldName = 'Seq'
      Origin = 'dbo.Receber.Seq'
      Size = 1
    end
    object dbReceberSeqNum: TSmallintField
      FieldName = 'SeqNum'
      Origin = 'dbo.Receber.SeqNum'
    end
    object dbReceberCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Receber.Cliente'
    end
    object dbReceberValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Receber.Valor'
    end
    object dbReceberAcrescimos: TCurrencyField
      FieldName = 'Acrescimos'
      Origin = 'dbo.Receber.Acrescimos'
    end
    object dbReceberDescontos: TCurrencyField
      FieldName = 'Descontos'
      Origin = 'dbo.Receber.Descontos'
    end
    object dbReceberBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.Receber.BancoID'
    end
    object dbReceberValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Receber.ValorPago'
    end
    object dbReceberDocPagto: TStringField
      FieldName = 'DocPagto'
      Origin = 'dbo.Receber.DocPagto'
      Size = 30
    end
    object dbReceberHistorico: TMemoField
      FieldName = 'Historico'
      Origin = 'dbo.Receber.Historico'
      BlobType = ftMemo
    end
    object dbReceberQuitado: TBooleanField
      FieldName = 'Quitado'
      Origin = 'dbo.Receber.Quitado'
    end
    object dbReceberUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Receber.Usuario'
      Size = 10
    end
    object dbReceberPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Receber.Prazo'
    end
    object dbReceberPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'dbo.Receber.Porcentagem'
      Precision = 5
    end
    object dbReceberSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.Receber.Selecionado'
    end
    object dbReceberStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 1
      Calculated = True
    end
    object dbReceberNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'dbo.Receber.Numero'
    end
    object dbReceberContaNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ContaNome'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Nome'
      KeyFields = 'BancoID'
      Size = 30
      Lookup = True
    end
    object dbReceberValorLiquido: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorLiquido'
      Calculated = True
    end
    object dbReceberBanco: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Banco'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Banco'
      KeyFields = 'BancoID'
      Lookup = True
    end
    object dbReceberAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'Agencia'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Agencia'
      KeyFields = 'BancoID'
      Size = 15
      Lookup = True
    end
    object dbReceberConta: TStringField
      FieldKind = fkLookup
      FieldName = 'Conta'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Conta'
      KeyFields = 'BancoID'
      Lookup = True
    end
    object dbReceberValorPagoCalculado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPagoCalculado'
      Calculated = True
    end
    object dbReceberClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Receber.ClienteDeb'
    end
    object dbReceberDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'dbo.Receber.DataEmissao'
    end
    object dbReceberPraca: TStringField
      FieldName = 'Praca'
      Origin = 'dbo.Receber.Praca'
      FixedChar = True
    end
    object dbReceberDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'dbo.Receber.DataPagto'
    end
    object dbReceberDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Receber.DataInclusao'
    end
    object dbReceberDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'dbo.Receber.DataVencto'
    end
    object dbReceberClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
  end
  object dsReceber: TDataSource
    DataSet = dbReceber
    OnStateChange = dsReceberStateChange
    OnDataChange = dsReceberDataChange
    Left = 108
    Top = 401
  end
  object dbFilial: TMSTable
    TableName = 'dbo.Filiais'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial'
    Left = 390
    Top = 400
    object dbFilialFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Filiais.Filial'
    end
    object dbFilialNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Filiais.Nome'
      Size = 60
    end
    object dbFilialUltimaNF: TIntegerField
      FieldName = 'UltimaNF'
      Origin = 'dbo.Filiais.UltimaNF'
    end
    object dbFilialCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Filiais.Cod1'
    end
    object dbFilialCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Filiais.Cod2'
    end
    object dbFilialCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Filiais.Cod3'
    end
    object dbFilialEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.Filiais.Endereco'
      Size = 40
    end
    object dbFilialCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.Filiais.Cidade'
      Size = 30
    end
    object dbFilialUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.Filiais.UF'
      Size = 2
    end
    object dbFilialCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.Filiais.Cep'
      Size = 9
    end
    object dbFilialFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.Filiais.Fone'
      Size = 30
    end
    object dbFilialCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Filiais.CGC'
      Size = 18
    end
    object dbFilialIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.Filiais.IE'
      Size = 18
    end
    object dbFilialRazao: TStringField
      FieldName = 'Razao'
      Origin = 'dbo.Filiais.Razao'
      Size = 60
    end
    object dbFilialCCM: TStringField
      FieldName = 'CCM'
      Origin = 'dbo.Filiais.CCM'
      Size = 10
    end
  end
  object dsFilial: TDataSource
    DataSet = dbFilial
    Left = 420
    Top = 400
  end
  object dsCliente: TDataSource
    DataSet = dbCliente
    Left = 169
    Top = 401
  end
  object dbEndereco: TMSTable
    TableName = 'dbo.ClienteEnd'
    MasterFields = 'CliFor'
    DetailFields = 'Cliente'
    MasterSource = dsCliente
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbEnderecoFilterRecord
    IndexFieldNames = 'Cliente'
    Left = 138
    Top = 432
    object dbEnderecoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.ClienteEnd.Cliente'
    end
    object dbEnderecoCep: TStringField
      FieldName = 'Cep'
      Origin = 'dbo.ClienteEnd.Cep'
      Size = 9
    end
    object dbEnderecoEntrega: TBooleanField
      FieldName = 'Entrega'
      Origin = 'dbo.ClienteEnd.Entrega'
    end
    object dbEnderecoCobranca: TBooleanField
      FieldName = 'Cobranca'
      Origin = 'dbo.ClienteEnd.Cobranca'
    end
    object dbEnderecoFaturamento: TBooleanField
      FieldName = 'Faturamento'
      Origin = 'dbo.ClienteEnd.Faturamento'
    end
    object dbEnderecoEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'dbo.ClienteEnd.Endereco'
      Size = 60
    end
    object dbEnderecoBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'dbo.ClienteEnd.Bairro'
      Size = 30
    end
    object dbEnderecoCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'dbo.ClienteEnd.Cidade'
      Size = 30
    end
    object dbEnderecoUF: TStringField
      FieldName = 'UF'
      Origin = 'dbo.ClienteEnd.UF'
      Size = 2
    end
    object dbEnderecoContato: TStringField
      FieldName = 'Contato'
      Origin = 'dbo.ClienteEnd.Contato'
      Size = 30
    end
    object dbEnderecoFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.ClienteEnd.Fone'
      Size = 30
    end
    object dbEnderecoFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.ClienteEnd.Fax'
    end
    object dbEnderecoCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.ClienteEnd.CGC'
      Size = 18
    end
    object dbEnderecoIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.ClienteEnd.IE'
      Size = 15
    end
  end
  object dsEndereco: TDataSource
    DataSet = dbEndereco
    Left = 169
    Top = 432
  end
  object dbBanco: TMSTable
    TableName = 'dbo.CCorrente'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID'
    Left = 259
    Top = 401
    object dbBancoBancoID: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'BancoID'
      Origin = 'dbo.CCorrente.BancoID'
      ReadOnly = True
    end
    object dbBancoAgencia: TStringField
      FieldName = 'Agencia'
      Origin = 'dbo.CCorrente.Agencia'
      Size = 10
    end
    object dbBancoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'dbo.CCorrente.Banco'
    end
    object dbBancoConta: TStringField
      FieldName = 'Conta'
      Origin = 'dbo.CCorrente.Conta'
      Size = 15
    end
    object dbBancoNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.CCorrente.Nome'
      Size = 40
    end
    object dbBancoSigla: TStringField
      FieldName = 'Sigla'
      Origin = 'dbo.CCorrente.Sigla'
      Size = 3
    end
    object dbBancoEndereco: TMemoField
      FieldName = 'Endereco'
      Origin = 'dbo.CCorrente.Endereco'
      BlobType = ftMemo
    end
    object dbBancoGerente: TStringField
      FieldName = 'Gerente'
      Origin = 'dbo.CCorrente.Gerente'
      Size = 30
    end
    object dbBancoFone: TStringField
      FieldName = 'Fone'
      Origin = 'dbo.CCorrente.Fone'
      Size = 25
    end
    object dbBancoFax: TStringField
      FieldName = 'Fax'
      Origin = 'dbo.CCorrente.Fax'
      Size = 25
    end
    object dbBancoFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.CCorrente.Filial'
    end
    object dbBancoUltimoCheque: TIntegerField
      FieldName = 'UltimoCheque'
      Origin = 'dbo.CCorrente.UltimoCheque'
    end
    object dbBancoDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
      Origin = 'dbo.CCorrente.DataFechamento'
    end
    object dbBancoSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
      Origin = 'dbo.CCorrente.SaldoFechamento'
    end
    object dbBancoUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Origin = 'dbo.CCorrente.UsuarioFechamento'
      Size = 10
    end
    object dbBancoSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
      Origin = 'dbo.CCorrente.SaldoAtual'
    end
    object dbBancoLimiteCredito: TCurrencyField
      FieldName = 'LimiteCredito'
      Origin = 'dbo.CCorrente.LimiteCredito'
    end
    object dbBancoStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.CCorrente.Status'
      Size = 1
    end
    object dbBancoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.CCorrente.Usuario'
      Size = 10
    end
    object dbBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsBanco: TDataSource
    DataSet = dbBanco
    Left = 286
    Top = 401
  end
  object dbMovBanco: TMSTable
    TableName = 'dbo.MovBanco'
    Connection = frmMenu.dadosfin
    Left = 198
    Top = 432
    object dbMovBancoMovBanco: TAutoIncField
      FieldName = 'MovBanco'
      ReadOnly = True
    end
    object dbMovBancoBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbMovBancoFundo: TIntegerField
      FieldName = 'Fundo'
    end
    object dbMovBancoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbMovBancoDoc: TStringField
      FieldName = 'Doc'
    end
    object dbMovBancoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbMovBancoFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbMovBancoHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbMovBancoStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbMovBancoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbMovBancoUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbMovBancoCruzado: TBooleanField
      FieldName = 'Cruzado'
    end
    object dbMovBancoUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbMovBancoDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbMovBancoDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbMovBancoDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbMovBancoDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object dsMovBanco: TDataSource
    DataSet = dbMovBanco
    Left = 228
    Top = 432
  end
  object dbPlanoC: TMSTable
    TableName = 'dbo.PlanoContas'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbPlanoCFilterRecord
    IndexFieldNames = 'Cod1;Cod2;Cod3'
    Left = 316
    Top = 401
    object dbPlanoCCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPlanoCCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPlanoCCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPlanoCDescricao: TStringField
      FieldName = 'Descricao'
      Size = 40
    end
  end
  object dsPlanoC: TDataSource
    DataSet = dbPlanoC
    Left = 347
    Top = 401
  end
  object dbPagar: TMSTable
    TableName = 'dbo.Lancamentos'
    Connection = frmMenu.dadosfin
    AfterInsert = dbPagarAfterInsert
    AfterPost = dbPagarAfterPost
    IndexFieldNames = 'Filial;NF;Seq;Cod1;Cod2;Cod3'
    Left = 258
    Top = 432
    object dbPagarFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagarLancamento: TAutoIncField
      FieldName = 'Lancamento'
      ReadOnly = True
    end
    object dbPagarCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbPagarCod1: TSmallintField
      FieldName = 'Cod1'
    end
    object dbPagarCod2: TSmallintField
      FieldName = 'Cod2'
    end
    object dbPagarCod3: TSmallintField
      FieldName = 'Cod3'
    end
    object dbPagarHistorico: TStringField
      FieldName = 'Historico'
      Size = 60
    end
    object dbPagarDoc: TStringField
      FieldName = 'Doc'
    end
    object dbPagarValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbPagarBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbPagarCheque: TStringField
      FieldName = 'Cheque'
    end
    object dbPagarValorPago: TCurrencyField
      FieldName = 'ValorPago'
    end
    object dbPagarPago: TBooleanField
      FieldName = 'Pago'
    end
    object dbPagarSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object dbPagarClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagarStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagarPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbPagarUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagarPrazo: TIntegerField
      FieldName = 'Prazo'
    end
    object dbPagarNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarSeq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
    object dbPagarPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbPagarUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
    end
    object dbPagarContabilizado: TBooleanField
      FieldName = 'Contabilizado'
    end
    object dbPagarDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
    end
    object dbPagarDataVencto: TDateTimeField
      FieldName = 'DataVencto'
    end
    object dbPagarDataPagto: TDateTimeField
      FieldName = 'DataPagto'
    end
    object dbPagarDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
    object dbPagarDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
    end
  end
  object popBusca: TPopupMenu
    Left = 524
    Top = 400
    object Selecionardesdeoinciodoano1: TMenuItem
      Caption = 'Selecionar desde o &In'#237'cio do ano at'#233' hoje'
    end
    object SelecionarTudo1: TMenuItem
      Caption = 'Selecionar &Ano Todo'
    end
    object SelecionarTudo2: TMenuItem
      Caption = '&Selecionar &Tudo'
    end
    object SelecionardeHojeemDiante1: TMenuItem
      Caption = 'Selecionar de &Hoje em Diante'
    end
    object BloquearDataInicial1: TMenuItem
      Caption = '&Fixar Data Inicial'
    end
  end
  object dbNF: TMSTable
    TableName = 'dbo.NF'
    MasterFields = 'Filial'
    DetailFields = 'Filial'
    MasterSource = dsFilial
    Connection = frmMenu.dadosfin
    AfterInsert = dbNFAfterInsert
    BeforeEdit = dbNFBeforeEdit
    BeforePost = dbNFBeforePost
    AfterPost = dbNFAfterPost
    Left = 78
    Top = 433
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
      Size = 30
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
      OnChange = dbNFIRendaChange
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbNFImpostos: TFloatField
      FieldName = 'Impostos'
      OnChange = dbNFImpostosChange
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object dbNFNFBruto: TCurrencyField
      FieldName = 'NFBruto'
      OnChange = dbNFNFBrutoChange
    end
    object dbNFValorIRenda: TCurrencyField
      FieldName = 'ValorIRenda'
      OnChange = dbNFValorIRendaChange
    end
    object dbNFValorImpostos: TCurrencyField
      FieldName = 'ValorImpostos'
      OnChange = dbNFValorImpostosChange
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
    object dbNFPis: TFloatField
      FieldName = 'Pis'
      OnChange = dbNFPisChange
      DisplayFormat = '##0.00'
    end
    object dbNFCofins: TFloatField
      FieldName = 'Cofins'
      OnChange = dbNFCofinsChange
      DisplayFormat = '##0.00'
    end
    object dbNFCSLL: TFloatField
      FieldName = 'CSLL'
      OnChange = dbNFCSLLChange
      DisplayFormat = '##0.00'
    end
    object dbNFValorPis: TCurrencyField
      FieldName = 'ValorPis'
    end
    object dbNFValorCofins: TCurrencyField
      FieldName = 'ValorCofins'
    end
    object dbNFValorCSLL: TCurrencyField
      FieldName = 'ValorCSLL'
    end
    object dbNFMsg1: TStringField
      FieldName = 'Msg1'
      Size = 10
    end
    object dbNFMsg2: TStringField
      FieldName = 'Msg2'
      Size = 10
    end
    object dbNFMsg3: TStringField
      FieldName = 'Msg3'
      Size = 10
    end
    object dbNFMsg4: TStringField
      FieldName = 'Msg4'
      Size = 10
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
    OnStateChange = dsNFStateChange
    OnDataChange = dsNFDataChange
    Left = 108
    Top = 433
  end
  object dbCliente: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbClienteFilterRecord
    IndexFieldNames = 'Nome'
    Left = 138
    Top = 401
    object dbClienteCliFor: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'CliFor'
      Origin = 'dbo.Clientes.CliFor'
      ReadOnly = True
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Origin = 'dbo.Clientes.Nome'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      Origin = 'dbo.Clientes.CGC'
      Size = 18
    end
    object dbClienteIE: TStringField
      FieldName = 'IE'
      Origin = 'dbo.Clientes.IE'
      Size = 18
    end
    object dbClienteStatusCli: TBooleanField
      FieldName = 'StatusCli'
      Origin = 'dbo.Clientes.StatusCli'
    end
  end
  object dbFundos: TMSTable
    TableName = 'dbo.Fundos'
    MasterFields = 'BancoID'
    DetailFields = 'BancoID'
    MasterSource = dsBanco
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'BancoID;Fundo'
    Left = 316
    Top = 430
    object dbFundosBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbFundosFundo: TAutoIncField
      FieldName = 'Fundo'
      ReadOnly = True
    end
    object dbFundosNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbFundosSaldoFechamento: TCurrencyField
      FieldName = 'SaldoFechamento'
    end
    object dbFundosUsuarioFechamento: TStringField
      FieldName = 'UsuarioFechamento'
      Size = 10
    end
    object dbFundosSaldoAtual: TCurrencyField
      FieldName = 'SaldoAtual'
    end
    object dbFundosStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbFundosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbFundosDataFechamento: TDateTimeField
      FieldName = 'DataFechamento'
    end
    object dbFundosDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsFundos: TDataSource
    DataSet = dbFundos
    Left = 351
    Top = 430
  end
  object dbClienteDeb: TMSTable
    TableName = 'dbo.Clientes'
    Connection = frmMenu.dadosfin
    Filtered = True
    OnFilterRecord = dbClienteFilterRecord
    IndexFieldNames = 'Nome'
    Left = 202
    Top = 401
    object dbClienteDebCliFor: TAutoIncField
      FieldName = 'CliFor'
      ReadOnly = True
    end
    object dbClienteDebNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbClienteDebCGC: TStringField
      FieldName = 'CGC'
      Size = 18
    end
    object dbClienteDebIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object dbClienteDebStatusCli: TBooleanField
      FieldName = 'StatusCli'
    end
  end
  object dsClienteDeb: TDataSource
    DataSet = dbClienteDeb
    Left = 233
    Top = 401
  end
  object dbDuplicata: TMSTable
    TableName = 'dbo.Receber'
    MasterFields = 'Filial;NF'
    DetailFields = 'Filial;Duplicata'
    MasterSource = dsNF
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;Duplicata'
    Left = 390
    Top = 433
    object dbDuplicataFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Receber.Filial'
    end
    object dbDuplicataDuplicata: TIntegerField
      FieldName = 'Duplicata'
      Origin = 'dbo.Receber.Duplicata'
    end
    object dbDuplicataSeq: TStringField
      FieldName = 'Seq'
      Origin = 'dbo.Receber.Seq'
      Size = 1
    end
    object dbDuplicataSeqNum: TSmallintField
      FieldName = 'SeqNum'
      Origin = 'dbo.Receber.SeqNum'
    end
    object dbDuplicataPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Receber.Prazo'
    end
    object dbDuplicataCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Receber.Cliente'
    end
    object dbDuplicataPraca: TStringField
      FieldName = 'Praca'
      Origin = 'dbo.Receber.Praca'
    end
    object dbDuplicataValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Receber.Valor'
    end
    object dbDuplicataAcrescimos: TCurrencyField
      FieldName = 'Acrescimos'
      Origin = 'dbo.Receber.Acrescimos'
    end
    object dbDuplicataDescontos: TCurrencyField
      FieldName = 'Descontos'
      Origin = 'dbo.Receber.Descontos'
    end
    object dbDuplicataBancoID: TIntegerField
      FieldName = 'BancoID'
      Origin = 'dbo.Receber.BancoID'
    end
    object dbDuplicataValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Receber.ValorPago'
    end
    object dbDuplicataDocPagto: TStringField
      FieldName = 'DocPagto'
      Origin = 'dbo.Receber.DocPagto'
      Size = 30
    end
    object dbDuplicataDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'dbo.Receber.DataEmissao'
    end
    object dbDuplicataDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'dbo.Receber.DataVencto'
    end
    object dbDuplicataDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'dbo.Receber.DataPagto'
    end
    object dbDuplicataDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Receber.DataInclusao'
    end
  end
  object dsDuplicata: TDataSource
    DataSet = dbDuplicata
    Left = 420
    Top = 433
  end
  object dbPagarDup: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'Filial;NF'
    DetailFields = 'Filial;NF'
    MasterSource = dsNF
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;NF'
    Left = 452
    Top = 432
    object dbPagarDupFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbPagarDupNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarDupSeq: TStringField
      FieldName = 'Seq'
      Size = 1
    end
  end
  object dbMsg: TMSTable
    TableName = 'dbo.MensgNF'
    Connection = frmMenu.dadosfin
    Left = 452
    Top = 401
    object dbMsgMsg: TStringField
      FieldName = 'Msg'
      Origin = 'dbo.MensgNF.Msg'
      Size = 10
    end
    object dbMsgMsgTexto: TStringField
      FieldName = 'MsgTexto'
      Origin = 'dbo.MensgNF.MsgTexto'
      Size = 250
    end
  end
  object dsMsg: TDataSource
    DataSet = dbMsg
    Left = 486
    Top = 401
  end
  object qryNF: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from NF')
    OnCalcFields = qryNFCalcFields
    Left = 486
    Top = 430
    object qryNFFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'NF.Filial'
    end
    object qryNFNF: TIntegerField
      FieldName = 'NF'
      Origin = 'NF.NF'
    end
    object qryNFFatura: TStringField
      FieldName = 'Fatura'
      Origin = 'NF.Fatura'
      Size = 10
    end
    object qryNFNatureza: TStringField
      FieldName = 'Natureza'
      Origin = 'NF.Natureza'
      Size = 30
    end
    object qryNFCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'NF.Cliente'
    end
    object qryNFDescricao: TMemoField
      FieldName = 'Descricao'
      Origin = 'NF.Descricao'
      BlobType = ftMemo
    end
    object qryNFIRenda: TFloatField
      FieldName = 'IRenda'
      Origin = 'NF.IRenda'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 3
    end
    object qryNFPis: TFloatField
      FieldName = 'Pis'
      Origin = 'NF.Pis'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 3
    end
    object qryNFCofins: TFloatField
      FieldName = 'Cofins'
      Origin = 'NF.Cofins'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 3
    end
    object qryNFCSLL: TFloatField
      FieldName = 'CSLL'
      Origin = 'NF.CSLL'
      DisplayFormat = '##0.00%'
      EditFormat = '##0.00%'
      Precision = 3
    end
    object qryNFImpostos: TFloatField
      FieldName = 'Impostos'
      Origin = 'NF.Impostos'
      Precision = 3
    end
    object qryNFNFBruto: TCurrencyField
      FieldName = 'NFBruto'
      Origin = 'NF.NFBruto'
    end
    object qryNFValorIRenda: TCurrencyField
      FieldName = 'ValorIRenda'
      Origin = 'NF.ValorIRenda'
    end
    object qryNFValorPis: TCurrencyField
      FieldName = 'ValorPis'
      Origin = 'NF.ValorPis'
    end
    object qryNFValorCofins: TCurrencyField
      FieldName = 'ValorCofins'
      Origin = 'NF.ValorCofins'
    end
    object qryNFValorCSLL: TCurrencyField
      FieldName = 'ValorCSLL'
      Origin = 'NF.ValorCSLL'
    end
    object qryNFValorImpostos: TCurrencyField
      FieldName = 'ValorImpostos'
      Origin = 'NF.ValorImpostos'
    end
    object qryNFNFLiquida: TCurrencyField
      FieldName = 'NFLiquida'
      Origin = 'NF.NFLiquida'
    end
    object qryNFObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'NF.Observacao'
      BlobType = ftMemo
    end
    object qryNFStatus: TBooleanField
      FieldName = 'Status'
      Origin = 'NF.Status'
    end
    object qryNFBancoIDDep: TIntegerField
      FieldName = 'BancoIDDep'
      Origin = 'NF.BancoIDDep'
    end
    object qryNFUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'NF.Usuario'
      Size = 10
    end
    object qryNFClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'NF.ClienteDeb'
    end
    object qryNFClienteNome: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteNome'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'Nome'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object qryNFMsg1: TStringField
      FieldName = 'Msg1'
      Origin = 'NF.Msg1'
      Size = 10
    end
    object qryNFMsg2: TStringField
      FieldName = 'Msg2'
      Origin = 'NF.Msg2'
      Size = 10
    end
    object qryNFMsg3: TStringField
      FieldName = 'Msg3'
      Origin = 'NF.Msg3'
      Size = 10
    end
    object qryNFMsg4: TStringField
      FieldName = 'Msg4'
      Origin = 'NF.Msg4'
      Size = 10
    end
    object qryNFMsg1Texto: TStringField
      FieldKind = fkLookup
      FieldName = 'Msg1Texto'
      LookupDataSet = dbMsg
      LookupKeyFields = 'Msg'
      LookupResultField = 'MsgTexto'
      KeyFields = 'Msg1'
      Size = 250
      Lookup = True
    end
    object qryNFMsg2Texto: TStringField
      FieldKind = fkLookup
      FieldName = 'Msg2Texto'
      LookupDataSet = dbMsg
      LookupKeyFields = 'Msg'
      LookupResultField = 'MsgTexto'
      KeyFields = 'Msg2'
      Size = 250
      Lookup = True
    end
    object qryNFMsg3Texto: TStringField
      FieldKind = fkLookup
      FieldName = 'Msg3Texto'
      LookupDataSet = dbMsg
      LookupKeyFields = 'Msg'
      LookupResultField = 'MsgTexto'
      KeyFields = 'Msg3'
      Size = 250
      Lookup = True
    end
    object qryNFMsg4Texto: TStringField
      FieldKind = fkLookup
      FieldName = 'Msg4Texto'
      LookupDataSet = dbMsg
      LookupKeyFields = 'Msg'
      LookupResultField = 'MsgTexto'
      KeyFields = 'Msg4'
      Size = 250
      Lookup = True
    end
    object qryNFValorExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'ValorExtenso'
      Size = 250
      Calculated = True
    end
    object qryNFFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Razao'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object qryNFFilialEndereco: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialEndereco'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Endereco'
      KeyFields = 'Filial'
      Size = 60
      Lookup = True
    end
    object qryNFFilialCidade: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCidade'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cidade'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object qryNFFilialUF: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialUF'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'UF'
      KeyFields = 'Filial'
      Size = 2
      Lookup = True
    end
    object qryNFFilialCep: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCep'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Cep'
      KeyFields = 'Filial'
      Size = 9
      Lookup = True
    end
    object qryNFFilialFone: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialFone'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Fone'
      KeyFields = 'Filial'
      Size = 30
      Lookup = True
    end
    object qryNFFilialCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCGC'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'CGC'
      KeyFields = 'Filial'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 18
      Lookup = True
    end
    object qryNFFilialIE: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialIE'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'IE'
      KeyFields = 'Filial'
      Lookup = True
    end
    object qryNFBancoNome: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoNome'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Nome'
      KeyFields = 'BancoIDDep'
      Lookup = True
    end
    object qryNFBancoCod: TIntegerField
      FieldKind = fkLookup
      FieldName = 'BancoCod'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Banco'
      KeyFields = 'BancoIDDep'
      Lookup = True
    end
    object qryNFBancoAgencia: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoAgencia'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Agencia'
      KeyFields = 'BancoIDDep'
      Size = 30
      Lookup = True
    end
    object qryNFBancoConta: TStringField
      FieldKind = fkLookup
      FieldName = 'BancoConta'
      LookupDataSet = dbBanco
      LookupKeyFields = 'BancoID'
      LookupResultField = 'Conta'
      KeyFields = 'BancoIDDep'
      Size = 30
      Lookup = True
    end
    object qryNFClienteCGC: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCGC'
      LookupDataSet = dbCliente
      LookupKeyFields = 'clifor'
      LookupResultField = 'CGC'
      KeyFields = 'Cliente'
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Lookup = True
    end
    object qryNFClienteIE: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteIE'
      LookupDataSet = dbCliente
      LookupKeyFields = 'CliFor'
      LookupResultField = 'IE'
      KeyFields = 'Cliente'
      Lookup = True
    end
    object qryNFClienteEndereco: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'ClienteEndereco'
      LookupDataSet = dbEndereco
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Endereco'
      KeyFields = 'Cliente'
      Size = 60
      Lookup = True
    end
    object qryNFClienteMunicipio: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteMunicipio'
      LookupDataSet = dbEndereco
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Cidade'
      KeyFields = 'Cliente'
      Size = 30
      Lookup = True
    end
    object qryNFClienteEstado: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteEstado'
      LookupDataSet = dbEndereco
      LookupKeyFields = 'Cliente'
      LookupResultField = 'UF'
      KeyFields = 'Cliente'
      Size = 2
      Lookup = True
    end
    object qryNFClienteCep: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCep'
      LookupDataSet = dbEndereco
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Cep'
      KeyFields = 'Cliente'
      Size = 10
      Lookup = True
    end
    object qryNFFilialCCM: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialCCM'
      LookupDataSet = dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'CCM'
      KeyFields = 'Filial'
      Size = 10
      Lookup = True
    end
    object qryNFClienteBairro: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteBairro'
      LookupDataSet = dbEndereco
      LookupKeyFields = 'Cliente'
      LookupResultField = 'Bairro'
      KeyFields = 'Cliente'
      Size = 40
      Lookup = True
    end
    object qryNFTotalImpostos: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotalImpostos'
      Calculated = True
    end
    object qryNFDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'NF.DataEmissao'
    end
    object qryNFDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'NF.DataVencto'
    end
    object qryNFDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'NF.DataInclusao'
    end
  end
  object dbNFItens: TMSTable
    TableName = 'dbo.NFItens'
    MasterFields = 'Filial;NF'
    DetailFields = 'Filial;NF'
    MasterSource = dsNF
    Connection = frmMenu.dadosfin
    AfterInsert = dbNFItensAfterInsert
    BeforeEdit = dbNFBeforeEdit
    BeforePost = dbNFItensBeforePost
    OnCalcFields = dbNFItensCalcFields
    IndexFieldNames = 'NF'
    Left = 78
    Top = 465
    object dbNFItensFilial: TSmallintField
      FieldName = 'Filial'
    end
    object dbNFItensNF: TIntegerField
      FieldName = 'NF'
    end
    object dbNFItensItem: TIntegerField
      FieldName = 'Item'
    end
    object dbNFItensServico: TStringField
      FieldName = 'Servico'
      OnChange = dbNFItensServicoChange
      Size = 100
    end
    object dbNFItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 100
    end
    object dbNFItensQtd: TIntegerField
      FieldName = 'Qtd'
    end
    object dbNFItensValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbNFItensTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object dbNFItensServicoB: TStringField
      FieldKind = fkLookup
      FieldName = 'ServicoB'
      LookupDataSet = dbClienteCob
      LookupKeyFields = 'Servico'
      LookupResultField = 'Servico'
      KeyFields = 'Servico'
      Size = 100
      Lookup = True
    end
  end
  object dsNFItens: TDataSource
    DataSet = dbNFItens
    OnStateChange = dsNFItensStateChange
    Left = 108
    Top = 465
  end
  object dbClienteCob: TMSTable
    TableName = 'dbo.ClienteServCob'
    MasterFields = 'CliFor'
    DetailFields = 'Cliente'
    MasterSource = dsCliente
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Cliente'
    Left = 138
    Top = 464
    object dbClienteCobCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteCobServico: TStringField
      FieldName = 'Servico'
      Size = 100
    end
    object dbClienteCobValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object dsClienteCob: TDataSource
    DataSet = dbClienteCob
    Left = 169
    Top = 463
  end
  object qryTotNF: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select sum(valor*qtd) as total from NFItens')
    Left = 78
    Top = 502
    object qryTotNFtotal: TCurrencyField
      FieldName = 'total'
    end
  end
  object qryNFItens: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select * from NFItens'
      '')
    OnCalcFields = qryNFItensCalcFields
    Left = 486
    Top = 462
    object qryNFItensNF: TIntegerField
      FieldName = 'NF'
      Origin = 'NFItens.NF'
    end
    object qryNFItensItem: TIntegerField
      FieldName = 'Item'
      Origin = 'NFItens.Item'
    end
    object qryNFItensServico: TStringField
      FieldName = 'Servico'
      Origin = 'NFItens.Servico'
      Size = 100
    end
    object qryNFItensDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'NFItens.Descricao'
      Size = 100
    end
    object qryNFItensQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'NFItens.Qtd'
    end
    object qryNFItensValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'NFItens.Valor'
    end
    object qryNFItensTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object qryTotDup: TMSQuery
    Connection = frmMenu.dadosfin
    SQL.Strings = (
      'Select sum(valor+acrescimos+descontos) as valor,'
      '       sum(valorPago) as valorpago,'
      '       count(duplicata) as qtd'
      'from Receber where Filial=1')
    OnCalcFields = qryTotDupCalcFields
    Left = 108
    Top = 502
    object qryTotDupqtd: TIntegerField
      FieldName = 'qtd'
      Origin = '.'
      ReadOnly = True
    end
    object qryTotDupvalor: TCurrencyField
      FieldName = 'valor'
      Origin = '.'
      ReadOnly = True
    end
    object qryTotDupvalorpago: TCurrencyField
      FieldName = 'valorpago'
      Origin = '.'
      ReadOnly = True
    end
    object qryTotDupvaloraberto: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valoraberto'
      Calculated = True
    end
  end
  object dsTotDup: TDataSource
    DataSet = qryTotDup
    Left = 144
    Top = 504
  end
  object rvImpNF: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryNF
    Left = 520
    Top = 432
  end
  object rvImpNFItens: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qryNFItens
    Left = 520
    Top = 464
  end
  object dbLancamentos: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'Filial;NF'
    DetailFields = 'Filial;NF'
    MasterSource = dsNF
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;NF;Seq'
    Left = 392
    Top = 469
    object dbLancamentosFilial: TSmallintField
      FieldName = 'Filial'
      Origin = 'dbo.Lancamentos.Filial'
    end
    object dbLancamentosLancamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Lancamento'
      Origin = 'dbo.Lancamentos.Lancamento'
      ReadOnly = True
    end
    object dbLancamentosTipoPag: TStringField
      FieldName = 'TipoPag'
      Origin = 'dbo.Lancamentos.TipoPag'
      FixedChar = True
      Size = 1
    end
    object dbLancamentosCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Lancamentos.Cliente'
    end
    object dbLancamentosClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Lancamentos.ClienteDeb'
    end
    object dbLancamentosDataEmissao: TDateTimeField
      FieldName = 'DataEmissao'
      Origin = 'dbo.Lancamentos.DataEmissao'
    end
    object dbLancamentosDataVencto: TDateTimeField
      FieldName = 'DataVencto'
      Origin = 'dbo.Lancamentos.DataVencto'
    end
    object dbLancamentosPrazo: TIntegerField
      FieldName = 'Prazo'
      Origin = 'dbo.Lancamentos.Prazo'
    end
    object dbLancamentosCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Lancamentos.Cod1'
    end
    object dbLancamentosCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Lancamentos.Cod2'
    end
    object dbLancamentosCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Lancamentos.Cod3'
    end
    object dbLancamentosHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'dbo.Lancamentos.Historico'
      Size = 60
    end
    object dbLancamentosDoc: TStringField
      FieldName = 'Doc'
      Origin = 'dbo.Lancamentos.Doc'
      FixedChar = True
    end
    object dbLancamentosValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Lancamentos.Valor'
    end
    object dbLancamentosTributo: TBooleanField
      FieldName = 'Tributo'
      Origin = 'dbo.Lancamentos.Tributo'
    end
    object dbLancamentosBancoId: TSmallintField
      FieldName = 'BancoId'
      Origin = 'dbo.Lancamentos.BancoId'
    end
    object dbLancamentosCheque: TStringField
      FieldName = 'Cheque'
      Origin = 'dbo.Lancamentos.Cheque'
      FixedChar = True
    end
    object dbLancamentosDataPagto: TDateTimeField
      FieldName = 'DataPagto'
      Origin = 'dbo.Lancamentos.DataPagto'
    end
    object dbLancamentosValorPago: TCurrencyField
      FieldName = 'ValorPago'
      Origin = 'dbo.Lancamentos.ValorPago'
    end
    object dbLancamentosValorBruto: TCurrencyField
      FieldName = 'ValorBruto'
      Origin = 'dbo.Lancamentos.ValorBruto'
    end
    object dbLancamentosPago: TBooleanField
      FieldName = 'Pago'
      Origin = 'dbo.Lancamentos.Pago'
    end
    object dbLancamentosSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'dbo.Lancamentos.Selecionado'
    end
    object dbLancamentosStatus: TStringField
      FieldName = 'Status'
      Origin = 'dbo.Lancamentos.Status'
      FixedChar = True
      Size = 1
    end
    object dbLancamentosPrevisao: TIntegerField
      FieldName = 'Previsao'
      Origin = 'dbo.Lancamentos.Previsao'
    end
    object dbLancamentosMovBanco: TIntegerField
      FieldName = 'MovBanco'
      Origin = 'dbo.Lancamentos.MovBanco'
    end
    object dbLancamentosNF: TIntegerField
      FieldName = 'NF'
      Origin = 'dbo.Lancamentos.NF'
    end
    object dbLancamentosFuncionario: TIntegerField
      FieldName = 'Funcionario'
      Origin = 'dbo.Lancamentos.Funcionario'
    end
    object dbLancamentosTipoAud: TStringField
      FieldName = 'TipoAud'
      Origin = 'dbo.Lancamentos.TipoAud'
      FixedChar = True
      Size = 1
    end
    object dbLancamentosAuditor: TIntegerField
      FieldName = 'Auditor'
      Origin = 'dbo.Lancamentos.Auditor'
    end
    object dbLancamentosSeq: TStringField
      FieldName = 'Seq'
      Origin = 'dbo.Lancamentos.Seq'
      FixedChar = True
      Size = 1
    end
    object dbLancamentosPagtoPre: TIntegerField
      FieldName = 'PagtoPre'
      Origin = 'dbo.Lancamentos.PagtoPre'
    end
    object dbLancamentosPorcentagem: TFloatField
      FieldName = 'Porcentagem'
      Origin = 'dbo.Lancamentos.Porcentagem'
      Precision = 5
    end
    object dbLancamentosContabilizado: TBooleanField
      FieldName = 'Contabilizado'
      Origin = 'dbo.Lancamentos.Contabilizado'
    end
    object dbLancamentosDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
      Origin = 'dbo.Lancamentos.DataInclusao'
    end
    object dbLancamentosUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Origin = 'dbo.Lancamentos.UsuarioI'
      FixedChar = True
      Size = 10
    end
    object dbLancamentosDataAlteracao: TDateTimeField
      FieldName = 'DataAlteracao'
      Origin = 'dbo.Lancamentos.DataAlteracao'
    end
    object dbLancamentosUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Lancamentos.Usuario'
      FixedChar = True
      Size = 10
    end
  end
  object dsLancamentos: TDataSource
    DataSet = dbLancamentos
    Left = 423
    Top = 469
  end
end
