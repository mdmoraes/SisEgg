object FrmProcuraporNomeFornecedor: TFrmProcuraporNomeFornecedor
  Left = 132
  Top = 202
  Width = 544
  Height = 375
  Caption = 'Procura por Nome do Fornecedor'
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
    Left = 18
    Top = 10
    Width = 505
    Height = 289
    Caption = ' &Digite o Inicio do Nome do Fornecedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 56
      Width = 501
      Height = 231
      Align = alBottom
      DataSource = DmDados.Dsfornecedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'For_Codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'For_Razao'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Title.Color = clTeal
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -13
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsBold]
          Width = 407
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 7
      Top = 18
      Width = 370
      Height = 28
      Hint = 'Digite as Iniciais do Nome a Pesquisar'
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -17
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object Button1: TButton
    Left = 448
    Top = 310
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
end
