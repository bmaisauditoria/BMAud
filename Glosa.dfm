object Form1: TForm1
  Left = 281
  Top = 156
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 144
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 440
    Top = 8
    Width = 409
    Height = 417
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 88
    Width = 401
    Height = 161
    DataSource = dsAntigo
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 272
    Width = 401
    Height = 120
    DataSource = dsNovo
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = Edit1Change
  end
  object Button2: TButton
    Left = 232
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Atualiza'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Antigo: TTable
    DatabaseName = 'BBAtual'
    Filtered = True
    OnFilterRecord = AntigoFilterRecord
    IndexFieldNames = 'Cliente;AtendimentoHI;Tipo;GlosaI'
    TableName = 'BBAtendimentoHIGlosa.DB'
    Left = 64
    Top = 8
    object AntigoCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object AntigoAtendimentoHI: TIntegerField
      FieldName = 'AtendimentoHI'
    end
    object AntigoTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object AntigoGlosaI: TStringField
      FieldName = 'GlosaI'
      Size = 2
    end
    object AntigoValor: TCurrencyField
      FieldName = 'Valor'
    end
    object AntigoValorApresentado: TCurrencyField
      FieldName = 'ValorApresentado'
    end
  end
  object Novo: TMSQuery
    Connection = dados
    SQL.Strings = (
      'select * from atendhiGlosa'
      'where cliente=28')
    MasterSource = dsAntigo
    MasterFields = 'Cliente;AtendimentoHI;Tipo;GlosaI'
    DetailFields = 'Cliente;AtendimentoHI;Tipo;GlosaI'
    Left = 311
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cliente'
      end
      item
        DataType = ftUnknown
        Name = 'AtendimentoHI'
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
      end
      item
        DataType = ftUnknown
        Name = 'GlosaI'
      end>
    object NovoCliente: TIntegerField
      FieldName = 'Cliente'
      Origin = 'atendhiGlosa.Cliente'
    end
    object NovoAtendimentoHI: TIntegerField
      FieldName = 'AtendimentoHI'
      Origin = 'atendhiGlosa.AtendimentoHI'
    end
    object NovoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'atendhiGlosa.Tipo'
      FixedChar = True
      Size = 1
    end
    object NovoGlosaI: TStringField
      FieldName = 'GlosaI'
      Origin = 'atendhiGlosa.GlosaI'
      FixedChar = True
      Size = 3
    end
    object NovoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'atendhiGlosa.Valor'
    end
    object NovoValorApresentado: TCurrencyField
      FieldName = 'ValorApresentado'
      Origin = 'atendhiGlosa.ValorApresentado'
    end
  end
  object dados: TMSConnection
    Database = 'BBAud'
    Authentication = auServer
    Options.PersistSecurityInfo = True
    Options.Provider = 'SQLOLEDB.1'
    Username = 'androsadm'
    Password = 'andros@2012'
    Server = 'ANDROS-VOSTRO\SQLEXPRESS'
    LoginPrompt = False
    Left = 279
    Top = 14
  end
  object dsAntigo: TDataSource
    DataSet = Antigo
    Left = 96
    Top = 8
  end
  object dsNovo: TDataSource
    DataSet = Novo
    Left = 351
    Top = 14
  end
  object MSSQLMonitor1: TMSSQLMonitor
    Left = 391
    Top = 14
  end
end
