object FormListadePedidos: TFormListadePedidos
  Left = 119
  Top = 65
  AutoScroll = False
  Caption = 'Lista de Pedidos'
  ClientHeight = 478
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poPrintToFit
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpListadeProdutos: TGroupBox
    Left = 7
    Top = 2
    Width = 617
    Height = 466
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LabelFechar: TLabel
      Left = 268
      Top = 441
      Width = 85
      Height = 16
      Caption = 'Fechar  <Esc>'
      DragCursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = LabelFecharClick
    end
    object btnFiltar: TSpeedButton
      Left = 421
      Top = 49
      Width = 26
      Height = 7
      Visible = False
      OnClick = btnFiltarClick
    end
    object btnCopiar: TSpeedButton
      Left = 510
      Top = 21
      Width = 83
      Height = 25
      Hint = 'COPIA OS DADOS SELECIONADOS'#13#10'PARA A TELA DE PEDIDO.'
      Caption = 'Copiar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnCopiarClick
    end
    object Label2: TLabel
      Left = 3
      Top = 10
      Width = 38
      Height = 16
      Caption = 'Digite '
    end
    object Label3: TLabel
      Left = 156
      Top = 11
      Width = 148
      Height = 13
      Caption = 'Escolha o Campo p/ pesquisa: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TSpeedButton
      Left = 315
      Top = 26
      Width = 39
      Height = 22
      Visible = False
      OnClick = btn1Click
    end
    object grp1: TGroupBox
      Left = 5
      Top = 56
      Width = 609
      Height = 375
      Caption = 
        'Rela'#231#227'o dos Pedidos   -  TECLE <ENTER> P/ LOCALIZAR O REGISTRO..' +
        '.'
      TabOrder = 0
      object dbgrd2: TJvDBGrid
        Left = 4
        Top = 20
        Width = 599
        Height = 340
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgrd2DblClick
        OnKeyDown = dbgrd2KeyDown
        OnTitleClick = dbgrd2TitleClick
        AutoAppend = False
        AlternateRowColor = 13434828
        SortedField = 'codigoproduto'
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        ReduceFlicker = False
        RowsHeight = 20
        TitleRowHeight = 20
        BooleanEditor = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Ped_Geral'
            Title.Alignment = taCenter
            Title.Caption = 'Ped.Geral:'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente:'
            Width = 347
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data:'
            Width = 78
            Visible = True
          end>
      end
    end
    object yulFindEdit1: TJvDBFindEdit
      Left = 4
      Top = 26
      Width = 148
      Height = 22
      AutoSelect = False
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Flat = True
      ParentFlat = False
      ParentFont = False
      TabOrder = 1
      OnChange = yulFindEdit1Change
      DataField = 'Ped_Geral'
      DataSource = ds1
      FindStyle = fsFilter
    end
    object chk1: TCheckBox
      Left = 505
      Top = 50
      Width = 53
      Height = 10
      Caption = 'Qualquer parte:'
      Checked = True
      State = cbChecked
      TabOrder = 2
      Visible = False
      OnClick = chk1Click
    end
    object grp2: TGroupBox
      Left = 452
      Top = 38
      Width = 37
      Height = 15
      Caption = 'Filtrar por:'
      TabOrder = 3
      Visible = False
      object rbcodigo: TRadioButton
        Left = 2
        Top = 20
        Width = 69
        Height = 16
        Caption = 'C'#243'digo'
        TabOrder = 0
        OnClick = rbcodigoClick
      end
      object rbproduto: TRadioButton
        Left = 79
        Top = 19
        Width = 76
        Height = 16
        Caption = 'Produto'
        TabOrder = 1
      end
    end
    object ComboBox1: TComboBox
      Left = 156
      Top = 25
      Width = 145
      Height = 24
      ItemHeight = 16
      TabOrder = 4
      OnChange = ComboBox1Change
    end
    object chkMarcarTodos: TCheckBox
      Left = 409
      Top = 34
      Width = 39
      Height = 17
      Caption = 'Marcar Todos'
      TabOrder = 5
      Visible = False
      OnClick = chkMarcarTodosClick
    end
    object edt1: TEdit
      Left = 42
      Top = 436
      Width = 113
      Height = 24
      TabOrder = 6
      Text = 'VENDA BALC'#195'O'
      Visible = False
    end
  end
  object qry1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'select ped_numero as Ped_Geral, ped_e as Pedido, ped_cliente as ' +
        'Cliente, ped_data as Data'
      'from pedidos'
      'where ped_cliente <> '#39'VENDA BALC'#195'O'#39
      'order by Ped_Geral desc')
    Left = 453
    Top = 10
    object qry1Pedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'SYSEGG."pedidos.DB".Ped_E'
    end
    object qry1Cliente: TStringField
      FieldName = 'Cliente'
      Origin = 'SYSEGG."pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object qry1Data: TDateField
      FieldName = 'Data'
      Origin = 'SYSEGG."pedidos.DB".Ped_Data'
    end
    object qry1Ped_Geral: TIntegerField
      FieldName = 'Ped_Geral'
      Origin = 'SYSEGG."pedidos.DB".Ped_Numero'
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 417
    Top = 10
  end
end
