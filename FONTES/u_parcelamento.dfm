object FrmGerarParcelamentos: TFrmGerarParcelamentos
  Left = 254
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gerar parcelamentos'
  ClientHeight = 331
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 168
    Width = 122
    Height = 16
    Caption = 'Prazo de Pagamento'
  end
  object Label3: TLabel
    Left = 147
    Top = 168
    Width = 60
    Height = 16
    Caption = 'Valor Total'
  end
  object btnLimpar: TSpeedButton
    Left = 45
    Top = 245
    Width = 60
    Height = 20
    Caption = 'Limpar'
    Visible = False
    OnClick = btnLimparClick
  end
  object btnGerarParcela: TButton
    Left = 43
    Top = 212
    Width = 168
    Height = 25
    Caption = 'Gerar Parcelas'
    TabOrder = 4
    Visible = False
    OnClick = btnGerarParcelaClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 245
    Height = 153
    Ctl3D = True
    ItemHeight = 16
    ParentCtl3D = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 257
    Top = 8
    Width = 409
    Height = 231
    Ctl3D = True
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'parcela'
        Title.Caption = 'Parcela'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vencimento'
        Title.Caption = 'Vencimento'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'valor_parcela'
        Title.Caption = 'Valor Parcela'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n_parcela'
        Title.Caption = 'N'#186'. Parcela'
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 136
    Top = 248
    Width = 49
    Height = 17
    Caption = 'Converte Datas em Forma de Pagamento ->'
    TabOrder = 5
    Visible = False
    OnClick = Button2Click
  end
  object edForma: TEdit
    Left = 8
    Top = 184
    Width = 136
    Height = 24
    Ctl3D = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 16
    Top = 224
    Width = 17
    Height = 24
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    Visible = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 208
    Top = 244
    Width = 25
    Height = 24
    Date = 40495.372157476850000000
    Time = 40495.372157476850000000
    TabOrder = 8
    Visible = False
  end
  object edValorTotal: TEdit
    Left = 148
    Top = 184
    Width = 105
    Height = 24
    Ctl3D = True
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 6
    Text = '0'
  end
  object btnFechar: TBitBtn
    Left = 557
    Top = 249
    Width = 107
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
    OnClick = btnFecharClick
  end
  object btnCopiar: TBitBtn
    Left = 260
    Top = 245
    Width = 187
    Height = 30
    Caption = 'Gravar Parcelamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btnCopiarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object edPrazo: TEdit
    Left = 16
    Top = 272
    Width = 121
    Height = 24
    TabOrder = 3
    Visible = False
  end
  object edOrigem: TEdit
    Left = 184
    Top = 280
    Width = 121
    Height = 24
    TabOrder = 7
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'parcela'
        DataType = ftInteger
      end
      item
        Name = 'vencimento'
        DataType = ftDateTime
      end
      item
        Name = 'valor_parcela'
        DataType = ftCurrency
      end
      item
        Name = 'n_parcela'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 16
    Top = 48
    Data = {
      850000009619E0BD010000001800000004000000000003000000850007706172
      63656C6104000100000000000A76656E63696D656E746F08000800000000000D
      76616C6F725F70617263656C6108000400000001000753554254595045020049
      0006004D6F6E657900096E5F70617263656C6101004900000001000557494454
      48020002000A000000}
    object ClientDataSet1parcela: TIntegerField
      DisplayWidth = 16
      FieldName = 'parcela'
    end
    object ClientDataSet1vencimento: TDateTimeField
      DisplayWidth = 26
      FieldName = 'vencimento'
    end
    object ClientDataSet1valor_parcela: TCurrencyField
      DisplayWidth = 29
      FieldName = 'valor_parcela'
    end
    object ClientDataSet1n_parcela: TStringField
      FieldName = 'n_parcela'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 48
  end
end
