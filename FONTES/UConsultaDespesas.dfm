object FrmConsultaDespesas: TFrmConsultaDespesas
  Left = 192
  Top = 171
  Width = 556
  Height = 269
  Caption = 'Consulta Despesas'
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
    Left = 9
    Top = 51
    Width = 527
    Height = 136
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
        FieldName = 'DATA_DESP'
        Title.Alignment = taCenter
        Title.Caption = 'DATA:'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRIC'#195'O:'
        Visible = True
      end>
  end
  object btnAplicar: TButton
    Left = 440
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
      'SELECT DATA_DESP, DESCRICAO, VALOR'
      'FROM DESPESAS'
      'WHERE DATA_DESP BETWEEN :VARDATAI AND :VARDATAF')
    Left = 201
    Top = 6
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
    object Query1DATA_DESP: TDateField
      FieldName = 'DATA_DESP'
      Origin = 'DEBORA."DESPESAS.DB".Data_Desp'
    end
    object Query1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DEBORA."DESPESAS.DB".Descricao'
      Size = 60
    end
    object Query1VALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'DEBORA."DESPESAS.DB".Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 260
    Top = 8
  end
end
