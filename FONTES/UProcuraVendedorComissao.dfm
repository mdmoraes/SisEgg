object FrmProcuraVendedorComissao: TFrmProcuraVendedorComissao
  Left = 229
  Top = 190
  Width = 358
  Height = 320
  Caption = 'Procura Vendedor'
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
  object btnFechar: TSpeedButton
    Left = 132
    Top = 262
    Width = 83
    Height = 26
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 31
    Width = 336
    Height = 223
    DataSource = DmDados.dsVendedores
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Caption = 'NOME:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 299
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 10
    Top = 5
    Width = 173
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    BorderStyle = bsNone
    Color = 13565951
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = Edit1Change
  end
end
