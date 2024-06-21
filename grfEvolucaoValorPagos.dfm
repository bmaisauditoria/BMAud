object grfEvolucaoValorPago: TgrfEvolucaoValorPago
  Left = 205
  Top = 282
  Width = 738
  Height = 375
  Caption = 'grfEvolucaoValorPago'
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
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = qrpRelatorioBeforePrint
    DataSet = dbRelatorio
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
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    object DetailBand1: TQRBand
      Left = 38
      Top = 126
      Width = 740
      Height = 271
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        717.020833333333400000
        1957.916666666667000000)
      BandType = rbDetail
      object QRChart1: TQRChart
        Left = 17
        Top = 43
        Width = 689
        Height = 223
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          590.020833333333000000
          44.979166666666700000
          113.770833333333000000
          1822.979166666670000000)
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'S'#227'o Paulo'
            '')
          Title.Visible = False
          LeftAxis.AxisValuesFormat = 'R$ #,##0.###'
          View3D = False
          object Series1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = dbGrafico
            SeriesColor = clBlue
            ShowInLegend = False
            Title = 'Meses'
            ValueFormat = 'R$ #,##0.00'
            XLabelsSource = 'Nome'
            LinePen.Color = clBlue
            LinePen.Width = 4
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Valor'
          end
        end
      end
      object QRDBText1: TQRDBText
        Left = 338
        Top = 11
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
          29.104166666666670000
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
        Left = 277
        Top = 8
        Width = 185
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          732.895833333333400000
          21.166666666666670000
          489.479166666666600000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Evolu'#231#227'o do Valor Pago'
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
        Left = 576
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
          1524.000000000000000000
          15.875000000000000000
          396.875000000000000000)
        DataField = 'Logotipo'
        DataSet = dbCliente
        Stretch = True
      end
      object QRDBText20: TQRDBText
        Left = 351
        Top = 30
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
          79.375000000000000000
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
      object QRLabel2: TQRLabel
        Left = 335
        Top = 47
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          886.354166666666900000
          124.354166666666700000
          182.562500000000000000)
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
    object SummaryBand1: TQRBand
      Left = 38
      Top = 397
      Width = 740
      Height = 271
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = SummaryBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        717.020833333333400000
        1957.916666666667000000)
      BandType = rbSummary
      object QRLabel1: TQRLabel
        Left = 334
        Top = 11
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          883.708333333333400000
          29.104166666666670000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = True
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
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRChart2: TQRChart
        Left = 17
        Top = 43
        Width = 689
        Height = 223
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          590.020833333333000000
          44.979166666666700000
          113.770833333333000000
          1822.979166666670000000)
        object QRDBChart2: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'S'#227'o Paulo'
            '')
          Title.Visible = False
          LeftAxis.AxisValuesFormat = 'R$ #,##0.###'
          View3D = False
          object LineSeries1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = dbGrafico
            SeriesColor = clBlue
            ShowInLegend = False
            Title = 'Meses'
            ValueFormat = 'R$ #,##0.00'
            XLabelsSource = 'Nome'
            LinePen.Color = clBlue
            LinePen.Width = 4
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'Total1'
          end
        end
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
      
        '            sum(cast(BBAtendimentoHI.Complemento as Integer)) as' +
        ' Complemento,'
      '           sum(BBAtendimentoHI.Valor) as Valor,'
      '           sum(BBAtendimentoHI.ValorGlosadoM) as ValorGlosaM,'
      '           sum(BBAtendimentoHI.ValorGlosadoE) as ValorGlosaE'
      'from BBAtendimentoHI'
      'where BBAtendimentoHI.Cliente=1'
      'and BBATendimentoHI.AnoCompetencia>=2001 '
      'and BBAtendimentoHI.AnoCompetencia<=2002'
      'group by Hospital, Ano, Mes'
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
    object qryRelatorioPaciente: TIntegerField
      FieldName = 'Paciente'
    end
    object qryRelatorioComplemento: TFloatField
      FieldName = 'Complemento'
    end
  end
  object dbHospital: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao;Nome'
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
  object dbRegiao: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Regiao'
    MasterFields = 'Regiao'
    MasterSource = dsRelatorio
    TableName = 'BBRegiao.db'
    Left = 68
    Top = 8
    object dbRegiaoRegiao: TIntegerField
      FieldName = 'Regiao'
    end
    object dbRegiaoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object dbRelatorio: TTable
    DatabaseName = 'BB'
    Exclusive = True
    TableName = 'BBRelEvolucaoCustoR.db'
    Left = 96
    Top = 8
    object dbRelatorioRegiao: TIntegerField
      FieldName = 'Regiao'
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
    object dbRelatorioNC: TSmallintField
      FieldName = 'NC'
    end
    object dbRelatorioNome: TStringField
      FieldName = 'Nome'
      Size = 40
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
  end
  object dsRelatorio: TDataSource
    DataSet = dbRelatorio
    Left = 128
    Top = 8
  end
  object dbCliente: TTable
    DatabaseName = 'BB'
    IndexFieldNames = 'Cliente'
    TableName = 'BBClientes.DB'
    Left = 160
    Top = 8
  end
  object dbGrafico: TTable
    DatabaseName = 'BB'
    TableName = 'BBRelGrafico.db'
    Left = 192
    Top = 8
    object dbGraficoOrdem: TStringField
      FieldName = 'Ordem'
      Size = 15
    end
    object dbGraficoNome: TStringField
      FieldName = 'Nome'
      Size = 15
    end
    object dbGraficoValor: TFloatField
      FieldName = 'Valor'
    end
    object dbGraficoTotal1: TFloatField
      FieldName = 'Total1'
    end
    object dbGraficoTotal2: TFloatField
      FieldName = 'Total2'
    end
    object dbGraficoMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
  end
end
