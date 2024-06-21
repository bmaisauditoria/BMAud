object relEstatisticaLegendaEmpresa: TrelEstatisticaLegendaEmpresa
  Left = 198
  Top = 103
  Width = 545
  Height = 370
  Caption = 'relEstatisticaEmpresaLegenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrpRelatorio: TQuickRep
    Left = -2
    Top = 1
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    ReportTitle = 'Estatísticas de Atendimento por Empresa'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 108
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.1458333333333
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 8
        Top = 4
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          10.5833333333333
          150.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Legenda'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 406
        Top = 4
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1074.20833333333
          10.5833333333333
          71.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qtd.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 183
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 52
        Top = 2
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          137.583333333333
          5.29166666666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbLegenda
        DataField = 'Nome'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QtdA: TQRDBText
        Left = 370
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          978.958333333333
          5.29166666666667
          105.833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Qtd'
        Mask = '#,###'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PorA: TQRExpr
        Left = 417
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1103.3125
          5.29166666666667
          105.833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'if(qryTotal.Qtd=0,'#39' '#39',qryRelatorio.Qtd / qryTotal.Qtd*100)'
        Mask = '###%'
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 12
        Top = 2
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          31.75
          5.29166666666667
          79.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Legenda'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object bndCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 70
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        185.208333333333
        1899.70833333333)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 206
        Top = 8
        Width = 306
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          545.041666666667
          21.1666666666667
          809.625)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Estatística de Atendimento por Empresa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRSysData1: TQRSysData
        Left = 696
        Top = 8
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1841.5
          21.1666666666667
          58.2083333333333)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 653
        Top = 32
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1727.72916666667
          84.6666666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 667
        Top = 8
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1764.77083333333
          21.1666666666667
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pag.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 251
        Top = 30
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          664.104166666667
          79.375
          198.4375)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Período de '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lblInicio: TQRLabel
        Left = 334
        Top = 30
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          883.708333333333
          79.375
          26.4583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 317
        Top = 49
        Width = 9
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          838.729166666667
          129.645833333333
          23.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'à'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lblFinal: TQRLabel
        Left = 334
        Top = 49
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          883.708333333333
          129.645833333333
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Z'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrImagem: TQRImage
        Left = 3
        Top = 2
        Width = 130
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667
          7.9375
          5.29166666666667
          343.958333333333)
        Stretch = True
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 133
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        66.1458333333333
        1899.70833333333)
      Expression = 'qryRelatorio.Cliente'
      FooterBand = bndTotalCliente
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 24
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          10.5833333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbCliente
        DataField = 'Nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 158
      Width = 718
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 13948116
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        66.1458333333333
        1899.70833333333)
      Expression = 'qryRelatorio.Empresa'
      FooterBand = bndTotalEmpresa
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 24
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          10.5833333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbEmpresa
        DataField = 'Nome'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object bndTotalEmpresa: TQRBand
      Left = 38
      Top = 203
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbGroupFooter
      object QRLabel4: TQRLabel
        Left = 24
        Top = 2
        Width = 207
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          5.29166666666667
          547.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Visitas Auditoria - Empresa'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 370
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          978.958333333333
          5.29166666666667
          105.833333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryTotal
        DataField = 'Qtd'
        Mask = '#,###'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object bndTotalCliente: TQRBand
      Left = 38
      Top = 223
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.9166666666667
        1899.70833333333)
      BandType = rbGroupFooter
      object QRLabel3: TQRLabel
        Left = 24
        Top = 2
        Width = 197
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          5.29166666666667
          521.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Visitas Auditoria - Cliente'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 294
        Top = 1
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          777.875
          2.64583333333333
          306.916666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(qryTotal.Qtd)'
        FontSize = 10
      end
    end
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = qryRelatorio
    Left = 64
  end
  object qryRelatorio: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHCItemLegenda.Legenda,'
      '           BBAtendimentoHC.Cliente,'
      '           BBAtendimentoHC.Empresa,'
      '           count(BBAtendimentoHCItemLegenda.Legenda) as Qtd'
      'from BBAtendimentoHCItemLegenda, BBAtendimentoHC'
      
        'where BBAtendimentoHCItemLegenda.AtendimentoHC=BBAtendimentoHC.A' +
        'tendimentoHC'
      'group by Cliente,Legenda,Empresa'
      'order by Cliente,Legenda,Qtd')
    Left = 31
    object qryRelatorioCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHC.DB".Cliente'
    end
    object qryRelatorioEmpresa: TIntegerField
      FieldName = 'Empresa'
      Origin = 'BB."BBAtendimentoHC.DB".Empresa'
    end
    object qryRelatorioLegenda: TStringField
      FieldName = 'Legenda'
      Origin = 'BB."BBAtendimentoHCItemLegenda.DB".Legenda'
      Size = 2
    end
    object qryRelatorioQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'BB."BBAtendimentoHCItemLegenda.DB".Legenda'
    end
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    MasterFields = 'Cliente'
    MasterSource = dsRelatorio
    TableName = 'BBClientes.DB'
    Left = 217
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object dbClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object dbClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dbClienteUF: TStringField
      FieldName = 'UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object dbClienteCep: TStringField
      FieldName = 'Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object dbClienteFone1: TStringField
      FieldName = 'Fone1'
      Size = 60
    end
    object dbClienteFone2: TStringField
      FieldName = 'Fone2'
      Size = 60
    end
    object dbClienteFax: TStringField
      FieldName = 'Fax'
      Size = 60
    end
    object dbClienteCGC: TStringField
      FieldName = 'CGC'
      EditMask = '99\.999\.999\/9999\-99;0;_'
      Size = 18
    end
    object dbClienteContato: TStringField
      FieldName = 'Contato'
      Size = 40
    end
    object dbClienteEmail: TStringField
      FieldName = 'Email'
      Size = 30
    end
    object dbClienteHomePage: TStringField
      FieldName = 'HomePage'
      Size = 60
    end
    object dbClienteLogotipo: TGraphicField
      FieldName = 'Logotipo'
      BlobType = ftGraphic
    end
    object dbClienteDataInicio: TDateField
      FieldName = 'DataInicio'
    end
    object dbClienteDataFim: TDateField
      FieldName = 'DataFim'
    end
    object dbClienteUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbClienteDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object dbClienteDataExclusao: TDateField
      FieldName = 'DataExclusao'
    end
  end
  object dbEmpresa: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Empresa'
    MasterFields = 'Empresa'
    MasterSource = dsRelatorio
    TableName = 'BBEmpresas.DB'
    Left = 185
    object dbEmpresaEmpresa: TIntegerField
      FieldName = 'Empresa'
    end
    object dbEmpresaNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
  end
  object qryTotal: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHC.Cliente,'
      '           BBAtendimentoHC.Empresa,'
      '           count(BBAtendimentoHCItem.DataAuditoria) as Qtd'
      'from BBAtendimentoHCItem, BBAtendimentoHC'
      
        'where BBAtendimentoHCItem.AtendimentoHC=BBAtendimentoHC.Atendime' +
        'ntoHC'
      'group by Cliente,Empresa'
      'order by Cliente,Empresa')
    Left = 95
    object IntegerField1: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHC.DB".Cliente'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Empresa'
      Origin = 'BB."BBAtendimentoHC.DB".Empresa'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Qtd'
      Origin = 'BB."BBAtendimentoHCItemLegenda.DB".Legenda'
    end
  end
  object dsTotal: TDataSource
    DataSet = qryTotal
    Left = 126
    Top = 1
  end
  object dbLegenda: TTable
    Active = True
    DatabaseName = 'BB'
    IndexFieldNames = 'Legenda'
    MasterFields = 'Legenda'
    MasterSource = dsRelatorio
    TableName = 'BBLegendas.DB'
    Left = 247
    object dbLegendaLegenda: TStringField
      FieldName = 'Legenda'
      EditMask = 'll;1;_'
      Size = 2
    end
    object dbLegendaNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
end
