object relComparativoMes: TrelComparativoMes
  Left = 219
  Top = 40
  Width = 690
  Height = 552
  VertScrollBar.Position = 16
  Caption = 'relComparativoMes'
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
    Top = -8
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
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        232.833333333333400000
        1957.916666666667000000)
      BandType = rbPageHeader
      object lblTitulo: TQRLabel
        Left = 270
        Top = 8
        Width = 199
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          714.375000000000000000
          21.166666666666670000
          526.520833333333400000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Comparativo Mes Anterior'
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
          171.979166666667000000
          18.520833333333300000
          29.104166666666700000
          343.958333333333000000)
        Stretch = True
      end
      object QRDBImage1: TQRDBImage
        Left = 561
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
          1484.312500000000000000
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
      Top = 181
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbDetail
      object cmp: TQRExpr
        Left = 240
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
          635.000000000000000000
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
          'if(dbRelatorio.CustoPaciente2=0,0,(dbRelatorio.CustoPaciente1/db' +
          'Relatorio.CustoPaciente2-1)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object cmd: TQRExpr
        Left = 363
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
          960.437500000000000000
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
          'if(dbRelatorio.CustoDiaria2=0,0,(dbRelatorio.CustoDiaria1/dbRela' +
          'torio.CustoDiaria2-1)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
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
        Expression = 'dbRelatorio.PGlosa1-dbRelatorio.PGlosa2'
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
        Expression = 'dbRelatorio.Permanencia1-dbRelatorio.Permanencia2'
        Mask = '###,##0.00'
        FontSize = 9
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 126
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = 16745090
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
      BandType = rbColumnHeader
      object Mes2: TQRLabel
        Left = 363
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
          960.437500000000000000
          10.583333333333300000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CMD'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
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
        Caption = '% Glosa'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
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
        Caption = 'MP'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 240
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
          635.000000000000000000
          10.583333333333300000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CMP'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object bndTotGeral: TQRBand
      Left = 38
      Top = 231
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = bndTotGeralBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbSummary
      object qrlabel: TQRLabel
        Left = 8
        Top = 5
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
          13.229166666666670000
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
        Left = 240
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tcmpPrint
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(if(dbRelatorio.Paciente2=0,0,(sum(dbRelatorio.Valor2)-sum(dbR' +
          'elatorio.Glosa2))/sum(dbRelatorio.Paciente2))=0,0,(if(dbRelatori' +
          'o.Paciente1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRelatorio.Glosa1)' +
          ')/sum(dbRelatorio.Paciente1))/if(dbRelatorio.Paciente2=0,0,(sum(' +
          'dbRelatorio.Valor2)-sum(dbRelatorio.Glosa2))/sum(dbRelatorio.Pac' +
          'iente2))-1)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tcmd: TQRExpr
        Left = 363
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tcmdPrint
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(if(dbRelatorio.Diaria2=0,0,(sum(dbRelatorio.Valor2)-sum(dbRel' +
          'atorio.Glosa2))/sum(dbRelatorio.Diaria2))=0,0,(if(dbRelatorio.Di' +
          'aria1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRelatorio.Glosa1))/sum(' +
          'dbRelatorio.Diaria1))/if(dbRelatorio.Diaria2=0,0,(sum(dbRelatori' +
          'o.Valor2)-sum(dbRelatorio.Glosa2))/sum(dbRelatorio.Diaria2))-1)*' +
          '100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tglosa: TQRExpr
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
        OnPrint = tglosaPrint
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          '(if(sum(dbRelatorio.Valor1)=0,0,sum(dbRelatorio.Glosa1)/sum(dbRe' +
          'latorio.Valor1))*100) -(if(sum(dbRelatorio.Valor2)=0,0,sum(dbRel' +
          'atorio.Glosa2)/sum(dbRelatorio.Valor2))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tmp: TQRExpr
        Left = 611
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tmpPrint
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,sum(dbRelatorio.Diaria1)/sum(d' +
          'bRelatorio.Paciente1)) -if(sum(dbRelatorio.Paciente2)=0,0,sum(db' +
          'Relatorio.Diaria2)/sum(dbRelatorio.Paciente2))'
        Mask = '###,##0.00'
        FontSize = 9
      end
    end
    object bndLegenda: TQRChildBand
      Left = 38
      Top = 256
      Width = 740
      Height = 92
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
        243.416666666666700000
        1957.916666666667000000)
      ParentBand = bndTotGeral
      object QRLabel4: TQRLabel
        Left = 6
        Top = 4
        Width = 53
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
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Legenda:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRMemo1: TQRMemo
        Left = 64
        Top = 4
        Width = 458
        Height = 64
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          169.333333333333300000
          169.333333333333300000
          10.583333333333330000
          1211.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          
            'CMP - varia'#231#227'o percentual do custo m'#233'dio por paciente em rela'#231#227'o' +
            ' ao m'#234's anterior'
          
            'CMD - varia'#231#227'o percentual do custo m'#233'dio por di'#225'ria em rela'#231#227'o a' +
            'o m'#234's anterior'
          
            '% Glosa - varia'#231#227'o na percentagem de glosa em rela'#231#227'o ao m'#234's ant' +
            'erior'
          'MP - varia'#231#227'o da m'#233'dia de perman'#234'ncia (em dias)')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 64
        Top = 70
        Width = 100
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          169.333333333333000000
          185.208333333333000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Varia'#231#227'o Positiva'
        Color = 16747660
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 184
        Top = 70
        Width = 100
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          486.833333333333000000
          185.208333333333000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Varia'#231#227'o Negativa'
        Color = 8421631
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object bndRegiao: TQRGroup
      Left = 38
      Top = 151
      Width = 740
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = bndRegiaoBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        79.375000000000000000
        1957.916666666667000000)
      Expression = 'dbRelatorio.Regiao'
      FooterBand = bndTotRegiao
      Master = qrpRelatorio
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 338
        Top = 7
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          894.291666666666800000
          18.520833333333330000
          166.687500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dbRegiao
        DataField = 'Descricao'
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
    object bndTotRegiao: TQRBand
      Left = 38
      Top = 206
      Width = 740
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = bndTotRegiaoBeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333340000
        1957.916666666667000000)
      BandType = rbGroupFooter
      object QRLabel7: TQRLabel
        Left = 8
        Top = 5
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
          13.229166666666670000
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
      object tcmp1: TQRExpr
        Left = 240
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tcmp1Print
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(if(dbRelatorio.Paciente2=0,0,(sum(dbRelatorio.Valor2)-sum(dbR' +
          'elatorio.Glosa2))/sum(dbRelatorio.Paciente2))=0,0,(if(dbRelatori' +
          'o.Paciente1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRelatorio.Glosa1)' +
          ')/sum(dbRelatorio.Paciente1))/if(dbRelatorio.Paciente2=0,0,(sum(' +
          'dbRelatorio.Valor2)-sum(dbRelatorio.Glosa2))/sum(dbRelatorio.Pac' +
          'iente2))-1)*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tcmd1: TQRExpr
        Left = 363
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tcmd1Print
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(if(dbRelatorio.Diaria2=0,0,(sum(dbRelatorio.Valor2)-sum(dbRel' +
          'atorio.Glosa2))/sum(dbRelatorio.Diaria2))=0,0,(if(dbRelatorio.Di' +
          'aria1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRelatorio.Glosa1))/sum(' +
          'dbRelatorio.Diaria1))/if(dbRelatorio.Diaria2=0,0,(sum(dbRelatori' +
          'o.Valor2)-sum(dbRelatorio.Glosa2))/sum(dbRelatorio.Diaria2))-1)*' +
          '100)'
        Mask = '##0.00%'
        FontSize = 9
      end
      object tmp1: TQRExpr
        Left = 611
        Top = 3
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
          7.937500000000000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = tmp1Print
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,sum(dbRelatorio.Diaria1)/sum(d' +
          'bRelatorio.Paciente1)) -if(sum(dbRelatorio.Paciente2)=0,0,sum(db' +
          'Relatorio.Diaria2)/sum(dbRelatorio.Paciente2))'
        Mask = '###,##0.00'
        FontSize = 9
      end
      object QRExpr1: TQRExpr
        Left = 240
        Top = 32
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          635.000000000000000000
          84.666666666666700000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente2=0,0,(sum(dbRelatorio.Valor2)-sum(dbRela' +
          'torio.Glosa2))/sum(dbRelatorio.Paciente2))'
        FontSize = 9
      end
      object QRExpr2: TQRExpr
        Left = 240
        Top = 56
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          635.000000000000000000
          148.166666666667000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Paciente1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRela' +
          'torio.Glosa1))/sum(dbRelatorio.Paciente1))'
        FontSize = 9
      end
      object QRExpr3: TQRExpr
        Left = 368
        Top = 32
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          973.666666666667000000
          84.666666666666700000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria2=0,0,(sum(dbRelatorio.Valor2)-sum(dbRelato' +
          'rio.Glosa2))/sum(dbRelatorio.Diaria2))'
        FontSize = 9
      end
      object QRExpr4: TQRExpr
        Left = 368
        Top = 56
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          973.666666666667000000
          148.166666666667000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(dbRelatorio.Diaria1=0,0,(sum(dbRelatorio.Valor1)-sum(dbRelato' +
          'rio.Glosa1))/sum(dbRelatorio.Diaria1))'
        FontSize = 9
      end
      object QRExpr5: TQRExpr
        Left = 488
        Top = 53
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1291.166666666670000000
          140.229166666667000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor1)=0,0,sum(dbRelatorio.Glosa1)/sum(dbRel' +
          'atorio.Valor1))*100'
        FontSize = 9
      end
      object QRExpr6: TQRExpr
        Left = 488
        Top = 32
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1291.166666666670000000
          84.666666666666700000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Valor2)=0,0,sum(dbRelatorio.Glosa2)/sum(dbRel' +
          'atorio.Valor2))*100'
        FontSize = 9
      end
      object QRExpr7: TQRExpr
        Left = 616
        Top = 32
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1629.833333333330000000
          84.666666666666700000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente2)=0,0,sum(dbRelatorio.Diaria2)/sum(d' +
          'bRelatorio.Paciente2))'
        FontSize = 9
      end
      object QRExpr8: TQRExpr
        Left = 616
        Top = 56
        Width = 100
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1629.833333333330000000
          148.166666666667000000
          264.583333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'if(sum(dbRelatorio.Paciente1)=0,0,sum(dbRelatorio.Diaria1)/sum(d' +
          'bRelatorio.Paciente1))'
        FontSize = 9
      end
      object tglosa1: TQRExpr
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
        OnPrint = tglosa1Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          '(if(sum(dbRelatorio.Valor1)=0,0,sum(dbRelatorio.Glosa1)/sum(dbRe' +
          'latorio.Valor1))*100) -(if(sum(dbRelatorio.Valor2)=0,0,sum(dbRel' +
          'atorio.Glosa2)/sum(dbRelatorio.Valor2))*100)'
        Mask = '##0.00%'
        FontSize = 9
      end
    end
  end
  object qryRelatorio: TQuery
    DatabaseName = 'BB'
    SQL.Strings = (
      'Select BBAtendimentoHI.Hospital,'
      '           BBAtendimentoHI.MesCompetencia as Mes,'
      '           BBAtendimentoHI.AnoCompetencia as Ano,'
      '           count(BBAtendimentoHI.Paciente) as Paciente,'
      
        '           sum(cast(BBAtendimentoHI.Complemento as Integer)) as ' +
        'Complemento,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(BBAtendimentoHI.ValorGlosadoM) as ValorGlosaM,'
      '           sum(BBAtendimentoHI.ValorGlosadoE) as ValorGlosaE,'
      '           sum(BBAtendimentoHI.Diarias) as Diarias,'
      
        '           sum(BBAtendimentoHI.DiariasGlosadas) as DiariasGlosad' +
        'as'
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.Cliente=1'
      'and BBATendimentoHI.AnoCompetencia>=2001 '
      'and BBAtendimentoHI.AnoCompetencia<=2002'
      'group by Hospital, Ano, Mes'
      'order by  Hospital, Ano, Mes')
    Left = 88
    Top = 16
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
    object qryRelatorioPaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object qryRelatorioComplemento: TFloatField
      FieldName = 'Complemento'
    end
    object qryRelatorioDiarias: TFloatField
      FieldName = 'Diarias'
    end
    object qryRelatorioDiariasGlosadas: TFloatField
      FieldName = 'DiariasGlosadas'
    end
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao;Nome'
    MasterSource = dsRelatorio
    TableName = 'BBHospitais.DB'
    Left = 56
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
    OnCalcFields = dbRelatorioCalcFields
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
    object dbRelatorioPaciente2: TIntegerField
      FieldName = 'Paciente2'
    end
    object dbRelatorioValor2: TCurrencyField
      FieldName = 'Valor2'
    end
    object dbRelatorioGlosa2: TCurrencyField
      FieldName = 'Glosa2'
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
    object dbRelatorioPaciente4: TIntegerField
      FieldName = 'Paciente4'
    end
    object dbRelatorioValor4: TCurrencyField
      FieldName = 'Valor4'
    end
    object dbRelatorioGlosa4: TCurrencyField
      FieldName = 'Glosa4'
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
    object dbRelatorioPaciente6: TIntegerField
      FieldName = 'Paciente6'
    end
    object dbRelatorioValor6: TCurrencyField
      FieldName = 'Valor6'
    end
    object dbRelatorioGlosa6: TCurrencyField
      FieldName = 'Glosa6'
    end
    object dbRelatorioDiaria1: TFloatField
      FieldName = 'Diaria1'
    end
    object dbRelatorioDiaria2: TFloatField
      FieldName = 'Diaria2'
    end
    object dbRelatorioDiaria3: TFloatField
      FieldName = 'Diaria3'
    end
    object dbRelatorioDiaria4: TFloatField
      FieldName = 'Diaria4'
    end
    object dbRelatorioDiaria5: TFloatField
      FieldName = 'Diaria5'
    end
    object dbRelatorioDiaria6: TFloatField
      FieldName = 'Diaria6'
    end
    object dbRelatorioCustoPaciente1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPaciente1'
      Calculated = True
    end
    object dbRelatorioCustoPaciente2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoPaciente2'
      Calculated = True
    end
    object dbRelatorioCustoDiaria1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoDiaria1'
      Calculated = True
    end
    object dbRelatorioCustoDiaria2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoDiaria2'
      Calculated = True
    end
    object dbRelatorioPermanencia1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Permanencia1'
      Calculated = True
    end
    object dbRelatorioPermanencia2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Permanencia2'
      Calculated = True
    end
    object dbRelatorioPGlosa1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PGlosa1'
      Calculated = True
    end
    object dbRelatorioPGlosa2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PGlosa2'
      Calculated = True
    end
  end
  object dsRelatorio: TDataSource
    DataSet = dbRelatorio
    Left = 120
    Top = 16
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    TableName = 'BBClientes.DB'
    Left = 152
    Top = 16
  end
  object dbRegiao: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao'
    MasterFields = 'Regiao'
    MasterSource = dsRelatorio
    TableName = 'BBRegiao.db'
    Left = 184
    Top = 16
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
end
