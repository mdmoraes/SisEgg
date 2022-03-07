object FrmPequisaClienteVendas: TFrmPequisaClienteVendas
  Left = 100
  Top = 114
  Width = 775
  Height = 474
  BorderIcons = []
  Caption = 'Pesquisa  Cliente'
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
  object edPegaNome: TEdit
    Left = 142
    Top = 303
    Width = 179
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 68
    Width = 731
    Height = 330
    DataSource = DmDados.DsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Lucida Sans'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaSegunda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Seg'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaTerca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Ter'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaQuarta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Quar'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaQuinta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Qui'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaSexta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Sex'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cli_RotaSabado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Rota Sab'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_Cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cli_NFantasia'
        Title.Alignment = taCenter
        Title.Caption = 'NOME FANTASIA:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold, fsItalic]
        Width = 295
        Visible = True
      end>
  end
  object edCliente: TEdit
    Left = 11
    Top = 6
    Width = 299
    Height = 23
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = 12910591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = edClienteChange
  end
  object btnFechar: TButton
    Left = 342
    Top = 407
    Width = 93
    Height = 25
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
  object GroupBox1: TGroupBox
    Left = 325
    Top = 3
    Width = 407
    Height = 58
    Caption = 'PESQUISAR POR:'
    Color = 16053492
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 38
      Height = 15
      Caption = 'Rotas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Lucida Sans'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object rdRSocial: TRadioButton
      Left = 129
      Top = 34
      Width = 145
      Height = 15
      Caption = 'R. Social/Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rdRSocialClick
    end
    object rdNFantasia: TRadioButton
      Left = 288
      Top = 34
      Width = 110
      Height = 17
      Caption = 'N. Fantasia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rdNFantasiaClick
    end
    object ComboBox1: TComboBox
      Left = 6
      Top = 31
      Width = 116
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
      OnChange = ComboBox1Change
      Items.Strings = (
        'Segunda'
        'Ter'#231'a'
        'Quarta'
        'Quinta'
        'Sexta'
        'S'#225'bado')
    end
  end
end
