object FrmConsultaVendasBalcao: TFrmConsultaVendasBalcao
  Left = 246
  Top = 120
  Width = 360
  Height = 390
  Caption = 'Consulta Vendas Balc'#227'o'
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
  object Label1: TLabel
    Left = 5
    Top = 0
    Width = 116
    Height = 13
    Caption = 'Digite o tipo de pesquisa'
  end
  object dbgrd1: TDBGrid
    Left = 3
    Top = 38
    Width = 337
    Height = 286
    DataSource = DmDados.Dspedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Expanded = False
        FieldName = 'Ped_B'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' PEDIDO:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ped_Cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 413
        Visible = True
      end>
  end
  object edt1: TEdit
    Left = 4
    Top = 13
    Width = 117
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
    OnChange = edt1Change
  end
  object btnFechar: TButton
    Left = 129
    Top = 335
    Width = 88
    Height = 22
    Caption = 'Fechar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnFecharClick
  end
end
