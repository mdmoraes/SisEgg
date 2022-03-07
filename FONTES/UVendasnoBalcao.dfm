object FmVendasBalcao: TFmVendasBalcao
  Left = 28
  Top = 108
  Width = 923
  Height = 578
  BorderIcons = []
  Caption = 'Vendas Balc'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PainelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblTotalReg: TLabel
      Left = 18
      Top = 5
      Width = 58
      Height = 22
      Alignment = taRightJustify
      Caption = 'lblReg'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 82
      Top = 5
      Width = 69
      Height = 22
      Caption = 'Vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object PainelControle: TPanel
    Left = 0
    Top = 472
    Width = 786
    Height = 29
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 4
      Top = 3
      Width = 24
      Height = 23
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 29
      Top = 3
      Width = 24
      Height = 23
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 55
      Top = 3
      Width = 24
      Height = 23
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 83
      Top = 3
      Width = 24
      Height = 23
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      NumGlyphs = 2
      OnClick = SpeedButton4Click
    end
    object SbConsultaPedidos: TSpeedButton
      Left = 335
      Top = 3
      Width = 68
      Height = 24
      Cursor = crHandPoint
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = SbConsultaPedidosClick
    end
    object btnPrecos: TSpeedButton
      Left = 409
      Top = 3
      Width = 82
      Height = 24
      Cursor = crHandPoint
      Caption = 'Pre'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnPrecosClick
    end
    object Edit1: TEdit
      Left = 650
      Top = 5
      Width = 11
      Height = 12
      AutoSelect = False
      AutoSize = False
      Enabled = False
      TabOrder = 4
      Text = 'Edit1'
      Visible = False
    end
    object Btincluir: TBitBtn
      Left = 112
      Top = 3
      Width = 68
      Height = 24
      Cursor = crHandPoint
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtincluirClick
      NumGlyphs = 2
    end
    object BtnAltera: TBitBtn
      Left = 186
      Top = 3
      Width = 70
      Height = 24
      Cursor = crHandPoint
      Caption = '&Altera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnAlteraClick
      NumGlyphs = 2
    end
    object BtExcluir: TBitBtn
      Left = 262
      Top = 3
      Width = 69
      Height = 24
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtExcluirClick
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 715
      Top = 2
      Width = 67
      Height = 24
      Cursor = crHandPoint
      Caption = '&Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object btNota: TBitBtn
      Left = 660
      Top = 8
      Width = 9
      Height = 5
      Cursor = crHandPoint
      Caption = '&Imp. Pedido'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Visible = False
      OnClick = btNotaClick
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
    end
    object edVrdaVenda: TDBEdit
      Left = 652
      Top = 5
      Width = 14
      Height = 10
      AutoSelect = False
      AutoSize = False
      DataField = 'Ped_VrFinal'
      DataSource = DmDados.Dspedidos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object Panel1: TPanel
      Left = 497
      Top = 3
      Width = 129
      Height = 24
      Alignment = taLeftJustify
      Caption = 'Estoque >'
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object SpeedButton5: TSpeedButton
        Left = 66
        Top = 2
        Width = 57
        Height = 20
        Caption = 'Ovos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton5Click
      end
    end
  end
  object PainelDados: TPanel
    Left = 1
    Top = 32
    Width = 824
    Height = 439
    Enabled = False
    TabOrder = 2
    object PainelCabecalho: TPanel
      Left = 5
      Top = 1
      Width = 781
      Height = 88
      Color = 15066597
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 55
        Height = 16
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 147
        Top = 8
        Width = 38
        Height = 16
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 35
        Width = 53
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 60
        Width = 60
        Height = 16
        Caption = 'F. Pagt'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnPesquisaCliente: TSpeedButton
        Left = 369
        Top = 30
        Width = 23
        Height = 22
        Hint = 'Pesquisar Cliente'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0066666666FFFF
          FFFFFF666666666666666666000066666666FBFBFBFBFB666666666666666666
          000066666666FFFFFFFFFF666666666666666666000066666666FBFBFBFBFB66
          66666666666666660000666666698FFFFFFFFF66666668866666666600006666
          669118FBFBFBFB666666888866666666000066666691518FFFFFFF6666668888
          866666660000666666911518FBFBFB666666888888666666000066666F811191
          8FFFFF666668888878866666000066666F77199918FBFB666668778777886666
          00006666F77FF9999166666666877FF7777866660000666F77FFFF1116666666
          6877FFFF88866666000066F77FFF886666666666877FFF886666666600006F77
          FFF866666666666877FFF866666666660000F77FFF896666666666877FFF8866
          66666666000087FFF896666666666687FFF8866666666666000068FF86666666
          66666668FF866666666666660000668866666666666666668866666666666666
          0000}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = btnPesquisaClienteClick
      end
      object DBText2: TDBText
        Left = 700
        Top = 6
        Width = 79
        Height = 18
        DataField = 'Ped_Lucro'
        DataSource = DmDados.Dspedidos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object btnAtualizaEstoque: TSpeedButton
        Left = 609
        Top = 22
        Width = 32
        Height = 7
        Caption = 'Atualiza Estoque'
        Visible = False
        OnClick = btnAtualizaEstoqueClick
      end
      object edDataPedido: TDBEdit
        Left = 189
        Top = 5
        Width = 90
        Height = 18
        AutoSelect = False
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvSpace
        BevelKind = bkTile
        BorderStyle = bsNone
        DataField = 'Ped_Data'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 291
        Top = 4
        Width = 70
        Height = 19
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecLowerCase
        DataField = 'Ped_Numero'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        Visible = False
        OnChange = DBEdit1Change
      end
      object editNomeClientePedido: TDBEdit
        Left = 67
        Top = 31
        Width = 296
        Height = 20
        AutoSelect = False
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 13434879
        DataField = 'Ped_Cliente'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = editNomeClientePedidoChange
      end
      object lokcomboFormaPag: TDBLookupComboBox
        Left = 68
        Top = 57
        Width = 166
        Height = 23
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkSoft
        DataField = 'Ped_ForPaga'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        KeyField = 'FormaPag'
        ListField = 'FormaPag'
        ListSource = DmDados.dsFormasPagamento
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 613
        Top = 52
        Width = 151
        Height = 32
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        DataField = 'Ped_VrFinal'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object edNomeVendedorPedido: TDBEdit
        Left = 470
        Top = 32
        Width = 128
        Height = 20
        TabStop = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 13565951
        DataField = 'Ped_Vendedor'
        DataSource = DmDados.Dspedidos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 7
        Visible = False
      end
      object btnRecalculaLucro: TBitBtn
        Left = 588
        Top = 6
        Width = 50
        Height = 14
        Caption = 'RecalculaLucro'
        TabOrder = 10
        Visible = False
      end
      object recalcPedido: TButton
        Left = 528
        Top = 8
        Width = 50
        Height = 12
        Caption = 'recalcPedido'
        TabOrder = 8
        Visible = False
      end
      object btnreccomiss: TButton
        Left = 544
        Top = 3
        Width = 75
        Height = 13
        Caption = 'reccomiss'
        TabOrder = 9
        Visible = False
        OnClick = btnreccomissClick
      end
      object gboxTabeladeprecos: TGroupBox
        Left = 12
        Top = 3
        Width = 731
        Height = 78
        Caption = 'Tabela de Pre'#231'os p/ Vendas Balc'#227'o:'
        Color = clOlive
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Visible = False
        object lblmeiaDZ: TLabel
          Left = 218
          Top = 27
          Width = 45
          Height = 24
          Caption = #189' DZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDZ: TLabel
          Left = 321
          Top = 26
          Width = 25
          Height = 24
          Caption = 'DZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDZemeia: TLabel
          Left = 410
          Top = 27
          Width = 45
          Height = 24
          Caption = 'DZ '#189
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblBD: TLabel
          Left = 511
          Top = 28
          Width = 25
          Height = 24
          Caption = 'BD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblCX: TLabel
          Left = 607
          Top = 28
          Width = 27
          Height = 24
          Caption = 'CX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnFecharGBox: TSpeedButton
          Left = 663
          Top = 50
          Width = 54
          Height = 22
          Hint = 'FECHAR'
          Caption = 'Fechar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnFecharGBoxClick
        end
        object lblquartoDZ: TLabel
          Left = 124
          Top = 28
          Width = 45
          Height = 24
          Caption = #188' DZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblUN: TLabel
          Left = 38
          Top = 27
          Width = 27
          Height = 24
          Caption = 'UN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object dbPedB: TDBEdit
        Left = 64
        Top = 5
        Width = 79
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecLowerCase
        DataField = 'Ped_B'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnChange = DBEdit1Change
      end
      object dbFechado: TDBEdit
        Left = 389
        Top = 4
        Width = 46
        Height = 21
        DataField = 'Fechado'
        DataSource = DmDados.Dspedidos
        TabOrder = 6
        Visible = False
      end
    end
    object PainelItens: TPanel
      Left = 4
      Top = 92
      Width = 773
      Height = 317
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 6
        Top = 4
        Width = 761
        Height = 307
        BorderStyle = bsNone
        Color = clWhite
        DataSource = DmDados.DsItens
        FixedColor = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clRed
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        OnColExit = DBGrid1ColExit
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnEditButtonClick = DBGrid1EditButtonClick
        OnExit = DBGrid1Exit
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'It_Cod'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'It_Numero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'It_Ref'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Ref.:'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'It_Descricao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_Unid'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            PickList.Strings = (
              'UN'
              #188' DZ'
              #189' DZ'
              'DZ'
              'DZ '#189' '
              'BD'
              'CX')
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_TipoEmb'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            PickList.Strings = (
              'Poupa'
              'PVC')
            Title.Alignment = taCenter
            Title.Caption = 'Emb.:'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'It_Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Unit.'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valoritem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Total'
            Title.Color = clSilver
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'It_Lucro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Lucro'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ValorLucro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Tot_Lucro'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'It_VrEmbalagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Emb.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Status'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'It_QtdOvo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'QtdOvo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = False
          end>
      end
    end
    object PainelConfirma: TPanel
      Left = 10
      Top = 410
      Width = 766
      Height = 26
      TabOrder = 2
      Visible = False
      object SbDesistir: TSpeedButton
        Left = 246
        Top = 2
        Width = 106
        Height = 22
        Cursor = crHandPoint
        Caption = '&Desistir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SbDesistirClick
      end
      object SbConfirmar: TSpeedButton
        Left = 435
        Top = 2
        Width = 104
        Height = 22
        Cursor = crHandPoint
        Caption = '&Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SbConfirmarClick
      end
    end
  end
  object QryRef: TQuery
    DatabaseName = 'SysEgg'
    RequestLive = True
    SQL.Strings = (
      'SELECT A.PED_NUMERO, B.IT_NUMERO, B.IT_REF'
      'FROM PEDIDOS A, ITENS B'
      'WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_NUMERO =:VarNumPed')
    Left = 633
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VarNumPed'
        ParamType = ptUnknown
      end>
  end
  object ActionList1: TActionList
    Left = 681
    Top = 1
    object somartotal: TAction
      Caption = 'somartotal'
      OnExecute = somartotalExecute
    end
    object somalucro: TAction
      Caption = 'somalucro'
      OnExecute = somalucroExecute
    end
    object AtualizaEstoque: TAction
      Caption = 'AtualizaEstoque'
      OnExecute = AtualizaEstoqueExecute
    end
    object CalculaLucro: TAction
      Caption = 'CalculaLucro'
      OnExecute = CalculaLucroExecute
    end
    object Devolve: TAction
      Caption = 'Devolve'
      OnExecute = DevolveExecute
    end
    object AlteraQtd: TAction
      Caption = 'AlteraQtd'
      OnExecute = AlteraQtdExecute
    end
    object FiltroBalcao: TAction
      Caption = 'FiltroBalcao'
      OnExecute = FiltroBalcaoExecute
    end
    object AtualizaConvEstoque: TAction
      Caption = 'AtualizaConvEstoque'
      OnExecute = AtualizaConvEstoqueExecute
    end
  end
end
