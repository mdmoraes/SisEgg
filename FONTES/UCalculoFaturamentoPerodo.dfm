object FrmCalculoFaturamentoPeriodo: TFrmCalculoFaturamentoPeriodo
  Left = 74
  Top = 127
  Width = 664
  Height = 375
  Caption = 'Calculo de Faturamento por periodo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnExexQry: TSpeedButton
    Left = 264
    Top = 16
    Width = 72
    Height = 22
    Caption = 'Exec'
    OnClick = btnExexQryClick
  end
  object btnCalcula: TSpeedButton
    Left = 376
    Top = 16
    Width = 73
    Height = 22
    Caption = 'Calcula'
    OnClick = btnCalculaClick
  end
  object btnFechar: TSpeedButton
    Left = 280
    Top = 320
    Width = 81
    Height = 22
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object dbgrid: TDBGrid
    Left = 8
    Top = 72
    Width = 625
    Height = 241
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'it_ref'
        Title.Alignment = taCenter
        Title.Caption = 'Ref.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Courier'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'it_unid'
        Title.Alignment = taCenter
        Title.Caption = 'Unid.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Courier'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'it_quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Courier'
        Title.Font.Style = []
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'it_valor'
        Title.Alignment = taCenter
        Title.Caption = 'Vr. Unit.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Courier'
        Title.Font.Style = []
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vrLucro'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Courier'
        Title.Font.Style = []
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalLucro'
        Width = 107
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 12
    Top = 3
    Width = 221
    Height = 52
    Caption = 'Escolha um Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbl1: TLabel
      Left = 102
      Top = 24
      Width = 9
      Height = 20
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtpDataI: TDateTimePicker
      Left = 5
      Top = 24
      Width = 92
      Height = 24
      Date = 38908.026379664290000000
      Time = 38908.026379664290000000
      TabOrder = 0
    end
    object dtpDataF: TDateTimePicker
      Left = 118
      Top = 24
      Width = 95
      Height = 24
      Date = 38908.026601736100000000
      Time = 38908.026601736100000000
      TabOrder = 1
    end
  end
  object Qry1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'Select a.ped_data, b.it_quantidade,'
      '       b.it_ref, b.it_valor, b.it_unid, b.it_lucro'
      'from Pedidos a, itens b'
      
        'where a.ped_numero=b.it_numero and ped_data between :vardataI an' +
        'd :vardataF ')
    Left = 484
    Top = 11
    ParamData = <
      item
        DataType = ftDate
        Name = 'vardataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'vardataF'
        ParamType = ptUnknown
      end>
    object Qry1ped_data: TDateField
      FieldName = 'ped_data'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
    object Qry1it_quantidade: TFloatField
      FieldName = 'it_quantidade'
      Origin = 'SYSEGG."Itens.DB".It_Quantidade'
    end
    object Qry1it_ref: TStringField
      FieldName = 'it_ref'
      Origin = 'SYSEGG."Itens.DB".It_Ref'
      Size = 8
    end
    object Qry1it_valor: TCurrencyField
      FieldName = 'it_valor'
      Origin = 'SYSEGG."Itens.DB".It_Valor'
    end
    object Qry1it_unid: TStringField
      FieldName = 'it_unid'
      Origin = 'SYSEGG."Itens.DB".It_Unid'
      Size = 10
    end
    object Qry1Lucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro'
      Calculated = True
    end
    object Qry1TotalLucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalLucro'
      Calculated = True
    end
    object Qry1it_lucro: TCurrencyField
      FieldName = 'it_lucro'
      Origin = 'SYSEGG."ITENS.DB".It_Lucro'
    end
    object Qry1vrLucro: TFloatField
      FieldName = 'vrLucro'
    end
  end
  object ds1: TDataSource
    DataSet = Qry1
    Left = 524
    Top = 11
  end
end
