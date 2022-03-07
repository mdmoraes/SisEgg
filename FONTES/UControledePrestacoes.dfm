object FrmControlePrestacoes: TFrmControlePrestacoes
  Left = 91
  Top = 73
  Width = 532
  Height = 441
  Caption = 'Controle de Pend'#234'ncias   -    B O L E T O S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCliente: TLabel
    Left = 5
    Top = 87
    Width = 53
    Height = 16
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 63
    Width = 38
    Height = 16
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSkin: TSpeedButton
    Left = 352
    Top = 63
    Width = 56
    Height = 18
    Caption = 'Skin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
    OnClick = btnSkinClick
  end
  object btnLocaliza: TSpeedButton
    Left = 462
    Top = 63
    Width = 23
    Height = 22
    Hint = 'LOCALIZA ESTE PEDIDO !'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnLocalizaClick
  end
  object btnConsultaPedidos: TSpeedButton
    Left = 169
    Top = 61
    Width = 100
    Height = 21
    Caption = 'Consulta Pedidos'
    OnClick = btnConsultaPedidosClick
  end
  object edNomeCliente: TDBEdit
    Left = 63
    Top = 85
    Width = 364
    Height = 20
    AutoSelect = False
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'Cliente'
    DataSource = DmDados.dsPendenciasBoleto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object edDataPedido: TDBEdit
    Left = 65
    Top = 61
    Width = 93
    Height = 20
    AutoSelect = False
    BevelInner = bvLowered
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'DataPed'
    DataSource = DmDados.dsPendenciasBoleto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 9
    Top = 111
    Width = 507
    Height = 257
    Caption = 'Condi'#231#245'es de Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 35
      Width = 113
      Height = 16
      Caption = 'Forma de Pagt'#186'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 57
      Width = 82
      Height = 16
      Caption = 'Valor Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFormaPagto: TDBEdit
      Left = 126
      Top = 34
      Width = 157
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FormaPgto'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edVrTotalPedido: TDBEdit
      Left = 125
      Top = 57
      Width = 158
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'VrTotPed'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 80
      Width = 374
      Height = 50
      Caption = '1'#170' Parcela '
      Color = clSilver
      ParentColor = False
      TabOrder = 2
      object Label5: TLabel
        Left = 8
        Top = 26
        Width = 38
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 150
        Top = 26
        Width = 42
        Height = 16
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnPrint1: TSpeedButton
        Left = 333
        Top = 18
        Width = 33
        Height = 26
        Hint = 'IMPRESS'#195'O DA PRIMEIRA PARCELA'#13#10'DO BOLETO'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPrint1Click
      end
      object edData1parc: TDBEdit
        Left = 49
        Top = 24
        Width = 90
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Data1Parc'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edVr1: TDBEdit
        Left = 195
        Top = 24
        Width = 130
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Vr1'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 11
      Top = 134
      Width = 374
      Height = 50
      Caption = '2'#170' Parcela '
      Color = clSilver
      ParentColor = False
      TabOrder = 3
      object Label7: TLabel
        Left = 8
        Top = 26
        Width = 38
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 150
        Top = 26
        Width = 42
        Height = 16
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnPrint2: TSpeedButton
        Left = 333
        Top = 18
        Width = 33
        Height = 26
        Hint = 'IMPRESS'#195'O DA SEGUNDA PARCELA'#13#10'DO BOLETO'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPrint2Click
      end
      object edData2parc: TDBEdit
        Left = 49
        Top = 24
        Width = 90
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Data2Parc'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edVr2: TDBEdit
        Left = 195
        Top = 24
        Width = 130
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Vr2'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 11
      Top = 191
      Width = 374
      Height = 50
      Caption = '3'#170' Parcela '
      Color = clSilver
      ParentColor = False
      TabOrder = 4
      object Label9: TLabel
        Left = 8
        Top = 26
        Width = 38
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 150
        Top = 26
        Width = 42
        Height = 16
        Caption = 'Valor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnPrint3: TSpeedButton
        Left = 333
        Top = 18
        Width = 33
        Height = 26
        Hint = 'IMPRESS'#195'O DA TERCEIRA PARCELA'#13#10'DO BOLETO'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnPrint3Click
      end
      object ed3Parc: TDBEdit
        Left = 49
        Top = 24
        Width = 90
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Data3Parc'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edVr3: TDBEdit
        Left = 195
        Top = 24
        Width = 130
        Height = 20
        AutoSelect = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Vr3'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox5: TGroupBox
      Left = 393
      Top = 67
      Width = 90
      Height = 174
      Caption = 'Impresso ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      TabOrder = 5
      object chbox1: TDBCheckBox
        Left = 15
        Top = 32
        Width = 51
        Height = 17
        Caption = 'N'#227'o'
        DataField = 'Pago1'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = chbox1Click
      end
      object chbox2: TDBCheckBox
        Left = 16
        Top = 86
        Width = 50
        Height = 17
        Caption = 'N'#227'o'
        DataField = 'Pago2'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = chbox2Click
      end
      object chbox3: TDBCheckBox
        Left = 15
        Top = 143
        Width = 52
        Height = 17
        Caption = 'N'#227'o'
        DataField = 'Pago3'
        DataSource = DmDados.dsPendenciasBoleto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        OnClick = chbox3Click
      end
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 372
    Width = 507
    Height = 35
    TabOrder = 3
    object btnPesquisar: TSpeedButton
      Left = 5
      Top = 4
      Width = 98
      Height = 27
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333300000333330
        00003FFFFF33333FFFFF30F000333330F0003F7FFF33333F7FFF30F000333330
        F0003F7FFF33333F7FFF30000000300000003FFFFFFF3FFFFFFF300F000000F0
        00003FF7FFFFFF7FFFFF300F000700F000003FF7FFF7FF7FFFFF300F000700F0
        00003FF7FFF7FF7FFFFF330000000000000333FFFFFFFFFFFFF33330F00030F0
        0033333F7FFF3F7FFF333330000030000033333FFFFF3FFFFF33333300033300
        03333333FFF333FFF33333330F03330F03333333F7F333F7F333333300033300
        03333333FFF333FFF33333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnPesquisarClick
    end
    object btnAlterar: TSpeedButton
      Left = 228
      Top = 5
      Width = 64
      Height = 26
      Caption = 'Alterar'
      OnClick = btnAlterarClick
    end
    object btnGravar: TSpeedButton
      Left = 296
      Top = 5
      Width = 64
      Height = 26
      Caption = 'Gravar'
      OnClick = btnGravarClick
    end
    object btnCancelar: TSpeedButton
      Left = 364
      Top = 5
      Width = 64
      Height = 26
      Caption = 'Cancelar'
      OnClick = btnCancelarClick
    end
    object btnFechar: TBitBtn
      Left = 437
      Top = 4
      Width = 63
      Height = 28
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnFecharClick
    end
    object DBNavigator1: TDBNavigator
      Left = 111
      Top = 5
      Width = 104
      Height = 26
      DataSource = DmDados.dsPendenciasBoleto
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
  end
  object GroupBox6: TGroupBox
    Left = 5
    Top = 5
    Width = 499
    Height = 52
    Caption = ' Pedidos: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
    TabOrder = 4
    object edNumPedido: TDBEdit
      Left = 7
      Top = 23
      Width = 70
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NumPed'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edPedido2: TDBEdit
      Left = 87
      Top = 23
      Width = 70
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NumPed2'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edPedido3: TDBEdit
      Left = 168
      Top = 23
      Width = 70
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NumPed3'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edPedido4: TDBEdit
      Left = 249
      Top = 23
      Width = 70
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NumPed4'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edPedido5: TDBEdit
      Left = 330
      Top = 23
      Width = 70
      Height = 20
      AutoSelect = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NumPed5'
      DataSource = DmDados.dsPendenciasBoleto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edCodigo: TDBEdit
      Left = 442
      Top = 25
      Width = 45
      Height = 24
      TabStop = False
      DataField = 'Codigo'
      DataSource = DmDados.dsPendenciasBoleto
      TabOrder = 5
      Visible = False
    end
  end
end
