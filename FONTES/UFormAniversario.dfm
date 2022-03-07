object frmAniversariantes: TfrmAniversariantes
  Left = 199
  Top = 126
  Width = 399
  Height = 400
  Caption = '                             Relat'#243'rio de Aniversariantes '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 161
    Top = 337
    Width = 65
    Height = 22
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 71
    Top = 18
    Width = 246
    Height = 305
    Caption = ' Escolha o M'#234's '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic, fsUnderline]
    ParentFont = False
    TabOrder = 0
    object btnJaneiro: TSpeedButton
      Left = 49
      Top = 30
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Janeiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnJaneiroClick
    end
    object btnMaio: TSpeedButton
      Left = 49
      Top = 119
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Maio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMaioClick
    end
    object btnJunho: TSpeedButton
      Left = 49
      Top = 142
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Junho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnJunhoClick
    end
    object btnJulho: TSpeedButton
      Left = 49
      Top = 164
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Julho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnJulhoClick
    end
    object btnFevereiro: TSpeedButton
      Left = 49
      Top = 52
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Fevereiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFevereiroClick
    end
    object btnMarco: TSpeedButton
      Left = 49
      Top = 74
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Mar'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMarcoClick
    end
    object btnAbril: TSpeedButton
      Left = 49
      Top = 97
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Abril'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAbrilClick
    end
    object btnAgosto: TSpeedButton
      Left = 49
      Top = 187
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Agosto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAgostoClick
    end
    object btnSetembro: TSpeedButton
      Left = 49
      Top = 209
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Setembro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSetembroClick
    end
    object btnOutubro: TSpeedButton
      Left = 49
      Top = 232
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Outubro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOutubroClick
    end
    object btnNovembro: TSpeedButton
      Left = 49
      Top = 254
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Novembro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnNovembroClick
    end
    object btnDezembro: TSpeedButton
      Left = 49
      Top = 277
      Width = 144
      Height = 20
      Cursor = crHandPoint
      Caption = 'Dezembro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDezembroClick
    end
  end
  object Edit1: TEdit
    Left = 331
    Top = 44
    Width = 39
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
    Visible = False
  end
  object btnImprirRel: TButton
    Left = 333
    Top = 84
    Width = 39
    Height = 20
    Caption = 'Impr'
    TabOrder = 2
    Visible = False
    OnClick = btnImprirRelClick
  end
  object Edit2: TEdit
    Left = 240
    Top = 336
    Width = 81
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 3
    Text = 'EDIT2'
    Visible = False
  end
end
