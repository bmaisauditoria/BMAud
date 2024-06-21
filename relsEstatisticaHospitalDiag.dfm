object relEstatisticasHospitalDiag: TrelEstatisticasHospitalDiag
  Left = 232
  Top = 56
  Width = 781
  Height = 517
  HorzScrollBar.Position = 308
  Caption = 'relEstatisticaHospitalDiag'
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
    Left = -300
    Top = 0
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
    Font.Height = -11
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
    PrintIfEmpty = True
    ReportTitle = 'Estat'#237'sticas Interna'#231#227'o'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    object bndCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 980
      Height = 91
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
        240.770833333333300000
        2592.916666666667000000)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 412
        Top = 8
        Width = 155
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1090.083333333333000000
          21.166666666666670000
          410.104166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Pr'#233'-An'#225'lise Hospital'
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
      object lblInicio: TQRLabel
        Left = 435
        Top = 30
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1150.937500000000000000
          79.375000000000000000
          288.395833333333400000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '11/2002 a 12/2002'
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
      object QRDBText3: TQRDBText
        Left = 471
        Top = 49
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1246.187500000000000000
          129.645833333333300000
          100.541666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbCliente
        DataField = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 151
      Width = 980
      Height = 2
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
        5.291666666666667000
        2592.916666666667000000)
      Expression = 'qryRelatorio.Cliente  or qryRelatorio.Hospital'
      Master = qrpRelatorio
      ReprintOnNewPage = False
    end
    object QRGroup2: TQRGroup
      Left = 38
      Top = 153
      Width = 980
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRGroup2AfterPrint
      AlignToBottom = False
      Color = 14737632
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        58.208333333333340000
        2592.916666666667000000)
      Expression = 'qryRelatorio.Hospital'
      FooterBand = QRBand1
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRLabel9: TQRLabel
        Left = 8
        Top = 3
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hospital'
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
      object QRDBText4: TQRDBText
        Left = 65
        Top = 3
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          171.979166666666700000
          7.937500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbHospital
        DataField = 'Nome'
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
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 259
      Width = 980
      Height = 83
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PageFooterBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        219.604166666666700000
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
        Left = 914
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
          2418.291666666667000000
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
      object QRLabel2: TQRLabel
        Left = 24
        Top = 17
        Width = 484
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          44.979166666666670000
          1280.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Legenda: [DC] DayClinic   [PC] Parcial   [CM] Complemento  [PT] ' +
          'Pacote   [CC] Capeante+Complemento'
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
      object cmpHospital: TQRLabel
        Left = 24
        Top = 2
        Width = 39
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          63.500000000000000000
          5.291666666666667000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hospital'
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
      object lblConferencia: TQRLabel
        Left = 24
        Top = 63
        Width = 467
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          166.687500000000000000
          1235.604166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Relatorio de confer'#234'ncia - apenas pacientes com mais de um lan'#231'a' +
          'mento no periodo'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object lblPrimeiro: TQRLabel
        Left = 24
        Top = 32
        Width = 426
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          84.666666666666680000
          1127.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Aten'#231#227'o: este relatorio contem informa'#231#245'es desde a compet'#234'ncia J' +
          'ulho/2002'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 24
        Top = 47
        Width = 489
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          124.354166666666700000
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
    object bndDetalhe: TQRBand
      Left = 38
      Top = 175
      Width = 980
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = bndDetalheBeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
        Width = 219
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          5.291666666666667000
          579.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Nome'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 358
        Top = 2
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          5.291666666666667000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DataInternacao'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 420
        Top = 2
        Width = 60
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
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DataAlta'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object cmpValor: TQRDBText
        Left = 483
        Top = 2
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1277.937500000000000000
          5.291666666666670000
          259.291666666667000000)
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
      object cmpUTI: TQRDBText
        Left = 625
        Top = 2
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1653.645833333330000000
          5.291666666666670000
          92.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DiasUTI'
        Mask = '#,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 233
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          616.479166666666800000
          5.291666666666667000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DayClinicTexto'
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
      object QRDBText11: TQRDBText
        Left = 257
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          679.979166666666800000
          5.291666666666667000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ParcialTexto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object cmpDiagnostico: TQRMemo
        Left = 665
        Top = 2
        Width = 308
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1759.479166666670000000
          5.291666666666670000
          814.916666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = False
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 282
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          5.291666666666667000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ComplementoTexto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 307
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          812.270833333333400000
          5.291666666666667000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'PacoteTexto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object cmpDiaria: TQRDBText
        Left = 585
        Top = 2
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1547.812500000000000000
          5.291666666666670000
          92.604166666666700000)
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
      object QRDBText1: TQRDBText
        Left = 332
        Top = 2
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666800000
          5.291666666666667000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'IntercambioTexto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 129
      Width = 980
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 16745090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        58.208333333333340000
        2592.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 9
        Top = 3
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          7.937500000000000000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome Paciente'
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
      object QRLabel4: TQRLabel
        Left = 233
        Top = 3
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          616.479166666666800000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DC'
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
      object QRLabel5: TQRLabel
        Left = 483
        Top = 3
        Width = 98
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1277.937500000000000000
          7.937500000000000000
          259.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Custo Interna'#231#227'o'
        Color = clNavy
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
      object QRLabel6: TQRLabel
        Left = 257
        Top = 3
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          679.979166666666800000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PC'
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
      object QRLabel10: TQRLabel
        Left = 587
        Top = 3
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1553.104166666667000000
          7.937500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Diarias'
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
      object QRLabel11: TQRLabel
        Left = 665
        Top = 3
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1759.479166666667000000
          7.937500000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Diagn'#243'sticos'
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
      object QRLabel12: TQRLabel
        Left = 358
        Top = 3
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          947.208333333333400000
          7.937500000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interna'#231#227'o'
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
      object QRLabel13: TQRLabel
        Left = 436
        Top = 3
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1153.583333333333000000
          7.937500000000000000
          60.854166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Alta'
        Color = clWhite
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
      object QRLabel14: TQRLabel
        Left = 282
        Top = 3
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          746.125000000000000000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CM'
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
      object QRLabel16: TQRLabel
        Left = 307
        Top = 3
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          812.270833333333400000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PT'
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
      object QRLabel17: TQRLabel
        Left = 637
        Top = 3
        Width = 18
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1685.395833333333000000
          7.937500000000000000
          47.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UTI'
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
      object QRLabel20: TQRLabel
        Left = 826
        Top = 3
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2185.458333333333000000
          7.937500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Total'
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
      object QRLabel7: TQRLabel
        Left = 332
        Top = 3
        Width = 20
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666800000
          7.937500000000000000
          52.916666666666660000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CC'
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
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 237
      Width = 980
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 16745090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        58.208333333333340000
        2592.916666666667000000)
      BandType = rbSummary
      object QRLabel1: TQRLabel
        Left = 32
        Top = 3
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          7.937500000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Geral'
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
      object QRExpr1: TQRExpr
        Left = 231
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          611.187500000000000000
          7.937500000000000000
          58.208333333333340000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DayClinicSum)'
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 280
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          7.937500000000000000
          58.208333333333340000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ComplementoSum)'
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 623
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          7.937500000000000000
          97.895833333333340000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.DiasUTI)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 483
        Top = 3
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1277.937500000000000000
          7.937500000000000000
          259.291666666667000000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ValorPago)'
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 255
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          7.937500000000000000
          58.208333333333340000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.ParcialSum)'
        FontSize = 8
      end
      object QRExpr12: TQRExpr
        Left = 305
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666800000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.PacoteSum)'
        FontSize = 8
      end
      object QRExpr14: TQRExpr
        Left = 583
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1542.520833333333000000
          7.937500000000000000
          97.895833333333340000)
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
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryRelatorio.Diarias)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr16: TQRExpr
        Left = 330
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.IntercambioSum)'
        FontSize = 8
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 215
      Width = 980
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 14737632
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        58.208333333333340000
        2592.916666666667000000)
      BandType = rbGroupFooter
      object QRLabel15: TQRLabel
        Left = 32
        Top = 3
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666680000
          7.937500000000000000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Hospital'
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
      object QRExpr6: TQRExpr
        Left = 231
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          611.187500000000000000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.DayClinicSum)'
        FontSize = 8
      end
      object QRExpr7: TQRExpr
        Left = 255
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          674.687500000000000000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.ParcialSum)'
        FontSize = 8
      end
      object QRExpr8: TQRExpr
        Left = 280
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.ComplementoSum)'
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 483
        Top = 4
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1277.937500000000000000
          10.583333333333300000
          259.291666666667000000)
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
        Mask = 'R$###,###,###.00'
        FontSize = 8
      end
      object QRExpr10: TQRExpr
        Left = 623
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          7.937500000000000000
          97.895833333333340000)
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
        Expression = 'SUM(qryRelatorio.DiasUTI)'
        Mask = '#,##0.0'
        FontSize = 8
      end
      object QRExpr11: TQRExpr
        Left = 305
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          806.979166666666800000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.PacoteSum)'
        FontSize = 8
      end
      object QRExpr13: TQRExpr
        Left = 583
        Top = 3
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1542.520833333333000000
          7.937500000000000000
          97.895833333333340000)
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
      object QRExpr15: TQRExpr
        Left = 330
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          873.124999999999900000
          7.937500000000000000
          58.208333333333340000)
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
        Expression = 'SUM(qryRelatorio.IntercambioSum)'
        FontSize = 8
      end
    end
    object QRChildBand1: TQRChildBand
      Left = 38
      Top = 195
      Width = 980
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRChildBand1BeforePrint
      Color = 16378331
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666660000
        2592.916666666667000000)
      ParentBand = bndDetalhe
      object QRLabel18: TQRLabel
        Left = 245
        Top = 2
        Width = 68
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          648.229166666666800000
          5.291666666666667000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Paciente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object cmpValorT: TQRDBText
        Left = 483
        Top = 2
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1277.937500000000000000
          5.291666666666670000
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'ValorPago'
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
      object cmpDiariaT: TQRDBText
        Left = 585
        Top = 2
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1547.812500000000000000
          5.291666666666670000
          92.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'Diarias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object cmpUTIT: TQRDBText
        Left = 625
        Top = 2
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1653.645833333330000000
          5.291666666666670000
          92.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio1
        DataField = 'DiasUTI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#,##0.0'
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 669
        Top = 3
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1770.062500000000000000
          7.937500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interna'#231#227'o:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object cmpDataInicio: TQRDBText
        Left = 727
        Top = 2
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1923.520833333330000000
          5.291666666666670000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'DataInicioP'
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
      object cmpValorTotal: TQRDBText
        Left = 795
        Top = 2
        Width = 98
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
          259.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio2
        DataField = 'ValorPago'
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
    end
  end
  object qryRelatorio: TQuery
    OnCalcFields = qryRelatorioCalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select * from BBAtendimentoHI, BBPacientes'
      'where BBAtendimentoHI.Paciente=BBPacientes.Paciente'
      'order by Cliente, Hospital, Nome, DataInternacao')
    Left = 32
    Top = 8
    object qryRelatorioAtendimentoHI: TIntegerField
      FieldName = 'AtendimentoHI'
      Origin = 'BB."BBAtendimentoHI.DB".AtendimentoHI'
    end
    object qryRelatorioCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHI.DB".Cliente'
    end
    object qryRelatorioPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'BB."BBAtendimentoHI.DB".Paciente'
    end
    object qryRelatorioHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHI.DB".Hospital'
    end
    object qryRelatorioMedico: TIntegerField
      FieldName = 'Medico'
      Origin = 'BB."BBAtendimentoHI.DB".Medico'
    end
    object qryRelatorioEnfermeiro: TIntegerField
      FieldName = 'Enfermeiro'
      Origin = 'BB."BBAtendimentoHI.DB".Enfermeiro'
    end
    object qryRelatorioDataFechamento: TDateField
      FieldName = 'DataFechamento'
      Origin = 'BB."BBAtendimentoHI.DB".DataFechamento'
    end
    object qryRelatorioMesCompetencia: TIntegerField
      FieldName = 'MesCompetencia'
      Origin = 'BB."BBAtendimentoHI.DB".MesCompetencia'
    end
    object qryRelatorioAnoCompetencia: TIntegerField
      FieldName = 'AnoCompetencia'
      Origin = 'BB."BBAtendimentoHI.DB".AnoCompetencia'
    end
    object qryRelatorioDataInternacao: TDateField
      FieldName = 'DataInternacao'
      Origin = 'BB."BBAtendimentoHI.DB".DataInternacao'
    end
    object qryRelatorioDataAlta: TDateField
      FieldName = 'DataAlta'
      Origin = 'BB."BBAtendimentoHI.DB".DataAlta'
    end
    object qryRelatorioValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorioValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorioValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorioComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'BB."BBAtendimentoHI.DB".Complemento'
    end
    object qryRelatorioNumeroParcial: TIntegerField
      FieldName = 'NumeroParcial'
      Origin = 'BB."BBAtendimentoHI.DB".NumeroParcial'
    end
    object qryRelatorioDayClinic: TBooleanField
      FieldName = 'DayClinic'
      Origin = 'BB."BBAtendimentoHI.DB".DayClinic'
    end
    object qryRelatorioIntercambio: TBooleanField
      FieldName = 'Intercambio'
      Origin = 'BB."BBAtendimentoHI.DB".Intercambio'
    end
    object qryRelatorioUsuario: TStringField
      FieldName = 'Usuario'
      Origin = 'BB."BBAtendimentoHI.DB".Usuario'
      Size = 10
    end
    object qryRelatorioObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'BB."BBAtendimentoHI.DB".Observacao'
      BlobType = ftMemo
      Size = 40
    end
    object qryRelatorioDataInclusao: TDateField
      FieldName = 'DataInclusao'
      Origin = 'BB."BBAtendimentoHI.DB".DataInclusao'
    end
    object qryRelatorioDataExclusao: TDateField
      FieldName = 'DataExclusao'
      Origin = 'BB."BBAtendimentoHI.DB".DataExclusao'
    end
    object qryRelatorioNome: TStringField
      FieldName = 'Nome'
      Origin = 'BB."BBAtendimentoHI.DB".AtendimentoHI'
      Size = 40
    end
    object qryRelatorioParcialTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ParcialTexto'
      Size = 1
      Calculated = True
    end
    object qryRelatorioValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
    object qryRelatorioDayClinicTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'DayClinicTexto'
      Size = 1
      Calculated = True
    end
    object qryRelatorioComplementoTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'ComplementoTexto'
      Size = 1
      Calculated = True
    end
    object qryRelatorioDayClinicSum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DayClinicSum'
      Calculated = True
    end
    object qryRelatorioParcialSum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ParcialSum'
      Calculated = True
    end
    object qryRelatorioComplementoSum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ComplementoSum'
      Calculated = True
    end
    object qryRelatorioDiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'BB."BBAtendimentoHI.DB".DiasUTI'
    end
    object qryRelatorioDiarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'BB."BBAtendimentoHI.DB".Diarias'
    end
    object qryRelatorioDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
      Origin = 'BB."BBAtendimentoHI.DB".DiariasGlosadas'
    end
    object qryRelatorioPacote: TBooleanField
      FieldName = 'Pacote'
      Origin = 'BB."BBAtendimentoHI.DB".Pacote'
    end
    object qryRelatorioPacoteTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'PacoteTexto'
      Size = 1
      Calculated = True
    end
    object qryRelatorioPacoteSum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PacoteSum'
      Calculated = True
    end
    object qryRelatorioDataInicioP: TDateField
      FieldName = 'DataInicioP'
      Origin = 'BB."BBAtendimentoHI.DB".DataInicioP'
    end
    object qryRelatorioNaoContabilizado: TIntegerField
      FieldName = 'NaoContabilizado'
      Origin = 'BB."BBAtendimentoHI.DB".NaoContabilizado'
    end
    object qryRelatorioIntercambioTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'IntercambioTexto'
      Size = 1
      Calculated = True
    end
    object qryRelatorioIntercambioSum: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'IntercambioSum'
      Calculated = True
    end
    object qryRelatorioParcial: TIntegerField
      FieldName = 'Parcial'
      Origin = 'BB."BBAtendimentoHI.DB".Parcial'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = qryRelatorio
    Left = 64
    Top = 8
  end
  object dbItem: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente;AtendimentoHI;Diagnostico'
    MasterFields = 'Cliente;AtendimentoHI'
    MasterSource = dsRelatorio
    TableName = 'BBAtendimentoHIDiagnostico.DB'
    Left = 96
    Top = 8
    object dbItemCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object dbItemAtendimentoHI: TIntegerField
      FieldName = 'AtendimentoHI'
    end
    object dbItemDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
    end
    object dbItemAtendimentoHC: TIntegerField
      FieldName = 'AtendimentoHC'
    end
    object dbItemItem: TIntegerField
      FieldName = 'Item'
    end
    object dbItemDataAuditoria: TDateField
      FieldName = 'DataAuditoria'
    end
  end
  object dbDiagnostico: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Diagnostico'
    MasterFields = 'Diagnostico'
    MasterSource = dsItem
    TableName = 'BBDiagnosticos.DB'
    Left = 160
    Top = 8
    object dbDiagnosticoDiagnostico: TIntegerField
      FieldName = 'Diagnostico'
    end
    object dbDiagnosticoCodCid: TStringField
      FieldName = 'CodCid'
      Size = 11
    end
    object dbDiagnosticoNome: TStringField
      FieldName = 'Nome'
      Size = 75
    end
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Hospital'
    MasterFields = 'Hospital'
    MasterSource = dsRelatorio
    TableName = 'BBHospitais.DB'
    Left = 223
    Top = 9
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object dbHospitalRegiao: TIntegerField
      FieldName = 'Regiao'
    end
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    MasterFields = 'Cliente'
    MasterSource = dsRelatorio
    TableName = 'BBClientes.DB'
    Left = 192
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
    object dbClienteMaximoCobrado1: TCurrencyField
      FieldName = 'MaximoCobrado1'
    end
    object dbClienteCor1: TStringField
      FieldName = 'Cor1'
      Size = 15
    end
    object dbClienteMaximoCobrado2: TCurrencyField
      FieldName = 'MaximoCobrado2'
    end
    object dbClienteCor2: TStringField
      FieldName = 'Cor2'
      Size = 15
    end
    object dbClienteMaximoCobrado3: TCurrencyField
      FieldName = 'MaximoCobrado3'
    end
    object dbClienteCor3: TStringField
      FieldName = 'Cor3'
      Size = 15
    end
    object dbClienteDiarias: TIntegerField
      FieldName = 'Diarias'
    end
    object dbClienteCorDiaria: TStringField
      FieldName = 'CorDiaria'
      Size = 15
    end
    object dbClienteDiariasUTI: TIntegerField
      FieldName = 'DiariasUTI'
    end
    object dbClienteCorDiariaUTI: TStringField
      FieldName = 'CorDiariaUTI'
      Size = 15
    end
  end
  object dsItem: TDataSource
    DataSet = dbItem
    Left = 128
    Top = 8
  end
  object qryRelatorio1: TQuery
    OnCalcFields = qryRelatorio1CalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Cliente, '
      
        '                                        BBAtendimentoHI.Hospital' +
        ', '
      '           count(BBAtendimentoHI.Cliente) as Qtd,  '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'r) as Valor, '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'rGlosadoE) as ValorGlosadoE, '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'rGlosadoM) as ValorGlosadoM, '
      
        '                                        sum(BBAtendimentoHI.Diar' +
        'ias) as Diarias, '
      
        '                                        sum(BBAtendimentoHI.Dias' +
        'UTI) as DiasUTI, '
      '                                        BBPacientes.Nome '
      
        '                                 from BBAtendimentoHI,BBPaciente' +
        's '
      
        '                                 where BBAtendimentoHI.Paciente=' +
        'BBPacientes.Paciente '
      '                                 group by Cliente,Hospital,Nome '
      '                                 order by Cliente,Hospital,Nome')
    Left = 32
    Top = 40
    object qryRelatorio1Cliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHI.DB".Cliente'
    end
    object qryRelatorio1Hospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHI.DB".Hospital'
    end
    object qryRelatorio1Valor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorio1ValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorio1ValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorio1Diarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'BB."BBAtendimentoHI.DB".Diarias'
    end
    object qryRelatorio1DiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'BB."BBAtendimentoHI.DB".DiasUTI'
    end
    object qryRelatorio1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'BB."BBPacientes.DB".Nome'
      Size = 40
    end
    object qryRelatorio1ValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
    object qryRelatorio1Qtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'BB."BBAtendimentoHI.DB".Cliente'
    end
  end
  object qryRelatorio2: TQuery
    OnCalcFields = qryRelatorio2CalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Cliente, '
      
        '                                        BBAtendimentoHI.Hospital' +
        ', '
      
        '                                        BBAtendimentoHI.DataInic' +
        'ioP, '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'r) as Valor, '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'rGlosadoE) as ValorGlosadoE, '
      
        '                                        sum(BBAtendimentoHI.Valo' +
        'rGlosadoM) as ValorGlosadoM, '
      
        '                                        sum(BBAtendimentoHI.Diar' +
        'ias) as Diarias, '
      
        '                                        sum(BBAtendimentoHI.Dias' +
        'UTI) as DiasUTI, '
      '                                        BBPacientes.Nome '
      
        '                                 from BBAtendimentoHI,BBPaciente' +
        's '
      
        '                                 where BBAtendimentoHI.Paciente=' +
        'BBPacientes.Paciente '
      
        '                                 group by Cliente,Hospital,Nome,' +
        ' DataInicioP '
      '                                 order by Cliente,Hospital,Nome')
    Left = 65
    Top = 40
    object qryRelatorio2Cliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHI.DB".Cliente'
    end
    object qryRelatorio2Hospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHI.DB".Hospital'
    end
    object qryRelatorio2DataInicioP: TDateField
      FieldName = 'DataInicioP'
      Origin = 'BB."BBAtendimentoHI.DB".DataInicioP'
    end
    object qryRelatorio2Valor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorio2ValorGlosadoE: TCurrencyField
      FieldName = 'ValorGlosadoE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorio2ValorGlosadoM: TCurrencyField
      FieldName = 'ValorGlosadoM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorio2Diarias: TFloatField
      FieldName = 'Diarias'
      Origin = 'BB."BBAtendimentoHI.DB".Diarias'
    end
    object qryRelatorio2DiasUTI: TFloatField
      FieldName = 'DiasUTI'
      Origin = 'BB."BBAtendimentoHI.DB".DiasUTI'
    end
    object qryRelatorio2Nome: TStringField
      FieldName = 'Nome'
      Origin = 'BB."BBPacientes.DB".Nome'
      Size = 40
    end
    object qryRelatorio2ValorPago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorPago'
      Calculated = True
    end
  end
end
