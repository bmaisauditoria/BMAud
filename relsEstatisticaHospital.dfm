object relEstatisticasHospital: TrelEstatisticasHospital
  Left = 210
  Top = 113
  Width = 784
  Height = 527
  HorzScrollBar.Position = 286
  Caption = 'relEstatisticaHospital'
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
    Left = -280
    Top = 8
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = qrpRelatorioBeforePrint
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
    Page.Orientation = poLandscape
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    object bndCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 980
      Height = 88
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      BeforePrint = bndCabecalhoBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        232.833333333333400000
        2592.916666666667000000)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 311
        Top = 8
        Width = 357
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          822.854166666666600000
          21.166666666666670000
          944.562500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Estudo Gerencial de Desempenho de Auditoria'
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
      object QRLabel7: TQRLabel
        Left = 398
        Top = 30
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1053.041666666667000000
          79.375000000000000000
          224.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Compet'#234'ncia'
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
        Left = 491
        Top = 30
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1299.104166666667000000
          79.375000000000000000
          26.458333333333330000)
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
      object qrImagem: TQRImage
        Left = 7
        Top = 11
        Width = 130
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666667000000
          18.520833333333300000
          29.104166666666700000
          343.958333333333000000)
        Stretch = True
      end
      object QRDBImage1: TQRDBImage
        Left = 809
        Top = 6
        Width = 150
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          2140.479166666670000000
          15.875000000000000000
          396.875000000000000000)
        DataField = 'Logotipo'
        DataSet = dbCliente
        Stretch = True
      end
      object lblAnalise: TQRLabel
        Left = 453
        Top = 53
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1198.562500000000000000
          140.229166666666700000
          195.791666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre-Analise'
        Color = 8454143
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 175
      Width = 980
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
        66.145833333333340000
        2592.916666666667000000)
      Expression = 'qryRelatorio.Cliente'
      FooterBand = SummaryBand1
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 473
        Top = 4
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1251.479166666667000000
          10.583333333333330000
          89.958333333333340000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbCliente
        DataField = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 373
      Width = 980
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        2592.916666666667000000)
      BandType = rbPageFooter
      object QRLabel8: TQRLabel
        Left = 800
        Top = 2
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2116.666666666667000000
          5.291666666666667000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pag.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 833
        Top = 2
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2203.979166666670000000
          5.291666666666670000
          58.208333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 906
        Top = 2
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2397.125000000000000000
          5.291666666666667000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 8
      end
      object lblCliente: TQRLabel
        Left = 16
        Top = 1
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2.645833333333333000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lblCliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 16
        Top = 21
        Width = 489
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          55.562500000000000000
          1293.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Em destaque as contas cuja cobran'#231'a n'#227'o foi autorizada pela B&B ' +
          '- (Capeantes retirados)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 225
      Width = 980
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.916666666666660000
        2592.916666666667000000)
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 9
        Top = 2
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          23.812500000000000000
          5.291666666666670000
          423.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbHospital
        DataField = 'Nome'
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 184
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Paciente1'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object cmpValor: TQRDBText
        Left = 742
        Top = 2
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1963.208333333330000000
          5.291666666666670000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Media'
        Mask = '#,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 238
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Diarias'
        Mask = '#,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 283
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DiariasPagas'
        Mask = '#,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 795
        Top = 2
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          5.291666666666670000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'CustoPaciente'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 880
        Top = 2
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          5.291666666666670000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'CustoDia'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 688
        Top = 2
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1820.333333333330000000
          5.291666666666670000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'GlosaPorc'
        Mask = '#,##0.00%'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 511
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ValorPago'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 420
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ValorGlosado'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 330
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Valor'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 603
        Top = 2
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          5.291666666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ValorNaoAcordado'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 126
      Width = 980
      Height = 49
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        129.645833333333300000
        2592.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 6
        Top = 24
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          15.875000000000000000
          63.500000000000000000
          423.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Hospital'
        Color = 16744576
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 175
        Top = 24
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          463.020833333333000000
          63.500000000000000000
          150.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Pacientes'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 682
        Top = 24
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1804.458333333330000000
          63.500000000000000000
          148.166666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '% Glosas'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 795
        Top = 24
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          63.500000000000000000
          211.666666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Paciente'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 880
        Top = 24
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          63.500000000000000000
          211.666666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Dia'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 742
        Top = 8
        Width = 50
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1963.208333333330000000
          21.166666666666700000
          132.291666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Perman. M'#233'dia'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 420
        Top = 24
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          63.500000000000000000
          224.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Glosado'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 511
        Top = 24
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          63.500000000000000000
          224.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Pago'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 330
        Top = 24
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          63.500000000000000000
          224.895833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Cobrado'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 236
        Top = 24
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          624.416666666667000000
          63.500000000000000000
          105.833333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Cob.'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 281
        Top = 24
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          743.479166666667000000
          63.500000000000000000
          105.833333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Pagas'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 795
        Top = 8
        Width = 165
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          21.166666666666700000
          436.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Custo M'#233'dio'
        Color = 4194304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 330
        Top = 8
        Width = 266
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          21.166666666666700000
          703.791666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Valor'
        Color = 4194304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 236
        Top = 8
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          624.416666666667000000
          21.166666666666700000
          227.541666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Di'#225'rias'
        Color = 4194304
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 603
        Top = 8
        Width = 75
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1595.437500000000000000
          21.166666666666700000
          198.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Glosa n'#227'o Acordada'
        Color = 16744576
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 309
      Width = 980
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        169.333333333333300000
        2592.916666666667000000)
      BandType = rbGroupFooter
      object QRShape1: TQRShape
        Left = 0
        Top = 40
        Width = 980
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          0.000000000000000000
          105.833333333333000000
          2592.916666666670000000)
        Brush.Color = clSilver
        Pen.Color = clWhite
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 82
        Top = 4
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          216.958333333333400000
          10.583333333333330000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Cliente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 184
        Top = 4
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          10.583333333333300000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Paciente1)'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 283
        Top = 4
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          10.583333333333300000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiariasPagas)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 238
        Top = 4
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          10.583333333333300000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 795
        Top = 4
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Paciente1)=0,0,sum(qryRelatorio.ValorPago) /' +
          ' sum(qryRelatorio.Paciente1))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 880
        Top = 4
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          10.583333333333300000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.DiariasPagas)=0,0,sum(qryRelatorio.ValorPago' +
          ') / sum(qryRelatorio.DiariasPagas))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr1: TQRExpr
        Left = 330
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          10.583333333333300000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Valor)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 420
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          10.583333333333300000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorGlosado)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 511
        Top = 4
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          10.583333333333300000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorPago)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 688
        Top = 4
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1820.333333333330000000
          10.583333333333300000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Valor)=0,0,SUM(qryRelatorio.ValorGlosado)/SU' +
          'M(qryRelatorio.Valor)*100)'
        Mask = '#,##0.00%'
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 742
        Top = 4
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1963.208333333330000000
          10.583333333333300000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(SUM(qryRelatorio.Paciente1)=0,0,  SUM(qryRelatorio.DiariasPag' +
          'as)/SUM(qryRelatorio.Paciente1))'
        Mask = '#,##0.00'
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 47
        Top = 43
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          113.770833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Contabilizado'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 24
        Top = 23
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          60.854166666666680000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total N'#227'o Contabilizado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr31: TQRExpr
        Left = 184
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Paciente1)-qryRelatorio1.Paciente1'
        FontSize = 8
      end
      object QRExpr32: TQRExpr
        Left = 238
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)-qryRelatorio1.Diarias'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr33: TQRExpr
        Left = 283
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiariasPagas)-qryRelatorio1.DiariasPagas'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr34: TQRExpr
        Left = 330
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Valor)-qryRelatorio1.Valor'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr35: TQRExpr
        Left = 420
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorGlosado)-qryRelatorio1.ValorGlosado'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr36: TQRExpr
        Left = 511
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorPago)-qryRelatorio1.ValorPago'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr37: TQRExpr
        Left = 688
        Top = 43
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1820.333333333330000000
          113.770833333333000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Valor)-qryRelatorio1.Valor=0,0,(SUM(qryRelat' +
          'orio.ValorGlosado)-qryRelatorio1.ValorGlosado)/(SUM(qryRelatorio' +
          '.Valor)-qryRelatorio1.Valor)*100)'
        Mask = '#,##0.00%'
        FontSize = 8
      end
      object QRExpr38: TQRExpr
        Left = 742
        Top = 43
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1963.208333333330000000
          113.770833333333000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(SUM(qryRelatorio.Paciente1)-qryRelatorio1.Paciente1=0,0,  (SU' +
          'M(qryRelatorio.DiariasPagas)-qryRelatorio1.DiariasPagas)/(SUM(qr' +
          'yRelatorio.Paciente1)-qryRelatorio1.Paciente1))'
        Mask = '#,##0.00'
        FontSize = 8
      end
      object QRExpr39: TQRExpr
        Left = 795
        Top = 43
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          113.770833333333000000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Paciente1)-qryRelatorio1.Paciente1=0,0,(sum(' +
          'qryRelatorio.ValorPago)-qryRelatorio1.ValorPago) / (sum(qryRelat' +
          'orio.Paciente1)-qryRelatorio1.Paciente1))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr40: TQRExpr
        Left = 880
        Top = 43
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          113.770833333333000000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.DiariasPagas)-qryRelatorio1.DiariasPagas=0,0' +
          ',(sum(qryRelatorio.ValorPago)-qryRelatorio1.ValorPago) / (sum(qr' +
          'yRelatorio.DiariasPagas)-qryRelatorio1.DiariasPagas))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 184
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'Paciente1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 238
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'Diarias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 283
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'DiariasPagas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 330
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 420
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'ValorGlosado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 511
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'ValorPago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 688
        Top = 23
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1820.333333333330000000
          60.854166666666700000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'GlosaPorc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.00%'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 742
        Top = 23
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1963.208333333330000000
          60.854166666666700000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'Media'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 795
        Top = 23
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          60.854166666666700000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'CustoPaciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText24: TQRDBText
        Left = 880
        Top = 23
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          60.854166666666700000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'CustoDia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr46: TQRExpr
        Left = 603
        Top = 4
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          10.583333333333300000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorNaoAcordado)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRDBText33: TQRDBText
        Left = 603
        Top = 23
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          60.854166666666700000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'ValorNaoAcordado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr47: TQRExpr
        Left = 603
        Top = 43
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          113.770833333333000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'SUM(qryRelatorio.ValorNaoAcordado)-qryRelatorio1.ValorNaoAcordad' +
          'o'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
    end
    object bndTotRegiao: TQRBand
      Left = 38
      Top = 245
      Width = 980
      Height = 64
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        169.333333333333300000
        2592.916666666667000000)
      BandType = rbGroupFooter
      object QRLabel20: TQRLabel
        Left = 84
        Top = 2
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          5.291666666666667000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Regi'#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 184
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Paciente1)'
        FontSize = 8
      end
      object QRExpr12: TQRExpr
        Left = 283
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiariasPagas)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr13: TQRExpr
        Left = 238
        Top = 2
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          5.291666666666670000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr14: TQRExpr
        Left = 795
        Top = 2
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          5.291666666666670000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Paciente1)=0,0,sum(qryRelatorio.ValorPago) /' +
          ' sum(qryRelatorio.Paciente1))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr15: TQRExpr
        Left = 880
        Top = 2
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          5.291666666666670000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.DiariasPagas)=0,0,sum(qryRelatorio.ValorPago' +
          ') / sum(qryRelatorio.DiariasPagas))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr16: TQRExpr
        Left = 330
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Valor)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr17: TQRExpr
        Left = 420
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorGlosado)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr18: TQRExpr
        Left = 511
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          5.291666666666670000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorPago)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr19: TQRExpr
        Left = 688
        Top = 3
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1820.333333333330000000
          7.937500000000000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Valor)=0,0,SUM(qryRelatorio.ValorGlosado)/SU' +
          'M(qryRelatorio.Valor)*100)'
        Mask = '#,##0.00%'
        FontSize = 8
      end
      object QRExpr20: TQRExpr
        Left = 742
        Top = 3
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1963.208333333330000000
          7.937500000000000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(SUM(qryRelatorio.Paciente1)=0,0,  SUM(qryRelatorio.DiariasPag' +
          'as)/SUM(qryRelatorio.Paciente1))'
        Mask = '#,##0.00'
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 24
        Top = 23
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          60.854166666666680000
          338.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total N'#227'o Contabilizado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 47
        Top = 43
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          113.770833333333300000
          240.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Contabilizado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText25: TQRDBText
        Left = 184
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'Paciente1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr21: TQRExpr
        Left = 184
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Paciente1)-qryRelatorio1.Paciente1'
        FontSize = 8
      end
      object QRDBText26: TQRDBText
        Left = 238
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'Diarias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr22: TQRExpr
        Left = 238
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)-qryRelatorio1.Diarias'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRDBText27: TQRDBText
        Left = 283
        Top = 23
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          60.854166666666700000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'DiariasPagas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr23: TQRExpr
        Left = 283
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiariasPagas)-qryRelatorio1.DiariasPagas'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 40
        Width = 980
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          0.000000000000000000
          105.833333333333000000
          2592.916666666670000000)
        Brush.Color = clSilver
        Pen.Color = clWhite
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText28: TQRDBText
        Left = 330
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr24: TQRExpr
        Left = 330
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          873.125000000000000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Valor)-qryRelatorio2.Valor'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRDBText29: TQRDBText
        Left = 420
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'ValorGlosado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr25: TQRExpr
        Left = 420
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1111.250000000000000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorGlosado)-qryRelatorio2.ValorGlosado'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRDBText30: TQRDBText
        Left = 511
        Top = 23
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          60.854166666666700000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'ValorPago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr26: TQRExpr
        Left = 511
        Top = 43
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1352.020833333330000000
          113.770833333333000000
          224.895833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorPago)-qryRelatorio2.ValorPago'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 688
        Top = 23
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1820.333333333330000000
          60.854166666666700000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'GlosaPorc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.00%'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr27: TQRExpr
        Left = 688
        Top = 43
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1820.333333333330000000
          113.770833333333000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Valor)-qryRelatorio2.Valor=0,0,(SUM(qryRelat' +
          'orio.ValorGlosado)-qryRelatorio2.ValorGlosado)/(SUM(qryRelatorio' +
          '.Valor)-qryRelatorio2.Valor)*100)'
        Mask = '#,##0.00%'
        FontSize = 8
      end
      object QRExpr28: TQRExpr
        Left = 742
        Top = 43
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1963.208333333330000000
          113.770833333333000000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(SUM(qryRelatorio.Paciente1)-qryRelatorio2.Paciente1=0,0,  (SU' +
          'M(qryRelatorio.DiariasPagas)-qryRelatorio2.DiariasPagas)/(SUM(qr' +
          'yRelatorio.Paciente1)-qryRelatorio2.Paciente1))'
        Mask = '#,##0.00'
        FontSize = 8
      end
      object QRDBText32: TQRDBText
        Left = 742
        Top = 23
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1963.208333333330000000
          60.854166666666700000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'Media'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,##0.00'
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText34: TQRDBText
        Left = 795
        Top = 23
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          60.854166666666700000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'CustoPaciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr29: TQRExpr
        Left = 795
        Top = 43
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2103.437500000000000000
          113.770833333333000000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.Paciente1)-qryRelatorio2.Paciente1=0,0,(sum(' +
          'qryRelatorio.ValorPago)-qryRelatorio2.ValorPago) / (sum(qryRelat' +
          'orio.Paciente1)-qryRelatorio2.Paciente1))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr30: TQRExpr
        Left = 880
        Top = 43
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          113.770833333333000000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(qryRelatorio.DiariasPagas)-qryRelatorio2.DiariasPagas=0,0' +
          ',(sum(qryRelatorio.ValorPago)-qryRelatorio2.ValorPago) / (sum(qr' +
          'yRelatorio.DiariasPagas)-qryRelatorio2.DiariasPagas))'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRDBText35: TQRDBText
        Left = 880
        Top = 23
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2328.333333333330000000
          60.854166666666700000
          211.666666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'CustoDia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRLabel25: TQRLabel
        Left = 47
        Top = 43
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          124.354166666666700000
          113.770833333333300000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Contabilizado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr41: TQRExpr
        Left = 184
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          486.833333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Paciente1)-qryRelatorio2.Paciente1'
        FontSize = 8
      end
      object QRExpr42: TQRExpr
        Left = 238
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          629.708333333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)-qryRelatorio2.Diarias'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr43: TQRExpr
        Left = 283
        Top = 43
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          748.770833333333000000
          113.770833333333000000
          105.833333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiariasPagas)-qryRelatorio2.DiariasPagas'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 603
        Top = 23
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          60.854166666666700000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'ValorNaoAcordado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRExpr44: TQRExpr
        Left = 603
        Top = 2
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          5.291666666666670000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorNaoAcordado)'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
      object QRExpr45: TQRExpr
        Left = 603
        Top = 43
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1595.437500000000000000
          113.770833333333000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'SUM(qryRelatorio.ValorNaoAcordado)-qryRelatorio2.ValorNaoAcordad' +
          'o'
        Mask = 'R$###,###,##0.00'
        FontSize = 8
      end
    end
    object bndRegiao: TQRGroup
      Left = 38
      Top = 200
      Width = 980
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = bndRegiaoAfterPrint
      AlignToBottom = False
      BeforePrint = bndRegiaoBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        2592.916666666667000000)
      Expression = 'qryRelatorio.Regiao'
      FooterBand = bndTotRegiao
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText14: TQRDBText
        Left = 12
        Top = 4
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          10.583333333333330000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRegiao
        DataField = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object qryRelatorio: TQuery
    OnCalcFields = qryRelatorioCalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select  BBAtendimentoHI.Cliente,'
      '            BBAtendimentoHI.Hospital,'
      '            BBAtendimentoHI.NaoContabilizado,'
      '            BBHospitais.Nome,'
      '            BBHospitais.Regiao,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      '           sum(BBAtendimentoHI.Diarias) as Diarias,'
      
        '           sum(BBAtendimentoHI.DiariasGlosadas) as DiariasGlosad' +
        'as,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(ValorNaoAcordadoM) as ValorNaoAcordadoM,'
      '           sum(ValorNaoAcordadoE) as ValorNaoAcordadoE,'
      
        '           sum(Valor-BBAtendimentoHI.ValorGlosadoM-BBAtendimento' +
        'HI.ValorGlosadoE) as ValorGlosado,'
      
        '           sum(cast(BBAtendimentoHI.Complemento as integer)) as ' +
        'Complemento'
      'from BBAtendimentoHI, BBHospitais'
      'where BBAtendimentoHI.Hospital=BBHospitais.HOspital'
      'group by Cliente,Regiao, Hospital,Nome,NaoContabilizado'
      'order by Cliente,Regiao,Nome,NaoContabilizado')
    Left = 6
    Top = 8
    object qryRelatorioCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object qryRelatorioHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object qryRelatorioRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object qryRelatorioNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object qryRelatorioPaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object qryRelatorioDiarias: TFloatField
      FieldName = 'Diarias'
    end
    object qryRelatorioValor: TCurrencyField
      FieldName = 'Valor'
    end
    object qryRelatorioValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
    end
    object qryRelatorioValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
    object qryRelatorioGlosaPorc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GlosaPorc'
      Calculated = True
    end
    object qryRelatorioMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object qryRelatorioMediana: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Mediana'
      Calculated = True
    end
    object qryRelatorioCustoPaciente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoPaciente'
      Calculated = True
    end
    object qryRelatorioCustoDia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoDia'
      Calculated = True
    end
    object qryRelatorioComplemento: TFloatField
      FieldName = 'Complemento'
    end
    object qryRelatorioPaciente1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Paciente1'
      Calculated = True
    end
    object qryRelatorioNaoContabilizado: TIntegerField
      FieldName = 'NaoContabilizado'
    end
    object qryRelatorioDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
    end
    object qryRelatorioDiariasPagas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiariasPagas'
      Calculated = True
    end
    object qryRelatorioValorNaoAcordadoM: TCurrencyField
      FieldName = 'ValorNaoAcordadoM'
    end
    object qryRelatorioValorNaoAcordadoE: TCurrencyField
      FieldName = 'ValorNaoAcordadoE'
    end
    object qryRelatorioValorNaoAcordado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorNaoAcordado'
      Calculated = True
    end
  end
  object dsRelatorio: TDataSource
    DataSet = qryRelatorio
    Left = 70
    Top = 8
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Hospital'
    MasterFields = 'Hospital'
    MasterSource = dsRelatorio
    TableName = 'BBHospitais.DB'
    Left = 130
    Top = 9
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    MasterFields = 'Cliente'
    MasterSource = dsRelatorio
    TableName = 'BBClientes.DB'
    Left = 99
    Top = 8
    object dbClienteCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbClienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbClienteLogotipo: TGraphicField
      FieldName = 'Logotipo'
      BlobType = ftGraphic
    end
  end
  object dbRegiao: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao'
    MasterFields = 'Regiao'
    MasterSource = dsRelatorio
    TableName = 'BBRegiao.db'
    Left = 160
    Top = 8
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object qryRelatorio1: TQuery
    OnCalcFields = qryRelatorio1CalcFields
    DatabaseName = 'BB'
    Filtered = True
    OnFilterRecord = qryRelatorio1FilterRecord
    SQL.Strings = (
      'Select  BBAtendimentoHI.Cliente,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      '           sum(BBAtendimentoHI.Diarias) as Diarias,'
      
        '           sum(BBAtendimentoHI.DiariasGlosadas) as DiariasGlosad' +
        'as,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(ValorNaoAcordadoM) as ValorNaoAcordadoM,'
      '           sum(ValorNaoAcordadoE) as ValorNaoAcordadoE,'
      
        '           sum(Valor-BBAtendimentoHI.ValorGlosadoM-BBAtendimento' +
        'HI.ValorGlosadoE) as ValorGlosado,'
      
        '           sum(cast(BBAtendimentoHI.Complemento as integer)) as ' +
        'Complemento'
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.NaoContabilizado<>0'
      'group by Cliente'
      'order by Cliente')
    Left = 38
    Top = 8
    object qryRelatorio1Cliente: TIntegerField
      FieldName = 'Cliente'
    end
    object qryRelatorio1Paciente: TIntegerField
      FieldName = 'Paciente'
    end
    object qryRelatorio1Diarias: TFloatField
      FieldName = 'Diarias'
    end
    object qryRelatorio1Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object qryRelatorio1ValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
    end
    object qryRelatorio1Complemento: TFloatField
      FieldName = 'Complemento'
    end
    object qryRelatorio1GlosaPorc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GlosaPorc'
      Calculated = True
    end
    object qryRelatorio1Media: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object qryRelatorio1Mediana: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Mediana'
      Calculated = True
    end
    object qryRelatorio1CustoPaciente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoPaciente'
      Calculated = True
    end
    object qryRelatorio1CustoDia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoDia'
      Calculated = True
    end
    object qryRelatorio1Paciente1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Paciente1'
      Calculated = True
    end
    object qryRelatorio1ValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
    object qryRelatorio1DiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
    end
    object qryRelatorio1DiariasPagas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiariasPagas'
      Calculated = True
    end
    object qryRelatorio1ValorNaoAcordadoM: TCurrencyField
      FieldName = 'ValorNaoAcordadoM'
    end
    object qryRelatorio1ValorNaoAcordadoE: TCurrencyField
      FieldName = 'ValorNaoAcordadoE'
    end
    object qryRelatorio1ValorNaoAcordado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorNaoAcordado'
      Calculated = True
    end
  end
  object qryRelatorio2: TQuery
    OnCalcFields = qryRelatorio2CalcFields
    DatabaseName = 'BB'
    Filtered = True
    OnFilterRecord = qryRelatorio2FilterRecord
    SQL.Strings = (
      'Select  BBAtendimentoHI.Cliente,'
      '            BBHospitais.Regiao,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      '           sum(BBAtendimentoHI.Diarias) as Diarias,'
      
        '           sum(BBAtendimentoHI.DiariasGlosadas) as DiariasGlosad' +
        'as,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(ValorNaoAcordadoM) as ValorNaoAcordadoM,'
      '           sum(ValorNaoAcordadoE) as ValorNaoAcordadoE,'
      
        '           sum(Valor-BBAtendimentoHI.ValorGlosadoM-BBAtendimento' +
        'HI.ValorGlosadoE) as ValorGlosado,'
      
        '           sum(cast(BBAtendimentoHI.Complemento as integer)) as ' +
        'Complemento'
      'from BBAtendimentoHI,BBHospitais'
      'where BBAtendimentoHI.NaoContabilizado<>0 and'
      '           BBAtendimentoHI.Hospital=BBHospitais.Hospital'
      'group by Cliente,Regiao'
      'order by Cliente,Regiao')
    Left = 190
    Top = 8
    object qryRelatorio2Cliente: TIntegerField
      FieldName = 'Cliente'
    end
    object qryRelatorio2Regiao: TIntegerField
      FieldName = 'Regiao'
    end
    object qryRelatorio2Paciente: TIntegerField
      FieldName = 'Paciente'
    end
    object qryRelatorio2Diarias: TFloatField
      FieldName = 'Diarias'
    end
    object qryRelatorio2DiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
    end
    object qryRelatorio2Valor: TCurrencyField
      FieldName = 'Valor'
    end
    object qryRelatorio2ValorGlosado: TCurrencyField
      FieldName = 'ValorGlosado'
    end
    object qryRelatorio2Complemento: TFloatField
      FieldName = 'Complemento'
    end
    object qryRelatorio2GlosaPorc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GlosaPorc'
      Calculated = True
    end
    object qryRelatorio2Media: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object qryRelatorio2Mediana: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Mediana'
      Calculated = True
    end
    object qryRelatorio2CustoPaciente: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoPaciente'
      Calculated = True
    end
    object qryRelatorio2CustoDia: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CustoDia'
      Calculated = True
    end
    object qryRelatorio2Paciente1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Paciente1'
      Calculated = True
    end
    object qryRelatorio2ValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
    object qryRelatorio2DiariasPagas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiariasPagas'
      Calculated = True
    end
    object qryRelatorio2ValorNaoAcordado: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorNaoAcordado'
      Calculated = True
    end
    object qryRelatorio2ValorNaoAcordadoM: TCurrencyField
      FieldName = 'ValorNaoAcordadoM'
    end
    object qryRelatorio2ValorNaoAcordadoE: TCurrencyField
      FieldName = 'ValorNaoAcordadoE'
    end
  end
end
