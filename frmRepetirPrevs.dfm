object frmRepetirPrev: TfrmRepetirPrev
  Left = 362
  Top = 309
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 4
  Caption = 'Repetir Previs'#227'o'
  ClientHeight = 152
  ClientWidth = 272
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 272
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 109
      Top = 85
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label2: TLabel
      Left = 49
      Top = 62
      Width = 76
      Height = 13
      Caption = 'Vencimentos de'
    end
    object rdgRepetir: TRadioGroup
      Left = 7
      Top = 1
      Width = 257
      Height = 52
      Caption = 'Repetir'
      ItemIndex = 0
      Items.Strings = (
        'Lan'#231'amento corrente'
        'Todos os lan'#231'amentos')
      TabOrder = 0
    end
    object barRep: TProgressBar
      Left = 1
      Top = 107
      Width = 270
      Height = 13
      Align = alBottom
      TabOrder = 1
    end
    object dtpFim: TDateTimePicker
      Left = 131
      Top = 82
      Width = 90
      Height = 21
      Date = 37850.000000000000000000
      Time = 37850.000000000000000000
      TabOrder = 2
    end
    object dtpIni: TDateTimePicker
      Left = 131
      Top = 57
      Width = 90
      Height = 21
      Date = 37850.000000000000000000
      Time = 37850.000000000000000000
      TabOrder = 3
    end
  end
  object cmdRepetir: TBitBtn
    Left = 86
    Top = 125
    Width = 100
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = cmdRepetirClick
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
  object dbPagar: TMSTable
    TableName = 'dbo.Lancamentos'
    MasterFields = 'Filial;Previsao'
    DetailFields = 'Filial;Previsao'
    MasterSource = dsPrevisao
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;Previsao;DataVencto'
    Left = 241
    Top = 3
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
    object dbPagarClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
    end
    object dbPagarPrazo: TIntegerField
      FieldName = 'Prazo'
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
    object dbPagarStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object dbPagarPrevisao: TIntegerField
      FieldName = 'Previsao'
    end
    object dbPagarMovBanco: TIntegerField
      FieldName = 'MovBanco'
    end
    object dbPagarNF: TIntegerField
      FieldName = 'NF'
    end
    object dbPagarPorcentagem: TFloatField
      FieldName = 'Porcentagem'
    end
    object dbPagarUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPagarTributo: TBooleanField
      FieldName = 'Tributo'
    end
    object dbPagarUsuarioI: TStringField
      FieldName = 'UsuarioI'
      Size = 10
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
  object dbPrevisao: TMSTable
    TableName = 'dbo.Previsao'
    Connection = frmMenu.dadosfin
    IndexFieldNames = 'Filial;Previsao;Cliente'
    Left = 208
    Top = 3
    object dbPrevisaoFilial: TIntegerField
      FieldName = 'Filial'
      Origin = 'dbo.Previsao.Filial'
    end
    object dbPrevisaoPrevisao: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'Previsao'
      Origin = 'dbo.Previsao.Previsao'
      ReadOnly = True
    end
    object dbPrevisaoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'dbo.Previsao.Cliente'
    end
    object dbPrevisaoClienteDeb: TIntegerField
      FieldName = 'ClienteDeb'
      Origin = 'dbo.Previsao.ClienteDeb'
    end
    object dbPrevisaoHistorico: TStringField
      FieldName = 'Historico'
      Origin = 'dbo.Previsao.Historico'
      Size = 60
    end
    object dbPrevisaoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'dbo.Previsao.Valor'
    end
    object dbPrevisaoCod1: TSmallintField
      FieldName = 'Cod1'
      Origin = 'dbo.Previsao.Cod1'
    end
    object dbPrevisaoCod2: TSmallintField
      FieldName = 'Cod2'
      Origin = 'dbo.Previsao.Cod2'
    end
    object dbPrevisaoCod3: TSmallintField
      FieldName = 'Cod3'
      Origin = 'dbo.Previsao.Cod3'
    end
    object dbPrevisaoDia: TSmallintField
      FieldName = 'Dia'
      Origin = 'dbo.Previsao.Dia'
    end
    object dbPrevisaoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'dbo.Previsao.Tipo'
      Size = 1
    end
    object dbPrevisaoRepetir: TIntegerField
      FieldName = 'Repetir'
      Origin = 'dbo.Previsao.Repetir'
    end
    object dbPrevisaoAtivo: TBooleanField
      FieldName = 'Ativo'
      Origin = 'dbo.Previsao.Ativo'
    end
    object dbPrevisaoUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'dbo.Previsao.Usuario'
      Size = 10
    end
    object dbPrevisaoDataIni: TDateTimeField
      FieldName = 'DataIni'
      Origin = 'dbo.Previsao.DataIni'
    end
    object dbPrevisaoDataFim: TDateTimeField
      FieldName = 'DataFim'
      Origin = 'dbo.Previsao.DataFim'
    end
  end
  object dsPrevisao: TDataSource
    DataSet = dbPrevisao
    Left = 209
    Top = 35
  end
end
