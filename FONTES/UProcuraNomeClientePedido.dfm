object FrmProcuraNomeClientePedido: TFrmProcuraNomeClientePedido
  Left = 248
  Top = 142
  Width = 622
  Height = 419
  AutoSize = True
  Caption = 'Procura Nome do Cliente'
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
    Left = 0
    Top = 25
    Width = 326
    Height = 12
    Caption = 'D'#202' UM CLICK DUPLO NO REGISTRO PARA COPIAR NOME:'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 186
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
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 44
    Width = 603
    Height = 301
    DataSource = DmDados.DsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Cli_Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cli_Cliente'
        Title.Alignment = taCenter
        Title.Caption = 'Nome:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 503
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cli_Vendedor'
        Title.Caption = 'Vendedor:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_Forma'
        ReadOnly = False
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_Prazo'
        ReadOnly = False
        Visible = False
      end>
  end
  object btnFechar: TBitBtn
    Left = 254
    Top = 358
    Width = 82
    Height = 23
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 332
    Top = 1
    Width = 202
    Height = 37
    Caption = 'Escolha o tipo de Pesquisa'
    TabOrder = 3
    Visible = False
    object rdCodCliente: TRadioButton
      Left = 7
      Top = 21
      Width = 108
      Height = 17
      Caption = 'C'#243'd. Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rdCodClienteClick
    end
    object RadioButton1: TRadioButton
      Left = 143
      Top = 21
      Width = 79
      Height = 17
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton1Click
    end
  end
end
