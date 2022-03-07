object FrmCadastrodeDespesas: TFrmCadastrodeDespesas
  Left = 97
  Top = 83
  Width = 795
  Height = 639
  Caption = 'Cadastro de Despesas'
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
    Left = 8
    Top = 4
    Width = 713
    Height = 16
    Caption = 
      'CADASTRE TODOS OS TIPOS DE DESPESAS: (SAL'#193'RIOS, IMPOSTOS, COMBUS' +
      'T'#205'VEL, MULTAS, PED'#193'GIO, ETC..)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 466
    Top = 33
    Width = 47
    Height = 20
    Caption = 'Ano:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic, fsUnderline]
    ParentFont = False
  end
  object btnFechar: TBitBtn
    Left = 698
    Top = 476
    Width = 75
    Height = 25
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnFecharClick
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 24
    Width = 371
    Height = 65
    Caption = 'Defina um per'#237'odo p/ Emiss'#227'o de Relat'#243'rio'
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 21
      Width = 30
      Height = 13
      Caption = 'In'#237'cio:'
    end
    object Label3: TLabel
      Left = 127
      Top = 21
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object btnImprimir: TSpeedButton
      Left = 232
      Top = 34
      Width = 113
      Height = 24
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      OnClick = btnImprimirClick
    end
    object DataI: TDateTimePicker
      Left = 6
      Top = 36
      Width = 87
      Height = 21
      Date = 39389.472970011570000000
      Time = 39389.472970011570000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 126
      Top = 36
      Width = 87
      Height = 21
      Date = 39389.472970011570000000
      Time = 39389.472970011570000000
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 92
    Width = 774
    Height = 28
    ActivePage = TbJaneiro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = PageControl1Change
    object TbJaneiro: TTabSheet
      Caption = 'Janeiro'
    end
    object tbFevereiro: TTabSheet
      Caption = 'Fevereiro'
      ImageIndex = 1
    end
    object tbMarco: TTabSheet
      Caption = 'Mar'#231'o'
      ImageIndex = 2
    end
    object tbAbril: TTabSheet
      Caption = 'Abril'
      ImageIndex = 3
    end
    object tbmaio: TTabSheet
      Caption = 'Maio'
      ImageIndex = 4
    end
    object tbJunho: TTabSheet
      Caption = 'Junho'
      ImageIndex = 5
    end
    object tbJulho: TTabSheet
      Caption = 'Julho'
      ImageIndex = 6
    end
    object tbAgosto: TTabSheet
      Caption = 'Agosto'
      ImageIndex = 7
    end
    object tbsetembro: TTabSheet
      Caption = 'Setembro'
      ImageIndex = 8
    end
    object tbOutubro: TTabSheet
      Caption = 'Outubro'
      ImageIndex = 9
    end
    object tbNovembro: TTabSheet
      Caption = 'Novembro'
      ImageIndex = 10
    end
    object tbDezembro: TTabSheet
      Caption = 'Dezembro'
      ImageIndex = 11
    end
  end
  object edAno: TEdit
    Left = 464
    Top = 54
    Width = 64
    Height = 27
    AutoSelect = False
    AutoSize = False
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Color = 16767628
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    OEMConvert = True
    ParentFont = False
    TabOrder = 3
    Text = '2.008'
    OnChange = edAnoChange
  end
  object UpDown2: TUpDown
    Left = 528
    Top = 54
    Width = 32
    Height = 27
    Associate = edAno
    Max = 3000
    Position = 2008
    TabOrder = 4
  end
  object edsoAno: TEdit
    Left = 382
    Top = 53
    Width = 70
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object edMes: TEdit
    Left = 384
    Top = 26
    Width = 46
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '01'
    Visible = False
    OnChange = edMesChange
  end
  object Panel1: TPanel
    Left = 4
    Top = 123
    Width = 780
    Height = 347
    BevelInner = bvLowered
    TabOrder = 6
    object DBGrid1: TDBGrid
      Left = 5
      Top = 9
      Width = 763
      Height = 328
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Cod_Desp'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 472
          Visible = True
        end
        item
          Alignment = taCenter
          Color = 16767628
          Expanded = False
          FieldName = 'Data_Desp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = [fsItalic]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 134
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 210
    Top = 473
    Width = 369
    Height = 38
    BevelInner = bvLowered
    TabOrder = 7
    object edTotal: TLabel
      Left = 154
      Top = 8
      Width = 82
      Height = 24
      Caption = 'edTotal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 39
      Top = 8
      Width = 64
      Height = 24
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object editTotal: TEdit
    Left = 47
    Top = 480
    Width = 129
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 9
    Visible = False
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 672
    Top = 32
  end
  object Table1: TTable
    Active = True
    BeforePost = Table1BeforePost
    AfterPost = Table1AfterPost
    AfterDelete = Table1AfterDelete
    DatabaseName = 'SysEgg'
    Filtered = True
    OnFilterRecord = Table1FilterRecord
    IndexName = 'IData_Desp'
    TableName = 'Despesas.DB'
    Left = 720
    Top = 32
    object Table1Cod_Desp: TAutoIncField
      FieldName = 'Cod_Desp'
      ReadOnly = True
    end
    object Table1Data_Desp: TDateField
      FieldName = 'Data_Desp'
      OnValidate = Table1Data_DespValidate
      EditMask = '!99/99/0000;1;_'
    end
    object Table1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object Table1Valor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object ActionList1: TActionList
    Left = 584
    Top = 40
    object TotalizaDespesas: TAction
      Caption = 'TotalizaDespesas'
      OnExecute = TotalizaDespesasExecute
    end
  end
end
