object FrmControledeFrotas: TFrmControledeFrotas
  Left = 87
  Top = 154
  Width = 653
  Height = 375
  Caption = 'Controle de Frotas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 25
    Align = alTop
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 254
      Top = -2
      Width = 274
      Height = 24
      AutoSize = False
      Caption = 'CONTROLE DE FROTAS'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ShadowSize = 2
      Transparent = True
    end
  end
  object PainelControle: TPanel
    Left = 0
    Top = 322
    Width = 645
    Height = 26
    Align = alBottom
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 23
      Top = 2
      Width = 23
      Height = 24
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
      Left = 46
      Top = 2
      Width = 23
      Height = 24
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
      Left = 69
      Top = 2
      Width = 23
      Height = 24
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
      Left = 92
      Top = 2
      Width = 23
      Height = 24
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
    object SbConsultaProduto: TSpeedButton
      Left = 500
      Top = 3
      Width = 105
      Height = 23
      Cursor = crHandPoint
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
        FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
        FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
        FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
        0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
        9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
        9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
        99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
        93337777FF777777733370000000073333333777777773333333}
      NumGlyphs = 2
      ParentFont = False
    end
    object Btincluir: TBitBtn
      Left = 128
      Top = 3
      Width = 104
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
    end
    object BtnAltera: TBitBtn
      Left = 251
      Top = 3
      Width = 105
      Height = 23
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
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FF3FFFFFFF3FFFF003000000030
        0000773777777737777703330030033300037FFF77F77FFF7773700007330000
        003377777733777777F3303003330030003337F77F3377F77733303073333030
        033337F77F3337F77F3337007333300003333777733337777333330033333000
        33333377F3333777F33333073333330033333377333333773333333333333333
        33333333FF333333FF33333973333337933333377FF333377F33333999333399
        93333337773333777F333339933333399333333773FF33377F33333939733793
        93333337377FF773733333333399993333333333337777333333}
      NumGlyphs = 2
    end
    object BtExcluir: TBitBtn
      Left = 375
      Top = 3
      Width = 105
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
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        000037777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF7777BBF
        FFF07F333777777F3FF70FFFFFFFB9BF1CC07F3FFF337F7377770F777FFFB99B
        C1C07F7773337F377F370FFFFFFFB9BBC1C07FFFFFFF7F337FF700000077B999
        B000777777777F33777733337377B9999B33333F733373F337FF3377377B99BB
        9BB33377F337F377377F3737377B9B79B9B737F73337F7F7F37F33733777BB7B
        BBB73373333377F37F3737333777BB777B9B3733333377F337F7333333777B77
        77BB3333333337333377333333333777337B3333333333333337}
      NumGlyphs = 2
    end
    object BtSaida: TBitBtn
      Left = 624
      Top = 3
      Width = 120
      Height = 23
      Cursor = crHandPoint
      Caption = '&Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtSaidaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object PaInelDados: TPanel
    Left = 0
    Top = 25
    Width = 645
    Height = 297
    Align = alClient
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 21
      Width = 57
      Height = 16
      Caption = 'Ve'#237'culo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 108
      Top = 62
      Width = 45
      Height = 16
      Caption = 'Placa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 61
      Width = 84
      Height = 16
      Caption = 'Ano Fabric.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 140
      Width = 90
      Height = 16
      Caption = 'Combust'#237'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 109
      Top = 99
      Width = 91
      Height = 16
      Caption = 'Cons. M'#233'dio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 108
      Top = 20
      Width = 57
      Height = 16
      Caption = 'Modelo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 11
      Top = 100
      Width = 82
      Height = 16
      Caption = 'Venc. IPVA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 12
      Top = 4
      Width = 16
      Height = 16
      AutoSize = True
      DataField = 'Id_Frota'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object PainelConfirma: TPanel
      Left = 1
      Top = 503
      Width = 798
      Height = 25
      TabOrder = 9
      object SbDesiste: TSpeedButton
        Left = 156
        Top = 2
        Width = 109
        Height = 22
        Cursor = crHandPoint
        Caption = '&Desiste'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
        OnClick = SbDesisteClick
      end
      object SpeedButton5: TSpeedButton
        Left = 484
        Top = 2
        Width = 117
        Height = 22
        Cursor = crHandPoint
        Caption = '&Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
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
        OnClick = SpeedButton5Click
      end
    end
    object edVeiculo: TDBEdit
      Left = 10
      Top = 36
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Veiculo'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edModelo: TDBEdit
      Left = 108
      Top = 36
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Modelo'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edPlaca: TDBEdit
      Left = 108
      Top = 76
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Placa'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edIpva: TDBEdit
      Left = 10
      Top = 114
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Venc_Ipva'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edFabricacao: TDBEdit
      Left = 10
      Top = 76
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Ano_Fabric'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edComsumo: TDBEdit
      Left = 108
      Top = 114
      Width = 93
      Height = 18
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Consumo_Medio'
      DataSource = DmDados.dsFrota_Master
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object comboCombustivel: TDBLookupComboBox
      Left = 10
      Top = 156
      Width = 193
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvRaised
      BevelKind = bkSoft
      DataField = 'Combustivel'
      DataSource = DmDados.dsFrota_Master
      KeyField = 'Id_Combustivel'
      ListField = 'Tipo_Combustivel'
      ListSource = DmDados.dsCombustivel
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 307
      Width = 787
      Height = 189
      Caption = 'HIST'#211'RICO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      TabOrder = 7
      object IndexDBGrid1: TIndexDBGrid
        Left = 5
        Top = 20
        Width = 775
        Height = 164
        DataSource = DmDados.dsFrota_Detail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -16
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold, fsItalic, fsUnderline]
        OnColEnter = IndexDBGrid1ColEnter
        Columns = <
          item
            Expanded = False
            FieldName = 'Id_FrotaDetail'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Cod_FrotaDetail'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Num_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Ped.:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'Data:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Motorista'
            Title.Alignment = taCenter
            Title.Caption = 'Motorista:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Km_Inicial'
            Title.Alignment = taCenter
            Title.Caption = 'KM Inicial'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Km_Final'
            Title.Alignment = taCenter
            Title.Caption = 'KM Final:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Hora_Inicial'
            Title.Alignment = taCenter
            Title.Caption = 'H. Inicio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Hora_Final'
            Title.Alignment = taCenter
            Title.Caption = 'H. Final:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Km_Rodado'
            Title.Alignment = taCenter
            Title.Caption = 'Km Rodado:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tempo_Decorrido'
            Title.Alignment = taCenter
            Title.Caption = 'T. Decorrido:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Despesas'
            Title.Alignment = taCenter
            Title.Caption = 'Despesas:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Combustivel'
            Title.Alignment = taCenter
            Title.Caption = 'Combust'#237'vel:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Obs'
            Title.Caption = 'Obs.:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Lucida Sans'
            Title.Font.Style = [fsBold]
            Width = 671
            Visible = True
          end>
      end
    end
    object btnFoco: TButton
      Left = 458
      Top = -22
      Width = 54
      Height = 18
      Caption = 'Foco'
      TabOrder = 8
    end
    object GroupBox2: TGroupBox
      Left = 331
      Top = 2
      Width = 460
      Height = 310
      Caption = ' FOTOS DO VE'#205'CULO: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      TabOrder = 10
      object PageControl1: TPageControl
        Left = 5
        Top = 17
        Width = 444
        Height = 283
        ActivePage = tabFrente
        TabOrder = 0
        object tabFrente: TTabSheet
          Caption = 'FRENTE'
          object btnFofoDireita: TSpeedButton
            Left = 357
            Top = 85
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFofoDireitaClick
          end
          object btnLimparFrente: TSpeedButton
            Left = 358
            Top = 113
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparFrenteClick
          end
          object dbFrente: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_Frente'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabDireita: TTabSheet
          Caption = 'DIREITA'
          ImageIndex = 1
          object btnFotoDireita: TSpeedButton
            Left = 357
            Top = 77
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFotoDireitaClick
          end
          object btnLimparDireita: TSpeedButton
            Left = 357
            Top = 105
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparDireitaClick
          end
          object dbDireita: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_Direita'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabEsquerda: TTabSheet
          Caption = 'ESQUERDA'
          ImageIndex = 2
          object btnEsquerda: TSpeedButton
            Left = 358
            Top = 77
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnEsquerdaClick
          end
          object btnLimparEsquerda: TSpeedButton
            Left = 358
            Top = 106
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparEsquerdaClick
          end
          object dbEsquerda: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_Esquerda'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabTraseira: TTabSheet
          Caption = 'TRASEIRA'
          ImageIndex = 3
          object btnTraseira: TSpeedButton
            Left = 358
            Top = 84
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnTraseiraClick
          end
          object btnLimparTraseira: TSpeedButton
            Left = 358
            Top = 112
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparTraseiraClick
          end
          object dbTraseira: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_Traseira'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabFInterna: TTabSheet
          Caption = 'CABINE'
          ImageIndex = 4
          object btnFotoFInterna: TSpeedButton
            Left = 357
            Top = 79
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFotoFInternaClick
          end
          object btnLimparFInterna: TSpeedButton
            Left = 357
            Top = 107
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparFInternaClick
          end
          object dbFInterna: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_FrenteInt'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabPiso: TTabSheet
          Caption = 'PISO'
          ImageIndex = 5
          object btnFotoPiso: TSpeedButton
            Left = 357
            Top = 77
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFotoPisoClick
          end
          object btnLimparPiso: TSpeedButton
            Left = 357
            Top = 105
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparPisoClick
          end
          object dbPiso: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_Piso'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabDireitaInt: TTabSheet
          Caption = 'DIREITA INT.'
          ImageIndex = 6
          object btnFotoDireitaInt: TSpeedButton
            Left = 357
            Top = 77
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFotoDireitaIntClick
          end
          object btnLimparDireitaInt: TSpeedButton
            Left = 357
            Top = 105
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparDireitaIntClick
          end
          object dbDireitaInt: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_DireitaInt'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
        object tabEsqueraInt: TTabSheet
          Caption = 'ESQUERDA INT.'
          ImageIndex = 7
          object btnFotoEsquerdaInt: TSpeedButton
            Left = 357
            Top = 77
            Width = 76
            Height = 28
            Caption = 'FOTO'
            OnClick = btnFotoEsquerdaIntClick
          end
          object btnLimparEsquerdaInt: TSpeedButton
            Left = 358
            Top = 105
            Width = 76
            Height = 28
            Caption = 'LIMPAR'
            OnClick = btnLimparEsquerdaIntClick
          end
          object dbEsquerdaInt: TDBImage
            Left = 1
            Top = 0
            Width = 350
            Height = 250
            DataField = 'Foto_EsquerdaInt'
            DataSource = DmDados.dsFrota_Master
            Stretch = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = 'C:\Mydas Estoque\Fotos'
    Left = 256
    Top = 32
  end
end
