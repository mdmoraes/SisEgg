object FrmMovimentacaoCaixa: TFrmMovimentacaoCaixa
  Left = 148
  Top = 187
  Width = 544
  Height = 375
  Caption = 'Movimenta'#231#227'o  Di'#225'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 94
    Top = 2
    Width = 38
    Height = 21
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edDataLancamento: TDBText
    Left = 137
    Top = 2
    Width = 144
    Height = 21
    DataField = 'Data_lancamento'
    DataSource = dsData
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4194432
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edCodLancamento: TDBText
    Left = 8
    Top = 4
    Width = 65
    Height = 17
    DataField = 'Cod_lancamento'
    DataSource = dsData
  end
  object Label2: TLabel
    Left = 13
    Top = 28
    Width = 41
    Height = 21
    Caption = 'Obs.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object dbgcai: TDBGrid
    Left = 8
    Top = 96
    Width = 684
    Height = 375
    DataSource = dtscai
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cod_lancamento'
        Title.Caption = 'CodLanc'
        Width = 3
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Title.Color = clTeal
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_DESC'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clTeal
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 325
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_VALO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Color = clTeal
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_DC11'
        PickList.Strings = (
          'debito'
          'credito')
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Color = clTeal
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAI_LANC'
        Title.Alignment = taCenter
        Title.Caption = 'Lan'#231'ado por:'
        Title.Color = clTeal
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object pnltota: TPanel
    Left = 10
    Top = 475
    Width = 557
    Height = 37
    Color = 15199194
    TabOrder = 1
    Visible = False
    object Label9: TLabel
      Left = 8
      Top = 0
      Width = 59
      Height = 16
      Caption = 'D'#233'bitos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 200
      Top = 2
      Width = 2
      Height = 28
      Shape = bsRightLine
    end
    object Label10: TLabel
      Left = 7
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Cr'#233'ditos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 208
      Top = 0
      Width = 68
      Height = 29
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbltoca: TLabel
      Left = 286
      Top = 2
      Width = 209
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbltode: TLabel
      Left = 72
      Top = 0
      Width = 115
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbltoce: TLabel
      Left = 71
      Top = 16
      Width = 115
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBMemo1: TDBMemo
    Left = 58
    Top = 32
    Width = 475
    Height = 51
    DataField = 'Obs'
    DataSource = dsData
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 466
    Top = 3
    Width = 220
    Height = 25
    DataSource = dsData
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost]
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr'#243'ximo'
      #218'ltimo'
      'Salvar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object btnincl: TBitBtn
    Left = 702
    Top = 157
    Width = 78
    Height = 27
    Hint = 'Inicia a opera'#231#227'o de inclus'#227'o de registro'
    Caption = '&Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btninclClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
  end
  object BtnAlte: TBitBtn
    Left = 702
    Top = 189
    Width = 78
    Height = 27
    Hint = 'Inicia a opera'#231#227'o de altera'#231#227'o de um registro'
    Caption = '&Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BtnAlteClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object BtnExcl: TBitBtn
    Left = 702
    Top = 221
    Width = 78
    Height = 27
    Hint = 'Inicia a opera'#231#227'o de exclus'#227'o de um registro'
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = BtnExclClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
      333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
      03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
      33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
      0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
      3333333337FFF7F3333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object btntcai: TBitBtn
    Left = 702
    Top = 333
    Width = 78
    Height = 27
    Caption = '&Totalizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btntcaiClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000503F20001F20
      503F50503F20503F20503F20503F20503F20503F200000007F7F7F503F20503F
      20503F20503F20503F20005F5000DFFF00DFFF005F50505F50503F20503F2050
      3F2000000000DFFF00DFD0001F20503F20503F20503F20503F20005F5000DFFF
      00DFFF00DFFF00BFD0503F50503F20001F2000DFFF00DFFF00DFFF7F7F7F503F
      20503F20503F20503F20503F20001F2000DFD000DFFF00DFFF00BFD0001F2000
      DFFF00DFFF00DFFF000000503F20503F20503F20503F20503F20503F20503F20
      505F5000BFD000DFFF00DFFF00DFFF00DFFF00DFFF003F20503F20503F207F7F
      7F7F7F7F503F20503F20503F20503F20503F20001F2000DFFF00DFFF00DFFF00
      DFFF000000503F20503F20503F2000FF20007F20503F20503F20503F20503F20
      503F207F7F7F00DFFF00DFFF00DFFF005F50007F7F001F20001F2000BF2000FF
      2000BF20001F20503F20503F20503F20503F20503F2000BFA000DFFF00DFFF00
      DFFF00DFFF00DFFF007F7F00FF2000FF2000FF2000FF20001F20503F20503F20
      503F20503F2000000000DFFF00DFFF00DFFF00DFD000DFFF00DFD0505F50503F
      20009F2000FF20007F20503F20503F20503F20503F20503F20001F20007F7F00
      1F20503F20505F50000000001F2000BF2000FF2000FF20003F20503F20503F20
      503F20503F20503F20005F5000DFFF00DFFF000000503F20001F2000FF2000FF
      2000FF20007F207F7F7F503F20503F20503F20503F20503F5000DFFF00DFFF00
      DFFF00BFA0503F2000BF2000FF20009F20505F50503F20503F20503F20503F20
      503F20503F20505F5000DFFF00DFFF00DFFF007F7F503F20003F2000FF2000DF
      20007F20007F20503F20503F20503F20503F20503F20503F20001F20009FA000
      7F7F505F50503F207F7F7F007F2000FF2000FF2000FF20503F20503F20503F20
      503F20503F20503F20503F20503F20503F20503F20503F20503F20503F2000FF
      20007F20503F20503F20503F20503F20503F20503F20503F20503F20503F2050
      3F20503F20503F20503F20503F207F7F7F7F7F7F503F20503F20}
  end
  object BtnCanc: TBitBtn
    Left = 702
    Top = 254
    Width = 78
    Height = 27
    Hint = 'Cancela a opera'#231#227'o iniciada'
    Caption = '&Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BtnCancClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
      993337777F777F3377F3393999707333993337F77737333337FF993399933333
      399377F3777FF333377F993339903333399377F33737FF33377F993333707333
      399377F333377FF3377F993333101933399377F333777FFF377F993333000993
      399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
      99333773FF777F777733339993707339933333773FF7FFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
  end
  object BtnSair: TBitBtn
    Left = 703
    Top = 426
    Width = 78
    Height = 27
    Hint = 'Retorna ao menu principal'
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BtnSairClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btnRelatorio: TBitBtn
    Left = 702
    Top = 375
    Width = 78
    Height = 25
    Caption = 'Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
      66666666666666FFF66666660000666666600066666666666666F888FFF66666
      00006666600788006666666666F8866888FFF666000066600778008800666666
      688668888888FFF60000660778878800880066668F688688888888F600006688
      877788880080666688866688888888F600006887777788888800666886666688
      888888F6000068F7777F888888880668F6666F888888888F000068F77FF77788
      88880668F66FF6FF8888888F000068FFF779977788880668FFF6F8866688888F
      000068F77AA7778807880668F6688666888F888600006688F77788FF07006666
      88F666886686F8660000666688F8FFFFF06666666688F8F666686F6600006666
      6688FFFFFF0666666666886F666686FF0000666666668FFFFFF0066666666686
      F666F88600006666666668FFF8866666666666686FF886660000666666666688
      8666666666666666888666660000666666666666666666666666666666666666
      0000}
    NumGlyphs = 2
  end
  object btnSalvar: TBitBtn
    Left = 702
    Top = 286
    Width = 78
    Height = 27
    Hint = 'Cancela a opera'#231#227'o iniciada'
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btnSalvarClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777777777FFFFFFFFFFF000077777700000000000777777788888888888F
      00007777778777777777077777778F777777778F00007777778FFFFFFFF70777
      77778F7FFFFFF78F00007777718F777777F707777778FF888888778F00007777
      711FFFFFFFF7077777F88F7FFFFFF78F000077711111777777F70777F8888888
      8888778F00007887711FFFFFFFF7077787788F7FFFFFF78F00007177718F7777
      77F70778F7788F888888778F00007177778FFFFFFFF70778F7778F7FFFFFF78F
      00007177778F777777F70778F7778F888888778F00007887778FFFFFFFF70778
      7F778F7FFFF7778F00007717778F7777FFF7077787F78F888877FF8F00007771
      778FFFFFF000077778778F777778888700007777778FFFFFF7F8777777778F77
      7778F87700007777778FFFFFF787777777778FFFFFF887770000777777888888
      8877777777778888888877770000777777777777777777777777777777777777
      0000}
    NumGlyphs = 2
  end
  object tblcai: TTable
    Active = True
    DatabaseName = 'Debora'
    IndexName = 'idxCod_lancamento'
    MasterFields = 'Cod_lancamento'
    MasterSource = dsData
    TableName = 'CAI.db'
    Left = 712
    Top = 112
    object tblcaiCAI_CODI: TAutoIncField
      FieldName = 'CAI_CODI'
      ReadOnly = True
    end
    object tblcaiCAI_DATA: TDateField
      FieldName = 'CAI_DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object tblcaiCAI_DC11: TStringField
      FieldName = 'CAI_DC11'
      FixedChar = True
      Size = 7
    end
    object tblcaiCAI_DESC: TStringField
      FieldName = 'CAI_DESC'
      Size = 50
    end
    object tblcaiCAI_VALO: TCurrencyField
      FieldName = 'CAI_VALO'
    end
    object tblcaiCAI_LANC: TStringField
      FieldName = 'CAI_LANC'
      Size = 35
    end
    object tblcaiCod_lancamento: TFloatField
      FieldName = 'Cod_lancamento'
    end
  end
  object dtscai: TDataSource
    DataSet = tblcai
    Left = 744
    Top = 112
  end
  object tbData: TTable
    Active = True
    DatabaseName = 'Debora'
    IndexName = 'idxData_lancamento'
    TableName = 'DataLanc.DB'
    Left = 704
    Top = 64
    object tbDataCod_lancamento: TFloatField
      FieldName = 'Cod_lancamento'
    end
    object tbDataData_lancamento: TDateField
      FieldName = 'Data_lancamento'
    end
    object tbDataObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 50
    end
  end
  object dsData: TDataSource
    DataSet = tbData
    Left = 744
    Top = 64
  end
end
