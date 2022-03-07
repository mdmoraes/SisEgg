object FrmEmissaoDuplicata: TFrmEmissaoDuplicata
  Left = 51
  Top = 86
  Width = 751
  Height = 542
  Caption = 'Emiss'#227'o de Duplicata'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 513
    Width = 777
    Height = 32
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 28
      Top = 4
      Width = 280
      Height = 24
      DataSource = DmDados.dsDuplicata
      Hints.Strings = (
        'PRIMEIRO'
        'ANTERIOR'
        'PR'#211'XIMO'
        #218'LTIMO'
        'NOVO'
        'EXCLUIR'
        'ALTERAR'
        'GRAVAR'
        'CANCELAR')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object btnFechar: TButton
      Left = 651
      Top = 6
      Width = 75
      Height = 20
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnImprimir: TButton
      Left = 467
      Top = 6
      Width = 75
      Height = 20
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnImprimirClick
    end
    object btnConsultar: TButton
      Left = 324
      Top = 6
      Width = 137
      Height = 20
      Caption = '&Consultar Duplicata'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarClick
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 4
    Width = 773
    Height = 509
    ActivePage = tbshetConfiguraImp
    TabOrder = 1
    OnChange = PageControl1Change
    object tbshetDadosDuplicata: TTabSheet
      Caption = 'Duplicata'
      object btnConsultarPedparaFatura: TSpeedButton
        Left = 168
        Top = 101
        Width = 160
        Height = 25
        Hint = 'Consultar Pedido p/ Emiss'#227'o da Fatura'
        Caption = '&Consultar Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnConsultarPedparaFaturaClick
      end
      object gboxDadosDuplicata: TGroupBox
        Left = 2
        Top = 0
        Width = 621
        Height = 91
        Caption = 'Dados da Duplicata: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 17
          Width = 70
          Height = 16
          Caption = 'Fatura N'#186':'
        end
        object Label2: TLabel
          Left = 136
          Top = 18
          Width = 42
          Height = 16
          Caption = 'Valor:'
        end
        object Label3: TLabel
          Left = 263
          Top = 17
          Width = 94
          Height = 16
          Caption = 'N'#186' da Ordem:'
        end
        object Label4: TLabel
          Left = 389
          Top = 16
          Width = 86
          Height = 16
          Caption = 'Vencimento:'
        end
        object Label5: TLabel
          Left = 5
          Top = 62
          Width = 88
          Height = 16
          Caption = 'Dt. Emiss'#227'o:'
        end
        object Label16: TLabel
          Left = 521
          Top = 10
          Width = 33
          Height = 16
          Caption = 'COD'
        end
        object edNumFatura: TDBEdit
          Left = 6
          Top = 36
          Width = 121
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Fatura'
          DataSource = DmDados.dsDuplicata
          TabOrder = 0
        end
        object edValorDuplicata: TDBEdit
          Left = 133
          Top = 35
          Width = 119
          Height = 21
          TabStop = False
          AutoSelect = False
          AutoSize = False
          DataField = 'Valor'
          DataSource = DmDados.dsDuplicata
          TabOrder = 1
        end
        object edNumOrdem: TDBEdit
          Left = 261
          Top = 34
          Width = 121
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Num_Ordem'
          DataSource = DmDados.dsDuplicata
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 390
          Top = 33
          Width = 121
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Vencimento'
          DataSource = DmDados.dsDuplicata
          MaxLength = 10
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 97
          Top = 60
          Width = 460
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'DataEmissao'
          DataSource = DmDados.dsDuplicata
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 524
          Top = 33
          Width = 53
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Cod+'
          DataSource = DmDados.dsDuplicata
          TabOrder = 5
        end
      end
      object Panel2: TPanel
        Left = 410
        Top = 93
        Width = 211
        Height = 48
        BevelInner = bvLowered
        TabOrder = 1
        object Label14: TLabel
          Left = 9
          Top = 5
          Width = 68
          Height = 16
          Caption = 'N'#186'  Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 100
          Top = 4
          Width = 32
          Height = 16
          Caption = 'Data:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edNumPed: TDBEdit
          Left = 8
          Top = 22
          Width = 80
          Height = 20
          AutoSelect = False
          AutoSize = False
          Color = 15134153
          DataField = 'Num_Pedido'
          DataSource = DmDados.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edDataPedido: TDBEdit
          Left = 100
          Top = 21
          Width = 99
          Height = 20
          AutoSelect = False
          AutoSize = False
          Color = 15134153
          DataField = 'DataPedido'
          DataSource = DmDados.dsDuplicata
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 2
        Top = 138
        Width = 623
        Height = 258
        Caption = 'Dados do Sacado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label6: TLabel
          Left = 13
          Top = 30
          Width = 45
          Height = 16
          Caption = 'Nome:'
        end
        object Label7: TLabel
          Left = 22
          Top = 57
          Width = 36
          Height = 16
          Caption = 'End.:'
        end
        object Label8: TLabel
          Left = 9
          Top = 86
          Width = 71
          Height = 16
          Caption = 'Munic'#237'pio:'
        end
        object Label9: TLabel
          Left = 12
          Top = 115
          Width = 95
          Height = 16
          Caption = 'Pra'#231'a Pagto.:'
        end
        object Label10: TLabel
          Left = 10
          Top = 144
          Width = 107
          Height = 16
          Caption = 'End. Cobran'#231'a:'
        end
        object lblDoc1: TLabel
          Left = 13
          Top = 174
          Width = 54
          Height = 16
          Caption = 'lblDoc1'
        end
        object lblDoc2: TLabel
          Left = 295
          Top = 175
          Width = 54
          Height = 16
          Caption = 'lblDoc2'
        end
        object Label11: TLabel
          Left = 10
          Top = 201
          Width = 101
          Height = 16
          Caption = 'Valor Extenso:'
        end
        object Label12: TLabel
          Left = 304
          Top = 86
          Width = 54
          Height = 16
          Caption = 'Estado:'
        end
        object Label13: TLabel
          Left = 420
          Top = 87
          Width = 33
          Height = 16
          Caption = 'Cep:'
        end
        object edDadosSacado: TDBEdit
          Left = 60
          Top = 28
          Width = 509
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'NomeSacado'
          DataSource = DmDados.dsDuplicata
          TabOrder = 0
        end
        object edEndSacado: TDBEdit
          Left = 60
          Top = 56
          Width = 509
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'EndSacado'
          DataSource = DmDados.dsDuplicata
          TabOrder = 1
        end
        object edMunicipio: TDBEdit
          Left = 82
          Top = 85
          Width = 216
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Municipio'
          DataSource = DmDados.dsDuplicata
          TabOrder = 2
        end
        object edPraca: TDBEdit
          Left = 109
          Top = 114
          Width = 460
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'PracaPagto'
          DataSource = DmDados.dsDuplicata
          TabOrder = 3
        end
        object edEndCobranca: TDBEdit
          Left = 119
          Top = 143
          Width = 450
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'End_Cobranca'
          DataSource = DmDados.dsDuplicata
          TabOrder = 4
        end
        object edDoc1: TDBEdit
          Left = 69
          Top = 172
          Width = 216
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Cnpj'
          DataSource = DmDados.dsDuplicata
          TabOrder = 5
        end
        object edDoc2: TDBEdit
          Left = 353
          Top = 173
          Width = 216
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'InscEst'
          DataSource = DmDados.dsDuplicata
          TabOrder = 6
        end
        object edValorExtenso: TDBEdit
          Left = 11
          Top = 218
          Width = 558
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'ValorExtenso'
          DataSource = DmDados.dsDuplicata
          TabOrder = 7
        end
        object edEstado: TDBEdit
          Left = 362
          Top = 84
          Width = 48
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Estado'
          DataSource = DmDados.dsDuplicata
          TabOrder = 8
        end
        object edCep: TDBEdit
          Left = 456
          Top = 85
          Width = 113
          Height = 21
          AutoSelect = False
          AutoSize = False
          DataField = 'Cep'
          DataSource = DmDados.dsDuplicata
          TabOrder = 9
        end
      end
    end
    object tbshetConfiguraImp: TTabSheet
      Caption = 'Configurar Impress'#227'o'
      ImageIndex = 1
      object Label20: TLabel
        Left = 219
        Top = 2
        Width = 70
        Height = 13
        Caption = 'HORIZONTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lph: TLabel
        Left = 303
        Top = 23
        Width = 6
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 329
        Top = 23
        Width = 27
        Height = 13
        Caption = 'Pixels'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 382
        Top = 5
        Width = 52
        Height = 13
        Caption = 'VERTICAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lpv: TLabel
        Left = 457
        Top = 24
        Width = 6
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 482
        Top = 23
        Width = 27
        Height = 13
        Caption = 'Pixels'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton12: TSpeedButton
        Left = 528
        Top = 18
        Width = 68
        Height = 22
        Caption = 'Visualizar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 4
        Width = 204
        Height = 38
        Caption = 'Tamanho do papel (mil'#237'metro)'
        TabOrder = 0
        object Label23: TLabel
          Left = 8
          Top = 18
          Width = 27
          Height = 13
          Caption = 'Altura'
        end
        object Label24: TLabel
          Left = 104
          Top = 17
          Width = 36
          Height = 13
          Caption = 'Largura'
        end
        object saltura: TSpinEdit
          Left = 40
          Top = 14
          Width = 53
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 73
          OnChange = salturaChange
        end
        object slargura: TSpinEdit
          Left = 144
          Top = 13
          Width = 52
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 190
          OnChange = slarguraChange
        end
      end
      object barv: TScrollBar
        Left = 364
        Top = 19
        Width = 88
        Height = 22
        Max = 1000
        PageSize = 0
        Position = 49
        TabOrder = 1
        OnChange = barvChange
      end
      object barh: TScrollBar
        Left = 212
        Top = 18
        Width = 88
        Height = 22
        Max = 1000
        PageSize = 0
        Position = 394
        TabOrder = 2
        OnChange = barhChange
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 46
        Width = 758
        Height = 55
        Caption = 'Selecione o campo para mover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object rdDataEmissao: TRadioButton
          Left = 4
          Top = 12
          Width = 78
          Height = 17
          Caption = 'Dt.Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rdDataEmissaoClick
        end
        object rdNumordem: TRadioButton
          Left = 275
          Top = 12
          Width = 70
          Height = 17
          Caption = 'N'#186' Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rdNumordemClick
        end
        object rdVencimento: TRadioButton
          Left = 378
          Top = 12
          Width = 59
          Height = 17
          Caption = 'Venct'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rdVencimentoClick
        end
        object rdNomeSacado: TRadioButton
          Left = 456
          Top = 12
          Width = 79
          Height = 17
          Caption = 'Nome Sac.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rdNomeSacadoClick
        end
        object rdEndSacado: TRadioButton
          Left = 543
          Top = 12
          Width = 75
          Height = 17
          Caption = 'End. Sac.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rdEndSacadoClick
        end
        object rdvalor: TRadioButton
          Left = 192
          Top = 12
          Width = 73
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rdvalorClick
        end
        object rdNumFatura: TRadioButton
          Left = 96
          Top = 12
          Width = 72
          Height = 17
          Caption = 'N'#186' Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = rdNumFaturaClick
        end
        object rdMunicipio: TRadioButton
          Left = 4
          Top = 33
          Width = 75
          Height = 17
          Caption = 'Municipio'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TabStop = True
          OnClick = rdMunicipioClick
        end
        object rdEstado: TRadioButton
          Left = 96
          Top = 33
          Width = 59
          Height = 17
          Caption = 'Estado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = rdEstadoClick
        end
        object rdPcaPagto: TRadioButton
          Left = 192
          Top = 33
          Width = 73
          Height = 17
          Caption = 'P'#231'a Pagt'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = rdPcaPagtoClick
        end
        object rdEndCobranca: TRadioButton
          Left = 275
          Top = 33
          Width = 96
          Height = 17
          Caption = 'End. Cobran'#231'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = rdEndCobrancaClick
        end
        object rdCnpjCpf: TRadioButton
          Left = 378
          Top = 33
          Width = 69
          Height = 17
          Caption = 'Cnpj/Cpf'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = rdCnpjCpfClick
        end
        object rdInscRg: TRadioButton
          Left = 456
          Top = 33
          Width = 83
          Height = 17
          Caption = 'Insc.Est/Rg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = rdInscRgClick
        end
        object rdCep: TRadioButton
          Left = 545
          Top = 33
          Width = 57
          Height = 17
          Caption = 'Cep'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = rdCepClick
        end
        object rdExtenso: TRadioButton
          Left = 636
          Top = 24
          Width = 86
          Height = 17
          Caption = 'Extenso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = rdExtensoClick
        end
      end
      object Quickimpcheque: TQuickRep
        Left = 2
        Top = 110
        Width = 711
        Height = 361
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = Custom
        Page.Values = (
          0.000000000000000000
          1193.932291666667000000
          0.000000000000000000
          2351.484375000000000000
          50.000000000000000000
          0.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 80
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        object QRBand1: TQRBand
          Left = 15
          Top = 0
          Width = 696
          Height = 350
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1157.552083333333000000
            2301.875000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object lbldataemissao: TQRLabel
            Left = 469
            Top = 5
            Width = 81
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1551.119791666667000000
              16.536458333333330000
              267.890625000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data da Emiss'#227'o'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblFaturaNum: TQRLabel
            Left = 182
            Top = 53
            Width = 45
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              601.927083333333400000
              175.286458333333400000
              148.828125000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Fatura N'#186
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblNomesacado: TQRLabel
            Left = 237
            Top = 99
            Width = 81
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              783.828125000000000000
              327.421875000000000000
              267.890625000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nome do Sacado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblValor: TQRLabel
            Left = 265
            Top = 52
            Width = 25
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              876.432291666666800000
              171.979166666666700000
              82.682291666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblnumordem: TQRLabel
            Left = 318
            Top = 53
            Width = 61
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1051.718750000000000000
              175.286458333333400000
              201.744791666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N'#186' da Ordem'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblvencimento: TQRLabel
            Left = 414
            Top = 53
            Width = 56
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1369.218750000000000000
              175.286458333333400000
              185.208333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Vencimento'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEndSacado: TQRLabel
            Left = 239
            Top = 120
            Width = 75
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              790.442708333333400000
              396.875000000000000000
              248.046875000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'End. do Sacado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblMunicipio: TQRLabel
            Left = 239
            Top = 141
            Width = 45
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              790.442708333333400000
              466.328125000000000000
              148.828125000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Munic'#237'pio'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEstado: TQRLabel
            Left = 583
            Top = 141
            Width = 34
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1928.151041666667000000
              466.328125000000000000
              112.447916666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Estado'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCnpjCpf: TQRLabel
            Left = 239
            Top = 220
            Width = 40
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              790.442708333333400000
              727.604166666666800000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cnpj/Cpf'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblInscEstRg: TQRLabel
            Left = 455
            Top = 221
            Width = 62
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1504.817708333333000000
              730.911458333333500000
              205.052083333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Inscr.Est /Rg'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCep: TQRLabel
            Left = 599
            Top = 161
            Width = 19
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1981.067708333333000000
              532.473958333333400000
              62.838541666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cep'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblExtenso: TQRLabel
            Left = 239
            Top = 255
            Width = 39
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              790.442708333333400000
              843.359375000000000000
              128.984375000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Extenso'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEndCobranca: TQRLabel
            Left = 239
            Top = 193
            Width = 70
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              790.442708333333400000
              638.307291666666800000
              231.510416666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'End. Cobran'#231'a'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblPracaPagto: TQRLabel
            Left = 240
            Top = 164
            Width = 71
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              793.750000000000000000
              542.395833333333400000
              234.817708333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pra'#231'a de Pagt'#186
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
  end
end
