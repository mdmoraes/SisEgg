object FrmConsultadeVendas: TFrmConsultadeVendas
  Left = 374
  Top = 211
  Width = 379
  Height = 173
  AutoSize = True
  Caption = 'Consulta de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 363
    Height = 81
    Caption = '  ESCOLHA UM PER'#205'ODO  '
    TabOrder = 0
    object Label1: TLabel
      Left = 102
      Top = 27
      Width = 11
      Height = 20
      Caption = #192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnRelatorio: TSpeedButton
      Left = 243
      Top = 17
      Width = 112
      Height = 30
      Hint = 'EXECUTA A PESQUISA'
      Caption = 'Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
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
      ParentShowHint = False
      ShowHint = True
      OnClick = btnRelatorioClick
    end
    object DataI: TDateTimePicker
      Left = 7
      Top = 23
      Width = 91
      Height = 24
      Date = 38894.649433588000000000
      Time = 38894.649433588000000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 118
      Top = 23
      Width = 90
      Height = 24
      Date = 38894.649610451400000000
      Time = 38894.649610451400000000
      TabOrder = 1
    end
  end
  object btnFechar: TBitBtn
    Left = 145
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnFecharClick
  end
end
