object FrmConsultaVendaBalcao: TFrmConsultaVendaBalcao
  Left = 218
  Top = 172
  Width = 279
  Height = 161
  Caption = 'Consulta Venda Balc'#227'o'
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
  object btnVisualizar: TSpeedButton
    Left = 15
    Top = 94
    Width = 95
    Height = 25
    Caption = 'Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnVisualizarClick
  end
  object btnFechar: TSpeedButton
    Left = 160
    Top = 95
    Width = 94
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 13
    Top = 14
    Width = 241
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
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.PED_DATA,A.PED_CLIENTE, A.PED_VRFINAL,'
      
        'B.IT_REF, B.IT_QUANTIDADE AS QTD, B.IT_UNID, B.IT_VALOR, B.IT_DE' +
        'SCRICAO,'
      '(B.IT_QUANTIDADE*B.IT_VALOR) AS TOTAL'
      'FROM PEDIDOS A, ITENS B'
      
        'WHERE A.PED_NUMERO = B.IT_NUMERO AND A.PED_DATA BETWEEN :VARDATA' +
        'I AND :VARDATAF AND PED_CLIENTE = '#39'VENDA BALC'#195'O'#39' '
      'ORDER BY PED_DATA')
    Left = 120
    Top = 88
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
      end>
  end
end
