object FrmConsultaItensVendidos: TFrmConsultaItensVendidos
  Left = 303
  Top = 70
  Width = 908
  Height = 599
  AutoSize = True
  Caption = 'Movimenta'#231#227'o de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 4
    Top = 1
    Width = 77
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 154
    Top = 0
    Width = 68
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 576
    Top = 2
    Width = 33
    Height = 16
    Caption = 'REF: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object btnFiltrar: TSpeedButton
    Left = 469
    Top = 11
    Width = 93
    Height = 36
    Caption = 'Filtrar'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
      C43337777777777777F33444881B188444333777F3737337773333308881FF70
      33333337F3373337F3333330888BF770333333373F33F337333333330881F703
      3333333373F73F7333333333308B703333333333373F77333333333333080333
      3333333333777FF333333333301F103333333333377777FF3333333301B1F103
      333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
      333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
      C43337777777777777F334444444444444333777777777777733}
    NumGlyphs = 2
    OnClick = btnFiltrarClick
  end
  object btnFechar: TSpeedButton
    Left = 788
    Top = 514
    Width = 101
    Height = 30
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object lbl6: TLabel
    Left = 129
    Top = 22
    Width = 9
    Height = 16
    Caption = #192
  end
  object lbl8: TLabel
    Left = 274
    Top = 0
    Width = 75
    Height = 16
    Caption = 'Refer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object dtpDataI: TDateTimePicker
    Left = 2
    Top = 18
    Width = 115
    Height = 24
    Date = 38894.649433588000000000
    Time = 38894.649433588000000000
    TabOrder = 1
  end
  object dtpDataF: TDateTimePicker
    Left = 153
    Top = 19
    Width = 115
    Height = 24
    Date = 38894.649610451400000000
    Time = 38894.649610451400000000
    TabOrder = 3
  end
  object comboTipo: TComboBox
    Left = 273
    Top = 19
    Width = 186
    Height = 24
    Style = csDropDownList
    DropDownCount = 15
    ItemHeight = 16
    TabOrder = 4
    TabStop = False
    Items.Strings = (
      '')
  end
  object grp1: TGroupBox
    Left = 0
    Top = 49
    Width = 892
    Height = 431
    Caption = 'Grade de vendas efetuadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 0
    object dbgrid: TDBGrid
      Left = 0
      Top = 22
      Width = 881
      Height = 403
      DataSource = ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsUnderline]
      Columns = <
        item
          Expanded = False
          FieldName = 'IT_REF'
          Title.Alignment = taCenter
          Title.Caption = 'Ref.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 254
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IT_UN_GERAL'
          Title.Alignment = taCenter
          Title.Caption = 'Unid.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 179
          Visible = True
        end>
    end
  end
  object grp2: TGroupBox
    Left = 3
    Top = 494
    Width = 625
    Height = 67
    Caption = 'Totaliza'#231#245'es:'
    TabOrder = 2
    object lbltotqtd: TLabel
      Left = 314
      Top = 32
      Width = 62
      Height = 18
      Alignment = taRightJustify
      Caption = 'lbltotqtd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblTotalValor: TLabel
      Left = 497
      Top = 31
      Width = 93
      Height = 18
      Alignment = taRightJustify
      Caption = 'lblTotalValor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 344
      Top = 11
      Width = 31
      Height = 16
      Caption = 'CXs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 544
      Top = 11
      Width = 48
      Height = 16
      Caption = 'VALOR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 149
      Top = 13
      Width = 24
      Height = 16
      Caption = 'UN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblTotalUN: TLabel
      Left = 112
      Top = 32
      Width = 60
      Height = 18
      Alignment = taRightJustify
      Caption = 'lbltotUN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object chkMostrarUN: TCheckBox
    Left = 627
    Top = 21
    Width = 145
    Height = 17
    Caption = 'Mostrar UNIDADE'
    TabOrder = 5
    OnClick = chkMostrarUNClick
  end
  object qryUNI: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'SELECT B.IT_REF, B.IT_UN_GERAL, SUM(B.IT_QTDOVO)/360 AS QTD, SUM' +
        '(B.IT_QUANTIDADE * B.IT_VALOR) AS VALOR FROM PEDIDOS A, ITENS B'
      
        'WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA BETWEEN :VARDATA' +
        'INI AND :VARDATAFIM AND B.IT_REF LIKE :VARREF'
      'GROUP BY B.IT_REF, B.IT_UN_GERAL'
      'ORDER BY B.IT_REF'
      ''
      ''
      '')
    Left = 816
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'VARDATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VARDATAFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VARREF'
        ParamType = ptUnknown
      end>
    object tblUNIIT_REF: TStringField
      FieldName = 'IT_REF'
      Origin = 'SYSEGG."ITENS.DB".It_Ref'
      Size = 15
    end
    object tblUNIQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SYSEGG."ITENS.DB".It_QtdOvo'
      DisplayFormat = '###,###,##0.00'
    end
    object qryUNIVALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'SYSEGG."Itens.DB".It_Quantidade'
    end
    object tblUNIIT_UN_GERAL: TStringField
      FieldName = 'IT_UN_GERAL'
      Origin = 'SYSEGG."Itens.DB".It_UN_GERAL'
      Size = 10
    end
  end
  object ds1: TDataSource
    DataSet = qryUNI
    Left = 864
    Top = 8
  end
end
