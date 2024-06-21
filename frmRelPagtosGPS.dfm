object frmRelPagtoGPS: TfrmRelPagtoGPS
  Left = 316
  Top = 169
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Autoriza'#231#227'o Pagamento de GPS'
  ClientHeight = 305
  ClientWidth = 348
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
  object Label6: TLabel
    Left = 12
    Top = 125
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'Compet'#234'ncia'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 348
    Height = 279
    Align = alTop
    TabOrder = 0
    object DBText1: TDBText
      Left = 91
      Top = 5
      Width = 250
      Height = 17
      Color = clWhite
      DataField = 'FilialNome'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 65
      Top = 5
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'Filial'
    end
    object Label1: TLabel
      Left = 44
      Top = 28
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Historico'
    end
    object Label2: TLabel
      Left = 52
      Top = 102
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel
      Left = 23
      Top = 125
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Compet'#234'ncia'
    end
    object Label4: TLabel
      Left = 61
      Top = 147
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor'
    end
    object DBText3: TDBText
      Left = 91
      Top = 147
      Width = 100
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'ValorGPS'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = 173
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Outras Entidades'
    end
    object Label8: TLabel
      Left = 29
      Top = 197
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Multa/Juros'
    end
    object Label9: TLabel
      Left = 61
      Top = 219
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total'
    end
    object DBText2: TDBText
      Left = 91
      Top = 217
      Width = 100
      Height = 17
      Alignment = taRightJustify
      Color = clWhite
      DataField = 'Valor'
      DataSource = dsRelGPS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 91
      Top = 27
      Width = 250
      Height = 66
      BorderStyle = bsNone
      DataField = 'Historico'
      DataSource = dsRelGPS
      ReadOnly = True
      TabOrder = 4
    end
    object rdgDados: TRadioGroup
      Left = 7
      Top = 240
      Width = 335
      Height = 35
      Caption = 'Selecione - Dados'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Empresa'
        'Prestador')
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 91
      Top = 169
      Width = 100
      Height = 21
      DataField = 'Outros'
      DataSource = dsRelGPS
      TabOrder = 2
      OnEnter = DBEdit3Enter
    end
    object DBEdit4: TDBEdit
      Left = 91
      Top = 193
      Width = 100
      Height = 21
      DataField = 'Multa'
      DataSource = dsRelGPS
      TabOrder = 3
      OnEnter = DBEdit4Enter
    end
    object cmpCodigo: TEdit
      Left = 91
      Top = 98
      Width = 100
      Height = 21
      TabOrder = 0
    end
    object cmpCompetencia: TEdit
      Left = 91
      Top = 121
      Width = 100
      Height = 21
      TabOrder = 1
    end
  end
  object cmdImp: TBitBtn
    Left = 124
    Top = 282
    Width = 100
    Height = 23
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdImpClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object dbRelGPS: TMSTable
    TableName = 'dbo.relGPS'
    Connection = frmMenu.dadosfin
    OnCalcFields = dbRelGPSCalcFields
    Left = 248
    Top = 104
    object dbRelGPSMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbRelGPSBancoID: TIntegerField
      FieldName = 'BancoID'
    end
    object dbRelGPSFundo: TIntegerField
      FieldName = 'Fundo'
    end
    object dbRelGPSTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object dbRelGPSDoc: TStringField
      FieldName = 'Doc'
    end
    object dbRelGPSValor: TCurrencyField
      FieldName = 'Valor'
    end
    object dbRelGPSMulta: TCurrencyField
      FieldName = 'Multa'
    end
    object dbRelGPSOutros: TCurrencyField
      FieldName = 'Outros'
    end
    object dbRelGPSFavorecido: TStringField
      FieldName = 'Favorecido'
      Size = 50
    end
    object dbRelGPSCruzado: TBooleanField
      FieldName = 'Cruzado'
    end
    object dbRelGPSHistorico: TMemoField
      FieldName = 'Historico'
      BlobType = ftMemo
      Size = 10
    end
    object dbRelGPSStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbRelGPSFilial: TIntegerField
      FieldName = 'Filial'
    end
    object dbRelGPSUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbRelGPSValorGPS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorGPS'
      Calculated = True
    end
    object dbRelGPSFilialNome: TStringField
      FieldKind = fkLookup
      FieldName = 'FilialNome'
      LookupDataSet = frmCheque.dbFilial
      LookupKeyFields = 'Filial'
      LookupResultField = 'Nome'
      KeyFields = 'Filial'
      Size = 40
      Lookup = True
    end
    object dbRelGPSDataEntrada: TDateTimeField
      FieldName = 'DataEntrada'
    end
    object dbRelGPSDataMovimento: TDateTimeField
      FieldName = 'DataMovimento'
    end
    object dbRelGPSDataInclusao: TDateTimeField
      FieldName = 'DataInclusao'
    end
  end
  object dsRelGPS: TDataSource
    DataSet = dbRelGPS
    Left = 280
    Top = 104
  end
end
