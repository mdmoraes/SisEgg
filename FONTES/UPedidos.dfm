object FmPedidos: TFmPedidos
  Left = 211
  Top = 17
  Width = 1057
  Height = 683
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = []
  Caption = 
    'Emiss'#227'o de Pedidos  -  V  E  N  D  A  S     E  X  T  E  R  N  A ' +
    ' S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object dbtxtPed_Numero: TDBText
    Left = 239
    Top = 8
    Width = 64
    Height = 17
    DataField = 'Ped_Numero'
    DataSource = DmDados.Dspedidos
  end
  object PainelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object lblTotalReg: TLabel
      Left = 30
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
    end
    object Label15: TLabel
      Left = 99
      Top = 5
      Width = 76
      Height = 22
      Caption = 'Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PainelControle: TPanel
    Left = 12
    Top = 554
    Width = 986
    Height = 35
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 4
      Top = 2
      Width = 21
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
      Left = 30
      Top = 2
      Width = 21
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
      Left = 56
      Top = 2
      Width = 21
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
      Left = 88
      Top = 2
      Width = 21
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
      Left = 287
      Top = 5
      Width = 90
      Height = 21
      Cursor = crHandPoint
      Caption = 'Cons.Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = SbConsultaPedidosClick
    end
    object btnContasaPagar: TSpeedButton
      Left = 702
      Top = 4
      Width = 13
      Height = 24
      Hint = 'Consulta Contas a Receber'
      Caption = 'Contas a Receber'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6006544
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777777780008777777777778FFF8777777800080FBB0
        7777778FFF8F7BBF7777770FBB080008087777F7BBF8FFF8F877778000877077
        7077778FFF877F777F777777777770333077777777777F333F77700000000077
        70007FFFFFFFFF777FFF70227777703330207F2277777F333F2F7027777000FB
        B0207F27777FFF7BBF2F70777707700007707F7777F77FFFF77F707777077707
        77707F7777F777F7777F70277770007777207F27777FFF77772F702277777777
        72207F2277777777722F70000000000000007FFFFFFFFFFFFFFF777777777777
        7777777777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnContasaPagarClick
    end
    object btnFatura: TSpeedButton
      Left = 724
      Top = 4
      Width = 112
      Height = 25
      Caption = 'Pend'#234'ncia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
        00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
        30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
        3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
        303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
        3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
        00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
        33333333F33333338F3333000000000333333333FFFFFFFFF333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnFaturaClick
    end
    object Btincluir: TBitBtn
      Left = 112
      Top = 3
      Width = 46
      Height = 23
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
      Left = 170
      Top = 3
      Width = 55
      Height = 23
      Cursor = crHandPoint
      Caption = '&Alterar'
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
      Left = 228
      Top = 3
      Width = 54
      Height = 23
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
      Left = 906
      Top = 5
      Width = 68
      Height = 23
      Cursor = crHandPoint
      Caption = '&Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn2Click
      NumGlyphs = 2
    end
    object btNota: TBitBtn
      Left = 601
      Top = 4
      Width = 94
      Height = 22
      Cursor = crHandPoint
      Caption = '&Imp. Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object Panel1: TPanel
      Left = 382
      Top = 2
      Width = 207
      Height = 26
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
      object btnOvos: TSpeedButton
        Left = 71
        Top = 2
        Width = 56
        Height = 24
        Caption = 'Ovos'
        OnClick = btnOvosClick
      end
      object btnEmba: TSpeedButton
        Left = 145
        Top = 2
        Width = 56
        Height = 23
        Caption = 'Emb.'
        OnClick = btnEmbaClick
      end
    end
  end
  object PainelDados: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 537
    Enabled = False
    TabOrder = 0
    object PainelCabecalho: TPanel
      Left = 10
      Top = 3
      Width = 989
      Height = 150
      Color = 15066597
      TabOrder = 1
      object Label1: TLabel
        Left = 3
        Top = 5
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
        Left = 178
        Top = 7
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
        Left = 7
        Top = 37
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
      object btnPesquisaCliente: TSpeedButton
        Left = 553
        Top = 30
        Width = 34
        Height = 25
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
        OnClick = btnPesquisaClienteClick
      end
      object DBText2: TDBText
        Left = 640
        Top = 14
        Width = 71
        Height = 17
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
        Left = 495
        Top = 11
        Width = 63
        Height = 10
        Visible = False
        OnClick = btnAtualizaEstoqueClick
      end
      object lbl1: TLabel
        Left = 775
        Top = 101
        Width = 72
        Height = 16
        Caption = 'Total Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblRef: TLabel
        Left = 531
        Top = 119
        Width = 32
        Height = 16
        Caption = 'lblRef'
        Visible = False
      end
      object lbl4: TLabel
        Left = 775
        Top = 57
        Width = 103
        Height = 16
        Caption = 'Total do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lbl5: TLabel
        Left = 551
        Top = 98
        Width = 116
        Height = 16
        Caption = 'Total Embalagens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 62
        Top = 3
        Width = 101
        Height = 20
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecLowerCase
        Color = clSilver
        DataField = 'Ped_Numero'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object editNomeClientePedido: TDBEdit
        Left = 64
        Top = 29
        Width = 496
        Height = 26
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        Color = 13434879
        DataField = 'Ped_Cliente'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnChange = editNomeClientePedidoChange
      end
      object DBEdit3: TDBEdit
        Left = 778
        Top = 118
        Width = 176
        Height = 26
        BevelInner = bvNone
        BevelOuter = bvSpace
        BevelKind = bkTile
        Color = 10935214
        DataField = 'Ped_VrFinal'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object edNomeVendedorPedido: TDBEdit
        Left = 685
        Top = 15
        Width = 172
        Height = 26
        TabStop = False
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 13565951
        DataField = 'Ped_Vendedor'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 12
        Visible = False
      end
      object btnRecalculaLucro: TBitBtn
        Left = 589
        Top = 7
        Width = 50
        Height = 14
        Caption = 'RecalculaLucro'
        TabOrder = 10
        Visible = False
        OnClick = btnRecalculaLucroClick
      end
      object recalcPedido: TButton
        Left = 779
        Top = 0
        Width = 50
        Height = 12
        Caption = 'recalcPedido'
        TabOrder = 16
        Visible = False
        OnClick = recalcPedidoClick
      end
      object btnreccomiss: TButton
        Left = 860
        Top = 9
        Width = 75
        Height = 13
        Caption = 'reccomiss'
        TabOrder = 18
        Visible = False
        OnClick = btnreccomissClick
      end
      object dbPedExt: TDBEdit
        Left = 339
        Top = 3
        Width = 41
        Height = 23
        AutoSelect = False
        AutoSize = False
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecLowerCase
        DataField = 'Ped_E'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Visible = False
      end
      object edt1: TEdit
        Left = 38
        Top = 132
        Width = 91
        Height = 24
        TabOrder = 1
        Text = 'edt1'
        Visible = False
      end
      object btn1: TButton
        Left = 148
        Top = 132
        Width = 75
        Height = 12
        Caption = 'btn1'
        TabOrder = 4
        Visible = False
        OnClick = btn1Click
      end
      object edDataPedido: TJvDBDateEdit
        Left = 218
        Top = 0
        Width = 107
        Height = 30
        Alignment = taCenter
        AutoSize = False
        DataField = 'Ped_Data'
        DataSource = DmDados.Dspedidos
        AutoSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ShowNullDate = False
        TabOrder = 5
      end
      object dbFechado: TDBEdit
        Left = 703
        Top = 61
        Width = 47
        Height = 24
        DataField = 'Fechado'
        DataSource = DmDados.Dspedidos
        TabOrder = 13
        Visible = False
      end
      object edtFaturados: TEdit
        Left = 884
        Top = 38
        Width = 50
        Height = 24
        TabOrder = 19
        Visible = False
      end
      object dbPed_CodCliente: TDBEdit
        Left = 424
        Top = 2
        Width = 86
        Height = 24
        Color = 14342874
        DataField = 'Ped_CodCliente'
        DataSource = DmDados.Dspedidos
        ReadOnly = True
        TabOrder = 8
        Visible = False
      end
      object edtClienteGrid: TEdit
        Left = 808
        Top = 39
        Width = 74
        Height = 24
        TabOrder = 17
        Visible = False
      end
      object dbchkLancado: TDBCheckBox
        Left = 590
        Top = 37
        Width = 68
        Height = 17
        Caption = 'Lan'#231'ado'
        DataField = 'Lancado'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object btnAcionaF4: TButton
        Left = 277
        Top = 129
        Width = 75
        Height = 14
        Caption = 'Aciona F4'
        TabOrder = 6
        Visible = False
        OnClick = btnAcionaF4Click
      end
      object grp1: TGroupBox
        Left = 6
        Top = 57
        Width = 515
        Height = 87
        Caption = 'Forma de Pagamento'
        Color = 8454143
        ParentColor = False
        TabOrder = 0
        object lbl3: TLabel
          Left = 4
          Top = 30
          Width = 95
          Height = 16
          Caption = 'Forma de Pagt'#186'.'
        end
        object lbl2: TLabel
          Left = 199
          Top = 34
          Width = 243
          Height = 16
          Caption = 'Prazo (Formato ex.: 00/15)  (00 = '#224' Vista)'
        end
        object btnBuscaForma: TSpeedButton
          Left = 466
          Top = 19
          Width = 21
          Height = 20
          Caption = '...'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = btnBuscaFormaClick
        end
        object btn2: TSpeedButton
          Left = 456
          Top = 43
          Width = 38
          Height = 28
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFF330FFFFFFFFFFFF033F777777777777F330FFFFFFFFFF
            FF033F777777777777F330FFFFFFFFFFFF033F777777777777F330FF1111FF1F
            FF033F77FFFF77F777F330FF1FFFFF1FFF033F77F77777F777F330FFF1FFFF1F
            FF033F777F7777F777F330FFFF1FFF1FFF033F7777F777F777F330FF1FF1F11F
            FF033F77F77F7FF777F330FFF11FFF1FFF033F777FF777F777F330FFFFFFFFFF
            FF033F777777777777F330FFFFFFFFFFFF033F777777777777F3300000000000
            00033FFFFFFFFFFFFFF330EEEEEEEEEEEE033FEEEEEEEEEEEEF330E0EEEEEEEE
            0E033FEFEEEEEEEEFEF330000000000000033FFFFFFFFFFFFFF3}
          NumGlyphs = 2
          OnClick = btn2Click
        end
        object dbPrazo: TDBEdit
          Left = 199
          Top = 54
          Width = 184
          Height = 24
          DataField = 'Ped_Prazo'
          DataSource = DmDados.Dspedidos
          TabOrder = 1
        end
        object dbForma: TDBLookupComboBox
          Left = 4
          Top = 53
          Width = 160
          Height = 24
          DataField = 'Ped_Forma'
          DataSource = DmDados.Dspedidos
          KeyField = 'Formas'
          ListField = 'Formas'
          ListSource = DmDados.dsFormaPagtoMaster
          TabOrder = 0
          OnCloseUp = dbFormaCloseUp
        end
      end
      object dbPed_TotEmba: TDBEdit
        Left = 553
        Top = 115
        Width = 145
        Height = 24
        Color = 10935214
        DataField = 'Ped_TotEmba'
        DataSource = DmDados.Dspedidos
        TabOrder = 9
      end
      object dbPed_VrFinal: TDBEdit
        Left = 777
        Top = 74
        Width = 178
        Height = 26
        BevelInner = bvNone
        BevelOuter = bvSpace
        BevelKind = bkTile
        Color = 10935214
        DataField = 'Ped_Valor'
        DataSource = DmDados.Dspedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
    end
    object PainelItens: TPanel
      Left = 9
      Top = 169
      Width = 990
      Height = 360
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 5
        Width = 983
        Height = 348
        Color = clWhite
        Ctl3D = True
        DataSource = DmDados.DsItens
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnColEnter = DBGrid1ColEnter
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
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
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
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Alignment = taCenter
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'It_Ref'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Ref.:  <F4>'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'It_Descricao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsUnderline]
            Width = 373
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_Unid'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            PickList.Strings = (
              'UN'
              'DZ'
              'BD'
              'CX')
            Title.Alignment = taCenter
            Title.Caption = 'Un.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsUnderline]
            Width = 49
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_TipoEmb'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            PickList.Strings = (
              'Poupa'
              'PVC')
            Title.Alignment = taCenter
            Title.Caption = 'Emb.:'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_Quantidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsUnderline]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'It_Valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Unit.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsUnderline]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valoritem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Total'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsUnderline]
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'It_Lucro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Lucro'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ValorLucro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'Tot_Lucro'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'It_VrEmbalagem'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vr. Emb.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TotalEmba'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Status'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ST'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'It_QtdOvo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'QtdOvo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'It_QtdEmba'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            Title.Caption = 'QtdEmba'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsUnderline]
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'It_UN_GERAL'
            Visible = False
          end>
      end
    end
  end
  object pnlCalendario: TPanel
    Left = 523
    Top = 63
    Width = 230
    Height = 236
    TabOrder = 4
    Visible = False
    object lblFechar: TLabel
      Left = 93
      Top = 211
      Width = 40
      Height = 16
      Caption = 'Fechar'
      OnClick = lblFecharClick
    end
    object cal1: TMonthCalendar
      Left = 15
      Top = 22
      Width = 207
      Height = 195
      Date = 0.497476307871693300
      TabOrder = 0
      OnClick = cal1Click
      OnDblClick = cal1DblClick
    end
  end
  object PainelConfirma: TPanel
    Left = 124
    Top = 522
    Width = 734
    Height = 29
    TabOrder = 3
    Visible = False
    object sbDesistir: TSpeedButton
      Left = 241
      Top = 3
      Width = 106
      Height = 23
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
      OnClick = sbDesistirClick
    end
    object btnSbConfirmar: TSpeedButton
      Left = 435
      Top = 1
      Width = 111
      Height = 27
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
      OnClick = btnSbConfirmarClick
    end
  end
  object QryRef: TQuery
    DatabaseName = 'SysEgg'
    RequestLive = True
    SQL.Strings = (
      'SELECT A.PED_NUMERO, B.IT_NUMERO, B.IT_REF'
      'FROM PEDIDOS A, ITENS B'
      'WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_NUMERO =:VarNumPed')
    Left = 657
    Top = 1
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VarNumPed'
        ParamType = ptUnknown
      end>
  end
  object ActionList1: TActionList
    Left = 713
    Top = 9
    object AtualizaQtdExterna: TAction
      Caption = 'AtualizaQtdExterna'
      OnExecute = AtualizaQtdExternaExecute
    end
    object ExtornaExterna: TAction
      Caption = 'ExtornaExterna'
      OnExecute = ExtornaExternaExecute
    end
    object SomaTotalExterna: TAction
      Caption = 'SomaTotalExterna'
      OnExecute = SomaTotalExternaExecute
    end
    object SomaLucroExterna: TAction
      Caption = 'SomaLucroExterna'
      OnExecute = SomaLucroExternaExecute
    end
    object CalculaLucroEx: TAction
      Caption = 'CalculaLucroEx'
      OnExecute = CalculaLucroExExecute
    end
    object CalculaVrEmba: TAction
      Caption = 'CalculaVrEmba'
      OnExecute = CalculaVrEmbaExecute
    end
    object TotalizaVrEmba: TAction
      Caption = 'TotalizaVrEmba'
      OnExecute = TotalizaVrEmbaExecute
    end
    object FiltroExterna: TAction
      Caption = 'FiltroExterna'
      OnExecute = FiltroExternaExecute
    end
    object AtualizaConvEstoque: TAction
      Caption = 'AtualizaConvEstoque'
      OnExecute = AtualizaConvEstoqueExecute
    end
    object TotalizaCxs: TAction
      Caption = 'TotalizaCxs'
      OnExecute = TotalizaCxsExecute
    end
    object actAtualizaEstoque: TAction
      Caption = 'actAtualizaEstoque'
      OnExecute = actAtualizaEstoqueExecute
    end
    object actAtualizaStatus: TAction
      Caption = 'actAtualizaStatus'
      OnExecute = actAtualizaStatusExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 660
    Top = 2
    object menuConsultas: TMenuItem
      Caption = 'Consultas'
      object submenuClientes: TMenuItem
        Caption = 'Clientes'
        OnClick = submenuClientesClick
      end
    end
  end
  object qryContador: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'select max(ped_e)as MaxE'
      'from pedidos'
      'where ped_cliente <> '#39'VENDAS BALC'#195'O'#39)
    Left = 603
    Top = 6
    object qryContadorMaxE: TIntegerField
      FieldName = 'MaxE'
      Origin = 'SYSEGG."Pedidos.DB".Ped_E'
    end
  end
  object JvFormAutoSize1: TJvFormAutoSize
    Active = True
    Left = 808
    Top = 8
  end
  object qryUNI: TQuery
    DatabaseName = 'SysEgg'
    Left = 524
    Top = 11
  end
end
