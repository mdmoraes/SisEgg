object FrmEmissaoBoleto: TFrmEmissaoBoleto
  Left = 39
  Top = 25
  Width = 720
  Height = 568
  Caption = 'Emiss'#227'o de Boleto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 788
    Height = 25
    Align = alBottom
    AutoSize = True
    TabOrder = 0
    object btnFechar: TButton
      Left = 710
      Top = 1
      Width = 75
      Height = 23
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object PageControl1: TPageControl
    Left = 15
    Top = 8
    Width = 773
    Height = 503
    ActivePage = tbshetConfiguraImp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PageControl1Change
    object tbshetDadosDuplicata: TTabSheet
      Caption = 'Dados do Cart'#227'o'
      object GroupBox1: TGroupBox
        Left = 5
        Top = 5
        Width = 724
        Height = 460
        Caption = 'Dados do Boleto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object btnConsultarMembro: TSpeedButton
          Left = 673
          Top = 266
          Width = 37
          Height = 23
          Hint = 'Consultar Cooperador ou Membro'
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
          OnClick = btnConsultarMembroClick
        end
        object Panel2: TPanel
          Left = 7
          Top = 23
          Width = 704
          Height = 280
          BevelInner = bvLowered
          TabOrder = 0
          object Label6: TLabel
            Left = 11
            Top = 31
            Width = 148
            Height = 16
            Caption = 'Local de Pagamento:'
          end
          object Label26: TLabel
            Left = 11
            Top = 87
            Width = 87
            Height = 16
            Caption = 'Data Docto.:'
          end
          object Label27: TLabel
            Left = 107
            Top = 87
            Width = 71
            Height = 16
            Caption = 'N'#186' Docto.:'
          end
          object Label1: TLabel
            Left = 8
            Top = 141
            Width = 252
            Height = 16
            Caption = 'Instru'#231#245'es de Respons. do Cedente:'
          end
          object Label7: TLabel
            Left = 386
            Top = 30
            Width = 86
            Height = 16
            Caption = 'Vencimento:'
          end
          object Label28: TLabel
            Left = 404
            Top = 87
            Width = 91
            Height = 16
            Caption = 'Valor Docto.:'
          end
          object Label8: TLabel
            Left = 12
            Top = 236
            Width = 128
            Height = 16
            Caption = 'Valor por Extenso:'
          end
          object Label9: TLabel
            Left = 215
            Top = 87
            Width = 89
            Height = 16
            Caption = 'Espec. Doc.:'
          end
          object Label10: TLabel
            Left = 304
            Top = 87
            Width = 78
            Height = 16
            Caption = 'Data Proc.:'
          end
          object edlocalpagto: TEdit
            Left = 12
            Top = 48
            Width = 365
            Height = 22
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'QUALQUER AG'#202'NCIA BANC'#193'RIA'
          end
          object eddataVencimento: TEdit
            Left = 386
            Top = 48
            Width = 93
            Height = 22
            AutoSelect = False
            AutoSize = False
            Color = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'eddataVencimento'
          end
          object memoIntrucoes: TMemo
            Left = 9
            Top = 160
            Width = 372
            Height = 73
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            TabOrder = 6
          end
          object eddatadocto: TEdit
            Left = 10
            Top = 103
            Width = 92
            Height = 22
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = eddatadoctoExit
          end
          object ednumdocto: TEdit
            Left = 107
            Top = 103
            Width = 103
            Height = 23
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edExtenso: TEdit
            Left = 11
            Top = 253
            Width = 678
            Height = 21
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            Text = 'edExtenso'
          end
          object edEspecDoc: TEdit
            Left = 215
            Top = 103
            Width = 82
            Height = 23
            AutoSelect = False
            AutoSize = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edDataProc: TEdit
            Left = 304
            Top = 104
            Width = 92
            Height = 22
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object btnAtivaSkin: TBitBtn
            Left = 520
            Top = 24
            Width = 75
            Height = 25
            Caption = 'Ativa Skin'
            TabOrder = 8
            OnClick = btnAtivaSkinClick
          end
        end
        object Panel3: TPanel
          Left = 8
          Top = 305
          Width = 702
          Height = 125
          BevelInner = bvLowered
          TabOrder = 1
          object Label30: TLabel
            Left = 7
            Top = 14
            Width = 53
            Height = 16
            Caption = 'Cliente:'
          end
          object Label2: TLabel
            Left = 8
            Top = 55
            Width = 72
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object Label3: TLabel
            Left = 438
            Top = 13
            Width = 78
            Height = 16
            Caption = 'CNPJ/CPF:'
          end
          object Label29: TLabel
            Left = 338
            Top = 55
            Width = 47
            Height = 16
            Caption = 'Bairro:'
          end
          object Label4: TLabel
            Left = 469
            Top = 55
            Width = 55
            Height = 16
            Caption = 'Cidade:'
          end
          object Label5: TLabel
            Left = 593
            Top = 56
            Width = 25
            Height = 16
            Caption = 'UF:'
          end
          object edcliente: TEdit
            Left = 9
            Top = 32
            Width = 419
            Height = 24
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'edcliente'
          end
          object edcnpjcpf: TEdit
            Left = 433
            Top = 32
            Width = 184
            Height = 23
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'edcnpjcpf'
          end
          object edendereco: TEdit
            Left = 8
            Top = 72
            Width = 321
            Height = 24
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'edendereco'
          end
          object edbairro: TEdit
            Left = 336
            Top = 72
            Width = 121
            Height = 24
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = 'edbairro'
          end
          object edcidade: TEdit
            Left = 464
            Top = 72
            Width = 121
            Height = 24
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            Text = 'edcidade'
          end
          object eduf: TEdit
            Left = 590
            Top = 72
            Width = 39
            Height = 24
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Text = 'eduf'
          end
        end
      end
    end
    object tbshetConfiguraImp: TTabSheet
      Caption = 'Configurar Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      OnShow = tbshetConfiguraImpShow
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
        Top = 2
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
        Width = 118
        Height = 22
        Caption = 'Visualizar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
        OnClick = SpeedButton12Click
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
        Top = 18
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
        Top = 45
        Width = 758
        Height = 80
        Caption = 'Selecione o campo para mover'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object rdLocalPagto: TRadioButton
          Left = 7
          Top = 22
          Width = 116
          Height = 15
          Caption = 'Local de Pagto.'
          Checked = True
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rdLocalPagtoClick
        end
        object rdUF: TRadioButton
          Left = 695
          Top = 47
          Width = 40
          Height = 14
          Caption = 'UF:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          OnClick = rdUFClick
        end
        object rdVencimento: TRadioButton
          Left = 129
          Top = 23
          Width = 94
          Height = 14
          Caption = 'Vencimento'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          OnClick = rdVencimentoClick
        end
        object rdCNPJCPF: TRadioButton
          Left = 226
          Top = 47
          Width = 87
          Height = 14
          Caption = 'CNPJ/CPF:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          OnClick = rdCNPJCPFClick
        end
        object rdDataDocto: TRadioButton
          Left = 226
          Top = 22
          Width = 95
          Height = 15
          Caption = 'Data Docto'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          OnClick = rdDataDoctoClick
        end
        object rdNumDocto: TRadioButton
          Left = 323
          Top = 22
          Width = 77
          Height = 13
          Caption = 'N'#186' Docto'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 5
          OnClick = rdNumDoctoClick
        end
        object rdEndereco: TRadioButton
          Left = 427
          Top = 46
          Width = 81
          Height = 14
          Caption = 'Endere'#231'o:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          OnClick = rdEnderecoClick
        end
        object rdValorDocto: TRadioButton
          Left = 630
          Top = 22
          Width = 99
          Height = 15
          Caption = 'Valor Docto'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          OnClick = rdValorDoctoClick
        end
        object rdBairro: TRadioButton
          Left = 536
          Top = 46
          Width = 61
          Height = 14
          Caption = 'Bairro:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          OnClick = rdBairroClick
        end
        object rdCidade: TRadioButton
          Left = 609
          Top = 47
          Width = 66
          Height = 14
          Caption = 'Cidade:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          OnClick = rdCidadeClick
        end
        object rdIntrucoesCedente: TRadioButton
          Left = 97
          Top = 46
          Width = 123
          Height = 14
          Caption = 'Instr. p/ Cedente'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          OnClick = rdIntrucoesCedenteClick
        end
        object rdCliente: TRadioButton
          Left = 324
          Top = 46
          Width = 64
          Height = 14
          Caption = 'Cliente:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 11
          OnClick = rdClienteClick
        end
        object rdExtenso: TRadioButton
          Left = 8
          Top = 46
          Width = 72
          Height = 15
          Caption = 'Extenso'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 12
          OnClick = rdExtensoClick
        end
        object rdEspecDoc: TRadioButton
          Left = 427
          Top = 22
          Width = 96
          Height = 13
          Caption = 'Espec. Doc.:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 13
          OnClick = rdEspecDocClick
        end
        object rdDataProcessamento: TRadioButton
          Left = 535
          Top = 22
          Width = 89
          Height = 13
          Caption = 'Data Proc.:'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 14
          OnClick = rdDataProcessamentoClick
        end
      end
      object Quickimpcheque: TQuickRep
        Left = 2
        Top = 130
        Width = 680
        Height = 330
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
          1091.406250000000000000
          0.000000000000000000
          2248.958333333333000000
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
        PrevShowThumbs = False
        PrevShowSearch = False
        PrevInitialZoom = qrZoomToFit
        object qrband1: TQRBand
          Left = 15
          Top = 0
          Width = 665
          Height = 305
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AfterPrint = qrband1AfterPrint
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            1008.723958333333000000
            2199.348958333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object lblUF: TQRLabel
            Left = 219
            Top = 214
            Width = 14
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              724.296875000000000000
              707.760416666666700000
              46.302083333333330000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'UF'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCNPJCPF: TQRLabel
            Left = 348
            Top = 170
            Width = 52
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1150.937500000000000000
              562.239583333333300000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'CNPJ/CPF'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblLocalPagto: TQRLabel
            Left = 39
            Top = 17
            Width = 103
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              128.984375000000000000
              56.223958333333330000
              340.651041666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Local de Pagto.:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblVencimento: TQRLabel
            Left = 351
            Top = 17
            Width = 65
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1160.859375000000000000
              56.223958333333330000
              214.973958333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Vencimento'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCidade: TQRLabel
            Left = 152
            Top = 212
            Width = 39
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              502.708333333333300000
              701.145833333333300000
              128.984375000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cidade'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEndereco: TQRLabel
            Left = 40
            Top = 194
            Width = 293
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              132.291666666666700000
              641.614583333333400000
              969.036458333333500000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Endere'#231'o'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblInstrucoesdeResponsadoCedente: TQRLabel
            Left = 39
            Top = 78
            Width = 343
            Height = 60
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              198.437500000000000000
              128.984375000000000000
              257.968750000000000000
              1134.401041666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Instru'#231#245'es de Respons. do Cedente:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblBairro: TQRLabel
            Left = 40
            Top = 208
            Width = 39
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              132.291666666666700000
              687.916666666666700000
              128.984375000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Bairro'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblDataDocto: TQRLabel
            Left = 39
            Top = 50
            Width = 65
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              128.984375000000000000
              165.364583333333300000
              214.973958333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data Docto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblNumDocto: TQRLabel
            Left = 127
            Top = 50
            Width = 52
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              420.026041666666700000
              165.364583333333300000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'N'#186' Docto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblValorDocto: TQRLabel
            Left = 408
            Top = 50
            Width = 71
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1349.375000000000000000
              165.364583333333300000
              234.817708333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Valor Docto'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCliente: TQRLabel
            Left = 40
            Top = 170
            Width = 46
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              132.291666666666700000
              562.239583333333300000
              152.135416666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cliente'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblExtenso: TQRLabel
            Left = 40
            Top = 150
            Width = 46
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              132.291666666666700000
              496.093750000000000000
              152.135416666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = True
            Caption = 'Extenso'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEspecDoc: TQRLabel
            Left = 189
            Top = 50
            Width = 71
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              625.078125000000000000
              165.364583333333300000
              234.817708333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Espec. Doc.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblDataProcessamento: TQRLabel
            Left = 268
            Top = 50
            Width = 65
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              886.354166666666700000
              165.364583333333300000
              214.973958333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Data Proc.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Courier New'
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
  object ActionList1: TActionList
    Left = 648
    Top = 200
    object cabrir: TAction
      Caption = 'cabrir'
      OnExecute = cabrirExecute
    end
    object cgravar: TAction
      Caption = 'cgravar'
      OnExecute = cgravarExecute
    end
    object campos: TAction
      Caption = 'campos'
      OnExecute = camposExecute
    end
  end
end
