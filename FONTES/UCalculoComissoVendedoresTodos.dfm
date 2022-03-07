object FrmCalculoComissaoVendedoresTodos: TFrmCalculoComissaoVendedoresTodos
  Left = 23
  Top = 152
  Width = 793
  Height = 548
  Caption = 'C'#225'lculo Comiss'#227'o de Vendedores   -   (TODOS OS VENDEDORES)'
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
  object GroupBox1: TGroupBox
    Left = 5
    Top = 1
    Width = 468
    Height = 64
    Caption = ' Defina o Per'#237'odo: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 103
      Top = 29
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
      Left = 217
      Top = 28
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
      Left = 8
      Top = 28
      Width = 91
      Height = 24
      Date = 38894.649433588000000000
      Time = 38894.649433588000000000
      TabOrder = 0
    end
    object Data2: TDateTimePicker
      Left = 119
      Top = 28
      Width = 90
      Height = 24
      Date = 38894.649610451400000000
      Time = 38894.649610451400000000
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 72
    Width = 781
    Height = 339
    DataSource = dsQryComissao
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PED_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N.Ped:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 316
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VENDEDOR'
        Title.Caption = 'Vendedor:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VRFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vr. Ped:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_COMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Com(%)'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'VRCOMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Vr. Comis.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object btnFechar: TBitBtn
    Left = 368
    Top = 490
    Width = 85
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object Panel1: TPanel
    Left = 27
    Top = 441
    Width = 752
    Height = 41
    TabOrder = 3
    object Label2: TLabel
      Left = 149
      Top = 7
      Width = 111
      Height = 24
      Caption = 'Total Pedido:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 436
      Top = 7
      Width = 134
      Height = 24
      Caption = 'Total Comiss'#227'o:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object btnImprimir: TSpeedButton
      Left = 11
      Top = 8
      Width = 109
      Height = 26
      Hint = 'Imprimi a Tela Atual'
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnImprimirClick
    end
    object edTotPedido: TEdit
      Left = 263
      Top = 6
      Width = 170
      Height = 27
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edTotcomiss: TEdit
      Left = 572
      Top = 6
      Width = 170
      Height = 27
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvRaised
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object QryComissao: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'SELECT PED_NUMERO, PED_DATA, PED_CLIENTE, PED_VRFINAL, PED_COMIS' +
        'SAO, PED_VENDEDOR, PED_VRCOMISSAO as VRCOMISSAO'
      'FROM PEDIDOS'
      'Where PED_DATA Between :VarDataI and :VarDataF'
      'ORDER BY PED_DATA'
      ''
      ''
      '')
    Left = 528
    Top = 16
    ParamData = <
      item
        DataType = ftDate
        Name = 'VarDataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VarDataF'
        ParamType = ptUnknown
      end>
    object QryComissaoPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'DEBORA."Pedidos.DB".Ped_Numero'
    end
    object QryComissaoPED_DATA: TDateField
      FieldName = 'PED_DATA'
      Origin = 'DEBORA."Pedidos.DB".Ped_Data'
    end
    object QryComissaoPED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'DEBORA."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object QryComissaoPED_VRFINAL: TCurrencyField
      FieldName = 'PED_VRFINAL'
      Origin = 'DEBORA."Pedidos.DB".Ped_VrFinal'
    end
    object QryComissaoPED_COMISSAO: TIntegerField
      FieldName = 'PED_COMISSAO'
      Origin = 'DEBORA."Pedidos.DB".Ped_Comissao'
    end
    object QryComissaoPED_VENDEDOR: TStringField
      FieldName = 'PED_VENDEDOR'
      Origin = 'DEBORA."Pedidos.DB".Ped_Vendedor'
      Size = 35
    end
    object QryComissaoVRCOMISSAO: TCurrencyField
      FieldName = 'VRCOMISSAO'
      Origin = 'DEBORA."Pedidos.DB".Ped_VrFinal'
    end
  end
  object dsQryComissao: TDataSource
    DataSet = QryComissao
    Left = 608
    Top = 10
  end
end
