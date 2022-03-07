object FrmConsultaFaturamento: TFrmConsultaFaturamento
  Left = 192
  Top = 171
  Width = 467
  Height = 269
  Caption = 'Consulta Faturamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 85
    Top = 194
    Width = 166
    Height = 13
    Caption = 'D'#202' UM CLICK DUPLO NO VALOR'
  end
  object DBGrid1: TDBGrid
    Left = 28
    Top = 68
    Width = 399
    Height = 120
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Ped_Data'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOT_LUCRO'
        Width = 98
        Visible = True
      end>
  end
  object btnAplicar: TButton
    Left = 312
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    TabOrder = 0
    OnClick = btnAplicarClick
  end
  object edTotal: TEdit
    Left = 91
    Top = 211
    Width = 151
    Height = 24
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvRaised
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDblClick = edTotalDblClick
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT Ped_Data,   SUM(PED_LUCRO)TOT_LUCRO'
      'FROM "Pedidos.DB" Pedidos'
      'WHERE Ped_Data between :VarDataI and :VarDataF'
      'GROUP BY Ped_Data')
    Left = 201
    Top = 6
    ParamData = <
      item
        DataType = ftDate
        Name = 'VarDataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VarDataF'
        ParamType = ptUnknown
      end>
    object Query1Ped_Data: TDateField
      FieldName = 'Ped_Data'
      Origin = 'DEBORA."Pedidos.DB".Ped_Data'
    end
    object Query1TOT_LUCRO: TCurrencyField
      FieldName = 'TOT_LUCRO'
      Origin = 'DEBORA."Pedidos.DB".Ped_Lucro'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 260
    Top = 8
  end
end
