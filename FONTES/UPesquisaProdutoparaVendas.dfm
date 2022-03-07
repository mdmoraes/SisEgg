object FrmPesquisaProduto: TFrmPesquisaProduto
  Left = 223
  Top = 248
  Width = 721
  Height = 420
  Caption = 'Pesquisa Produto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 6
    Top = 42
    Width = 696
    Height = 318
    DataSource = DmDados.Dsprodutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'Pro_Ref'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Ref.'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pro_Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 285
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pro_Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Unid.:'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'Pro_QtdeAtual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = [fsItalic]
        Title.Alignment = taCenter
        Title.Caption = 'Qt. Atual'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWhite
        Expanded = False
        FieldName = 'Pro_PrecoVenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Title.Color = clSilver
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end>
  end
  object btnFechar: TBitBtn
    Left = 319
    Top = 364
    Width = 80
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object Edit1: TEdit
    Left = 8
    Top = 6
    Width = 194
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object GroupBox2: TGroupBox
    Left = 207
    Top = 2
    Width = 167
    Height = 37
    Caption = ' Pesquisar por: '
    Color = 15329769
    ParentColor = False
    TabOrder = 3
    object rdRef: TRadioButton
      Left = 12
      Top = 19
      Width = 56
      Height = 14
      Caption = 'Ref.:'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rdRefClick
    end
    object rdDescricao: TRadioButton
      Left = 74
      Top = 19
      Width = 83
      Height = 14
      Caption = 'Descri'#231#227'o:'
      TabOrder = 1
      OnClick = rdDescricaoClick
    end
  end
end
