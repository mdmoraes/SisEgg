object FrmConsultaContasReceber: TFrmConsultaContasReceber
  Left = 252
  Top = 54
  Width = 896
  Height = 606
  Caption = 'Consultar a Receber'
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
    Left = 370
    Top = 527
    Width = 127
    Height = 25
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object lblPendenteGeral: TLabel
    Left = 563
    Top = 530
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
  end
  object lblContador: TLabel
    Left = 64
    Top = 528
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
    Left = 8
    Top = 5
    Width = 864
    Height = 90
    Caption = ' Informe o tipo de Pesquisa  '
    TabOrder = 0
    object lbl2: TLabel
      Left = 6
      Top = 26
      Width = 215
      Height = 16
      Caption = 'Escolha um Cliente ou <TODOS>'
      Transparent = True
    end
    object btnPesquisar: TSpeedButton
      Left = 710
      Top = 29
      Width = 106
      Height = 51
      Hint = 'Executa a Pesquisa conforme'#13#10'o Tipo de Escolha'
      Caption = 'Pesquisar'
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnPesquisarClick
    end
    object lblcmbCliente: TLabel
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
      Left = 451
      Top = 22
      Width = 249
      Height = 59
      Caption = 'Situa'#231#227'o'
      Color = clSilver
      ParentColor = False
      TabOrder = 3
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
        Left = 89
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
        Left = 181
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
    object cbbCliente: TComboBox
      Left = 7
      Top = 43
      Width = 392
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnChange = cbbClienteChange
      OnCloseUp = cbbClienteCloseUp
    end
    object btn1: TButton
      Left = 1016
      Top = 40
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 5
      Visible = False
      OnClick = btn1Click
    end
    object btnCalcula: TButton
      Left = 765
      Top = 10
      Width = 75
      Height = 17
      Caption = 'Calcula'
      TabOrder = 4
      Visible = False
      OnClick = btnCalculaClick
    end
    object edCodCliente: TEdit
      Left = 399
      Top = 63
      Width = 49
      Height = 24
      TabOrder = 2
      Visible = False
    end
    object btn2: TButton
      Left = 280
      Top = 13
      Width = 75
      Height = 25
      Caption = 'btn2'
      TabOrder = 1
      Visible = False
      OnClick = btn2Click
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 11
    Top = 104
    Width = 856
    Height = 409
    BorderStyle = bsNone
    DataSource = ds1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDrawDataCell = JvDBGrid1DrawDataCell
    OnDrawColumnCell = JvDBGrid1DrawColumnCell
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
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Alignment = taCenter
        Width = 363
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
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALPARCELA'
        Title.Alignment = taCenter
        Title.Caption = 'VR.PARCELA'
        Width = 104
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
    Left = 656
    Top = 522
    Width = 212
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
    Active = True
    AutoRefresh = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.CLIENTE, A.NUM_NFPEDIDO, A.VALORTOTAL,'
      
        'SUM(B.VALORPARCELA + B.VRJUROS + B.VRMORA + B.TIPODESPESA) AS B.' +
        'TOTALPARCELA, B.DATAPARCELA, B.STATUS'
      'FROM CPRMASTER A, CPRDETALHE B'
      'WHERE A.ID_CPG = B.CONTROLE AND A.CLIENTE LIKE :VARCLIENTE'
      
        'GROUP BY A.CLIENTE, A.NUM_NFPEDIDO, A.VALORTOTAL, B.DATAPARCELA,' +
        ' B.STATUS'
      'ORDER BY A.NUM_NFPEDIDO DESC')
    Macros = <>
    Left = 424
    Top = 21
    ParamData = <
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object tbQuery1NUM_NFPEDIDO: TIntegerField
      FieldName = 'NUM_NFPEDIDO'
    end
    object tbQuery1CLIENTE: TStringField
      DisplayWidth = 56
      FieldName = 'CLIENTE'
      Origin = 'SYSEGG."CPRMaster.DB".Cliente'
      Size = 80
    end
    object Query1DATAPARCELA: TDateField
      DisplayWidth = 16
      FieldName = 'DATAPARCELA'
      Origin = 'SYSEGG."CPRDetalhe.DB".DataParcela'
    end
    object Query1STATUS: TBooleanField
      FieldName = 'STATUS'
      Origin = 'SYSEGG."CPRDETALHE.DB".Status'
    end
    object tbQuery1VALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'SYSEGG."CPRMASTER.DB".ValorTotal'
    end
    object tbQuery1TOTALPARCELA: TFloatField
      FieldName = 'TOTALPARCELA'
      currency = True
    end
  end
  object ds1: TDataSource
    DataSet = Query1
    Left = 392
    Top = 22
  end
  object qryTotPendencia: TQuery
    DatabaseName = 'SysEgg'
    Left = 712
    Top = 21
  end
end
