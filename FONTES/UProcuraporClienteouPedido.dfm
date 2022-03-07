object FrmProcuraporClienteouPedido: TFrmProcuraporClienteouPedido
  Left = 306
  Top = 178
  BorderStyle = bsDialog
  Caption = 'Procura Por Cliente ou N'#186' do Pedido'
  ClientHeight = 407
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 2
    Width = 116
    Height = 13
    Caption = 'Digite o tipo de pesquisa'
  end
  object Edit1: TEdit
    Left = 4
    Top = 19
    Width = 133
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
    TabOrder = 0
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 45
    Width = 590
    Height = 286
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
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
    Columns = <
      item
        Alignment = taCenter
        Color = 8454143
        Expanded = False
        FieldName = 'ped_numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 84
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ped_e'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ped_cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_data'
        Title.Caption = 'Data Pedido'
        Visible = True
      end>
  end
  object btnFechar: TButton
    Left = 228
    Top = 338
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
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 208
    Top = 2
    Width = 286
    Height = 38
    Caption = ' ESCOLHA TIPO DE PESQUISA: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 2
    object rdCliente: TRadioButton
      Left = 204
      Top = 17
      Width = 66
      Height = 17
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rdClienteClick
    end
    object rdPedido: TRadioButton
      Left = 114
      Top = 18
      Width = 82
      Height = 15
      Caption = 'N'#186' Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = rdPedidoClick
    end
    object rb1: TRadioButton
      Left = 4
      Top = 18
      Width = 106
      Height = 15
      Caption = 'N'#186' Pedido'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rb1Click
    end
  end
  object qry1: TQuery
    Active = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'select ped_numero, ped_e, ped_cliente, ped_data'
      'from pedidos'
      'where ped_cliente <> '#39'VENDA BALC'#195'O'#39
      'order by ped_numero desc')
    Left = 145
    Top = 8
    object qry1ped_numero: TIntegerField
      FieldName = 'ped_numero'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Numero'
    end
    object qry1ped_e: TIntegerField
      FieldName = 'ped_e'
      Origin = 'SYSEGG."Pedidos.DB".Ped_E'
    end
    object qry1ped_cliente: TStringField
      FieldName = 'ped_cliente'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object qry1ped_data: TDateField
      FieldName = 'ped_data'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 180
    Top = 9
  end
end
