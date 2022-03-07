object FrmConfiguraBoleto: TFrmConfiguraBoleto
  Left = 111
  Top = 132
  Width = 617
  Height = 324
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'IMPRESS'#195'O DE BOLETO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 297
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Imprimir'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 269
        Align = alClient
        BevelOuter = bvLowered
        BevelWidth = 5
        BorderWidth = 2
        BorderStyle = bsSingle
        TabOrder = 0
        object Label1: TLabel
          Left = 10
          Top = 16
          Width = 123
          Height = 13
          Caption = 'LOCAL DE PAGAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 54
          Width = 102
          Height = 13
          Caption = 'DATA DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 115
          Width = 272
          Height = 13
          Caption = 'INSTRUC'#213'ES DE RESPONSABILIDADE DO CEDENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 11
          Top = 168
          Width = 45
          Height = 13
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 275
          Top = 168
          Width = 52
          Height = 13
          Caption = 'CNPJ/CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 11
          Top = 210
          Width = 29
          Height = 13
          Caption = 'END.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 277
          Top = 211
          Width = 44
          Height = 13
          Caption = 'BAIRRO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 122
          Top = 54
          Width = 88
          Height = 13
          Caption = 'N'#186'  DOCUMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 491
          Top = 17
          Width = 71
          Height = 13
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 492
          Top = 58
          Width = 36
          Height = 13
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 434
          Top = 168
          Width = 76
          Height = 13
          Caption = 'INSC. EST./RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 386
          Top = 211
          Width = 43
          Height = 13
          Caption = 'CIDADE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 482
          Top = 212
          Width = 17
          Height = 13
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 518
          Top = 212
          Width = 24
          Height = 13
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object EdLocalPagamento: TEdit
          Left = 10
          Top = 31
          Width = 337
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 0
          OnExit = EdLocalPagamentoExit
        end
        object EdDataDocumento: TEdit
          Left = 10
          Top = 69
          Width = 105
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 1
        end
        object Button1: TButton
          Left = 376
          Top = 24
          Width = 75
          Height = 25
          Caption = '&Imprimir...'
          TabOrder = 6
          OnClick = Button1Click
        end
        object EdCliente: TEdit
          Left = 8
          Top = 184
          Width = 263
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 2
        end
        object EdCnpjCpf: TEdit
          Left = 275
          Top = 184
          Width = 156
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 3
        end
        object EdEndereco: TEdit
          Left = 9
          Top = 226
          Width = 263
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 4
        end
        object EdBairro: TEdit
          Left = 276
          Top = 226
          Width = 106
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 5
        end
        object EdNumDocumento: TEdit
          Left = 121
          Top = 69
          Width = 88
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 7
        end
        object EdVencimento: TEdit
          Left = 490
          Top = 32
          Width = 88
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 8
        end
        object EdValor: TEdit
          Left = 491
          Top = 73
          Width = 88
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 9
        end
        object MemoIntrucoes: TMemo
          Left = 10
          Top = 130
          Width = 288
          Height = 34
          Lines.Strings = (
            'MemoIntrucoes')
          ScrollBars = ssVertical
          TabOrder = 10
        end
        object EdInscRG: TEdit
          Left = 434
          Top = 184
          Width = 156
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 11
        end
        object EdCidade: TEdit
          Left = 385
          Top = 226
          Width = 93
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 12
        end
        object EdUF: TEdit
          Left = 482
          Top = 227
          Width = 29
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 13
        end
        object EdCep: TEdit
          Left = 517
          Top = 227
          Width = 71
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 14
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configurar'
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 40
        Width = 601
        Height = 53
        Align = alTop
        Caption = 'Selecione o campo para mover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object rdLPagamento: TRadioButton
          Left = 4
          Top = 15
          Width = 78
          Height = 17
          Caption = 'Local Pagt'#186
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rdLPagamentoClick
        end
        object rdValor: TRadioButton
          Left = 272
          Top = 15
          Width = 51
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rdValorClick
        end
        object rdIntrucoes: TRadioButton
          Left = 328
          Top = 15
          Width = 74
          Height = 17
          Caption = 'Instru'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rdIntrucoesClick
        end
        object rdCliente: TRadioButton
          Left = 405
          Top = 15
          Width = 49
          Height = 17
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rdClienteClick
        end
        object rdCNPJCPF: TRadioButton
          Left = 466
          Top = 15
          Width = 80
          Height = 17
          Caption = 'CNPJ/CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rdCNPJCPFClick
        end
        object rdDtDocumento: TRadioButton
          Left = 169
          Top = 15
          Width = 95
          Height = 17
          Caption = 'Dt, Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rdDtDocumentoClick
        end
        object rdVencimento: TRadioButton
          Left = 84
          Top = 15
          Width = 83
          Height = 17
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = rdVencimentoClick
        end
        object rdInscricRG: TRadioButton
          Left = 547
          Top = 15
          Width = 80
          Height = 17
          Caption = 'INSCR. /RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = rdCNPJCPFClick
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 601
        Height = 40
        Align = alTop
        TabOrder = 1
        object lpv: TLabel
          Left = 456
          Top = 19
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
        object lph: TLabel
          Left = 303
          Top = 19
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
          Top = 19
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
        object Label18: TLabel
          Left = 329
          Top = 19
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
        object Label20: TLabel
          Left = 219
          Top = 1
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
        object Label21: TLabel
          Left = 382
          Top = 1
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
        object SpeedButton12: TSpeedButton
          Left = 528
          Top = 9
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
          OnClick = SpeedButton12Click
        end
        object GroupBox4: TGroupBox
          Left = 0
          Top = 0
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
          Left = 363
          Top = 15
          Width = 88
          Height = 22
          Max = 1000
          PageSize = 0
          Position = 49
          TabOrder = 1
          OnChange = barvChange
        end
        object barh: TScrollBar
          Left = 211
          Top = 15
          Width = 88
          Height = 22
          Max = 1000
          PageSize = 0
          Position = 394
          TabOrder = 2
          OnChange = barhChange
        end
      end
      object Quickimpcheque: TQuickRep
        Left = 2
        Top = 96
        Width = 574
        Height = 273
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
          0
          902.890625
          0
          1898.38541666667
          50
          0
          0)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 80
        object QRBand1: TQRBand
          Left = 15
          Top = 0
          Width = 559
          Height = 257
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            849.973958333333
            1848.77604166667)
          BandType = rbDetail
          object lblVencimento: TQRLabel
            Left = 501
            Top = 13
            Width = 56
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1656.953125
              42.9947916666667
              185.208333333333)
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
          object lblLocalPagamento: TQRLabel
            Left = 25
            Top = 12
            Width = 89
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              82.6822916666667
              39.6875
              294.348958333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblLocalPagamento'
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
          object lblDataDocumento: TQRLabel
            Left = 26
            Top = 67
            Width = 86
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              85.9895833333333
              221.588541666667
              284.427083333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lblDataDocumento'
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
          object lblNumDocumento: TQRLabel
            Left = 129
            Top = 67
            Width = 90
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              426.640625
              221.588541666667
              297.65625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NumeroDocumento'
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
          object lblCliente: TQRLabel
            Left = 27
            Top = 136
            Width = 33
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              89.296875
              449.791666666667
              109.140625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cliente'
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
          object lblCNPJCPF: TQRLabel
            Left = 208
            Top = 136
            Width = 51
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              687.916666666667
              449.791666666667
              168.671875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'CNPJ/CPF'
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
            Left = 523
            Top = 66
            Width = 25
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1729.71354166667
              218.28125
              82.6822916666667)
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
          object lblMemoInstrucoes: TQRMemo
            Left = 27
            Top = 102
            Width = 88
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              89.296875
              337.34375
              291.041666666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblInscriRG: TQRLabel
            Left = 328
            Top = 136
            Width = 60
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1084.79166666667
              449.791666666667
              198.4375)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'InscriEst/RG'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblEndereco: TQRLabel
            Left = 27
            Top = 168
            Width = 45
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              89.296875
              555.625
              148.828125)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Endere'#231'o'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblBairro: TQRLabel
            Left = 267
            Top = 168
            Width = 30
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              883.046875
              555.625
              99.21875)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lBairro'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCidade: TQRLabel
            Left = 364
            Top = 168
            Width = 33
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1203.85416666667
              555.625
              109.140625)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cidade'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblUF: TQRLabel
            Left = 475
            Top = 169
            Width = 14
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1570.96354166667
              558.932291666667
              46.3020833333333)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'UF'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object lblCEP: TQRLabel
            Left = 511
            Top = 168
            Width = 22
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.9947916666667
              1690.02604166667
              555.625
              72.7604166666667)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'CEP'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 464
    Top = 224
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
