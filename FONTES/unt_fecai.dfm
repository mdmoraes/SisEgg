object frmfecai: Tfrmfecai
  Left = 192
  Top = 107
  Width = 369
  Height = 219
  BorderIcons = [biSystemMenu]
  Caption = 'Fechamento do Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 5
    Top = 32
    Width = 348
    Height = 121
  end
  object Label1: TLabel
    Left = 16
    Top = 48
    Width = 228
    Height = 13
    Caption = 
      'Total de D'#233'bitos................................................' +
      '.:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 227
    Height = 13
    Caption = 
      'Total de Cr'#233'ditos...............................................' +
      '.:'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 219
    Height = 13
    Caption = 'Total em caixa.................................................:'
  end
  object lbltode: TLabel
    Left = 298
    Top = 48
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltoce: TLabel
    Left = 298
    Top = 80
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltota: TLabel
    Left = 298
    Top = 112
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'R$ 0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel2: TBevel
    Left = 248
    Top = 93
    Width = 98
    Height = 9
    Shape = bsBottomLine
  end
  object Panel4: TPanel
    Left = 3
    Top = 6
    Width = 351
    Height = 20
    Caption = 'Resumo do Caixa'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnfecai: TBitBtn
    Left = 248
    Top = 160
    Width = 107
    Height = 25
    Caption = '&Fechar o caixa'
    Enabled = False
    TabOrder = 1
    OnClick = btnfecaiClick
  end
  object btncanc: TBitBtn
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btncancClick
  end
end
