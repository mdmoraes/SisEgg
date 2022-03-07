object FrmTabeladePrecosBalcao: TFrmTabeladePrecosBalcao
  Left = 37
  Top = 125
  Width = 687
  Height = 397
  Caption = 'Tabela de Pre'#231'os - Vendas Balc'#227'o'
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
  object SpeedButton1: TSpeedButton
    Left = 296
    Top = 342
    Width = 91
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 2
    Width = 676
    Height = 335
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 5
      Top = 6
      Width = 665
      Height = 321
      DataSource = DmDados.Dsprodutos
      FixedColor = 9680639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Color = clWhite
          Expanded = False
          FieldName = 'Pro_Ref'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          Title.Caption = 'TIPO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoUN'
          Title.Alignment = taCenter
          Title.Caption = 'UN'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoquartoDZ'
          Title.Alignment = taCenter
          Title.Caption = #188' DZ'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecomeiaDZ'
          Title.Alignment = taCenter
          Title.Caption = #189' DZ'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoDZ'
          Title.Alignment = taCenter
          Title.Caption = 'DZ'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoDZemeia'
          Title.Alignment = taCenter
          Title.Caption = 'DZ '#189
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoBD'
          Title.Alignment = taCenter
          Title.Caption = 'BD'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pro_PrecoCX'
          Title.Alignment = taCenter
          Title.Caption = 'CX'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold, fsUnderline]
          Width = 84
          Visible = True
        end>
    end
  end
end
