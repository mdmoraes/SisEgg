object FrmContasaPagarNew: TFrmContasaPagarNew
  Left = 99
  Top = 18
  Width = 1022
  Height = 726
  Caption = 'Contas a Pagar'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDados: TPanel
    Left = 4
    Top = 5
    Width = 1077
    Height = 561
    Enabled = False
    TabOrder = 0
    object pnl1: TPanel
      Left = 5
      Top = 4
      Width = 987
      Height = 140
      TabOrder = 1
      object lbl2: TLabel
        Left = 6
        Top = 2
        Width = 74
        Height = 16
        Caption = 'Fornecedor'
        Transparent = True
      end
      object lbl3: TLabel
        Left = 845
        Top = 4
        Width = 108
        Height = 16
        Caption = 'Data da Entrada'
        Transparent = True
      end
      object lbl4: TLabel
        Left = 405
        Top = 2
        Width = 123
        Height = 16
        Caption = 'N'#186'  da NF / Pedido'
        Transparent = True
      end
      object lbl5: TLabel
        Left = 580
        Top = 2
        Width = 127
        Height = 16
        Caption = 'Valor Total a Pagar'
        Transparent = True
      end
      object lbl1: TLabel
        Left = 579
        Top = 47
        Width = 91
        Height = 16
        Caption = 'Observa'#231#245'es:'
        Transparent = True
      end
      object btn1: TSpeedButton
        Left = 547
        Top = 20
        Width = 28
        Height = 22
        Hint = 'LOCALIZA A ENTRADA'#13#10'DE PRODUTO DESTA CONTAS A PAGAR'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333333333333333333333333333333333333333333FF333333333333
          3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
          E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
          E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
          E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
          000033333373FF77777733333330003333333333333777333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btn1Click
      end
      object dbValorTotalFixo: TDBText
        Left = 438
        Top = 50
        Width = 107
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        Color = clBlack
        DataField = 'ValorTotalFixo'
        DataSource = DmDados.dsCPGMaster
        Font.Charset = ANSI_CHARSET
        Font.Color = 8454016
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object lbl6: TLabel
        Left = 395
        Top = 91
        Width = 174
        Height = 18
        Caption = 'Valor da Entrada ->'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = 8454016
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object lbl7: TLabel
        Left = 6
        Top = 49
        Width = 105
        Height = 16
        Caption = 'Tipo de Entrada'
        Transparent = True
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 845
        Top = 21
        Width = 108
        Height = 24
        DataField = 'DataInclusao'
        DataSource = DmDados.dsCPGMaster
        ButtonWidth = 24
        ShowNullDate = False
        TabOrder = 5
      end
      object dbNumNFPedido: TDBEdit
        Left = 404
        Top = 20
        Width = 139
        Height = 24
        DataField = 'Num_NFPEDIDO'
        DataSource = DmDados.dsCPGMaster
        TabOrder = 2
        OnKeyPress = dbNumNFPedidoKeyPress
      end
      object dbValorTotalEntrada: TDBEdit
        Left = 580
        Top = 19
        Width = 152
        Height = 26
        TabStop = False
        AutoSelect = False
        Color = clScrollBar
        DataField = 'ValorTotal'
        DataSource = DmDados.dsCPGMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbID_PRODUTOENTRADA: TDBEdit
        Left = 960
        Top = 22
        Width = 25
        Height = 24
        DataField = 'ID_CPG'
        DataSource = DmDados.dsCPGMaster
        ReadOnly = True
        TabOrder = 6
        Visible = False
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 6
        Top = 20
        Width = 395
        Height = 25
        DropDownCount = 15
        DataField = 'Fornecedor'
        DataSource = DmDados.dsCPGMaster
        LookupField = 'For_Razao'
        LookupSource = DmDados.Dsfornecedores
        TabOrder = 0
        UseRecordCount = True
        OnKeyDown = JvDBLookupCombo1KeyDown
      end
      object dbmmoObs: TDBMemo
        Left = 580
        Top = 63
        Width = 373
        Height = 68
        Color = 14671839
        DataField = 'Obs'
        DataSource = DmDados.dsCPGMaster
        ScrollBars = ssVertical
        TabOrder = 4
        WantTabs = True
      end
      object dbTipoEntrada: TDBLookupComboBox
        Left = 7
        Top = 67
        Width = 330
        Height = 24
        DataField = 'TipoEntrada'
        DataSource = DmDados.dsCPGMaster
        KeyField = 'TIPO_ENTRADA'
        ListField = 'TIPO_ENTRADA'
        ListSource = DmDados.dsTipoEntrada
        TabOrder = 1
      end
    end
    object grp1: TGroupBox
      Left = 2
      Top = 145
      Width = 1063
      Height = 410
      Caption = 'Controle de Pagamentos'
      TabOrder = 0
      object DBGridEh1: TDBGridEh
        Left = 8
        Top = 23
        Width = 1025
        Height = 345
        ColumnDefValues.AlwaysShowEditButton = True
        ColumnDefValues.AutoDropDown = True
        DataSource = DmDados.dsCPGDetalhe
        DynProps = <>
        EvenRowColor = clMoneyGreen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        IndicatorOptions = [gioShowRowIndicatorEh]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        OnCellClick = DBGridEh1CellClick
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CodInc'
            Footers = <>
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'Controle'
            Footers = <>
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'ValorParcela'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'T'#237'tulo'
            Width = 86
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DataParcela'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Venct'#186
            Width = 100
            OnEditButtonClick = DBGridEh1Columns3EditButtonClick
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DataPagto'
            Footers = <>
            Title.Alignment = taCenter
            Width = 99
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'NumChqDoc'
            Footers = <>
            Title.Alignment = taCenter
            Width = 86
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'Banco'
            Footers = <>
            Title.Alignment = taCenter
            Width = 103
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'Agencia'
            Footers = <>
            Title.Alignment = taCenter
            Width = 153
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'VrJuros'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Juros $'
            Width = 65
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'VrMora'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Mora $'
            Width = 65
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TipoDespesa'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Despesa'
            Width = 72
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TotVrGrade'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total T'#237'tulo'
            Width = 90
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Pago?'
            Width = 46
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TotalParcela'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object pnlConfirma: TPanel
    Left = 124
    Top = 606
    Width = 748
    Height = 30
    Align = alCustom
    TabOrder = 2
    Visible = False
    object btnConfirmar: TSpeedButton
      Left = 484
      Top = 4
      Width = 117
      Height = 22
      Cursor = crHandPoint
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
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
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TSpeedButton
      Left = 148
      Top = 3
      Width = 117
      Height = 22
      Cursor = crHandPoint
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
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
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object pnlControle: TPanel
    Left = 124
    Top = 569
    Width = 747
    Height = 32
    Align = alCustom
    TabOrder = 1
    object btn3: TSpeedButton
      Left = 7
      Top = 3
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
      OnClick = btn3Click
    end
    object btn4: TSpeedButton
      Left = 30
      Top = 3
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
      OnClick = btn4Click
    end
    object btn5: TSpeedButton
      Left = 53
      Top = 3
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
      OnClick = btn5Click
    end
    object btn6: TSpeedButton
      Left = 76
      Top = 3
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
      OnClick = btn6Click
    end
    object btnSbConsultaProduto: TSpeedButton
      Left = 376
      Top = 4
      Width = 87
      Height = 23
      Cursor = crHandPoint
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
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
      OnClick = btnSbConsultaProdutoClick
    end
    object btn2: TSpeedButton
      Left = 496
      Top = 5
      Width = 105
      Height = 23
      Cursor = crHandPoint
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333330000000000033333FFFFFFFFFFF333307777777770
        70333F777777777F7F330000000000000703FFFFFFFFFFFFF7F30777777BBB77
        0003F777777BBB77FFF30777777888770703F77777788877F7F3000000000000
        0770FFFFFFFFFFFFF77F0777777777707070F7777777777F7F7F300000000007
        07003FFFFFFFFFF7F7FF330FFFFFFFF0707033F77777777F7F7F3330F00000F0
        0003333F7FFFFF7FFFF33330FFFFFFFF0333333F77777777F33333330F00000F
        03333333F7FFFFF7F33333330FFFFFFFF0333333F77777777F33333330000000
        003333333FFFFFFFFF3333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btn2Click
    end
    object btnBtincluir: TBitBtn
      Left = 104
      Top = 4
      Width = 87
      Height = 23
      Cursor = crHandPoint
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnBtincluirClick
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
    object btnBtnAltera: TBitBtn
      Left = 194
      Top = 4
      Width = 87
      Height = 23
      Cursor = crHandPoint
      Caption = '&Altera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnBtnAlteraClick
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
    object btnBtExcluir: TBitBtn
      Left = 285
      Top = 4
      Width = 87
      Height = 23
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnBtExcluirClick
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
    object btnBtSaida: TBitBtn
      Left = 628
      Top = 3
      Width = 87
      Height = 23
      Cursor = crHandPoint
      Caption = '&Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnBtSaidaClick
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
end
