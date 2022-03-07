object FrmConsultaPedidosparaGerarBoletos: TFrmConsultaPedidosparaGerarBoletos
  Left = 94
  Top = 89
  Width = 616
  Height = 440
  Caption = 'Consulta Pedidos para Gerar Boleto'
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
  object btnFiltrar: TSpeedButton
    Left = 309
    Top = 6
    Width = 75
    Height = 22
    Caption = 'Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFiltrarClick
  end
  object btnFechar: TSpeedButton
    Left = 505
    Top = 383
    Width = 98
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object btnSomar: TSpeedButton
    Left = 501
    Top = 338
    Width = 100
    Height = 24
    Caption = 'Somar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
      73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
      0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
      0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
      0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
      0333337F777777737F333308888888880333337F333333337F33330888888888
      03333373FFFFFFFF733333700000000073333337777777773333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnSomarClick
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 33
    Width = 597
    Height = 246
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PED_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'PED.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'DATA:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 319
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VRFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end>
  end
  object dbLkpCliente: TDBLookupComboBox
    Left = 7
    Top = 7
    Width = 296
    Height = 21
    KeyField = 'Cli_Cliente'
    ListField = 'Cli_Cliente'
    ListSource = DmDados.DsClientes
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 343
    Width = 332
    Height = 56
    Caption = 'Valores Acumulados dos Pedidos'
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object btnLancar: TSpeedButton
      Left = 154
      Top = 22
      Width = 64
      Height = 23
      Caption = 'Lan'#231'ar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = btnLancarClick
    end
  end
  object Panel1: TPanel
    Left = 5
    Top = 285
    Width = 596
    Height = 52
    BevelOuter = bvLowered
    Color = 14540253
    TabOrder = 3
    object lblPedido1: TLabel
      Left = 5
      Top = 4
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblPedido2: TLabel
      Left = 117
      Top = 4
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblPedido3: TLabel
      Left = 227
      Top = 4
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblPedido4: TLabel
      Left = 340
      Top = 5
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblPedido5: TLabel
      Left = 450
      Top = 4
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PED_NUMERO, PED_DATA, PED_CLIENTE, PED_VRFINAL'
      'FROM PEDIDOS'
      'WHERE PED_CLIENTE LIKE (:VARCLIENTE)'
      'ORDER BY PED_DATA')
    Left = 496
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object Query1PED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Numero'
    end
    object Query1PED_DATA: TDateField
      FieldName = 'PED_DATA'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
    object Query1PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object Query1PED_VRFINAL: TCurrencyField
      FieldName = 'PED_VRFINAL'
      Origin = 'SYSEGG."Pedidos.DB".Ped_VrFinal'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 440
    Top = 16
  end
end
