object relProrrogacao: TrelProrrogacao
  Left = 199
  Top = 102
  Width = 805
  Height = 374
  HorzScrollBar.Position = 25
  Caption = 'relProrrogacao'
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
    Left = -19
    Top = 1
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryRelatorio
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
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = First
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
    ReportTitle = 'Prorroga'#231#227'o de Interna'#231#245'es'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 108
      Width = 740
      Height = 46
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
        121.708333333333300000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 64
        Top = 4
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          169.333333333333300000
          10.583333333333330000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Paciente'
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
        Left = 279
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
          738.187500000000000000
          7.937500000000000000
          97.895833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Senha'
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
        Left = 694
        Top = 4
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1836.208333333333000000
          10.583333333333330000
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
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 372
        Top = 4
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          10.583333333333330000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interna'#231#227'o'
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
        Left = 442
        Top = 4
        Width = 177
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1169.458333333330000000
          10.583333333333300000
          468.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Prorroga'#231#227'o'
        Color = clSilver
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
        Left = 494
        Top = 21
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1307.041666666667000000
          55.562500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Per'#237'odo'
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
      object QRLabel11: TQRLabel
        Left = 588
        Top = 21
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1555.750000000000000000
          55.562500000000000000
          68.791666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dias'
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
      object QRLabel4: TQRLabel
        Left = 4
        Top = 4
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          10.583333333333330000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pront.'
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
      object QRLabel12: TQRLabel
        Left = 321
        Top = 4
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          849.312500000000000000
          10.583333333333330000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Acomd.'
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
        Left = 630
        Top = 4
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1666.875000000000000000
          10.583333333333330000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Motivo'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 204
      Width = 740
      Height = 20
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
        52.916666666666660000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 4
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
          10.583333333333300000
          5.291666666666670000
          119.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'AtendimentoH'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 52
        Top = 2
        Width = 200
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          137.583333333333000000
          5.291666666666670000
          529.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbPaciente
        DataField = 'Nome'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 256
        Top = 2
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          5.291666666666670000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'SenhaProrrogacao'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 667
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1764.770833333330000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DataAlta'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 372
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          984.250000000000000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DataInternacao'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 518
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1370.541666666670000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'ProrrogarAte'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 589
        Top = 2
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1558.395833333330000000
          5.291666666666670000
          82.020833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'QtdDiasProrrogacao'
        Mask = '##0.0'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 448
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1185.333333333330000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'DataIni'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 332
        Top = 2
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          878.416666666667000000
          5.291666666666670000
          76.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'Acomodacao'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 631
        Top = 2
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1669.520833333330000000
          5.291666666666670000
          79.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryRelatorio
        DataField = 'JustProrroga'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object bndCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 740
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
        185.208333333333300000
        1957.916666666667000000)
      BandType = rbPageHeader
      object relProrrogacao: TQRLabel
        Left = 168
        Top = 8
        Width = 403
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          444.500000000000000000
          21.166666666666670000
          1066.270833333333000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Controle de Prorroga'#231#245'es de Interna'#231#227'o'
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
        Left = 718
        Top = 8
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1899.708333333333000000
          21.166666666666670000
          58.208333333333340000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        FontSize = 9
      end
      object QRSysData2: TQRSysData
        Left = 705
        Top = 32
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1865.312500000000000000
          84.666666666666680000
          92.604166666666680000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Transparent = False
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Left = 667
        Top = 8
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1764.770833333333000000
          21.166666666666670000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pag.:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 9
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
          171.979166666667000000
          7.937500000000000000
          5.291666666666670000
          343.958333333333000000)
        Stretch = True
      end
      object QRLabel5: TQRLabel
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
          44.979166666666670000
          664.104166666666800000
          79.375000000000000000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Per'#237'odo de '
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
          44.979166666666670000
          883.708333333333400000
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
          44.979166666666670000
          883.708333333333400000
          129.645833333333300000
          21.166666666666670000)
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
      object QRLabel6: TQRLabel
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
          44.979166666666670000
          838.729166666666800000
          129.645833333333300000
          23.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #224
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 154
      Width = 740
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
        1957.916666666667000000)
      Expression = 'qryRelatorio.Cliente'
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 353
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
          933.979166666666600000
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
    object QRGroup2: TQRGroup
      Left = 38
      Top = 179
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 14737632
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      Expression = 'qryRelatorio.Hospital'
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText4: TQRDBText
        Left = 53
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
          140.229166666666700000
          10.583333333333330000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbHospital
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
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = qryRelatorio
    Left = 64
  end
  object qryRelatorio: TMSQuery
    OnCalcFields = qryRelatorioCalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select * from BBAtendimentoHItem,BBAtendimentoH'
      
        'where BBAtendimentoHItem.AtendimentoH=BBAtendimentoH.Atendimento' +
        'H '
      'order by Cliente,Hospital,DataInternacao,Paciente,Item')
    Left = 31
    object qryRelatorioAtendimentoH: TIntegerField
      FieldName = 'AtendimentoH'
      Origin = 'BB."BBAtendimentoHItem.DB".AtendimentoH'
    end
    object qryRelatorioDataAuditoria: TDateField
      FieldName = 'DataAuditoria'
      Origin = 'BB."BBAtendimentoHItem.DB".DataAuditoria'
    end
    object qryRelatorioProrrogarAte: TDateField
      FieldName = 'ProrrogarAte'
      Origin = 'BB."BBAtendimentoHItem.DB".ProrrogarAte'
    end
    object qryRelatorioProrrogacao: TBooleanField
      FieldName = 'Prorrogacao'
      Origin = 'BB."BBAtendimentoHItem.DB".Prorrogacao'
    end
    object qryRelatorioSenhaProrrogacao: TStringField
      FieldName = 'SenhaProrrogacao'
      Origin = 'BB."BBAtendimentoHItem.DB".SenhaProrrogacao'
      Size = 10
    end
    object qryRelatorioCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioPaciente: TIntegerField
      FieldName = 'Paciente'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioHospital: TIntegerField
      FieldName = 'Hospital'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioDataInternacao: TDateField
      FieldName = 'DataInternacao'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioDataAlta: TDateField
      FieldName = 'DataAlta'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioDataIni: TDateField
      FieldKind = fkCalculated
      FieldName = 'DataIni'
      Calculated = True
    end
    object qryRelatorioQtdDiasProrrogacao: TFloatField
      FieldName = 'QtdDiasProrrogacao'
      Origin = 'BB."BBAtendimentoHItem.DB".QtdDiasProrrogacao'
    end
    object qryRelatorioAcomodacao: TStringField
      FieldName = 'Acomodacao'
      Origin = 'BB."BBAtendimentoHItem.DB".Acomodacao'
      Size = 1
    end
    object qryRelatorioJustProrroga: TIntegerField
      FieldName = 'JustProrroga'
      Origin = 'BB."BBAtendimentoHItem.DB".JustProrroga'
    end
  end
    object dbPaciente: TMSTable
    Connection = frmMenu.BancoBBaud
    IndexFieldNames = 'Paciente'
    MasterFields = 'Paciente'
    MasterSource = dsRelatorio
    TableName = 'BBPacientes.DB'
    Left = 100
    object dbPacientePaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object dbPacienteNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object dbPacienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 40
    end
    object dbPacienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object dbPacienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dbPacienteUF: TStringField
      FieldName = 'UF'
      EditMask = 'LL;1;_'
      Size = 2
    end
    object dbPacienteCep: TStringField
      FieldName = 'Cep'
      EditMask = '00000\-999;1;_'
      Size = 9
    end
    object dbPacienteFone1: TStringField
      FieldName = 'Fone1'
      Size = 60
    end
    object dbPacienteFone2: TStringField
      FieldName = 'Fone2'
      Size = 60
    end
    object dbPacienteFax: TStringField
      FieldName = 'Fax'
      Size = 60
    end
    object dbPacienteDocumento: TStringField
      FieldName = 'Documento'
      Size = 40
    end
    object dbPacienteContato: TStringField
      FieldName = 'Contato'
      Size = 40
    end
    object dbPacienteAnoNascimento: TIntegerField
      DisplayWidth = 4
      FieldName = 'AnoNascimento'
    end
    object dbPacienteUsuario: TStringField
      FieldName = 'Usuario'
      Size = 10
    end
    object dbPacienteDataInclusao: TDateField
      FieldName = 'DataInclusao'
    end
    object dbPacienteDataExclusao: TDateField
      FieldName = 'DataExclusao'
    end
    object dbPacienteIdade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Idade'
      Calculated = True
    end
    object dbPacienteCodigoPaciente: TStringField
      FieldName = 'CodigoPaciente'
    end
  end
  object dbCliente: TMSTable
    Connection = frmMenu.BancoBBaud
    IndexFieldNames = 'Cliente'
    MasterFields = 'Cliente'
    MasterSource = dsRelatorio
    TableName = 'BBClientes.DB'
    Left = 132
    Top = 65535
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
  object dbHospital: TMSTable
    Connection = frmMenu.BancoBBaud
    IndexFieldNames = 'Hospital'
    MasterFields = 'Hospital'
    MasterSource = dsRelatorio
    TableName = 'BBHospitais.DB'
    Left = 164
    Top = 65534
    object dbHospitalHospital: TIntegerField
      FieldName = 'Hospital'
    end
    object dbHospitalNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
end
