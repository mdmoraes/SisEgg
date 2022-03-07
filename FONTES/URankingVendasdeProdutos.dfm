object FrmRankingvendasdeProdutos: TFrmRankingvendasdeProdutos
  Left = 220
  Top = 78
  Width = 900
  Height = 722
  Caption = 'Ranking de Itens mais vendidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object brnFechar: TSpeedButton
    Left = 461
    Top = 640
    Width = 109
    Height = 29
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = brnFecharClick
  end
  object btnAplicar: TSpeedButton
    Left = 309
    Top = 15
    Width = 105
    Height = 30
    Hint = 'EXECUTA A PESQUISA'
    Caption = 'OK'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = btnAplicarClick
  end
  object Label2: TLabel
    Left = 136
    Top = 21
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
  object Label3: TLabel
    Left = 9
    Top = 2
    Width = 77
    Height = 16
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 112
    Top = 1
    Width = 68
    Height = 16
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object btnRelatorio: TSpeedButton
    Left = 856
    Top = 12
    Width = 109
    Height = 30
    Caption = '&Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
    ParentFont = False
    OnClick = btnRelatorioClick
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 57
    Width = 980
    Height = 568
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IT_REF'
        Title.Alignment = taCenter
        Title.Caption = 'REF.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 191
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IT_DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199'AO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 441
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Title.Alignment = taCenter
        Title.Caption = 'QUANT.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 188
        Visible = True
      end>
  end
  object DataI: TDateTimePicker
    Left = 7
    Top = 19
    Width = 112
    Height = 24
    Date = 38894.649433588000000000
    Time = 38894.649433588000000000
    TabOrder = 1
  end
  object DataF: TDateTimePicker
    Left = 161
    Top = 18
    Width = 117
    Height = 24
    Date = 38894.649610451400000000
    Time = 38894.649610451400000000
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 544
    Top = 7
    Width = 145
    Height = 41
    Caption = 'Filtrar Ranking por:'
    Color = 14286847
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    object rdQuant: TRadioButton
      Left = 6
      Top = 20
      Width = 67
      Height = 17
      Caption = 'Quant.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rdQuantClick
    end
    object rdLucro: TRadioButton
      Left = 79
      Top = 21
      Width = 57
      Height = 17
      Caption = 'Lucro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rdLucroClick
    end
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      
        'SELECT B.IT_REF, B. IT_DESCRICAO, SUM(B.IT_QUANTIDADE) AS QUANT,' +
        ' SUM(B.IT_QUANTIDADE*B.IT_VALOR) AS VALOR'
      'FROM PEDIDOS A, ITENS B'
      
        'WHERE A.PED_NUMERO = B.IT_NUMERO AND PED_DATA BETWEEN :VARDATAI ' +
        'AND :VARDATAF'
      'GROUP BY B.IT_REF, IT_DESCRICAO')
    Left = 408
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
    object Query1IT_REF: TStringField
      FieldName = 'IT_REF'
      Origin = 'DEBORA."ITENS.DB".It_Ref'
      Size = 8
    end
    object tblQuery1IT_DESCRICAO: TStringField
      FieldName = 'IT_DESCRICAO'
      Size = 50
    end
    object Query1QUANT: TFloatField
      FieldName = 'QUANT'
      Origin = 'DEBORA."ITENS.DB".It_Quantidade'
    end
    object Query1VALOR: TCurrencyField
      FieldName = 'VALOR'
      Origin = 'DEBORA."ITENS.DB".It_Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 456
  end
end
