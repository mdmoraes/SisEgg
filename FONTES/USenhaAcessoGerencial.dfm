object FrmSenhadeAcessoGerencial: TFrmSenhadeAcessoGerencial
  Left = 247
  Top = 191
  Width = 331
  Height = 241
  Caption = 'Senha de Acesso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 17
    Width = 109
    Height = 20
    Caption = 'Digite a Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 3
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 87
    Top = 40
    Width = 121
    Height = 24
    AutoSelect = False
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
  end
  object btnOK: TBitBtn
    Left = 210
    Top = 149
    Width = 75
    Height = 25
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnOKClick
  end
  object btnCancelar: TBitBtn
    Left = 123
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnMudarSenha: TBitBtn
    Left = 8
    Top = 149
    Width = 101
    Height = 25
    Caption = 'Mudar Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnMudarSenhaClick
  end
  object gboxMudarSenha: TGroupBox
    Left = 8
    Top = 72
    Width = 279
    Height = 69
    Caption = '  Mudar Senha   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    object Label2: TLabel
      Left = 7
      Top = 21
      Width = 72
      Height = 16
      Caption = 'Senha Atual'
    end
    object Label3: TLabel
      Left = 107
      Top = 21
      Width = 75
      Height = 16
      Caption = 'Nova Senha'
    end
    object btnConfirma: TSpeedButton
      Left = 199
      Top = 40
      Width = 76
      Height = 22
      Caption = 'Confirma'
      OnClick = btnConfirmaClick
    end
    object btnCancelaMudanca: TSpeedButton
      Left = 198
      Top = 14
      Width = 76
      Height = 22
      Caption = 'Cancela'
      OnClick = btnCancelaMudancaClick
    end
    object edSenhaAtual: TEdit
      Left = 6
      Top = 37
      Width = 88
      Height = 24
      TabOrder = 0
      OnExit = edSenhaAtualExit
    end
    object edNovaSenha: TEdit
      Left = 105
      Top = 37
      Width = 88
      Height = 24
      Enabled = False
      TabOrder = 1
    end
  end
end
