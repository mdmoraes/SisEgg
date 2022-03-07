object FrmSuporte: TFrmSuporte
  Left = 295
  Top = 78
  Width = 1074
  Height = 630
  Caption = 'Tela Suporte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnExecutar: TSpeedButton
    Left = 112
    Top = 6
    Width = 137
    Height = 27
    Caption = 'Executar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
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
    ParentFont = False
    OnClick = btnExecutarClick
  end
  object lblMensagem: TLabel
    Left = 19
    Top = 563
    Width = 68
    Height = 16
    Caption = 'mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 18
    Top = 523
    Width = 830
    Height = 29
    ForeColor = 10935214
    Progress = 0
  end
  object lblContador: TLabel
    Left = 92
    Top = 448
    Width = 53
    Height = 13
    Caption = 'lblContador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object prgbar: TJvDBProgressBar
    Left = 20
    Top = 485
    Width = 830
    Height = 25
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 5
    Top = 41
    Width = 1046
    Height = 392
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
        FieldName = 'ID_CPG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_Cliente'
        Visible = True
      end>
  end
  object btn1: TBitBtn
    Left = 915
    Top = 478
    Width = 106
    Height = 34
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
    Kind = bkClose
  end
  object ds1: TDataSource
    DataSet = tbCopia
    Left = 744
    Top = 8
  end
  object tbCopia: TTable
    Active = True
    DatabaseName = 'SysEgg'
    DefaultIndex = False
    FieldDefs = <
      item
        Name = 'ID_CPG'
        DataType = ftInteger
      end
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'DataInclusao'
        DataType = ftDate
      end
      item
        Name = 'FormaPagamento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ValorTotal'
        DataType = ftFloat
      end
      item
        Name = 'Obs'
        DataType = ftMemo
        Size = 80
      end
      item
        Name = 'Num_NFPEDIDO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ValorTotalFixo'
        DataType = ftFloat
      end
      item
        Name = 'TipoSaida'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <
      item
        Fields = 'ID_CPG'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'idx_ID_CPG'
        Fields = 'ID_CPG'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'idx_Fornecedor'
        Fields = 'Cliente'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'CPRMaster.DB'
    Left = 648
    Top = 8
    object tbCopiaID_CPG: TIntegerField
      FieldName = 'ID_CPG'
    end
    object tbCopiaCliente: TStringField
      FieldName = 'Cliente'
      Size = 80
    end
    object tbCopiaID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
  end
  object QueryCopiar: TQuery
    Active = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT CLIENTE, ID_CLIENTE FROM CPRMASTER'
      'ORDER BY CLIENTE')
    Left = 816
    Top = 8
    object tbCopiaQueryCopiarCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'SYSEGG."CPRMaster.DB".Cliente'
      Size = 80
    end
    object tbQueryCopiarID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'SYSEGG."CPRMaster.DB".ID_Cliente'
    end
  end
end
