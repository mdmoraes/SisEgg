object FrmCopiador: TFrmCopiador
  Left = 59
  Top = 71
  Width = 707
  Height = 391
  Caption = 'Copiador'
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
  object Label1: TLabel
    Left = 27
    Top = 336
    Width = 64
    Height = 20
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 649
    Height = 281
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CLIENTE'
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NFANTASIA'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ULTIMACOMPRA'
        Width = 86
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 7
    Top = 4
    Width = 354
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object btnExecuta: TButton
    Left = 200
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Executa'
    TabOrder = 2
    OnClick = btnExecutaClick
  end
  object btnCopia: TButton
    Left = 328
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Copia'
    TabOrder = 3
    OnClick = btnCopiaClick
  end
  object Query1: TQuery
    DatabaseName = 'Debora'
    SQL.Strings = (
      
        'SELECT CLI_CLIENTE, CLI_NFANTASIA, CLI_FONE1, CLI_ULTIMACOMPRA F' +
        'ROM CLIENTES'
      'WHERE CLI_VENDEDOR LIKE (:VARVENDEDOR)')
    Left = 432
    Top = 4
    ParamData = <
      item
        DataType = ftString
        Name = 'VARVENDEDOR'
        ParamType = ptUnknown
      end>
    object Query1CLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'DEBORA."Clientes.DB".Cli_Cliente'
      Size = 60
    end
    object Query1CLI_NFANTASIA: TStringField
      FieldName = 'CLI_NFANTASIA'
      Origin = 'DEBORA."Clientes.DB".Cli_NFantasia'
      Size = 60
    end
    object Query1CLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'DEBORA."Clientes.DB".Cli_Fone1'
      Size = 15
    end
    object Query1CLI_ULTIMACOMPRA: TDateField
      FieldName = 'CLI_ULTIMACOMPRA'
      Origin = 'DEBORA."Clientes.DB".Cli_UltimaCompra'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 504
  end
end
