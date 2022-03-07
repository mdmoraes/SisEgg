object FrmConsultaComissoesVendedoresSintetico: TFrmConsultaComissoesVendedoresSintetico
  Left = 150
  Top = 181
  Width = 465
  Height = 108
  Caption = 'Consulta Comiss'#245'es Vendedores  -  (Sint'#233'tico)'
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
  object GroupBox1: TGroupBox
    Left = 2
    Top = 1
    Width = 337
    Height = 64
    Caption = ' Defina o Per'#237'odo: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 103
      Top = 29
      Width = 11
      Height = 20
      Caption = #192
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnAplicar: TSpeedButton
      Left = 216
      Top = 26
      Width = 111
      Height = 26
      Hint = 'EXECUTA A PESQUISA'
      Caption = 'Relat'#243'rio'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnAplicarClick
    end
    object DataI: TDateTimePicker
      Left = 8
      Top = 28
      Width = 91
      Height = 24
      Date = 38894.649433588000000000
      Time = 38894.649433588000000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 119
      Top = 27
      Width = 90
      Height = 24
      Date = 38894.649610451400000000
      Time = 38894.649610451400000000
      TabOrder = 1
    end
  end
  object QryComVendedoresSint: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'SELECT SUM(PED_VRFINAL)AS TOTVRFINAL, PED_VENDEDOR, SUM(PED_VRCO' +
        'MISSAO)as VRCOMISSAO'
      'FROM PEDIDOS'
      'WHERE PED_DATA BETWEEN :VarDataI AND :VarDataF'
      'GROUP BY PED_VENDEDOR'
      'ORDER BY TOTVRFINAL DESC')
    Left = 376
    Top = 24
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
    object QryComVendedoresSintTOTVRFINAL: TCurrencyField
      FieldName = 'TOTVRFINAL'
    end
    object QryComVendedoresSintPED_VENDEDOR: TStringField
      FieldName = 'PED_VENDEDOR'
      Size = 35
    end
    object QryComVendedoresSintVRCOMISSAO: TCurrencyField
      FieldName = 'VRCOMISSAO'
    end
  end
end
