object FrmVendedores: TFrmVendedores
  Left = 263
  Top = 35
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = ' Cadastro de Vendedores'
  ClientHeight = 529
  ClientWidth = 951
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PainelControle: TPanel
    Left = 80
    Top = 493
    Width = 785
    Height = 33
    Color = clActiveBorder
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 99
      Top = 4
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
      Left = 122
      Top = 4
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
      Left = 145
      Top = 4
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
      Left = 168
      Top = 4
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
      Left = 444
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = SbConsultaClick
    end
    object btnRelatorio: TSpeedButton
      Left = 530
      Top = 4
      Width = 82
      Height = 25
      Cursor = crHandPoint
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnRelatorioClick
    end
    object Btincluir: TBitBtn
      Left = 192
      Top = 4
      Width = 83
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
      NumGlyphs = 2
    end
    object BtnAltera: TBitBtn
      Left = 277
      Top = 4
      Width = 81
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
      NumGlyphs = 2
    end
    object BtExcluir: TBitBtn
      Left = 361
      Top = 4
      Width = 81
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
      NumGlyphs = 2
    end
    object BtSaida: TBitBtn
      Left = 647
      Top = 4
      Width = 82
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
      NumGlyphs = 2
    end
  end
  object PainelDados: TPanel
    Left = 40
    Top = 16
    Width = 865
    Height = 465
    Color = 15066597
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 45
      Top = 34
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
      Left = 54
      Top = 54
      Width = 46
      Height = 16
      Caption = 'Nome:'
      FocusControl = edNome
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 66
      Top = 77
      Width = 34
      Height = 16
      Caption = 'CPF:'
      FocusControl = edCPF
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 389
      Top = 77
      Width = 27
      Height = 16
      Caption = 'RG:'
      FocusControl = edRG
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 28
      Top = 97
      Width = 72
      Height = 16
      Caption = 'Endere'#231'o:'
      FocusControl = edEnd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 53
      Top = 119
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
      Left = 322
      Top = 119
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
      Left = 48
      Top = 139
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
      Left = 166
      Top = 138
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
      Left = 31
      Top = 163
      Width = 67
      Height = 16
      Caption = 'Telefone:'
      FocusControl = edTel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 205
      Top = 163
      Width = 54
      Height = 16
      Caption = 'Celular:'
      FocusControl = edCel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 49
      Top = 185
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
      Left = 67
      Top = 202
      Width = 33
      Height = 16
      Caption = 'Obs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 379
      Top = 162
      Width = 82
      Height = 16
      Caption = 'Data Nasc.:'
      FocusControl = edDataNasc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object PainelConfirma: TPanel
      Left = 1
      Top = 548
      Width = 798
      Height = 32
      Color = clInactiveBorder
      TabOrder = 1
      Visible = False
      object SbDesistir: TSpeedButton
        Left = 212
        Top = 4
        Width = 74
        Height = 24
        Cursor = crHandPoint
        Caption = '&Desistir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        OnClick = SbDesistirClick
      end
      object SbConfirmar: TSpeedButton
        Left = 526
        Top = 4
        Width = 74
        Height = 24
        Cursor = crHandPoint
        Caption = '&Confirmar '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        OnClick = SbConfirmarClick
      end
    end
    object edNome: TDBEdit
      Left = 100
      Top = 54
      Width = 461
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 12910591
      DataField = 'Nome'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = edNomeExit
      OnKeyPress = edNomeKeyPress
    end
    object edCPF: TDBEdit
      Left = 100
      Top = 75
      Width = 139
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cpf'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 14
      ParentFont = False
      TabOrder = 3
      OnExit = edCPFExit
      OnKeyPress = edCPFKeyPress
    end
    object edRG: TDBEdit
      Left = 418
      Top = 75
      Width = 143
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Rg'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edRGKeyPress
    end
    object edEnd: TDBEdit
      Left = 100
      Top = 96
      Width = 461
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'End'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edEndKeyPress
    end
    object edBairro: TDBEdit
      Left = 100
      Top = 117
      Width = 184
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Bairro'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edBairroKeyPress
    end
    object edCidade: TDBEdit
      Left = 377
      Top = 117
      Width = 184
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cidade'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edCidadeKeyPress
    end
    object edCep: TDBEdit
      Left = 197
      Top = 137
      Width = 87
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Cep'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 9
      OnExit = edCepExit
      OnKeyPress = edCepKeyPress
    end
    object edTel: TDBEdit
      Left = 98
      Top = 162
      Width = 102
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Tel'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 10
      OnExit = edTelExit
      OnKeyPress = edTelKeyPress
    end
    object edCel: TDBEdit
      Left = 259
      Top = 161
      Width = 102
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Celular'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 13
      ParentFont = False
      TabOrder = 11
      OnExit = edCelExit
      OnKeyPress = edCelKeyPress
    end
    object edEmail: TDBEdit
      Left = 98
      Top = 184
      Width = 463
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Email'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnKeyPress = edEmailKeyPress
    end
    object comboEstado: TDBComboBox
      Left = 100
      Top = 138
      Width = 62
      Height = 23
      CharCase = ecUpperCase
      DataField = 'Estado'
      DataSource = DmDados.dsVendedores
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
      TabOrder = 8
      OnKeyPress = comboEstadoKeyPress
    end
    object edCod: TDBEdit
      Left = 101
      Top = 32
      Width = 41
      Height = 20
      TabStop = False
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = 15066597
      Ctl3D = True
      DataField = 'Id_Vendedor'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 215
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 10
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnKeyPress = edCodKeyPress
    end
    object memoObs: TDBMemo
      Left = 98
      Top = 205
      Width = 463
      Height = 39
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      DataField = 'Obs'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 14
    end
    object edDataNasc: TDBEdit
      Left = 461
      Top = 160
      Width = 100
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Data_Nasc'
      DataSource = DmDados.dsVendedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 12
    end
    object PainelTitulo: TPanel
      Left = 4
      Top = 1
      Width = 831
      Height = 30
      Color = clActiveBorder
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object Button1: TButton
      Left = 672
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 16
      Visible = False
      OnClick = Button1Click
    end
  end
  object PainelConfirma1: TPanel
    Left = 216
    Top = 497
    Width = 571
    Height = 27
    Color = clInactiveBorder
    TabOrder = 2
    Visible = False
    object btnSbDesistir: TSpeedButton
      Left = 105
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
      OnClick = btnSbDesistirClick
    end
    object btnSbConfirmar: TSpeedButton
      Left = 358
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
      OnClick = btnSbConfirmarClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.NOME, B.RSOCIAL, B.NFANTASIA,'
      'B.DATA_ULT_COMPRA, B.COD_CLIENTE, B.CEP_CLI, B.NUMENDCLI'
      'FROM VENDEDORES A, VENDEDOR_DETAIL B'
      
        'WHERE A.ID_VENDEDOR = B.COD_VEN_D AND A.NOME LIKE (:VARNOMEVENDE' +
        'DOR)'
      'ORDER BY B.RSOCIAL, B.DATA_ULT_COMPRA')
    Left = 592
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'VARNOMEVENDEDOR'
        ParamType = ptUnknown
      end>
  end
end
