object FrmFaturados: TFrmFaturados
  Left = 262
  Top = 171
  Width = 838
  Height = 593
  Caption = 'Consulta de Parcelamentos'
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
  object btnFechar: TSpeedButton
    Left = 671
    Top = 509
    Width = 91
    Height = 26
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 24
    Width = 759
    Height = 457
    Align = alCustom
    Color = clWhite
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawDataCell = DBGrid1DrawDataCell
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PED_E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'N'#176' PED.'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PED_DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PED_VRFINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'VL.TOTAL'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VENCIMENTO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = '1'#176' VENC'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 16769444
        Expanded = False
        FieldName = 'DTPGT1'
        Title.Alignment = taCenter
        Title.Caption = '1'#186' PGT'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = '1'#176' PARC'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAGO1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'PG'
        Width = 28
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VENCIMENTO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = '2'#176' VENC'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 16769444
        Expanded = False
        FieldName = 'DTPGT2'
        Title.Alignment = taCenter
        Title.Caption = '2'#186' PGT'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = '2'#176' PARC'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PAGO2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'PG'
        Width = 29
        Visible = True
      end
      item
        Color = 12582911
        Expanded = False
        FieldName = 'TotPend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Pend'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 279
    Top = 492
    Width = 229
    Height = 51
    Caption = 'PEND'#202'NCIAS'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object edpendencia: TEdit
      Left = 15
      Top = 18
      Width = 194
      Height = 25
      AutoSize = False
      Color = 12582911
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edpendenciaChange
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PED_E, PED_DATA, PED_CLIENTE, PED_VRFINAL, TOTALPARCIAL,'
      
        'VENCIMENTO1, VALOR1, PAGO1, VENCIMENTO2, VALOR2, PAGO2, DTPGT1, ' +
        'DTPGT2'
      'FROM PEDIDOS'
      'WHERE PED_CLIENTE LIKE (:VARNOMECLIENTE)'
      'ORDER BY PED_DATA DESC')
    Left = 568
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'VARNOMECLIENTE'
        ParamType = ptUnknown
      end>
    object Query1PED_DATA: TDateField
      FieldName = 'PED_DATA'
      Origin = 'DEBORA."Pedidos.DB".Ped_Data'
    end
    object Query1PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'DEBORA."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object Query1VENCIMENTO1: TDateField
      FieldName = 'VENCIMENTO1'
      Origin = 'DEBORA."Pedidos.DB".Vencimento1'
    end
    object Query1VENCIMENTO2: TDateField
      FieldName = 'VENCIMENTO2'
      Origin = 'DEBORA."Pedidos.DB".Vencimento2'
    end
    object Query1VALOR1: TCurrencyField
      FieldName = 'VALOR1'
      Origin = 'DEBORA."Pedidos.DB".Valor1'
    end
    object Query1VALOR2: TCurrencyField
      FieldName = 'VALOR2'
      Origin = 'DEBORA."Pedidos.DB".Valor2'
    end
    object Query1PAGO1: TBooleanField
      FieldName = 'PAGO1'
      Origin = 'DEBORA."Pedidos.DB".Pago1'
      DisplayValues = 'Sim;N'#227'o'
    end
    object Query1PAGO2: TBooleanField
      FieldName = 'PAGO2'
      Origin = 'DEBORA."Pedidos.DB".Pago2'
      DisplayValues = 'Sim;N'#227'o'
    end
    object Query1TotPend: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotPend'
      Calculated = True
    end
    object Query1DTPGT1: TDateField
      FieldName = 'DTPGT1'
      Origin = 'SYSEGG."Pedidos.DB".DtPgt1'
    end
    object Query1DTPGT2: TDateField
      FieldName = 'DTPGT2'
      Origin = 'SYSEGG."Pedidos.DB".DtPgt2'
    end
    object Query1PED_E: TIntegerField
      FieldName = 'PED_E'
      Origin = 'SYSEGG."Pedidos.DB".Ped_E'
    end
    object Query1PED_VRFINAL: TCurrencyField
      FieldName = 'PED_VRFINAL'
      Origin = 'SYSEGG."Pedidos.DB".Ped_VrFinal'
    end
    object Query1TOTALPARCIAL: TCurrencyField
      FieldName = 'TOTALPARCIAL'
      Origin = 'SYSEGG."Pedidos.DB".TotalParcial'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 616
    Top = 72
  end
end
