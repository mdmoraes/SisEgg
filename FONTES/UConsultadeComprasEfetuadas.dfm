object FrmConsultaComprasEfetuadas: TFrmConsultaComprasEfetuadas
  Left = 200
  Top = 74
  Width = 1045
  Height = 633
  AutoSize = True
  Caption = 'Movimenta'#231#227'o de Compras'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnFechar: TSpeedButton
    Left = 925
    Top = 567
    Width = 102
    Height = 28
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 77
    Width = 1029
    Height = 454
    Caption = 'Grade de compras efetuadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 4
      Top = 25
      Width = 1020
      Height = 424
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsUnderline]
      Columns = <
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Alignment = taCenter
          Title.Caption = 'REF.:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'DESCRI'#199#195'O:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 309
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'UN'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRUNIT'
          Title.Alignment = taCenter
          Title.Caption = 'VR.UN'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALITEM'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = [fsUnderline]
          Width = 109
          Visible = True
        end
        item
          Color = 8454143
          Expanded = False
          FieldName = 'FORNECEDOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 230
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA_ENTRADA'
          Title.Caption = 'DATA ENTRADA'
          Visible = False
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 0
    Width = 694
    Height = 65
    Caption = 'Escolha um per'#237'odo '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 6
      Top = 19
      Width = 37
      Height = 16
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 111
      Top = 18
      Width = 32
      Height = 16
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnFiltrar: TSpeedButton
      Left = 451
      Top = 14
      Width = 106
      Height = 43
      Caption = 'Filtrar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF3344444444444443337777777777777F334CCCCCCCCCC
        C43337777777777777F33444881B188444333777F3737337773333308881FF70
        33333337F3373337F3333330888BF770333333373F33F337333333330881F703
        3333333373F73F7333333333308B703333333333373F77333333333333080333
        3333333333777FF333333333301F103333333333377777FF3333333301B1F103
        333333337737777FF3333330881BFB7033333337F3737F77F333333088881F70
        333333F7F3337777FFF334448888888444333777FFFFFFF777F334CCCCCCCCCC
        C43337777777777777F334444444444444333777777777777733}
      NumGlyphs = 2
      OnClick = btnFiltrarClick
    end
    object Label3: TLabel
      Left = 209
      Top = 16
      Width = 116
      Height = 16
      Caption = 'Tipo - (%=TODOS):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnRelatorio: TSpeedButton
      Left = 563
      Top = 13
      Width = 121
      Height = 44
      Cursor = crHandPoint
      Caption = 'Relat'#243'rio'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C05555555555555555552222222222222222222222222222222222224444
        4444444444444444444444444444444444444444444444444422222222222222
        2222222222222222222222555555555555555555C0C0C0C0C0C0C0C0C0C0C0C0
        555555DDDDDDDDDDDDDDDDDD4444444444444444444444444444444444444444
        44CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC44444444444444444444
        4444444444444444444444DDDDDDDDDDDDDDDDDD555555C0C0C0C0C0C0C0C0C0
        555555DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDA4A0
        A0777777777777777777777777777777777777777777A4A0A0DDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0C0C0C0C0C0C0
        555555C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0555555C0C0C0C0C0C0C0C0C0
        555555A4A0A0A4A0A0A4A0A0A4A0A00000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000A4A0A0A4A0A0A4A0A0A4A0A0555555C0C0C0C0C0C0555555
        7777777777777777777777777777774444444444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444444444444444777777777777777777777777777777555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDD777777C0C0C0777777C0C0C0777777DDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777777777777777777777777777555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDD3366FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDA4A0
        A0DDDDDDDDDDDDDDDDDD00BB00DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0555555
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDA4A0A0555555555555555555A4A0A0DDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD555555C0C0C0C0C0C0
        5555555555555555555555555555555555555555555555555555555555555555
        55555555555555DDDDDD555555DDDDDD55555555555555555555555555555555
        5555555555555555555555555555555555555555555555C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0444444555555C0C0C0444444DDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDD444444999999444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0444444777777C0C0C0444444F0FBFFF0FBFFF0FBFFF0FB
        FFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0FBFFF0
        FBFFF0FBFF444444C0C0C0444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0444444777777C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0444444777777C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0444444C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0444444FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C04444444444444444444444444444
        4444444444444444444444444444444444444444444444444444444444444444
        4444444444444444C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0}
      OnClick = btnRelatorioClick
    end
    object DataI: TDateTimePicker
      Left = 6
      Top = 35
      Width = 91
      Height = 24
      Date = 39359.421011643520000000
      Time = 39359.421011643520000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 110
      Top = 35
      Width = 92
      Height = 24
      Date = 39359.421011643520000000
      Time = 39359.421011643520000000
      TabOrder = 1
    end
    object comboTipo: TComboBox
      Left = 211
      Top = 34
      Width = 218
      Height = 24
      Style = csDropDownList
      DropDownCount = 15
      ItemHeight = 16
      TabOrder = 2
      TabStop = False
    end
  end
  object grp2: TGroupBox
    Left = 3
    Top = 537
    Width = 625
    Height = 57
    Caption = 'Totaliza'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbltotqtd: TLabel
      Left = 314
      Top = 32
      Width = 62
      Height = 18
      Alignment = taRightJustify
      Caption = 'lbltotqtd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblTotalValor: TLabel
      Left = 497
      Top = 31
      Width = 93
      Height = 18
      Alignment = taRightJustify
      Caption = 'lblTotalValor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 344
      Top = 11
      Width = 31
      Height = 16
      Caption = 'CXs:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 544
      Top = 11
      Width = 48
      Height = 16
      Caption = 'VALOR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 149
      Top = 13
      Width = 24
      Height = 16
      Caption = 'UN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object lblTotalUN: TLabel
      Left = 112
      Top = 32
      Width = 60
      Height = 18
      Alignment = taRightJustify
      Caption = 'lbltotUN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.DATA_ENTRADA, A.FORNECEDOR,'
      
        'B.REFERENCIA, B.DESCRICAO, B.UNIDADE, B.QTD, B.VLRUNIT, (B.QTD *' +
        ' B.VLRUNIT) AS TOTALITEM'
      'FROM ENTRADAPRODUTO_MASTER A, ENTRADAPRODUTO_DETALHE B'
      
        'WHERE A.ID_PRODUTOENTRADA = B.ID_CONTROLE AND A.DATA_ENTRADA BET' +
        'WEEN :VARDATAI AND :VARDATAF AND B.REFERENCIA LIKE (:VARREF) '
      'ORDER BY B.REFERENCIA, A.DATA_ENTRADA')
    Left = 752
    Top = 16
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
      end
      item
        DataType = ftString
        Name = 'VARREF'
        ParamType = ptUnknown
      end>
    object tbQuery1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".REFERENCIA'
    end
    object tbQuery1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".DESCRICAO'
      Size = 80
    end
    object tbQuery1UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".UNIDADE'
      Size = 10
    end
    object Query1QTD: TFloatField
      FieldName = 'QTD'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".QTD'
    end
    object Query1VLRUNIT: TFloatField
      FieldName = 'VLRUNIT'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".VLRUNIT'
      currency = True
    end
    object Query1DATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = 'SYSEGG."ENTRADAPRODUTO_MASTER.DB".DATA_ENTRADA'
    end
    object tbQuery1FORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'SYSEGG."ENTRADAPRODUTO_MASTER.DB".FORNECEDOR'
      Size = 70
    end
    object tblQuery1TOTALITEM: TFloatField
      FieldName = 'TOTALITEM'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".QTD'
      currency = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 784
    Top = 16
  end
  object qrySoma: TQuery
    DatabaseName = 'SysEgg'
    Left = 952
    Top = 16
  end
end
