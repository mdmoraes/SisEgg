object FrmConsultaContasPagar: TFrmConsultaContasPagar
  Left = 106
  Top = 42
  Width = 995
  Height = 637
  Caption = 'Consulta Contas a Pagar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object btnFechar: TSpeedButton
    Left = 398
    Top = 551
    Width = 127
    Height = 28
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object lblPendenteGeral: TLabel
    Left = 580
    Top = 554
    Width = 90
    Height = 18
    Alignment = taRightJustify
    Caption = 'Pend'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblContador: TLabel
    Left = 68
    Top = 548
    Width = 99
    Height = 20
    Caption = 'lblContador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object grp1: TGroupBox
    Left = 9
    Top = 11
    Width = 911
    Height = 92
    Caption = ' Informe o tipo de Pesquisa  '
    TabOrder = 1
    object lbl2: TLabel
      Left = 6
      Top = 26
      Width = 244
      Height = 16
      Caption = 'Escolha um Fornecedor ou <TODOS>'
      Transparent = True
    end
    object btnPesquisar: TSpeedButton
      Left = 693
      Top = 29
      Width = 106
      Height = 49
      Hint = 'Executa a Pesquisa conforme'#13#10'o Tipo de Escolha'
      Caption = 'Pesquisar'
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnPesquisarClick
    end
    object lblcmbFornecedor: TLabel
      Left = 9
      Top = 69
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object grp2: TGroupBox
      Left = 397
      Top = 24
      Width = 273
      Height = 59
      Caption = 'Situa'#231#227'o'
      Color = clSilver
      ParentColor = False
      TabOrder = 1
      object rbQuitado: TJvRadioButton
        Left = 8
        Top = 28
        Width = 72
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Quitado'
        TabOrder = 0
        OnClick = rbQuitadoClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = []
        LinkedControls = <>
      end
      object rbPendente: TJvRadioButton
        Left = 102
        Top = 28
        Width = 83
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Pendente'
        TabOrder = 1
        OnClick = rbPendenteClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = []
        LinkedControls = <>
      end
      object rbTodos: TJvRadioButton
        Left = 208
        Top = 29
        Width = 54
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Geral'
        TabOrder = 2
        OnClick = rbTodosClick
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -13
        HotTrackFont.Name = 'Verdana'
        HotTrackFont.Style = []
        LinkedControls = <>
      end
    end
    object cbbFornecedor: TComboBox
      Left = 7
      Top = 43
      Width = 377
      Height = 24
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 18
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnChange = cbbFornecedorChange
      OnClick = cbbFornecedorClick
    end
    object btn1: TButton
      Left = 1016
      Top = 40
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 3
      OnClick = btn1Click
    end
    object btnCalcula: TButton
      Left = 808
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Calcula'
      TabOrder = 2
      Visible = False
      OnClick = btnCalculaClick
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 5
    Top = 112
    Width = 911
    Height = 419
    BorderStyle = bsNone
    DataSource = ds1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = JvDBGrid1DblClick
    AlternateRowColor = clMoneyGreen
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'NUM_NFPEDIDO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' PEDIDO'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORNECEDOR'
        Title.Alignment = taCenter
        Width = 354
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATAPARCELA'
        Title.Alignment = taCenter
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALPARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'VR.PARCELA'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'QUITADO'
        Width = 67
        Visible = True
      end>
  end
  object edtPendencia: TJvMaskEdit
    Left = 673
    Top = 546
    Width = 246
    Height = 35
    Alignment = taRightJustify
    AutoSize = False
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Query1: TJvQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.FORNECEDOR, A.NUM_NFPEDIDO, A.VALORTOTAL,'
      
        'SUM(B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS B.' +
        'TOTALPARCELA, B.DATAPARCELA, B.STATUS'
      'FROM CPGMASTER A, CPGDETALHE B'
      'WHERE A.ID_CPG = B.CONTROLE AND A.FORNECEDOR LIKE :VARFORNECEDOR'
      
        'GROUP BY A.FORNECEDOR, A.NUM_NFPEDIDO, A.VALORTOTAL, B.DATAPARCE' +
        'LA, B.STATUS'
      'ORDER BY A.NUM_NFPEDIDO, B.DATAPARCELA')
    Macros = <>
    Left = 504
    Top = 21
    ParamData = <
      item
        DataType = ftString
        Name = 'VARFORNECEDOR'
        ParamType = ptUnknown
      end>
    object tbQuery1FORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 80
    end
    object tbQuery1NUM_NFPEDIDO: TStringField
      FieldName = 'NUM_NFPEDIDO'
      Size = 25
    end
    object tbQuery1VALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
    end
    object tbQuery1TOTALPARCELA: TFloatField
      FieldName = 'TOTALPARCELA'
      currency = True
    end
    object Query1DATAPARCELA: TDateField
      FieldName = 'DATAPARCELA'
    end
    object Query1STATUS: TBooleanField
      FieldName = 'STATUS'
    end
  end
  object ds1: TDataSource
    DataSet = Query1
    Left = 368
    Top = 30
  end
  object qryTotPendencia: TQuery
    DatabaseName = 'SysEgg'
    Left = 864
    Top = 29
  end
end
