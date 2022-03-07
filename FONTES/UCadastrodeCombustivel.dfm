object FrmCadastrodeCombustivel: TFrmCadastrodeCombustivel
  Left = 133
  Top = 96
  Width = 544
  Height = 375
  Caption = 'Cadastro de Combust'#237'vel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 226
    Top = 318
    Width = 96
    Height = 27
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object btnFoco: TButton
    Left = 33
    Top = 4
    Width = 52
    Height = 20
    Caption = 'Foco'
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 521
    Height = 279
    DataSource = DmDados.dsCombustivel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_Combustivel'
        Title.Alignment = taCenter
        Title.Caption = 'Cod.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Tipo_Combustivel'
        Title.Alignment = taCenter
        Title.Caption = 'Combust'#237'vel:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unid'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Preco'
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 28
    Align = alTop
    TabOrder = 1
  end
end
