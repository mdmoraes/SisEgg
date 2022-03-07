object FrmComissaoVendedores: TFrmComissaoVendedores
  Left = 60
  Top = 228
  Width = 753
  Height = 451
  Caption = 'Comiss'#227'o de Vendedores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 7
    Top = 72
    Width = 730
    Height = 257
    DataSource = dsComissaoVendedor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ped_Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Ped.'
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ped_Data'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ped_Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 301
        Visible = True
      end
      item
        Color = 13434879
        Expanded = False
        FieldName = 'Ped_Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Vendedor'
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 166
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ped_VrFinal'
        Title.Alignment = taCenter
        Title.Caption = 'Vr.Pedido'
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -13
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 112
    Top = 352
    Width = 481
    Height = 49
    Color = 11783167
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11783167
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 40
      Top = 16
      Width = 97
      Height = 25
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        66666666666666FFF66666660000666666600066666666666666F888FFF66666
        00006666600788006666666666F8866888FFF666000066600778008800666666
        688668888888FFF60000660778878800880066668F688688888888F600006688
        877788880080666688866688888888F600006887777788888800666886666688
        888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
        88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
        000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
        88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
        6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
        F666F88600006666666668FFF8866666666666686FF886660000666666666688
        8666666666666666888666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 16
      Width = 75
      Height = 25
      Caption = 'BitBtn2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btnSair: TBitBtn
      Left = 384
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666660666
        666666666666668F666666660000666666600666666666666666688F66666666
        00006666668008666666666666668888F66666660000666668F0086666666666
        66686886F6666666000066660FF0FF6666666666668F68F6F666666600006660
        0F00F88666666666688F88F68F66666F00006680000080066666806688888888
        8F666688000068FF0F0070006668F068F68F886888F66868000068F00F87F80F
        868B0668F88F8F68868F8686000068000800F0FFF8F06668888F88F8F6686866
        000066008000000F8B066666888888888F86866600006607700F0008F0666666
        8F6886888868666600006687F0FFF08B066666668F68F6688686666600006668
        800FF8F06666666668888FF8686666660000666600008B066666666666888886
        86666666000066666008F06666666666666888686666666600006666668B0666
        6666666666668F86666666660000666666806666666666666666886666666666
        0000}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 2
    Width = 525
    Height = 67
    TabOrder = 2
    object rxlblComissao: TRxLabel
      Left = 46
      Top = 10
      Width = 82
      Height = 17
      Caption = 'Comiss'#227'o(%)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabeldtInicio: TRxLabel
      Left = 180
      Top = 12
      Width = 57
      Height = 17
      Caption = 'Dt. Inicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ShadowColor = clWhite
      ShadowSize = 2
      Transparent = True
    end
    object RxLabel3: TRxLabel
      Left = 289
      Top = 11
      Width = 53
      Height = 17
      Caption = 'Dt. Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TRxLabel
      Left = 410
      Top = 9
      Width = 60
      Height = 17
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 370
      Top = 29
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 166
      Top = 30
      Width = 87
      Height = 20
      Date = 38140.030220370400000000
      Time = 38140.030220370400000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 268
      Top = 30
      Width = 91
      Height = 21
      Date = 38140.030439699100000000
      Time = 38140.030439699100000000
      TabOrder = 2
    end
    object MaskEdit1: TMaskEdit
      Left = 56
      Top = 29
      Width = 57
      Height = 21
      TabOrder = 3
      Text = 'MaskEdit1'
    end
  end
  object dsComissaoVendedor: TDataSource
    DataSet = QryComissaoVendedor
    Left = 640
    Top = 16
  end
  object QryComissaoVendedor: TQuery
    Active = True
    DatabaseName = 'Debora'
    SQL.Strings = (
      
        'SELECT Ped_Numero, Ped_Data, Ped_Cliente, Ped_VrFinal, Ped_Vende' +
        'dor'
      'FROM "Pedidos.DB" Pedidos'
      'ORDER BY Ped_Data')
    Left = 592
    Top = 16
    object QryComissaoVendedorPed_Numero: TIntegerField
      FieldName = 'Ped_Numero'
      Origin = 'DEBORA."Pedidos.DB".Ped_Numero'
    end
    object QryComissaoVendedorPed_Data: TDateField
      FieldName = 'Ped_Data'
      Origin = 'DEBORA."Pedidos.DB".Ped_Data'
    end
    object QryComissaoVendedorPed_Cliente: TStringField
      FieldName = 'Ped_Cliente'
      Origin = 'DEBORA."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object QryComissaoVendedorPed_VrFinal: TCurrencyField
      FieldName = 'Ped_VrFinal'
      Origin = 'DEBORA."Pedidos.DB".Ped_VrFinal'
    end
    object QryComissaoVendedorPed_Vendedor: TStringField
      FieldName = 'Ped_Vendedor'
      Origin = 'DEBORA."Pedidos.DB".Ped_Vendedor'
      Size = 35
    end
  end
end
