object fimpcheque: Tfimpcheque
  Left = 82
  Top = 104
  Width = 617
  Height = 324
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'IMPRESS'#195'O DE CHEQUES'
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
    ActivePage = TabSheet2
    Align = alClient
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
          Left = 24
          Top = 32
          Width = 103
          Height = 13
          Caption = 'VALOR DO CHEQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 80
          Width = 116
          Height = 13
          Caption = 'VALOR POR EXTENSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 24
          Top = 120
          Width = 55
          Height = 13
          Caption = 'Ao portador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 24
          Top = 168
          Width = 45
          Height = 13
          Caption = 'Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 184
          Top = 168
          Width = 16
          Height = 13
          Caption = 'Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 232
          Top = 168
          Width = 67
          Height = 13
          Caption = 'M'#234's (Extenso)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 320
          Top = 168
          Width = 19
          Height = 13
          Caption = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Editvalor: TEdit
          Left = 24
          Top = 56
          Width = 121
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 0
          OnExit = EditvalorExit
        end
        object Editextenso: TEdit
          Left = 24
          Top = 96
          Width = 497
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 1
        end
        object Editportador: TEdit
          Left = 24
          Top = 136
          Width = 497
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 2
        end
        object Button1: TButton
          Left = 448
          Top = 224
          Width = 75
          Height = 25
          Caption = '&Imprimir...'
          TabOrder = 7
          OnClick = Button1Click
        end
        object Editmunicipio: TEdit
          Left = 24
          Top = 184
          Width = 153
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 3
        end
        object Editdia: TEdit
          Left = 184
          Top = 184
          Width = 41
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 4
        end
        object Editmes: TEdit
          Left = 232
          Top = 184
          Width = 81
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 5
        end
        object Editano: TEdit
          Left = 320
          Top = 184
          Width = 81
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkFlat
          TabOrder = 6
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
        Height = 32
        Align = alTop
        Caption = 'Selecione o campo para mover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object rdvalor: TRadioButton
          Left = 4
          Top = 12
          Width = 78
          Height = 17
          Caption = 'Valor'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rdvalorClick
        end
        object rdmunicipio: TRadioButton
          Left = 275
          Top = 12
          Width = 67
          Height = 17
          Caption = 'Munic'#237'pio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rdmunicipioClick
        end
        object rddia: TRadioButton
          Left = 378
          Top = 12
          Width = 47
          Height = 17
          Caption = 'Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rddiaClick
        end
        object rdmes: TRadioButton
          Left = 456
          Top = 12
          Width = 49
          Height = 17
          Caption = 'M'#234's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rdmesClick
        end
        object rdano: TRadioButton
          Left = 528
          Top = 12
          Width = 57
          Height = 17
          Caption = 'Ano'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rdanoClick
        end
        object rdportador: TRadioButton
          Left = 192
          Top = 12
          Width = 73
          Height = 17
          Caption = 'Portador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rdportadorClick
        end
        object rdextenso: TRadioButton
          Left = 96
          Top = 12
          Width = 59
          Height = 17
          Caption = 'Extenso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = rdextensoClick
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
        Top = 80
        Width = 574
        Height = 221
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
          730.911458333333000000
          0.000000000000000000
          1900.000000000000000000
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
          Width = 559
          Height = 213
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
            704.453125000000000000
            1848.776041666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object lvalor: TQRLabel
            Left = 389
            Top = 5
            Width = 22
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1286.536458333333000000
              16.536458333333330000
              72.760416666666680000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'valor'
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
          object lextenso: TQRLabel
            Left = 32
            Top = 45
            Width = 40
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              105.833333333333300000
              148.828125000000000000
              132.291666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lextenso'
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
          object lportador: TQRLabel
            Left = 45
            Top = 67
            Width = 41
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              148.828125000000000000
              221.588541666666700000
              135.598958333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'lportador'
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
          object lmunicipio: TQRLabel
            Left = 243
            Top = 80
            Width = 45
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              803.671875000000000000
              264.583333333333400000
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
          object ldia: TQRLabel
            Left = 339
            Top = 80
            Width = 14
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1121.171875000000000000
              264.583333333333400000
              46.302083333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'dia'
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
          object lmes: TQRLabel
            Left = 384
            Top = 80
            Width = 21
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1270.000000000000000000
              264.583333333333400000
              69.453125000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'mes'
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
          object lano: TQRLabel
            Left = 475
            Top = 80
            Width = 18
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.994791666666670000
              1570.963541666667000000
              264.583333333333400000
              59.531250000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'ano'
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
  object ActionList1: TActionList
    Left = 272
    Top = 216
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
