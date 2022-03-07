object FrmEntradaProduto: TFrmEntradaProduto
  Left = 129
  Top = 38
  Width = 1029
  Height = 662
  AutoSize = True
  Caption = 'Entrada de Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 16
  object pnlDados: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 561
    Enabled = False
    TabOrder = 0
    object pnl1: TPanel
      Left = 6
      Top = 8
      Width = 959
      Height = 111
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
        Left = 413
        Top = 4
        Width = 108
        Height = 16
        Caption = 'Data da Entrada'
        Transparent = True
      end
      object lbl4: TLabel
        Left = 5
        Top = 46
        Width = 123
        Height = 16
        Caption = 'N'#186'  da NF / Pedido'
        Transparent = True
      end
      object lbl5: TLabel
        Left = 225
        Top = 46
        Width = 149
        Height = 16
        Caption = 'Valor Total da Entrada'
        Transparent = True
      end
      object JvDBDateEdit1: TJvDBDateEdit
        Left = 412
        Top = 21
        Width = 120
        Height = 24
        DataField = 'DATA_ENTRADA'
        DataSource = DmDados.dsEntradaProdutoMaster
        ButtonWidth = 24
        ShowNullDate = False
        TabOrder = 3
      end
      object dbNumNFPedido: TDBEdit
        Left = 4
        Top = 64
        Width = 205
        Height = 24
        DataField = 'NUM_NOTA'
        DataSource = DmDados.dsEntradaProdutoMaster
        TabOrder = 0
        OnKeyDown = dbNumNFPedidoKeyDown
      end
      object dbValorTotalEntrada: TDBEdit
        Left = 224
        Top = 63
        Width = 184
        Height = 26
        TabStop = False
        AutoSelect = False
        Color = clScrollBar
        DataField = 'VALORNOTE'
        DataSource = DmDados.dsEntradaProdutoMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object dbID_PRODUTOENTRADA: TDBEdit
        Left = 416
        Top = 62
        Width = 33
        Height = 24
        DataField = 'ID_PRODUTOENTRADA'
        DataSource = DmDados.dsEntradaProdutoMaster
        TabOrder = 4
        Visible = False
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 6
        Top = 20
        Width = 403
        Height = 25
        DataField = 'FORNECEDOR'
        DataSource = DmDados.dsEntradaProdutoMaster
        LookupField = 'For_Razao'
        LookupSource = DmDados.Dsfornecedores
        TabOrder = 1
        UseRecordCount = True
      end
      object dbchkLancado: TDBCheckBox
        Left = 464
        Top = 67
        Width = 81
        Height = 17
        Caption = 'Lan'#231'ado'
        DataField = 'Lancado'
        DataSource = DmDados.dsEntradaProdutoMaster
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object grp2: TGroupBox
        Left = 542
        Top = 10
        Width = 248
        Height = 84
        Caption = 'Forma de Pagamento'
        Color = 8454143
        ParentColor = False
        TabOrder = 6
        object lbl1: TLabel
          Left = 5
          Top = 28
          Width = 40
          Height = 16
          Caption = 'Forma'
        end
        object lbl6: TLabel
          Left = 125
          Top = 30
          Width = 36
          Height = 16
          Caption = 'Prazo'
        end
        object btnBuscaForma: TSpeedButton
          Left = 158
          Top = 15
          Width = 19
          Height = 18
          Caption = '...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          OnClick = btnBuscaFormaClick
        end
        object btn2: TSpeedButton
          Left = 211
          Top = 44
          Width = 28
          Height = 30
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFF330FFFFFFFFFFFF033F777777777777F330FFFFFFFFFF
            FF033F777777777777F330FFFFFFFFFFFF033F777777777777F330FF1111FF1F
            FF033F77FFFF77F777F330FF1FFFFF1FFF033F77F77777F777F330FFF1FFFF1F
            FF033F777F7777F777F330FFFF1FFF1FFF033F7777F777F777F330FF1FF1F11F
            FF033F77F77F7FF777F330FFF11FFF1FFF033F777FF777F777F330FFFFFFFFFF
            FF033F777777777777F330FFFFFFFFFFFF033F777777777777F3300000000000
            00033FFFFFFFFFFFFFF330EEEEEEEEEEEE033FEEEEEEEEEEEEF330E0EEEEEEEE
            0E033FEFEEEEEEEEFEF330000000000000033FFFFFFFFFFFFFF3}
          NumGlyphs = 2
          OnClick = btn2Click
        end
        object dbPrazo: TDBEdit
          Left = 125
          Top = 48
          Width = 84
          Height = 24
          DataField = 'Prazo'
          DataSource = DmDados.dsEntradaProdutoMaster
          ReadOnly = True
          TabOrder = 1
        end
        object dbForma: TDBLookupComboBox
          Left = 4
          Top = 47
          Width = 117
          Height = 24
          DataField = 'Forma'
          DataSource = DmDados.dsEntradaProdutoMaster
          KeyField = 'Formas'
          ListField = 'Formas'
          ListSource = DmDados.dsFormaPagtoMaster
          TabOrder = 0
          OnCloseUp = dbFormaCloseUp
        end
      end
    end
    object grp1: TGroupBox
      Left = 3
      Top = 123
      Width = 971
      Height = 410
      Caption = 'Entrada de Produtos'
      TabOrder = 0
      object JvDBGrid1: TJvDBGrid
        Left = 5
        Top = 22
        Width = 958
        Height = 372
        DataSource = DmDados.dstbltblEntradaProdutoDetalhe
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnColEnter = JvDBGrid1ColEnter
        OnEditButtonClick = JvDBGrid1EditButtonClick
        OnEnter = JvDBGrid1Enter
        OnKeyDown = JvDBGrid1KeyDown
        AlternateRowColor = clMoneyGreen
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 20
        TitleRowHeight = 20
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_INC'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CONTROLE'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'REF.  <F4>'
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Width = 293
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE'
            PickList.Strings = (
              'CX'
              'UN')
            Title.Alignment = taCenter
            Title.Caption = 'Un.'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNIT'
            Title.Alignment = taCenter
            Title.Caption = 'Vr.Unit.'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotValor'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 115
            Visible = True
          end>
      end
    end
  end
  object pnlConfirma: TPanel
    Left = 100
    Top = 594
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
      Width = 115
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
    Left = 18
    Top = 594
    Width = 915
    Height = 29
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
      Caption = 'Localizar'
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
    end
    object btnCompras: TSpeedButton
      Left = 468
      Top = 4
      Width = 135
      Height = 23
      Cursor = crHandPoint
      Hint = 'CONSULTA DE'#13#10'COMPRAS ACUMULADAS'
      Caption = 'Consultar Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
        00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
        00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
        F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
        F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
        FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
        0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
        00337777FFFF77FF7733EEEE0000000003337777777777777333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnComprasClick
    end
    object btnContasaPagar: TSpeedButton
      Left = 635
      Top = 5
      Width = 161
      Height = 22
      Hint = 'Consulta Contas a Pagar'
      Caption = 'Contas a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6006544
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777777777777777777777777780008777777777778FFF8777777800080FBB0
        7777778FFF8F7BBF7777770FBB080008087777F7BBF8FFF8F877778000877077
        7077778FFF877F777F777777777770333077777777777F333F77700000000077
        70007FFFFFFFFF777FFF70227777703330207F2277777F333F2F7027777000FB
        B0207F27777FFF7BBF2F70777707700007707F7777F77FFFF77F707777077707
        77707F7777F777F7777F70277770007777207F27777FFF77772F702277777777
        72207F2277777777722F70000000000000007FFFFFFFFFFFFFFF777777777777
        7777777777777777777777777777777777777777777777777777}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnContasaPagarClick
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
      Left = 819
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
  object pnlCalendario: TPanel
    Left = 797
    Top = 7
    Width = 216
    Height = 235
    TabOrder = 3
    Visible = False
    object lblFechar: TLabel
      Left = 83
      Top = 207
      Width = 45
      Height = 16
      Caption = 'Fechar'
      OnClick = lblFecharClick
    end
    object cal1: TMonthCalendar
      Left = 5
      Top = 5
      Width = 204
      Height = 193
      Date = 41853.918255439810000000
      TabOrder = 0
      OnClick = cal1Click
      OnDblClick = cal1DblClick
    end
  end
  object actAtulizaEstoque: TActionList
    Left = 478
    Top = 19
    object actAtualiza_Estoque: TAction
      Caption = 'actAtualiza_Estoque'
      OnExecute = actAtualiza_EstoqueExecute
    end
  end
end
