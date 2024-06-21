object relRepresentativadeConta: TrelRepresentativadeConta
  Left = 210
  Top = 147
  Width = 730
  Height = 425
  Caption = 'relRepresentatividadeConta'
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
    Left = 8
    Top = 0
    Width = 816
    Height = 1056
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
    ReportTitle = 'Comparativo Auditoria Hospital'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    object bndCabecalho: TQRBand
      Left = 38
      Top = 38
      Width = 740
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
        1957.916666666667000000)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 177
        Top = 8
        Width = 385
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          468.312500000000000000
          21.166666666666670000
          1018.645833333333000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Representativade de Contas acima de  R$10000,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
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
          171.979166666667000000
          18.520833333333300000
          29.104166666666700000
          343.958333333333000000)
        Stretch = True
      end
      object QRDBImage1: TQRDBImage
        Left = 581
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
          1537.229166666670000000
          15.875000000000000000
          396.875000000000000000)
        DataField = 'Logotipo'
        DataSet = dbCliente
        Stretch = True
      end
      object QRDBText20: TQRDBText
        Left = 351
        Top = 28
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          928.687500000000000000
          74.083333333333340000
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
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object lblAnalise: TQRLabel
        Left = 333
        Top = 65
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          171.979166666666700000
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
      object Mes1: TQRLabel
        Left = 327
        Top = 46
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          865.187500000000000000
          121.708333333333300000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Competencia'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 202
      Width = 740
      Height = 25
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
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText19: TQRDBText
        Left = 8
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
          21.166666666666670000
          10.583333333333330000
          89.958333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
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
      object glosa: TQRExpr
        Left = 487
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1288.520833333330000000
          10.583333333333300000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor1=0,0,(dbRelatorio.Valor3 / dbRelatorio.Valo' +
          'r1*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object mp: TQRExpr
        Left = 611
        Top = 4
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1616.604166666670000000
          10.583333333333300000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Valor2=0,0,(dbRelatorio.Valor4 / dbRelatorio.Valo' +
          'r2*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText1: TQRDBText
        Left = 242
        Top = 4
        Width = 33
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          640.291666666667000000
          10.583333333333300000
          87.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Paciente3'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRExpr1: TQRExpr
        Left = 280
        Top = 4
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          740.833333333333000000
          10.583333333333300000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente1=0,0,(dbRelatorio.Paciente3 / dbRelatori' +
          'o.Paciente1*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 415
        Top = 5
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1098.020833333333000000
          13.229166666666670000
          95.250000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRelatorio
        DataField = 'Valor3'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 126
      Width = 740
      Height = 51
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
        134.937500000000000000
        1957.916666666667000000)
      BandType = rbColumnHeader
      object Mes2: TQRLabel
        Left = 363
        Top = 27
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          960.437500000000000000
          71.437500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Valor Total'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 487
        Top = 27
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1288.520833333330000000
          71.437500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Mes Atual'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 611
        Top = 27
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1616.604166666670000000
          71.437500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Mes Anterior'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 240
        Top = 27
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          71.437500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Qtd. Contas'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object lblTitulo1: TQRLabel
        Left = 240
        Top = 3
        Width = 211
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          635.000000000000000000
          7.937500000000000000
          558.270833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Contas maiores que 10.000'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 488
        Top = 3
        Width = 211
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1291.166666666670000000
          7.937500000000000000
          558.270833333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Percentual em rela'#231#227'o ao VTP'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 252
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbSummary
      object QRLabel11: TQRLabel
        Left = 8
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
          21.166666666666670000
          10.583333333333330000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Geral'
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
      object tcmp: TQRExpr
        Left = 280
        Top = 2
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          740.833333333333000000
          5.291666666666670000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Paciente3) / ' +
          'sum(dbRelatorio.Paciente1)*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tcmd: TQRExpr
        Left = 336
        Top = 2
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          889.000000000000000000
          5.291666666666670000
          309.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3)'
        Mask = 'R$ ##,###,##0.00'
        FontSize = 9
      end
      object tglosa: TQRExpr
        Left = 487
        Top = 2
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1288.520833333330000000
          5.291666666666670000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(qryGeral.Valor1=0,0,(sum(dbRelatorio.Valor3) / qryGeral.Valor' +
          '1*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tmp: TQRExpr
        Left = 611
        Top = 2
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1616.604166666670000000
          5.291666666666670000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(qryGeral.Valor2=0,0,(sum(dbRelatorio.Valor4) / qryGeral.Valor' +
          '2*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr2: TQRExpr
        Left = 224
        Top = 2
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          592.666666666667000000
          5.291666666666670000
          132.291666666667000000)
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
    end
    object QRChildBand1: TQRChildBand
      Left = 38
      Top = 277
      Width = 740
      Height = 22
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
        58.208333333333340000
        1957.916666666667000000)
      ParentBand = SummaryBand1
      object QRLabel4: TQRLabel
        Left = 6
        Top = 4
        Width = 106
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          15.875000000000000000
          10.583333333333330000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VTP: Valor Total Pago'
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
    end
    object bndRegiao: TQRGroup
      Left = 38
      Top = 177
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = bndRegiaoAfterPrint
      AlignToBottom = False
      Color = clSkyBlue
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      Expression = 'dbRelatorio.Regiao'
      FooterBand = QRBand1
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText3: TQRDBText
        Left = 16
        Top = 3
        Width = 72
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          42.333333333333340000
          7.937500000000000000
          190.500000000000000000)
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
    object QRBand1: TQRBand
      Left = 38
      Top = 227
      Width = 740
      Height = 25
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
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbGroupFooter
      object QRLabel5: TQRLabel
        Left = 8
        Top = 4
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          10.583333333333330000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Regi'#227'o'
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
      object QRExpr3: TQRExpr
        Left = 280
        Top = 2
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          740.833333333333000000
          5.291666666666670000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,(sum(dbRelatorio.Paciente3) / ' +
          'sum(dbRelatorio.Paciente1)*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr4: TQRExpr
        Left = 336
        Top = 2
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          889.000000000000000000
          5.291666666666670000
          309.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(dbRelatorio.Valor3)'
        Mask = 'R$ ##,###,##0.00'
        FontSize = 9
      end
      object QRExpr5: TQRExpr
        Left = 487
        Top = 2
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1288.520833333330000000
          5.291666666666670000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(qryTotal.Valor1=0,0,(sum(dbRelatorio.Valor3) / qryTotal.Valor' +
          '1*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr6: TQRExpr
        Left = 611
        Top = 2
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1616.604166666670000000
          5.291666666666670000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 
          'if(qryTotal.Valor2=0,0,(sum(dbRelatorio.Valor4) / qryTotal.Valor' +
          '2*100))'
        Mask = '##0.00%'
        FontSize = 9
      end
      object QRExpr7: TQRExpr
        Left = 224
        Top = 2
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          592.666666666667000000
          5.291666666666670000
          132.291666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = True
        Transparent = True
        WordWrap = True
        Expression = 'sum(dbRelatorio.Paciente3)'
        Mask = '###,##0'
        FontSize = 9
      end
    end
  end
  object qryRelatorioT: TQuery
    OnCalcFields = qryRelatorioTCalcFields
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Hospital,'
      '           BBAtendimentoHI.MesCompetencia as Mes,'
      '           BBAtendimentoHI.AnoCompetencia as Ano,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      '           sum(BBAtendimentoHI.Valor) as ValorTot,'
      '           sum(BBAtendimentoHI.ValorGlosadoM) as ValorGlosadoM,'
      '           sum(BBAtendimentoHI.ValorGlosadoE) as ValorGlosadoE '
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.Cliente=2'
      'and BBATendimentoHI.AnoCompetencia>=2003 '
      'and BBAtendimentoHI.AnoCompetencia<=2004'
      'group by Hospital, Ano, Mes'
      'order by  Hospital, Ano, Mes')
    Left = 88
    Top = 16
    object qryRelatorioTHospital: TIntegerField
      DisplayWidth = 14
      FieldName = 'Hospital'
    end
    object qryRelatorioTMes: TIntegerField
      DisplayWidth = 14
      FieldName = 'Mes'
    end
    object qryRelatorioTAno: TIntegerField
      DisplayWidth = 14
      FieldName = 'Ano'
    end
    object qryRelatorioTPaciente: TIntegerField
      DisplayWidth = 5
      FieldName = 'Paciente'
      Origin = 'BB."BBAtendimentoHI.DB".Paciente'
    end
    object qryRelatorioTValorTot: TCurrencyField
      DisplayWidth = 22
      FieldName = 'ValorTot'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorioTValorGlosadoM: TCurrencyField
      DisplayWidth = 17
      FieldName = 'ValorGlosadoM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorioTValorGlosadoE: TCurrencyField
      DisplayWidth = 17
      FieldName = 'ValorGlosadoE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorioTValor: TCurrencyField
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao;Nome'
    MasterSource = dsRelatorio
    TableName = 'BBHospitais.DB'
    Left = 152
    Top = 16
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
  object dbRelatorio: TTable
    AfterInsert = dbRelatorioAfterInsert
    DatabaseName = 'BB'
    Filtered = True
    OnFilterRecord = dbRelatorioFilterRecord
    Exclusive = True
    TableName = 'BBRelEvolucaoCustoR.db'
    Left = 17
    Top = 16
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
  object dsRelatorio: TDataSource
    DataSet = dbRelatorio
    Left = 48
    Top = 16
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    TableName = 'BBClientes.DB'
    Left = 176
    Top = 16
  end
  object qryRelatorio: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Hospital,'
      '           BBAtendimentoHI.MesCompetencia as Mes,'
      '           BBAtendimentoHI.AnoCompetencia as Ano,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      '           sum(BBAtendimentoHI.Valor) as ValorTot,'
      '           sum(BBAtendimentoHI.ValorGlosadoM) as ValorGlosadoM,'
      '           sum(BBAtendimentoHI.ValorGlosadoE) as ValorGlosadoE'
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.Cliente=2'
      'and BBATendimentoHI.AnoCompetencia>=2003 '
      'and BBAtendimentoHI.AnoCompetencia<=2004'
      'group by Hospital, Ano, Mes'
      'order by  Hospital, Ano, Mes'
      '')
    Left = 120
    Top = 16
    object qryRelatorioHospital: TIntegerField
      DisplayWidth = 14
      FieldName = 'Hospital'
    end
    object qryRelatorioMes: TIntegerField
      DisplayWidth = 14
      FieldName = 'Mes'
    end
    object qryRelatorioAno: TIntegerField
      DisplayWidth = 14
      FieldName = 'Ano'
    end
    object qryRelatorioPaciente: TIntegerField
      DisplayWidth = 3
      FieldName = 'Paciente'
      Origin = 'BB."BBAtendimentoHI.DB".Paciente'
    end
    object qryRelatorioValorTot: TCurrencyField
      DisplayWidth = 27
      FieldName = 'ValorTot'
      Origin = 'BB."BBAtendimentoHI.DB".Valor'
    end
    object qryRelatorioValorGlosadoM: TCurrencyField
      DisplayWidth = 17
      FieldName = 'ValorGlosadoM'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoM'
    end
    object qryRelatorioValorGlosadoE: TCurrencyField
      DisplayWidth = 17
      FieldName = 'ValorGlosadoE'
      Origin = 'BB."BBAtendimentoHI.DB".ValorGlosadoE'
    end
    object qryRelatorioValor: TCurrencyField
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
  end
  object dbRegiao: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao'
    MasterFields = 'Regiao'
    MasterSource = dsRelatorio
    TableName = 'BBRegiao.db'
    Left = 208
    Top = 16
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object qryTotal: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select  regiao,'
      '            sum(valor1) as valor1,'
      '            sum(valor2) as valor2'
      'from BBRelEvolucaoCustoR'
      'group by regiao'
      'order by regiao')
    Left = 240
    Top = 16
    object qryTotalregiao: TIntegerField
      FieldName = 'regiao'
      Origin = 'BB2002."BBRelEvolucaoCustoR.DB".Regiao'
    end
    object qryTotalvalor1: TCurrencyField
      FieldName = 'valor1'
      Origin = 'BB2002."BBRelEvolucaoCustoR.DB".Valor1'
    end
    object qryTotalvalor2: TCurrencyField
      FieldName = 'valor2'
      Origin = 'BB2002."BBRelEvolucaoCustoR.DB".Valor2'
    end
  end
  object qryGeral: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select  sum(valor1) as valor1,'
      '            sum(valor2) as valor2'
      'from BBRelEvolucaoCustoR')
    Left = 272
    Top = 16
    object qryGeralvalor1: TCurrencyField
      FieldName = 'valor1'
      Origin = 'BB2002."BBRelEvolucaoCustoR.DB".Valor1'
    end
    object qryGeralvalor2: TCurrencyField
      FieldName = 'valor2'
      Origin = 'BB2002."BBRelEvolucaoCustoR.DB".Valor2'
    end
  end
end
