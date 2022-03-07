object FrmCadClie: TFrmCadClie
  Left = 240
  Top = 19
  AutoScroll = False
  BorderIcons = [biHelp]
  Caption = ' Cadastro de Clientes'
  ClientHeight = 683
  ClientWidth = 942
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PainelTitulo: TPanel
    Left = 0
    Top = 0
    Width = 942
    Height = 29
    Align = alTop
    Color = clActiveBorder
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblAtivo: TLabel
      Left = 593
      Top = 3
      Width = 76
      Height = 24
      Caption = 'lblAtivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblTotalReg: TLabel
      Left = 21
      Top = 3
      Width = 58
      Height = 22
      Caption = 'lblReg'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 88
      Top = 6
      Width = 82
      Height = 18
      Caption = 'CLIENTES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object PainelDados: TPanel
    Left = 0
    Top = 29
    Width = 921
    Height = 611
    Enabled = False
    TabOrder = 1
    object Label19: TLabel
      Left = 46
      Top = 8
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
    object DBText2: TDBText
      Left = 609
      Top = 254
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
      Visible = False
    end
    object Label18: TLabel
      Left = 82
      Top = 247
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
    object Label14: TLabel
      Left = 70
      Top = 216
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
    object Label10: TLabel
      Left = 357
      Top = 193
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
    object Label12: TLabel
      Left = 222
      Top = 193
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
    object Label11: TLabel
      Left = 48
      Top = 192
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
    object Label8: TLabel
      Left = 65
      Top = 166
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
      Left = 179
      Top = 165
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
    object Label7: TLabel
      Left = 290
      Top = 141
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
    object Label6: TLabel
      Left = 72
      Top = 140
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
    object Label2: TLabel
      Left = 47
      Top = 120
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
    object Label5: TLabel
      Left = 47
      Top = 99
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
    object SpeedButton5: TSpeedButton
      Left = 457
      Top = 7
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
      OnClick = SpeedButton5Click
    end
    object lblCliente: TLabel
      Left = 66
      Top = 28
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
    object Label28: TLabel
      Left = 681
      Top = 5
      Width = 106
      Height = 16
      Caption = #218'LT. COMPRA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnAtualizaHVenda: TSpeedButton
      Left = 8
      Top = 248
      Width = 105
      Height = 17
      Caption = 'Atualiza HVenda'
      Visible = False
      OnClick = btnAtualizaHVendaClick
    end
    object btnAtuDataCP: TSpeedButton
      Left = 24
      Top = 232
      Width = 33
      Height = 19
      Caption = 'AtuDataCP'
      Visible = False
      OnClick = btnAtuDataCPClick
    end
    object btnFoco: TButton
      Left = 712
      Top = -21
      Width = 41
      Height = 18
      Caption = 'Foco'
      TabOrder = 24
    end
    object edVendedor: TDBEdit
      Left = 120
      Top = 6
      Width = 334
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
      TabOrder = 7
      OnChange = edVendedorChange
      OnClick = edVendedorClick
      OnExit = edVendedorExit
    end
    object rdTipoPessoa: TDBRadioGroup
      Left = 382
      Top = 256
      Width = 97
      Height = 22
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
      TabOrder = 19
      Values.Strings = (
        'Fisica'
        'Juridica')
      OnChange = rdTipoPessoaChange
      OnClick = rdTipoPessoaClick
    end
    object memoObs: TDBMemo
      Left = 120
      Top = 236
      Width = 369
      Height = 44
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
    object edEmail: TDBEdit
      Left = 120
      Top = 213
      Width = 368
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecLowerCase
      DataField = 'Cli_Email'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object edCelular: TDBEdit
      Left = 384
      Top = 190
      Width = 104
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
      TabOrder = 20
      OnExit = edCelularExit
    end
    object edFax: TDBEdit
      Left = 252
      Top = 190
      Width = 101
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
      TabOrder = 17
      OnExit = edFaxExit
    end
    object edTelCom: TDBEdit
      Left = 120
      Top = 191
      Width = 100
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
      TabOrder = 13
      OnExit = edTelComExit
    end
    object comboEstado: TDBComboBox
      Left = 120
      Top = 163
      Width = 57
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
      TabOrder = 12
    end
    object edCep: TDBEdit
      Left = 211
      Top = 163
      Width = 79
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
      TabOrder = 16
      OnExit = edCepExit
    end
    object edCidade: TDBEdit
      Left = 347
      Top = 140
      Width = 140
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
      TabOrder = 18
    end
    object edBairro: TDBEdit
      Left = 120
      Top = 140
      Width = 155
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
      TabOrder = 11
    end
    object edPontoReferencia: TDBEdit
      Left = 120
      Top = 119
      Width = 367
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
      TabOrder = 10
    end
    object edEndereco: TDBEdit
      Left = 120
      Top = 98
      Width = 366
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
      TabOrder = 9
    end
    object edNomeCliente: TDBEdit
      Left = 120
      Top = 27
      Width = 366
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
      TabOrder = 8
      OnChange = edNomeClienteChange
      OnExit = edNomeClienteExit
    end
    object pnlFisica: TPanel
      Left = 80
      Top = 51
      Width = 407
      Height = 46
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 6
      object Label16: TLabel
        Left = 5
        Top = 4
        Width = 34
        Height = 16
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 231
        Top = 4
        Width = 27
        Height = 16
        Caption = 'RG:'
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
        OnExit = edCPFExit
      end
      object edRG: TDBEdit
        Left = 261
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
        OnExit = edRGExit
      end
    end
    object pnlJuridica: TPanel
      Left = 66
      Top = 51
      Width = 423
      Height = 47
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 5
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
        Left = 245
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
        Width = 353
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
        OnExit = edCNPJExit
      end
      object edIE: TDBEdit
        Left = 276
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
        OnExit = edIEExit
      end
    end
    object gboxPessoa: TGroupBox
      Left = 494
      Top = 20
      Width = 164
      Height = 39
      Caption = 'PESSOA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      TabOrder = 21
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
        OnClick = rdPJuridicaClick
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
        OnClick = rdPFisicaClick
      end
    end
    object gboxPedidosdoCliente: TGroupBox
      Left = 0
      Top = 344
      Width = 913
      Height = 261
      Caption = 'HIST'#211'RICO DE COMPRAS: '
      Color = 15502939
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object JvDBGrid1: TJvDBGrid
        Left = 8
        Top = 24
        Width = 896
        Height = 228
        BorderStyle = bsNone
        DataSource = dsQuery1
        FixedColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = []
        OnDblClick = JvDBGrid1DblClick
        OnKeyDown = JvDBGrid1KeyDown
        AlternateRowColor = 14155735
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 19
        TitleRowHeight = 19
        Columns = <
          item
            Expanded = False
            FieldName = 'PED_NUMERO'
            Title.Caption = 'N'#186' Pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 469
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PED_VRFINAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Visible = True
          end>
      end
    end
    object edCodCliente: TDBEdit
      Left = 6
      Top = 28
      Width = 34
      Height = 21
      DataField = 'Cli_Codigo'
      DataSource = DmDados.DsClientes
      ReadOnly = True
      TabOrder = 2
      Visible = False
      OnChange = edCodClienteChange
    end
    object Button2: TButton
      Left = 8
      Top = 264
      Width = 45
      Height = 10
      Caption = 'Button2'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 160
      Width = 44
      Height = 15
      Caption = 'Button3'
      TabOrder = 3
      Visible = False
      OnClick = Button3Click
    end
    object GroupBox1: TGroupBox
      Left = 495
      Top = 67
      Width = 298
      Height = 202
      Hint = 'DIAS DE COMPRAS '#13#10'NA SEMANA,'#13#10'DESSE CLIENTE'
      Caption = 'Dia da Semana / Rota:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
      object btnconfererota: TSpeedButton
        Left = 203
        Top = 48
        Width = 78
        Height = 53
        Cursor = crHandPoint
        Caption = 'Checar Rota'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = btnconfererotaClick
      end
      object CheckBoxSegunda: TCheckBox
        Left = 9
        Top = 23
        Width = 118
        Height = 17
        Caption = 'Segunda- Feira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBoxSegundaClick
      end
      object cboxTerca: TCheckBox
        Left = 9
        Top = 48
        Width = 117
        Height = 17
        Caption = 'Ter'#231'a- Feira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cboxTercaClick
      end
      object cboxQuarta: TCheckBox
        Left = 9
        Top = 73
        Width = 121
        Height = 17
        Caption = 'Quarta- Feira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cboxQuartaClick
      end
      object cboxQuinta: TCheckBox
        Left = 9
        Top = 98
        Width = 121
        Height = 17
        Caption = 'Quinta- Feira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cboxQuintaClick
      end
      object cboxSexta: TCheckBox
        Left = 9
        Top = 122
        Width = 121
        Height = 17
        Caption = 'Sexta- Feira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cboxSextaClick
      end
      object cboxSabado: TCheckBox
        Left = 9
        Top = 148
        Width = 117
        Height = 17
        Caption = 'S'#225'bado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cboxSabadoClick
      end
      object edRotaSegunda: TDBEdit
        Left = 141
        Top = 21
        Width = 52
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaSegunda'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = edRotaSegundaExit
      end
      object edRotaTerca: TDBEdit
        Left = 140
        Top = 46
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaTerca'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = edRotaTercaExit
      end
      object edRotaQuarta: TDBEdit
        Left = 140
        Top = 71
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaQuarta'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnExit = edRotaQuartaExit
      end
      object edRotaQuinta: TDBEdit
        Left = 140
        Top = 96
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaQuinta'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnExit = edRotaQuintaExit
      end
      object edRotaSexta: TDBEdit
        Left = 140
        Top = 120
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaSexta'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnExit = edRotaSextaExit
      end
      object edRotaSabado: TDBEdit
        Left = 140
        Top = 146
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaSabado'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnExit = edRotaSabadoExit
      end
      object cboxDomingo: TCheckBox
        Left = 9
        Top = 173
        Width = 109
        Height = 17
        TabStop = False
        Caption = 'Domingo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = cboxDomingoClick
      end
      object dbCli_RotaDomingo: TDBEdit
        Left = 140
        Top = 171
        Width = 53
        Height = 21
        BevelInner = bvLowered
        BevelOuter = bvRaised
        BevelKind = bkSoft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Cli_RotaDomingo'
        DataSource = DmDados.DsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnExit = dbCli_RotaDomingoExit
      end
    end
    object dbCli_UltimaCompra: TDBEdit
      Left = 681
      Top = 26
      Width = 104
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvRaised
      BevelKind = bkSoft
      BorderStyle = bsNone
      Color = clSilver
      DataField = 'Cli_UltimaCompra'
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      OnChange = dbCli_UltimaCompraChange
    end
    object grp1: TGroupBox
      Left = 5
      Top = 281
      Width = 436
      Height = 59
      Caption = 'Forma de Pagamento'
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object lbl1: TLabel
        Left = 8
        Top = 16
        Width = 37
        Height = 16
        Caption = 'Forma'
      end
      object lbl2: TLabel
        Left = 164
        Top = 16
        Width = 34
        Height = 16
        Caption = 'Prazo'
      end
      object btn1: TSpeedButton
        Left = 394
        Top = 32
        Width = 31
        Height = 22
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn1Click
      end
      object dbForma: TDBEdit
        Left = 8
        Top = 31
        Width = 152
        Height = 24
        DataField = 'Cli_Forma'
        DataSource = DmDados.DsClientes
        TabOrder = 0
      end
      object dbPrazo: TDBEdit
        Left = 163
        Top = 32
        Width = 213
        Height = 24
        DataField = 'Cli_Prazo'
        DataSource = DmDados.DsClientes
        TabOrder = 1
      end
    end
  end
  object Painelconfirma1: TPanel
    Left = 160
    Top = 644
    Width = 571
    Height = 27
    Color = clInactiveBorder
    TabOrder = 3
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
  object PainelControle: TPanel
    Left = 102
    Top = 644
    Width = 774
    Height = 31
    Color = clActiveBorder
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 5
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
      Left = 28
      Top = 8
      Width = 23
      Height = 17
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
      Left = 51
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
      Left = 74
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
      Left = 366
      Top = 6
      Width = 85
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
      Left = 101
      Top = 6
      Width = 78
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
      Left = 190
      Top = 6
      Width = 84
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
      Left = 278
      Top = 6
      Width = 84
      Height = 20
      Cursor = crHandPoint
      Caption = '&Excluir'
      Enabled = False
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
      Left = 669
      Top = 5
      Width = 98
      Height = 23
      Cursor = crHandPoint
      Caption = '&Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
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
    object Panel1: TPanel
      Left = 457
      Top = 3
      Width = 80
      Height = 26
      TabOrder = 3
      Visible = False
      object btnRelatorio: TSpeedButton
        Left = 4
        Top = 1
        Width = 30
        Height = 21
        Cursor = crHandPoint
        Hint = 'Rela'#231#227'o de Clientes X Pedidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnRelatorioClick
      end
      object DataI: TDateTimePicker
        Left = 41
        Top = 1
        Width = 88
        Height = 21
        Date = 38909.728414351900000000
        Time = 38909.728414351900000000
        TabOrder = 0
        OnCloseUp = DataICloseUp
      end
      object DataF: TDateTimePicker
        Left = 155
        Top = 1
        Width = 87
        Height = 21
        Date = 38909.728414351900000000
        Time = 38909.728414351900000000
        TabOrder = 1
        OnCloseUp = DataFCloseUp
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PED_NUMERO, PED_DATA, PED_CLIENTE, PED_VRFINAL'
      'FROM PEDIDOS'
      'WHERE PED_CLIENTE LIKE :VARCLIENTE'
      'ORDER BY PED_DATA DESC')
    Left = 624
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object tbQuery1PED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Numero'
    end
    object Query1PED_DATA: TDateField
      FieldName = 'PED_DATA'
      Origin = 'DEBORA."Pedidos.DB".Ped_Data'
    end
    object Query1PED_CLIENTE: TStringField
      DisplayWidth = 70
      FieldName = 'PED_CLIENTE'
      Origin = 'DEBORA."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object Query1PED_VRFINAL: TCurrencyField
      DisplayWidth = 15
      FieldName = 'PED_VRFINAL'
      Origin = 'DEBORA."Pedidos.DB".Ped_VrFinal'
    end
  end
  object QryRel: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.CLI_CLIENTE, B.NUM_PEDIDO, B.DATA_PEDIDO, B.VALOR'
      'FROM CLIENTES A, CLIENTE_DETAIL B'
      
        'WHERE A.CLI_CODIGO = B.COD_CLI_D AND B.DATA_PEDIDO BETWEEN :VarD' +
        'ataI and :VarDataF AND A.CLI_CLIENTE LIKE (:VARCLIENTE)'
      'ORDER BY B.NUM_PEDIDO, B.DATA_PEDIDO'
      '')
    Left = 544
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
      end
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object QryRelCLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'DEBORA."Clientes.DB".Cli_Cliente'
      Size = 60
    end
    object QryRelNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
      Origin = 'DEBORA."Cliente_Detail.DB".Num_Pedido'
    end
    object QryRelDATA_PEDIDO: TDateField
      FieldName = 'DATA_PEDIDO'
      Origin = 'DEBORA."Cliente_Detail.DB".Data_Pedido'
    end
    object QryRelVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'DEBORA."Cliente_Detail.DB".Valor'
    end
  end
  object dsQuery1: TDataSource
    DataSet = Query1
    Left = 584
    Top = 29
  end
  object Query2: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT MAX(PED_DATA) AS DATA, PED_CLIENTE'
      'FROM PEDIDOS'
      'WHERE PED_CLIENTE LIKE :VARCLIENTE'
      'GROUP BY PED_CLIENTE')
    Left = 696
    Top = 221
    ParamData = <
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object Query2DATA: TDateField
      FieldName = 'DATA'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
    object Query2PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
  end
  object actAtualizaRota: TActionList
    OnExecute = actAtualizaRotaExecute
    Left = 728
    Top = 101
    object act1: TAction
      Caption = 'act1'
      OnExecute = act1Execute
    end
  end
end
