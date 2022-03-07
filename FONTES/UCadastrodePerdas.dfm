object FrmCadastrodePerdas: TFrmCadastrodePerdas
  Left = 300
  Top = 96
  Width = 913
  Height = 536
  AutoSize = True
  Caption = 'Cadastro de Perdas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object PainelDados: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 449
    TabOrder = 0
    object lbl1: TLabel
      Left = 10
      Top = 2
      Width = 95
      Height = 16
      Caption = 'Data Cadastro'
    end
    object lbl2: TLabel
      Left = 681
      Top = 48
      Width = 72
      Height = 16
      Caption = 'Valor Total'
    end
    object lbl3: TLabel
      Left = 127
      Top = 4
      Width = 91
      Height = 16
      Caption = 'Observa'#231#245'es:'
    end
    object dbData: TJvDBDateEdit
      Left = 9
      Top = 21
      Width = 104
      Height = 24
      Alignment = taCenter
      AutoSize = False
      DataField = 'Data'
      DataSource = DmDados.dsPerdaMaster
      AutoSelect = False
      DialogTitle = 'SELECIONE UMA DATA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 0
    end
    object dbID: TDBEdit
      Left = 704
      Top = 9
      Width = 49
      Height = 24
      DataField = 'ID'
      DataSource = DmDados.dsPerdaMaster
      TabOrder = 4
    end
    object dbValordaPerda: TDBEdit
      Left = 680
      Top = 67
      Width = 194
      Height = 24
      Color = clSilver
      DataField = 'ValorTotal'
      DataSource = DmDados.dsPerdaMaster
      ReadOnly = True
      TabOrder = 3
    end
    object dbgrd1: TDBGrid
      Left = 24
      Top = 96
      Width = 849
      Height = 337
      DataSource = DmDados.dsPerdaDetalhe
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnEditButtonClick = dbgrd1EditButtonClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDDetalhe'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Controle'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'Ref'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 472
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtd'
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Width = 130
          Visible = True
        end>
    end
    object dbmmoObs: TDBMemo
      Left = 127
      Top = 22
      Width = 450
      Height = 69
      DataField = 'Obs'
      DataSource = DmDados.dsPerdaMaster
      ScrollBars = ssVertical
      TabOrder = 2
    end
  end
  object PainelConfirma: TPanel
    Left = 67
    Top = 465
    Width = 711
    Height = 29
    TabOrder = 1
    Visible = False
    object btnDesistir: TSpeedButton
      Left = 233
      Top = 3
      Width = 104
      Height = 23
      Cursor = crHandPoint
      Caption = '&Desistir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
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
      OnClick = btnDesistirClick
    end
    object btnSbConfirmar: TSpeedButton
      Left = 420
      Top = 1
      Width = 109
      Height = 27
      Cursor = crHandPoint
      Caption = '&Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
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
    Left = 92
    Top = 464
    Width = 701
    Height = 34
    TabOrder = 2
    object btnBtincluir: TBitBtn
      Left = 278
      Top = 3
      Width = 56
      Height = 23
      Cursor = crHandPoint
      Caption = '&Incluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnBtincluirClick
      NumGlyphs = 2
    end
    object btnBtnAltera: TBitBtn
      Left = 340
      Top = 3
      Width = 55
      Height = 23
      Cursor = crHandPoint
      Caption = '&Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnBtnAlteraClick
      NumGlyphs = 2
    end
    object btnBtExcluir: TBitBtn
      Left = 396
      Top = 3
      Width = 58
      Height = 23
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnBtExcluirClick
      NumGlyphs = 2
    end
    object btn5: TBitBtn
      Left = 606
      Top = 5
      Width = 68
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
      OnClick = btn5Click
      NumGlyphs = 2
    end
    object dbnvgr1: TDBNavigator
      Left = 3
      Top = 4
      Width = 204
      Height = 25
      DataSource = DmDados.dsPerdaMaster
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'PRIMEIRO'
        'ANTERIOR'
        'PR'#211'XIMO'
        #218'LTIMO')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
end
