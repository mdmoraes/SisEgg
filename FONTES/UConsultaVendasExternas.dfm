object FrmConsultaVendasExternas: TFrmConsultaVendasExternas
  Left = 310
  Top = 223
  Width = 729
  Height = 155
  AutoSize = True
  Caption = 'Consulta Vendas por Clientes'
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
  object Label3: TLabel
    Left = 218
    Top = 2
    Width = 227
    Height = 16
    Caption = 'Escolha um Cliente ou <TODOS>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnVisualizar: TSpeedButton
    Left = 17
    Top = 92
    Width = 169
    Height = 25
    Cursor = crHandPoint
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333330000000000033333FFFFFFFFFFF333307777777770
      70333F777777777F7F330000000000000703FFFFFFFFFFFFF7F30777777BBB77
      0003F777777BBB77FFF30777777888770703F77777788877F7F3000000000000
      0770FFFFFFFFFFFFF77F0777777777707070F7777777777F7F7F300000000007
      07003FFFFFFFFFF7F7FF330FFFFFFFF0707033F77777777F7F7F3330F00000F0
      0003333F7FFFFF7FFFF33330FFFFFFFF0333333F77777777F33333330F00000F
      03333333F7FFFFF7F33333330FFFFFFFF0333333F77777777F33333330000000
      003333333FFFFFFFFF3333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnVisualizarClick
  end
  object btnFechar: TSpeedButton
    Left = 415
    Top = 90
    Width = 81
    Height = 24
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object btnProcurarCliente: TSpeedButton
    Left = 515
    Top = 70
    Width = 27
    Height = 22
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
      300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
      330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
      333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
      339977FF777777773377000BFB03333333337773FF733333333F333000333333
      3300333777333333337733333333333333003333333333333377333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    Visible = False
    OnClick = btnProcurarClienteClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 212
    Height = 69
    Caption = 'Per'#237'odo:'
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 21
      Width = 34
      Height = 16
      Caption = 'In'#237'cio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 113
      Top = 21
      Width = 25
      Height = 16
      Caption = 'Fim:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DataI: TDateTimePicker
      Left = 6
      Top = 37
      Width = 92
      Height = 21
      Date = 39400.624787500000000000
      Time = 39400.624787500000000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 112
      Top = 37
      Width = 92
      Height = 21
      Date = 39400.624787500000000000
      Time = 39400.624787500000000000
      TabOrder = 1
    end
  end
  object comboTipo: TComboBox
    Left = 217
    Top = 24
    Width = 496
    Height = 24
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    Sorted = True
    TabOrder = 1
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'SELECT A.PED_CLIENTE, B.IT_REF, B.IT_DESCRICAO, B.IT_UN_GERAL, S' +
        'UM(B.IT_QTDOVO)/360 AS QTD, SUM(B.IT_QUANTIDADE * B.IT_VALOR) AS' +
        ' VALOR '
      'FROM PEDIDOS A, ITENS B'
      
        'WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA BETWEEN :VARDATA' +
        'I AND :VARDATAF AND A.PED_CLIENTE LIKE :VARCLIENTE'
      'GROUP BY A.PED_CLIENTE, B.IT_REF, B.IT_UN_GERAL, B.IT_DESCRICAO'
      'ORDER BY A.PED_CLIENTE, B.IT_REF')
    Left = 464
    Top = 56
    ParamData = <
      item
        DataType = ftDate
        Name = 'VARDATAI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VARDATAF'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object tblQuery1PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Size = 50
    end
    object tblQuery1IT_REF: TStringField
      FieldName = 'IT_REF'
      Size = 15
    end
    object tblQuery1IT_UN_GERAL: TStringField
      FieldName = 'IT_UN_GERAL'
      Size = 10
    end
    object tblQuery1QTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.00'
    end
    object Query1VALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      currency = False
    end
    object tblQuery1IT_DESCRICAO: TStringField
      FieldName = 'IT_DESCRICAO'
      Size = 50
    end
  end
end
