object FrmRankingClientes: TFrmRankingClientes
  Left = 255
  Top = 133
  Width = 698
  Height = 508
  Caption = 'Ranking de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 275
    Top = 451
    Width = 120
    Height = 28
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 59
    Width = 683
    Height = 387
    Align = alCustom
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ped_cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 330
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrtotal'
        Title.Alignment = taCenter
        Title.Caption = 'VL.TOTAL:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrtotallucro'
        Title.Alignment = taCenter
        Title.Caption = 'VL. LUCRO:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 3
    Width = 327
    Height = 52
    Caption = '  ESCOLHA UM PER'#205'ODO  '
    TabOrder = 1
    object Label1: TLabel
      Left = 102
      Top = 27
      Width = 11
      Height = 20
      Caption = #192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnAplicar: TSpeedButton
      Left = 216
      Top = 24
      Width = 103
      Height = 23
      Hint = 'EXECUTA A PESQUISA'
      Caption = 'Aplicar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAplicarClick
    end
    object Data1: TDateTimePicker
      Left = 7
      Top = 23
      Width = 91
      Height = 24
      Date = 38894.649433588000000000
      Time = 38894.649433588000000000
      TabOrder = 0
      OnCloseUp = Data1CloseUp
    end
    object Data2: TDateTimePicker
      Left = 118
      Top = 23
      Width = 90
      Height = 24
      Date = 38894.649610451400000000
      Time = 38894.649610451400000000
      TabOrder = 1
      OnCloseUp = Data2CloseUp
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'select ped_cliente, sum(ped_vrfinal)as vrtotal, sum(ped_lucro)as' +
        ' vrtotallucro'
      'from pedidos'
      'where ped_data between :VardataI and :VardataF'
      'group by ped_cliente'
      'order by vrtotallucro desc')
    Left = 360
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'VardataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VardataF'
        ParamType = ptUnknown
      end>
    object Query1ped_cliente: TStringField
      FieldName = 'ped_cliente'
      Origin = 'DEBORA."pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object Query1vrtotal: TCurrencyField
      FieldName = 'vrtotal'
      Origin = 'DEBORA."pedidos.DB".Ped_VrFinal'
    end
    object Query1vrtotallucro: TCurrencyField
      FieldName = 'vrtotallucro'
      Origin = 'DEBORA."pedidos.DB".Ped_Lucro'
    end
  end
end
