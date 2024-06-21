object relEvolucaoCustoH: TrelEvolucaoCustoH
  Left = 302
  Top = 155
  Width = 692
  Height = 473
  Caption = 'relEvolucaoCustoH'
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
    Left = 0
    Top = 8
    Width = 1056
    Height = 816
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dbRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
      100
      2159
      100
      2794
      100
      100
      0)
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
    ReportTitle = 'Evolu'#231#227'o dos Custos por Hospital'
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
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        232.833333333333
        2592.91666666667)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 359
        Top = 8
        Width = 262
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          949.854166666667
          21.1666666666667
          693.208333333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Evolu'#231#227'o dos Custos por Hospital'
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
          171.979166666667
          18.5208333333333
          29.1041666666667
          343.958333333333)
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
          198.4375
          2140.47916666667
          15.875
          396.875)
        DataField = 'Logotipo'
        DataSet = dbCliente
        Stretch = True
      end
      object QRDBText20: TQRDBText
        Left = 471
        Top = 30
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1246.1875
          79.375
          100.541666666667)
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
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lblAnalise: TQRLabel
        Left = 453
        Top = 65
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1198.5625
          171.979166666667
          195.791666666667)
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
      object QRLabel30: TQRLabel
        Left = 455
        Top = 47
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1203.85416666667
          124.354166666667
          182.5625)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Interna'#231#227'o'
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
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 126
      Width = 980
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 16737380
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
        2592.91666666667)
      BandType = rbColumnHeader
      object Mes1: TQRLabel
        Left = 184
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes1'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Mes2: TQRLabel
        Left = 315
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes2'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Mes3: TQRLabel
        Left = 446
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes3'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Mes4: TQRLabel
        Left = 577
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes4'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Mes5: TQRLabel
        Left = 708
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes5'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object Mes6: TQRLabel
        Left = 840
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          10.5833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Mes6'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 576
      Width = 980
      Height = 200
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        529.166666666667
        2592.91666666667)
      BandType = rbSummary
      object QRShape2: TQRShape
        Left = 0
        Top = 0
        Width = 980
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          0
          2592.91666666667)
        Brush.Color = clMoneyGreen
        Pen.Color = clWhite
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 81
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          214.3125
          74.0833333333333
          153.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pacientes'
        Color = clWhite
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
      object QRLabel7: TQRLabel
        Left = 57
        Top = 46
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          150.8125
          121.708333333333
          216.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Cobrado'
        Color = clWhite
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
      object QRLabel8: TQRLabel
        Left = 44
        Top = 65
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          116.416666666667
          171.979166666667
          251.354166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Autorizado'
        Color = clWhite
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
      object QRLabel9: TQRLabel
        Left = 59
        Top = 83
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          156.104166666667
          219.604166666667
          211.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Glosado'
        Color = clWhite
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
      object QRLabel10: TQRLabel
        Left = 87
        Top = 102
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          230.1875
          269.875
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '% Glosas'
        Color = clWhite
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
      object QRLabel11: TQRLabel
        Left = 8
        Top = 4
        Width = 72
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
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Geral'
        Color = clWhite
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
      object QRExpr13: TQRExpr
        Left = 184
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor1) - sum(dbRelatorio.Glosa1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr14: TQRExpr
        Left = 184
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor1)=0,0,(sum(dbRelatorio.Glosa1) / sum(db' +
          'Relatorio.Valor1))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr15: TQRExpr
        Left = 184
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr16: TQRExpr
        Left = 184
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr17: TQRExpr
        Left = 184
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente1)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr18: TQRExpr
        Left = 840
        Top = 26
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          68.7916666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente6)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr19: TQRExpr
        Left = 840
        Top = 44
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          116.416666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr20: TQRExpr
        Left = 840
        Top = 63
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          166.6875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor6) - sum(dbRelatorio.Glosa6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr21: TQRExpr
        Left = 840
        Top = 82
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          216.958333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr22: TQRExpr
        Left = 840
        Top = 101
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          267.229166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor6)=0,0,(sum(dbRelatorio.Glosa6) / sum(db' +
          'Relatorio.Valor6))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr23: TQRExpr
        Left = 315
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente2)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr24: TQRExpr
        Left = 315
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr25: TQRExpr
        Left = 315
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor2) - sum(dbRelatorio.Glosa2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr26: TQRExpr
        Left = 315
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr27: TQRExpr
        Left = 315
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor2)=0,0,(sum(dbRelatorio.Glosa2) / sum(db' +
          'Relatorio.Valor2))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr28: TQRExpr
        Left = 446
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente3)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr29: TQRExpr
        Left = 446
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr30: TQRExpr
        Left = 446
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3) - sum(dbRelatorio.Glosa3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr31: TQRExpr
        Left = 446
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr32: TQRExpr
        Left = 446
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor3)=0,0,(sum(dbRelatorio.Glosa3) / sum(db' +
          'Relatorio.Valor3))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr33: TQRExpr
        Left = 577
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente4)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr34: TQRExpr
        Left = 577
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr35: TQRExpr
        Left = 577
        Top = 64
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          169.333333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor4) - sum(dbRelatorio.Glosa4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr36: TQRExpr
        Left = 577
        Top = 82
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          216.958333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr37: TQRExpr
        Left = 577
        Top = 100
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          264.583333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor4)=0,0,(sum(dbRelatorio.Glosa4) / sum(db' +
          'Relatorio.Valor4))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr38: TQRExpr
        Left = 708
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente5)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr39: TQRExpr
        Left = 708
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr40: TQRExpr
        Left = 708
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor5) - sum(dbRelatorio.Glosa5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr41: TQRExpr
        Left = 708
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr42: TQRExpr
        Left = 708
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor5)=0,0,(sum(dbRelatorio.Glosa5) / sum(db' +
          'Relatorio.Valor5))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 98
        Top = 120
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          259.291666666667
          317.5
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Di'#225'rias'
        Color = clWhite
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
      object QRLabel17: TQRLabel
        Left = 15
        Top = 139
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          39.6875
          367.770833333333
          328.083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Paciente'
        Color = clWhite
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
      object QRLabel18: TQRLabel
        Left = 32
        Top = 157
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          415.395833333333
          283.104166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Diaria'
        Color = clWhite
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
      object QRLabel19: TQRLabel
        Left = 25
        Top = 176
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          66.1458333333333
          465.666666666667
          301.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Media Perman'#234'ncia'
        Color = clWhite
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
      object QRExpr61: TQRExpr
        Left = 184
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria1)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr62: TQRExpr
        Left = 184
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Valor1) - sum' +
          '(dbRelatorio.Glosa1))/sum(dbRelatorio.Paciente1))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr63: TQRExpr
        Left = 184
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria1)=0,0,(sum(dbRelatorio.Valor1) - sum(d' +
          'bRelatorio.Glosa1))/sum(dbRelatorio.Diaria1))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr64: TQRExpr
        Left = 184
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Diaria1)/sum(' +
          'dbRelatorio.Paciente1)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr65: TQRExpr
        Left = 840
        Top = 119
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          314.854166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria6)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr66: TQRExpr
        Left = 840
        Top = 138
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          365.125
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente6)=0,0,(sum(dbRelatorio.Valor6) - sum' +
          '(dbRelatorio.Glosa6))/sum(dbRelatorio.Paciente6))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr67: TQRExpr
        Left = 840
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria6)=0,0,(sum(dbRelatorio.Valor6) - sum(d' +
          'bRelatorio.Glosa6))/sum(dbRelatorio.Diaria6))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr68: TQRExpr
        Left = 840
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente6)=0,0,(sum(dbRelatorio.Diaria6)/sum(' +
          'dbRelatorio.Paciente6)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr69: TQRExpr
        Left = 708
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria5)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr70: TQRExpr
        Left = 708
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente5)=0,0,(sum(dbRelatorio.Valor5) - sum' +
          '(dbRelatorio.Glosa5))/sum(dbRelatorio.Paciente5))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr71: TQRExpr
        Left = 708
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria5)=0,0,(sum(dbRelatorio.Valor5) - sum(d' +
          'bRelatorio.Glosa5))/sum(dbRelatorio.Diaria5))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr72: TQRExpr
        Left = 708
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente5)=0,0,(sum(dbRelatorio.Diaria5)/sum(' +
          'dbRelatorio.Paciente5)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr73: TQRExpr
        Left = 576
        Top = 119
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          314.854166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria4)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr74: TQRExpr
        Left = 576
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente4)=0,0,(sum(dbRelatorio.Valor4) - sum' +
          '(dbRelatorio.Glosa4))/sum(dbRelatorio.Paciente4))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr75: TQRExpr
        Left = 576
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria4)=0,0,(sum(dbRelatorio.Valor4) - sum(d' +
          'bRelatorio.Glosa4))/sum(dbRelatorio.Diaria4))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr76: TQRExpr
        Left = 576
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente4)=0,0,(sum(dbRelatorio.Diaria4)/sum(' +
          'dbRelatorio.Paciente4)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr77: TQRExpr
        Left = 446
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria3)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr78: TQRExpr
        Left = 446
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente3)=0,0,(sum(dbRelatorio.Valor3) - sum' +
          '(dbRelatorio.Glosa3))/sum(dbRelatorio.Paciente3))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr79: TQRExpr
        Left = 446
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria3)=0,0,(sum(dbRelatorio.Valor3) - sum(d' +
          'bRelatorio.Glosa3))/sum(dbRelatorio.Diaria3))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr80: TQRExpr
        Left = 446
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente3)=0,0,(sum(dbRelatorio.Diaria3)/sum(' +
          'dbRelatorio.Paciente3)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr81: TQRExpr
        Left = 315
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria2)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr82: TQRExpr
        Left = 315
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente2)=0,0,(sum(dbRelatorio.Valor2) - sum' +
          '(dbRelatorio.Glosa2))/sum(dbRelatorio.Paciente2))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr83: TQRExpr
        Left = 315
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria2)=0,0,(sum(dbRelatorio.Valor2) - sum(d' +
          'bRelatorio.Glosa2))/sum(dbRelatorio.Diaria2))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr84: TQRExpr
        Left = 315
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente2)=0,0,(sum(dbRelatorio.Diaria2)/sum(' +
          'dbRelatorio.Paciente2))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 151
      Width = 980
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clSkyBlue
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        66.1458333333333
        2592.91666666667)
      Expression = 'dbRelatorio.Regiao'
      FooterBand = QRBand1
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText19: TQRDBText
        Left = 24
        Top = 3
        Width = 72
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          63.5
          7.9375
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRegiao
        DataField = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 176
      Width = 980
      Height = 200
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        529.166666666667
        2592.91666666667)
      BandType = rbDetail
      object QRShape1: TQRShape
        Left = 0
        Top = 0
        Width = 980
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          0
          2592.91666666667)
        Brush.Color = 14737632
        Pen.Color = clWhite
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 81
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          214.3125
          74.0833333333333
          153.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pacientes'
        Color = clWhite
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
      object QRLabel2: TQRLabel
        Left = 57
        Top = 46
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          150.8125
          121.708333333333
          216.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Cobrado'
        Color = clWhite
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
      object QRLabel3: TQRLabel
        Left = 44
        Top = 65
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          116.416666666667
          171.979166666667
          251.354166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Autorizado'
        Color = clWhite
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
      object QRLabel4: TQRLabel
        Left = 87
        Top = 102
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          230.1875
          269.875
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '% Glosas'
        Color = clWhite
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
      object QRLabel5: TQRLabel
        Left = 59
        Top = 83
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          156.104166666667
          219.604166666667
          211.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Glosado'
        Color = clWhite
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
      object QRDBText1: TQRDBText
        Left = 184
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente1'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 184
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor1'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 184
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa1'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr1: TQRExpr
        Left = 184
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor1 - dbRelatorio.Glosa1'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr2: TQRExpr
        Left = 184
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor1=0,0,(dbRelatorio.Glosa1 / dbRelatorio.Valo' +
          'r1)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 315
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente2'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 315
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor2'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr3: TQRExpr
        Left = 315
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor2 - dbRelatorio.Glosa2'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 315
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa2'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr4: TQRExpr
        Left = 315
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor2=0,0,(dbRelatorio.Glosa2 / dbRelatorio.Valo' +
          'r2)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 446
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente3'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 446
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor3'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr5: TQRExpr
        Left = 446
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor3 - dbRelatorio.Glosa3'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 446
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa3'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr6: TQRExpr
        Left = 446
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor3=0,0,(dbRelatorio.Glosa3 / dbRelatorio.Valo' +
          'r3)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 577
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente4'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 577
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor4'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr7: TQRExpr
        Left = 577
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor4 - dbRelatorio.Glosa4'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 577
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa4'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr8: TQRExpr
        Left = 577
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor4=0,0,(dbRelatorio.Glosa4 / dbRelatorio.Valo' +
          'r4)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr9: TQRExpr
        Left = 708
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor5=0,0,(dbRelatorio.Glosa5 / dbRelatorio.Valo' +
          'r5)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 708
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa5'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr10: TQRExpr
        Left = 708
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor5 - dbRelatorio.Glosa5'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 708
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor5'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 708
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente5'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 840
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente6'
        Mask = '###,##0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 840
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor6'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr11: TQRExpr
        Left = 840
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'dbRelatorio.Valor6 - dbRelatorio.Glosa6'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 840
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Glosa6'
        Mask = 'R$###,###,##0.00'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr12: TQRExpr
        Left = 840
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor6=0,0,(dbRelatorio.Glosa6 / dbRelatorio.Valo' +
          'r6)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object cmpHospital: TQRDBText
        Left = 8
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
          21.1666666666667
          10.5833333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
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
      object QRLabel12: TQRLabel
        Left = 98
        Top = 120
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          259.291666666667
          317.5
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Di'#225'rias'
        Color = clWhite
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
      object QRLabel13: TQRLabel
        Left = 15
        Top = 139
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          39.6875
          367.770833333333
          328.083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Paciente'
        Color = clWhite
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
      object QRLabel14: TQRLabel
        Left = 32
        Top = 157
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          415.395833333333
          283.104166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Diaria'
        Color = clWhite
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
      object QRLabel15: TQRLabel
        Left = 25
        Top = 176
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          66.1458333333333
          465.666666666667
          301.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Media Perman'#234'ncia'
        Color = clWhite
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
      object QRDBText21: TQRDBText
        Left = 184
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria1'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText22: TQRDBText
        Left = 315
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria2'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 446
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria3'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 577
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria4'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 708
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria5'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText26: TQRDBText
        Left = 840
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Diaria6'
        Mask = '###,###,##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr46: TQRExpr
        Left = 840
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente6=0,0,(dbRelatorio.Valor6 - dbRelatorio.G' +
          'losa6)/dbRelatorio.Paciente6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr47: TQRExpr
        Left = 840
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria6=0,0,(dbRelatorio.Valor6 - dbRelatorio.Glo' +
          'sa6)/dbRelatorio.Diaria6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr48: TQRExpr
        Left = 840
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente6=0,0,(dbRelatorio.Diaria6/dbRelatorio.Pa' +
          'ciente6))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr49: TQRExpr
        Left = 708
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente5=0,0,(dbRelatorio.Valor5 - dbRelatorio.G' +
          'losa5)/dbRelatorio.Paciente5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr50: TQRExpr
        Left = 708
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria5=0,0,(dbRelatorio.Valor5 - dbRelatorio.Glo' +
          'sa5)/dbRelatorio.Diaria5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr51: TQRExpr
        Left = 708
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente5=0,0,(dbRelatorio.Diaria5/dbRelatorio.Pa' +
          'ciente5))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr52: TQRExpr
        Left = 577
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente4=0,0,(dbRelatorio.Valor4 - dbRelatorio.G' +
          'losa4)/dbRelatorio.Paciente4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr53: TQRExpr
        Left = 577
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria4=0,0,(dbRelatorio.Valor4 - dbRelatorio.Glo' +
          'sa4)/dbRelatorio.Diaria4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr54: TQRExpr
        Left = 577
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente4=0,0,(dbRelatorio.Diaria4/dbRelatorio.Pa' +
          'ciente4))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr55: TQRExpr
        Left = 446
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente3=0,0,(dbRelatorio.Valor3 - dbRelatorio.G' +
          'losa3)/dbRelatorio.Paciente3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr56: TQRExpr
        Left = 446
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria3=0,0,(dbRelatorio.Valor3 - dbRelatorio.Glo' +
          'sa3)/dbRelatorio.Diaria3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr57: TQRExpr
        Left = 446
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente3=0,0,(dbRelatorio.Diaria3/dbRelatorio.Pa' +
          'ciente3))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr58: TQRExpr
        Left = 315
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente2=0,0,(dbRelatorio.Valor2 - dbRelatorio.G' +
          'losa2)/dbRelatorio.Paciente2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr59: TQRExpr
        Left = 315
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria2=0,0,(dbRelatorio.Valor2 - dbRelatorio.Glo' +
          'sa2)/dbRelatorio.Diaria2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr60: TQRExpr
        Left = 315
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente2=0,0,(dbRelatorio.Diaria2/dbRelatorio.Pa' +
          'ciente2))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr43: TQRExpr
        Left = 184
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente1=0,0,(dbRelatorio.Valor1 - dbRelatorio.G' +
          'losa1)/dbRelatorio.Paciente1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr44: TQRExpr
        Left = 184
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria1=0,0,(dbRelatorio.Valor1 - dbRelatorio.Glo' +
          'sa1)/dbRelatorio.Diaria1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr45: TQRExpr
        Left = 184
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente1=0,0,(dbRelatorio.Diaria1/dbRelatorio.Pa' +
          'ciente1))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 376
      Width = 980
      Height = 200
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        529.166666666667
        2592.91666666667)
      BandType = rbGroupFooter
      object QRShape3: TQRShape
        Left = 0
        Top = 0
        Width = 980
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          0
          0
          2592.91666666667)
        Brush.Color = clSkyBlue
        Pen.Color = clWhite
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 81
        Top = 28
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          214.3125
          74.0833333333333
          153.458333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pacientes'
        Color = clWhite
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
      object QRLabel21: TQRLabel
        Left = 57
        Top = 46
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          150.8125
          121.708333333333
          216.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Cobrado'
        Color = clWhite
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
      object QRLabel22: TQRLabel
        Left = 44
        Top = 65
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          116.416666666667
          171.979166666667
          251.354166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Autorizado'
        Color = clWhite
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
      object QRLabel23: TQRLabel
        Left = 59
        Top = 83
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          156.104166666667
          219.604166666667
          211.666666666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor Glosado'
        Color = clWhite
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
      object QRLabel24: TQRLabel
        Left = 87
        Top = 102
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          230.1875
          269.875
          137.583333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '% Glosas'
        Color = clWhite
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
      object QRLabel25: TQRLabel
        Left = 8
        Top = 4
        Width = 82
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
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Regi'#227'o'
        Color = clWhite
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
      object QRExpr85: TQRExpr
        Left = 184
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor1) - sum(dbRelatorio.Glosa1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr86: TQRExpr
        Left = 184
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor1)=0,0,(sum(dbRelatorio.Glosa1) / sum(db' +
          'Relatorio.Valor1))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr87: TQRExpr
        Left = 184
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr88: TQRExpr
        Left = 184
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa1)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr89: TQRExpr
        Left = 184
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente1)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr90: TQRExpr
        Left = 840
        Top = 26
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          68.7916666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente6)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr91: TQRExpr
        Left = 840
        Top = 44
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          116.416666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr92: TQRExpr
        Left = 840
        Top = 63
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          166.6875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor6) - sum(dbRelatorio.Glosa6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr93: TQRExpr
        Left = 840
        Top = 82
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          216.958333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa6)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr94: TQRExpr
        Left = 840
        Top = 101
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          267.229166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor6)=0,0,(sum(dbRelatorio.Glosa6) / sum(db' +
          'Relatorio.Valor6))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr95: TQRExpr
        Left = 315
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente2)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr96: TQRExpr
        Left = 315
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr97: TQRExpr
        Left = 315
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor2) - sum(dbRelatorio.Glosa2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr98: TQRExpr
        Left = 315
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa2)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr99: TQRExpr
        Left = 315
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor2)=0,0,(sum(dbRelatorio.Glosa2) / sum(db' +
          'Relatorio.Valor2))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr100: TQRExpr
        Left = 446
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente3)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr101: TQRExpr
        Left = 446
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr102: TQRExpr
        Left = 446
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3) - sum(dbRelatorio.Glosa3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr103: TQRExpr
        Left = 446
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa3)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr104: TQRExpr
        Left = 446
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor3)=0,0,(sum(dbRelatorio.Glosa3) / sum(db' +
          'Relatorio.Valor3))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr105: TQRExpr
        Left = 577
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente4)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr106: TQRExpr
        Left = 577
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr107: TQRExpr
        Left = 577
        Top = 64
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          169.333333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor4) - sum(dbRelatorio.Glosa4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr108: TQRExpr
        Left = 577
        Top = 82
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          216.958333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa4)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr109: TQRExpr
        Left = 577
        Top = 100
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1526.64583333333
          264.583333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor4)=0,0,(sum(dbRelatorio.Glosa4) / sum(db' +
          'Relatorio.Valor4))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr110: TQRExpr
        Left = 708
        Top = 28
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          74.0833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente5)'
        Mask = '###,##0'
        FontSize = 9
      end
      object QRExpr111: TQRExpr
        Left = 708
        Top = 46
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          121.708333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr112: TQRExpr
        Left = 708
        Top = 65
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          171.979166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor5) - sum(dbRelatorio.Glosa5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr113: TQRExpr
        Left = 708
        Top = 83
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          219.604166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Glosa5)'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr114: TQRExpr
        Left = 708
        Top = 102
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          269.875
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor5)=0,0,(sum(dbRelatorio.Glosa5) / sum(db' +
          'Relatorio.Valor5))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRLabel26: TQRLabel
        Left = 98
        Top = 120
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          259.291666666667
          317.5
          108.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Di'#225'rias'
        Color = clWhite
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
      object QRLabel27: TQRLabel
        Left = 15
        Top = 139
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          39.6875
          367.770833333333
          328.083333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Paciente'
        Color = clWhite
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
      object QRLabel28: TQRLabel
        Left = 32
        Top = 157
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          84.6666666666667
          415.395833333333
          283.104166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Custo Medio/Diaria'
        Color = clWhite
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
      object QRLabel29: TQRLabel
        Left = 25
        Top = 176
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          66.1458333333333
          465.666666666667
          301.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Media Perman'#234'ncia'
        Color = clWhite
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
      object QRExpr115: TQRExpr
        Left = 184
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria1)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr116: TQRExpr
        Left = 184
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Valor1) - sum' +
          '(dbRelatorio.Glosa1))/sum(dbRelatorio.Paciente1))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr117: TQRExpr
        Left = 184
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria1)=0,0,(sum(dbRelatorio.Valor1) - sum(d' +
          'bRelatorio.Glosa1))/sum(dbRelatorio.Diaria1))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr118: TQRExpr
        Left = 184
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          486.833333333333
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Diaria1)/sum(' +
          'dbRelatorio.Paciente1)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr119: TQRExpr
        Left = 840
        Top = 119
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          314.854166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria6)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr120: TQRExpr
        Left = 840
        Top = 138
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          365.125
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente6)=0,0,(sum(dbRelatorio.Valor6) - sum' +
          '(dbRelatorio.Glosa6))/sum(dbRelatorio.Paciente6))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr121: TQRExpr
        Left = 840
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria6)=0,0,(sum(dbRelatorio.Valor6) - sum(d' +
          'bRelatorio.Glosa6))/sum(dbRelatorio.Diaria6))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr122: TQRExpr
        Left = 840
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          2222.5
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente6)=0,0,(sum(dbRelatorio.Diaria6)/sum(' +
          'dbRelatorio.Paciente6)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr123: TQRExpr
        Left = 708
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria5)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr124: TQRExpr
        Left = 708
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente5)=0,0,(sum(dbRelatorio.Valor5) - sum' +
          '(dbRelatorio.Glosa5))/sum(dbRelatorio.Paciente5))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr125: TQRExpr
        Left = 708
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria5)=0,0,(sum(dbRelatorio.Valor5) - sum(d' +
          'bRelatorio.Glosa5))/sum(dbRelatorio.Diaria5))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr126: TQRExpr
        Left = 708
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1873.25
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente5)=0,0,(sum(dbRelatorio.Diaria5)/sum(' +
          'dbRelatorio.Paciente5)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr127: TQRExpr
        Left = 576
        Top = 119
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          314.854166666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria4)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr128: TQRExpr
        Left = 576
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente4)=0,0,(sum(dbRelatorio.Valor4) - sum' +
          '(dbRelatorio.Glosa4))/sum(dbRelatorio.Paciente4))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr129: TQRExpr
        Left = 576
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria4)=0,0,(sum(dbRelatorio.Valor4) - sum(d' +
          'bRelatorio.Glosa4))/sum(dbRelatorio.Diaria4))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr130: TQRExpr
        Left = 576
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente4)=0,0,(sum(dbRelatorio.Diaria4)/sum(' +
          'dbRelatorio.Paciente4)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr131: TQRExpr
        Left = 446
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria3)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr132: TQRExpr
        Left = 446
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente3)=0,0,(sum(dbRelatorio.Valor3) - sum' +
          '(dbRelatorio.Glosa3))/sum(dbRelatorio.Paciente3))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr133: TQRExpr
        Left = 446
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria3)=0,0,(sum(dbRelatorio.Valor3) - sum(d' +
          'bRelatorio.Glosa3))/sum(dbRelatorio.Diaria3))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr134: TQRExpr
        Left = 446
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1180.04166666667
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente3)=0,0,(sum(dbRelatorio.Diaria3)/sum(' +
          'dbRelatorio.Paciente3)))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
      object QRExpr135: TQRExpr
        Left = 315
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Diaria2)'
        Mask = '###,###,##0.0'
        FontSize = 9
      end
      object QRExpr136: TQRExpr
        Left = 315
        Top = 139
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          367.770833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente2)=0,0,(sum(dbRelatorio.Valor2) - sum' +
          '(dbRelatorio.Glosa2))/sum(dbRelatorio.Paciente2))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr137: TQRExpr
        Left = 315
        Top = 157
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          415.395833333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Diaria2)=0,0,(sum(dbRelatorio.Valor2) - sum(d' +
          'bRelatorio.Glosa2))/sum(dbRelatorio.Diaria2))'
        Mask = 'R$###,###,##0.00'
        FontSize = 9
      end
      object QRExpr138: TQRExpr
        Left = 315
        Top = 176
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          833.4375
          465.666666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente2)=0,0,(sum(dbRelatorio.Diaria2)/sum(' +
          'dbRelatorio.Paciente2))'
        Mask = '###,###,##0.00'
        FontSize = 9
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = dbRelatorio
    Left = 104
    Top = 8
  end
  object dbRelatorio: TTable
    DatabaseName = 'BB'
    Exclusive = True
    IndexFieldNames = 'Regiao;Nome;NC'
    TableName = 'BBRelEvolucaoCustoR.db'
    Left = 72
    Top = 8
    object dbRelatorioRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRelatorioNC: TSmallintField
      FieldName = 'NC'
    end
    object dbRelatorioHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbRelatorioNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbRelatorioPaciente1: TIntegerField
      FieldName = 'Paciente1'
    end
    object dbRelatorioValor1: TCurrencyField
      FieldName = 'Valor1'
    end
    object dbRelatorioGlosa1: TCurrencyField
      FieldName = 'Glosa1'
    end
    object dbRelatorioDiaria1: TFloatField
      FieldName = 'Diaria1'
    end
    object dbRelatorioPaciente2: TIntegerField
      FieldName = 'Paciente2'
    end
    object dbRelatorioValor2: TCurrencyField
      FieldName = 'Valor2'
    end
    object dbRelatorioGlosa2: TCurrencyField
      FieldName = 'Glosa2'
    end
    object dbRelatorioDiaria2: TFloatField
      FieldName = 'Diaria2'
    end
    object dbRelatorioPaciente3: TIntegerField
      FieldName = 'Paciente3'
    end
    object dbRelatorioValor3: TCurrencyField
      FieldName = 'Valor3'
    end
    object dbRelatorioGlosa3: TCurrencyField
      FieldName = 'Glosa3'
    end
    object dbRelatorioDiaria3: TFloatField
      FieldName = 'Diaria3'
    end
    object dbRelatorioPaciente4: TIntegerField
      FieldName = 'Paciente4'
    end
    object dbRelatorioValor4: TCurrencyField
      FieldName = 'Valor4'
    end
    object dbRelatorioGlosa4: TCurrencyField
      FieldName = 'Glosa4'
    end
    object dbRelatorioDiaria4: TFloatField
      FieldName = 'Diaria4'
    end
    object dbRelatorioPaciente5: TIntegerField
      FieldName = 'Paciente5'
    end
    object dbRelatorioValor5: TCurrencyField
      FieldName = 'Valor5'
    end
    object dbRelatorioGlosa5: TCurrencyField
      FieldName = 'Glosa5'
    end
    object dbRelatorioDiaria5: TFloatField
      FieldName = 'Diaria5'
    end
    object dbRelatorioPaciente6: TIntegerField
      FieldName = 'Paciente6'
    end
    object dbRelatorioValor6: TCurrencyField
      FieldName = 'Valor6'
    end
    object dbRelatorioGlosa6: TCurrencyField
      FieldName = 'Glosa6'
    end
    object dbRelatorioDiaria6: TFloatField
      FieldName = 'Diaria6'
    end
  end
  object qryRelatorio: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Hospital,'
      '           BBAtendimentoHI.MesCompetencia as Mes,'
      '           BBAtendimentoHI.AnoCompetencia as Ano,'
      '            BBAtendimentoHI.NaoContabilizado,'
      
        '           (count(BBAtendimentoHI.Paciente)-sum(cast(BBAtendimen' +
        'toHI.Complemento as Integer))) as Paciente,'
      '           sum(BBAtendimentoHI.Diarias) as Diarias,'
      
        '           sum(BBAtendimentoHI.DiariasGlosadas) as DiariasGlosad' +
        'as,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(BBAtendimentoHI.ValorGlosadoM) as ValorGlosaM,'
      '           sum(BBAtendimentoHI.ValorGlosadoE) as ValorGlosaE'
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.Cliente=1'
      'and BBATendimentoHI.AnoCompetencia>=2001 '
      'and BBAtendimentoHI.AnoCompetencia<=2002'
      'group by Hospital, Ano, Mes, NaoContabilizado'
      'order by  Hospital, Ano, Mes')
    Left = 8
    Top = 8
    object qryRelatorioHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHI.DB".Hospital'
    end
    object qryRelatorioMes: TIntegerField
      FieldName = 'Mes'
      Origin = 'BB."BBAtendimentoHI.DB".MesCompetencia'
    end
    object qryRelatorioAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BB."BBAtendimentoHI.DB".AnoCompetencia'
    end
    object qryRelatorioValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorioValorGlosaM: TCurrencyField
      FieldName = 'ValorGlosaM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorioValorGlosaE: TCurrencyField
      FieldName = 'ValorGlosaE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorioDiarias: TFloatField
      FieldName = 'Diarias'
    end
    object qryRelatorioPaciente: TFloatField
      FieldName = 'Paciente'
    end
    object qryRelatorioNaoContabilizado: TIntegerField
      FieldName = 'NaoContabilizado'
    end
    object qryRelatorioDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
    end
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Hospital'
    TableName = 'BBHospitais.DB'
    Left = 40
    Top = 8
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
    TableName = 'BBClientes.DB'
    Left = 136
    Top = 8
  end
  object dbRegiao: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao'
    MasterFields = 'Regiao'
    MasterSource = dsRelatorio
    TableName = 'BBRegiao.db'
    Left = 172
    Top = 8
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
end
