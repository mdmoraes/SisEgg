object FmClientes: TFmClientes
  Left = 29
  Top = 115
  BorderStyle = bsNone
  Caption = 'FmClientes'
  ClientHeight = 520
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PainelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 41
    Align = alTop
    Color = clActiveBorder
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 225
      Top = 5
      Width = 335
      Height = 33
      Caption = 'CADASTRO DE CLIENTES'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
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
    Top = 489
    Width = 756
    Height = 31
    Align = alBottom
    Color = clActiveBorder
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 21
      Top = 3
      Width = 23
      Height = 25
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
      Left = 44
      Top = 3
      Width = 23
      Height = 25
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
      Left = 67
      Top = 3
      Width = 23
      Height = 25
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
      Left = 90
      Top = 3
      Width = 23
      Height = 25
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
    object SbConsulta: TSpeedButton
      Left = 492
      Top = 3
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF999903333
        333333377777FFF33333FF9FFFF9993333333F7F3FF7773FF333009F00F03399
        3333777F7737FF773F33FF9FFFF9933393333F73FFF7733373F300F999903333
        393377377777F33337F3FFFFFFF0333339333FF33337F333373300FFFFF03333
        93337733FFF7F3337333FFF00000333333333F377777FF33FF330FF0FF999339
        93337337F3777FF77F33FFF0F993993993333337F77377F77F33FFF003339939
        93333337733F77377FFFFFF03399933999933FF733777337777F000339933339
        93997773377F3FF77F7733333993993993993333377F77377F77333333999339
        9993333333777337777333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SbConsultaClick
    end
    object Btincluir: TBitBtn
      Left = 121
      Top = 3
      Width = 122
      Height = 25
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
      Left = 246
      Top = 3
      Width = 120
      Height = 25
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
      Left = 369
      Top = 3
      Width = 120
      Height = 25
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
      Left = 615
      Top = 3
      Width = 107
      Height = 25
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
  object PainelDados: TPanel
    Left = 0
    Top = 41
    Width = 756
    Height = 448
    Align = alClient
    Color = 15066597
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 71
      Top = 10
      Width = 55
      Height = 16
      Caption = 'C'#243'digo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 15
      Top = 63
      Width = 110
      Height = 16
      Caption = 'R.Social/Nome:'
      FocusControl = editNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 92
      Width = 44
      Height = 16
      Caption = 'CNPJ:'
      FocusControl = editCnpj
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 91
      Width = 27
      Height = 16
      Caption = 'I.E.:'
      FocusControl = editIE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 54
      Top = 152
      Width = 72
      Height = 16
      Caption = 'Endere'#231'o:'
      FocusControl = editEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 79
      Top = 182
      Width = 47
      Height = 16
      Caption = 'Bairro:'
      FocusControl = editBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 347
      Top = 181
      Width = 55
      Height = 16
      Caption = 'Cidade:'
      FocusControl = editCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 72
      Top = 210
      Width = 54
      Height = 16
      Caption = 'Estado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 369
      Top = 210
      Width = 33
      Height = 16
      Caption = 'Cep:'
      FocusControl = editCep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 409
      Top = 239
      Width = 54
      Height = 16
      Caption = 'Celular:'
      FocusControl = editCelular
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 55
      Top = 239
      Width = 71
      Height = 16
      Caption = 'Tel. Com.:'
      FocusControl = editTelCom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 253
      Top = 239
      Width = 34
      Height = 16
      Caption = 'Fax.:'
      FocusControl = editFax
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 68
      Top = 270
      Width = 58
      Height = 16
      Caption = 'Contato:'
      FocusControl = editContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 76
      Top = 298
      Width = 49
      Height = 16
      Caption = 'E-mail:'
      FocusControl = editEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 38
      Top = 332
      Width = 87
      Height = 16
      Caption = 'Home Page:'
      FocusControl = editHomepage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 91
      Top = 121
      Width = 34
      Height = 16
      Caption = 'CPF:'
      FocusControl = editEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 376
      Top = 120
      Width = 27
      Height = 16
      Caption = 'RG:'
      FocusControl = editEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 89
      Top = 356
      Width = 37
      Height = 16
      Caption = 'Obs.:'
      FocusControl = editEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 53
      Top = 35
      Width = 73
      Height = 16
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbTextDataCadastro: TDBText
      Left = 500
      Top = 10
      Width = 64
      Height = 16
      AutoSize = True
      DataField = 'Cli_DataCadastro'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 392
      Top = 10
      Width = 105
      Height = 16
      Caption = 'Data Cadastro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 129
      Top = 8
      Width = 62
      Height = 16
      Alignment = taCenter
      DataField = 'Cli_Codigo'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 215
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object PainelConfirma: TPanel
      Left = 1
      Top = 406
      Width = 754
      Height = 34
      Color = clInactiveBorder
      TabOrder = 17
      Visible = False
      object SbDesistir: TSpeedButton
        Left = 157
        Top = 5
        Width = 108
        Height = 26
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
        OnClick = SbDesistirClick
      end
      object SbConfirmar: TSpeedButton
        Left = 471
        Top = 5
        Width = 106
        Height = 26
        Cursor = crHandPoint
        Caption = '&Confirmar '
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
        OnClick = SbConfirmarClick
      end
    end
    object editNome: TDBEdit
      Left = 128
      Top = 59
      Width = 403
      Height = 27
      DataField = 'Cli_Razao'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = editNomeChange
      OnKeyPress = editNomeKeyPress
    end
    object editCnpj: TDBEdit
      Left = 128
      Top = 89
      Width = 168
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_CGC'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 18
      ParentFont = False
      TabOrder = 2
      OnExit = editCnpjExit
      OnKeyPress = editCnpjKeyPress
    end
    object editIE: TDBEdit
      Left = 404
      Top = 88
      Width = 185
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Inscricao'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 3
      OnKeyPress = editIEKeyPress
    end
    object editEndereco: TDBEdit
      Left = 128
      Top = 148
      Width = 459
      Height = 27
      DataField = 'Cli_Endereco'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = editEnderecoKeyPress
    end
    object editBairro: TDBEdit
      Left = 128
      Top = 178
      Width = 166
      Height = 27
      DataField = 'Cli_Bairro'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = editBairroKeyPress
    end
    object editCidade: TDBEdit
      Left = 404
      Top = 177
      Width = 182
      Height = 27
      DataField = 'Cli_Cidade'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = editCidadeKeyPress
    end
    object editCep: TDBEdit
      Left = 404
      Top = 206
      Width = 103
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Cep'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 10
      OnKeyPress = editCepKeyPress
    end
    object editCelular: TDBEdit
      Left = 466
      Top = 235
      Width = 121
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Celular'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 13
      OnKeyPress = editCelularKeyPress
    end
    object editTelCom: TDBEdit
      Left = 128
      Top = 235
      Width = 115
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Fone1'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 11
      OnKeyPress = editTelComKeyPress
    end
    object editFax: TDBEdit
      Left = 288
      Top = 236
      Width = 109
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Fax'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 12
      OnKeyPress = editFaxKeyPress
    end
    object editContato: TDBEdit
      Left = 128
      Top = 267
      Width = 219
      Height = 27
      DataField = 'Cli_Contato'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnKeyPress = editContatoKeyPress
    end
    object editEmail: TDBEdit
      Left = 128
      Top = 296
      Width = 459
      Height = 27
      DataField = 'Cli_Email'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnKeyPress = editEmailKeyPress
    end
    object editHomepage: TDBEdit
      Left = 128
      Top = 326
      Width = 459
      Height = 27
      DataField = 'Cli_pagina'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnKeyPress = editHomepageKeyPress
    end
    object comboEstado: TDBComboBox
      Left = 128
      Top = 207
      Width = 55
      Height = 27
      DataField = 'Cli_Estado'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemHeight = 19
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
      ParentFont = False
      TabOrder = 9
      OnKeyPress = comboEstadoKeyPress
    end
    object memoObs: TDBMemo
      Left = 129
      Top = 356
      Width = 457
      Height = 47
      DataField = 'Cli_Obs'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 18
    end
    object editCPF: TDBEdit
      Left = 128
      Top = 118
      Width = 151
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Cpf'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 4
      OnExit = editCPFExit
    end
    object editRG: TDBEdit
      Left = 404
      Top = 117
      Width = 184
      Height = 27
      CharCase = ecUpperCase
      DataField = 'Cli_Rg'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = editBairroKeyPress
    end
    object lookupVendedor: TDBLookupComboBox
      Left = 128
      Top = 32
      Width = 461
      Height = 24
      DataField = 'Cli_Vendedor'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Nome'
      ListField = 'Nome'
      ListSource = DmDados.dsVendedores
      ParentFont = False
      TabOrder = 0
    end
  end
end
