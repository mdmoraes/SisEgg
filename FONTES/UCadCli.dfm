object FrmCadCli: TFrmCadCli
  Left = 72
  Top = 174
  Width = 729
  Height = 502
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'FrmCadCli'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PainelDados: TPanel
    Left = 0
    Top = 0
    Width = 713
    Height = 464
    Align = alClient
    Enabled = False
    TabOrder = 0
    object lblRazaoSocial: TLabel
      Left = 51
      Top = 62
      Width = 68
      Height = 16
      Caption = 'R. Social:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 46
      Top = 42
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
    object Label5: TLabel
      Left = 47
      Top = 134
      Width = 72
      Height = 16
      Caption = 'Endere'#231'o:'
      FocusControl = edEndereco
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 72
      Top = 176
      Width = 47
      Height = 16
      Caption = 'Bairro:'
      FocusControl = edBairro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 290
      Top = 176
      Width = 55
      Height = 16
      Caption = 'Cidade:'
      FocusControl = edCidade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 65
      Top = 201
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
      Left = 308
      Top = 197
      Width = 33
      Height = 16
      Caption = 'Cep:'
      FocusControl = edCep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 48
      Top = 226
      Width = 71
      Height = 16
      Caption = 'Tel. Com.:'
      FocusControl = edTelCom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 228
      Top = 227
      Width = 34
      Height = 16
      Caption = 'Fax.:'
      FocusControl = edFax
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 369
      Top = 227
      Width = 28
      Height = 16
      Caption = 'Cel:'
      FocusControl = edCelular
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 49
      Top = 249
      Width = 70
      Height = 16
      Caption = 'Contato 1:'
      FocusControl = edContato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 70
      Top = 269
      Width = 49
      Height = 16
      Caption = 'E-mail:'
      FocusControl = edEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 32
      Top = 289
      Width = 87
      Height = 16
      Caption = 'Home Page:'
      FocusControl = edHomepage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 82
      Top = 317
      Width = 37
      Height = 16
      Caption = 'Obs.:'
      FocusControl = edEmail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 585
      Top = 44
      Width = 3
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
    object Label21: TLabel
      Left = 508
      Top = 43
      Width = 68
      Height = 16
      Caption = 'Dt.: Cad.::'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 462
      Top = 41
      Width = 29
      Height = 19
      Hint = 'Procura Vendedor'
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
      ParentShowHint = False
      ShowHint = True
    end
    object Label24: TLabel
      Left = 282
      Top = 247
      Width = 70
      Height = 16
      Caption = 'Contato 2:'
      FocusControl = edContato2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCodCliente: TDBText
      Left = 34
      Top = 30
      Width = 41
      Height = 12
      DataField = 'Cli_Codigo'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeCliente: TLabel
      Left = 73
      Top = 62
      Width = 46
      Height = 16
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 47
      Top = 155
      Width = 71
      Height = 16
      Caption = 'Pt'#186' Refer.:'
      FocusControl = edPontoReferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PainelTitulo: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 26
      Color = clActiveBorder
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PainelControle: TPanel
      Left = 1
      Top = 432
      Width = 711
      Height = 31
      Align = alBottom
      Color = clActiveBorder
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        Left = 21
        Top = 7
        Width = 23
        Height = 18
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
        Top = 7
        Width = 23
        Height = 18
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
        Top = 7
        Width = 23
        Height = 18
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
        Top = 7
        Width = 23
        Height = 18
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
        Left = 488
        Top = 6
        Width = 121
        Height = 20
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
        Left = 117
        Top = 6
        Width = 122
        Height = 20
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
        Left = 242
        Top = 6
        Width = 120
        Height = 20
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
        Left = 365
        Top = 6
        Width = 120
        Height = 20
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
        Left = 611
        Top = 6
        Width = 107
        Height = 20
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
    object PainelConfirma: TPanel
      Left = 1
      Top = 405
      Width = 711
      Height = 27
      Align = alBottom
      Color = clInactiveBorder
      TabOrder = 2
      Visible = False
      object SbDesistir: TSpeedButton
        Left = 157
        Top = 4
        Width = 108
        Height = 20
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
        Top = 4
        Width = 106
        Height = 20
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
    object pnlFisica: TPanel
      Left = 79
      Top = 83
      Width = 414
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      object Label16: TLabel
        Left = 5
        Top = 4
        Width = 34
        Height = 16
        Caption = 'CPF:'
        FocusControl = edEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 237
        Top = 4
        Width = 27
        Height = 16
        Caption = 'RG:'
        FocusControl = edEndereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCPF: TDBEdit
        Left = 41
        Top = 3
        Width = 129
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_Cpf'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 0
      end
      object edRG: TDBEdit
        Left = 267
        Top = 2
        Width = 144
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_Rg'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object edEndereco: TDBEdit
      Left = 120
      Top = 132
      Width = 371
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Endereco'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edBairro: TDBEdit
      Left = 120
      Top = 174
      Width = 159
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Bairro'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edCidade: TDBEdit
      Left = 347
      Top = 174
      Width = 144
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Cidade'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object comboEstado: TDBComboBox
      Left = 120
      Top = 197
      Width = 61
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      CharCase = ecUpperCase
      DataField = 'Cli_Estado'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ItemHeight = 15
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
      Sorted = True
      TabOrder = 7
    end
    object edCep: TDBEdit
      Left = 347
      Top = 196
      Width = 73
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cli_Cep'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 8
    end
    object edTelCom: TDBEdit
      Left = 120
      Top = 225
      Width = 91
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cli_Fone1'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object edFax: TDBEdit
      Left = 258
      Top = 224
      Width = 91
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cli_Fax'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 10
    end
    object edCelular: TDBEdit
      Left = 401
      Top = 224
      Width = 91
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cli_Celular'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 11
    end
    object edContato: TDBEdit
      Left = 120
      Top = 246
      Width = 137
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Contato'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edEmail: TDBEdit
      Left = 120
      Top = 266
      Width = 372
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Email'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object edHomepage: TDBEdit
      Left = 120
      Top = 287
      Width = 373
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_pagina'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object memoObs: TDBMemo
      Left = 120
      Top = 308
      Width = 373
      Height = 38
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Obs'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 15
    end
    object edVendedor: TDBEdit
      Left = 120
      Top = 40
      Width = 338
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      Color = 12910591
      DataField = 'Cli_Vendedor'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object rdTipoPessoa: TDBRadioGroup
      Left = 511
      Top = 135
      Width = 155
      Height = 44
      Caption = ' PESSOA: '
      Color = 16053492
      Columns = 2
      DataField = 'Cli_PessoaFJ'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsUnderline]
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      ParentColor = False
      ParentFont = False
      TabOrder = 17
      Values.Strings = (
        'Fisica'
        'Juridica')
      Visible = False
    end
    object pnlJuridica: TPanel
      Left = 65
      Top = 83
      Width = 429
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 18
      object Label22: TLabel
        Left = 6
        Top = 5
        Width = 58
        Height = 16
        Caption = 'N. Fant.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 18
        Top = 25
        Width = 44
        Height = 16
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 246
        Top = 25
        Width = 27
        Height = 16
        Caption = 'I.E.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edNomeFantasia: TDBEdit
        Left = 66
        Top = 3
        Width = 359
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        DataField = 'Cli_NFantasia'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edCNPJ: TDBEdit
        Left = 66
        Top = 23
        Width = 149
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_CGC'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        MaxLength = 18
        ParentFont = False
        TabOrder = 1
      end
      object edIE: TDBEdit
        Left = 282
        Top = 23
        Width = 143
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_Inscricao'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        MaxLength = 15
        ParentFont = False
        TabOrder = 2
      end
    end
    object edContato2: TDBEdit
      Left = 355
      Top = 245
      Width = 137
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_Contato2'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object Button1: TButton
      Left = 560
      Top = 256
      Width = 65
      Height = 25
      Caption = 'Button1'
      TabOrder = 20
      Visible = False
    end
    object btnCancelaFiltro: TButton
      Left = 576
      Top = 288
      Width = 65
      Height = 25
      Caption = 'cancelaFiltro'
      TabOrder = 21
      Visible = False
    end
    object gboxPessoa: TGroupBox
      Left = 510
      Top = 62
      Width = 164
      Height = 39
      Caption = 'PESSOA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      TabOrder = 22
      object rdPJuridica: TRadioButton
        Left = 4
        Top = 20
        Width = 75
        Height = 17
        Caption = 'Juridica'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rdPFisica: TRadioButton
        Left = 86
        Top = 20
        Width = 66
        Height = 17
        Caption = 'F'#237'sica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object edNomeCliente: TDBEdit
      Left = 120
      Top = 61
      Width = 370
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cli_Cliente'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object edPontoReferencia: TDBEdit
      Left = 120
      Top = 153
      Width = 371
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Cli_PontoReferencia'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
    end
  end
end
