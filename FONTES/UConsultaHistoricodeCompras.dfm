object FrmConsultadeHistoricodeCompras: TFrmConsultadeHistoricodeCompras
  Left = 342
  Top = 267
  Width = 730
  Height = 535
  Caption = 'Consulta de Hist'#243'rico de Compras'
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
  object btn1: TSpeedButton
    Left = 300
    Top = 464
    Width = 104
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btn1Click
  end
  object lblTotal: TLabel
    Left = 10
    Top = 467
    Width = 61
    Height = 20
    Caption = 'Total de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object grp1: TGroupBox
    Left = 4
    Top = 3
    Width = 629
    Height = 75
    Caption = 'Defina dados para a Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnOK: TSpeedButton
      Left = 178
      Top = 44
      Width = 107
      Height = 24
      Caption = 'Filtrar Dados'
      OnClick = btnOKClick
    end
    object lbl3: TLabel
      Left = 407
      Top = 17
      Width = 61
      Height = 16
      Caption = 'Data Final'
      Visible = False
    end
    object lbl2: TLabel
      Left = 11
      Top = 24
      Width = 166
      Height = 16
      Caption = #218'ltima data de compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 210
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btnAtualizar: TSpeedButton
      Left = 304
      Top = 16
      Width = 73
      Height = 22
      Caption = 'Atualizar'
      OnClick = btnAtualizarClick
    end
    object Gauge1: TGauge
      Left = 300
      Top = 46
      Width = 325
      Height = 20
      ForeColor = clBlue
      Progress = 0
    end
    object dtpFinal: TDateTimePicker
      Left = 187
      Top = 18
      Width = 97
      Height = 19
      Date = 40388.545024224540000000
      Time = 40388.545024224540000000
      TabOrder = 0
      Visible = False
    end
    object dtpUDCompra: TDateTimePicker
      Left = 41
      Top = 44
      Width = 97
      Height = 24
      Date = 0.545024224542430600
      Time = 0.545024224542430600
      TabOrder = 1
    end
  end
  object Painel1: TPanel
    Left = 0
    Top = 80
    Width = 718
    Height = 375
    TabOrder = 1
    object dbgrid: TDBGrid
      Left = 4
      Top = 6
      Width = 708
      Height = 361
      DataSource = ds1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      OnDblClick = dbgridDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cli_codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Cliente'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_cliente'
          Title.Alignment = taCenter
          Title.Caption = 'Cliente'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 429
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cli_ultimacompra'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -16
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'select cli_codigo, cli_cliente,cli_ultimacompra'
      'from clientes'
      'where cli_ultimacompra <= :vardata'
      'order by cli_ultimacompra desc')
    Left = 538
    Top = 10
    ParamData = <
      item
        DataType = ftDate
        Name = 'vardata'
        ParamType = ptUnknown
      end>
    object Query1cli_codigo: TIntegerField
      FieldName = 'cli_codigo'
      Origin = 'SYSEGG."Clientes.DB".Cli_Codigo'
    end
    object Query1cli_cliente: TStringField
      FieldName = 'cli_cliente'
      Origin = 'SYSEGG."Clientes.DB".Cli_Cliente'
      Size = 60
    end
    object Query1cli_ultimacompra: TDateField
      FieldName = 'cli_ultimacompra'
      Origin = 'SYSEGG."Clientes.DB".Cli_UltimaCompra'
    end
  end
  object ds1: TDataSource
    DataSet = Query1
    Left = 602
    Top = 3
  end
  object Query2: TQuery
    Active = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT MAX(PED_DATA) AS DATA, PED_CLIENTE'
      'FROM PEDIDOS'
      'GROUP BY PED_CLIENTE '
      'order by data desc')
    Left = 644
    Top = 11
    object Query2DATA: TDateField
      FieldName = 'DATA'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
    object Query2PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
  end
end
