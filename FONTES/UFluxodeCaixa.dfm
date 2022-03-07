object FrmFluxodeCaixa: TFrmFluxodeCaixa
  Left = 108
  Top = 0
  Width = 1080
  Height = 718
  Caption = 'Fluxo de Caixa'
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
  object btnSaldo: TSpeedButton
    Left = 818
    Top = 17
    Width = 23
    Height = 17
    Visible = False
    OnClick = btnSaldoClick
  end
  object btnRelatorio: TSpeedButton
    Left = 706
    Top = 9
    Width = 105
    Height = 47
    Caption = 'Relat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76060000424D7606000000000000360400002800000018000000180000000100
      0800000000004002000000000000000000000001000000010000FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
      FE00EF00EF00DF00DF00D100D100C400C400B800B800AD00AD00990099007E02
      7E0061076100470C4700331033001F101F00101010000D0D0D000A0A0A000B0B
      0B000C0C0C000D0D0D000F0F0F00101010001212120014141400171717001B1B
      1B001D1D1D002020200023232300272727002A2A2A002E2E2E00303030003131
      3100323232003333330034343400353535003636360037373700383838003939
      39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E0041404000444242004744
      4400494646004C4748004E494A00504A4B00524B4C00534C4D00554D4E00564E
      4F00584F51005B5253005E5556006157590063595A00645A5C00655B5C00675C
      5D00695D5D006A5E5D006A5E5D00675C5B0064595900605657005A525300564E
      5000514B4C004D47480048434400433F3F003E3B3C003B393900383737003837
      3700383737003B3939003F3C3C00413D3E00433F3F00474243004B464600514C
      4D00565051005A5556005E595A00635D5E006660610067626300696465006A65
      66006B6767006B6768006B6869006C6969006C6969006C696A006C6A6A006C69
      6A006C6A6A006D6A6A006E6A6B00726D6E00767172007A7575007D7879007F7A
      7B00817C7D00827E7F00837F80008581820087838400898586008B8788008C88
      89008E898A008E8A8A008F8B8C00918D8D00938F9000969293009A9697009D99
      9A009F9C9D00A09D9E00A19E9E00A19E9F00A29F9F00A2A0A000A3A1A100A5A2
      A200A6A3A400A7A5A500A8A6A600A9A7A700AAA8A800AAA9A900ABAAAA00ADAB
      AB00AFAEAE00B1B0B000B4B2B200B5B4B400B7B6B600B9B8B800BCBBBB00BFBE
      BE00C1C1C100C4C4C400C7C6C600C8C7C700C9C9C900CACACA00CBCACA00CCCB
      CB00CDCCCD00CECDCD00CFCECE00CFCFCF00D0CFCF00D0D0D000D1D0D000D2D1
      D100D3D2D200D4D3D300D7D6D600DAD9D900DDDCDC00E1E0E000E5E4E400E7E6
      E500E9E8E700EBEAE900EDEBEA00EEECEB00F0EEED00F1EFEE00F3F1F000F4F2
      F100F6F3F200F6F3F000F8F3EE00F9F3EC00FBF2E900FCF1E600FDEFE200FDED
      DC00FEEBD800FEEAD500FEE8D200FEE6CE00FEE3C900FEE1C400FEDFC000FEDE
      BE00FEDCBB00FEDBB800FED9B400FDD7B200FDD5AF00FDD4AD00FDD2AA00FCD0
      A700FDD0A500FDCEA200FDCD9F00FDCB9D00FDCA9900FDC89600FBC59300F9C2
      9000F7BF8D00F3BC8D00ECB58B00E5AE8800DCA48500D49D8300CD958100C991
      8000C68D8000C38A8000BF868000BD838000BC828000BC828000BC828000BC82
      8000BC828000BC828000BB828000BA827F00B7817C00B3817A000C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C7A7A7A0C0C0C0C7A7A0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C7AA28F8B7A7A837ABEB67A7A7A0C0C0C0C0C0C0C0C0C0C7ABB
      AB969696856CA8B4B5B9BBAE7A7A7A0C0C0C0C0C0C7ABCBFA99696966E202028
      6D9FAFAFAFAFAA7A7A7A0C0C7ABBBBB58B8383837A2720202020286D9FAFAFA6
      A67A0C7AAFAFAC8CA6A5969692908E846A2E2020202870837A0C0C7AAFAB8CBC
      CACAC8BFADA59A9696928E712C2029907A0C0C7AAB8CC1CACACAC8C5C3C1C0BB
      AAA2969690847A927A0C0C7A8CC6CACACACABB828DA9BEBFBEBDB9AAA396917A
      7A0C0C7AB1CACACACAB1A2A191817C859CACBCB9B4ADA89A7A0C0C0C7A7AB1C4
      9B527C8090A0A39E8F80828DA9B1AFAA7A0C0C0C0C0C7A7AFAFF544C57545485
      92A2A396AFB1A67A0C0C0C0C0C0C0C0CFADFE3E6EFFF724B567088B2B59A7A0C
      0C0C0C0C0C0C0C0CFADCE0E3E6E8EAEAEAFA7A7A7A7A0C0C0C0C0C0C0C0C0C0C
      FADADDE0E4E7E8EAEAFA0C0C0C0C0C0C0C0C0C0C0C0C0CFAD5D7DBDEE2E4E7E9
      FA0C0C0C0C0C0C0C0C0C0C0C0C0C0CFAD3D6D8DBDFE2E5E7FA0C0C0C0C0C0C0C
      0C0C0C0C0C0C0CFAD1D4D6D8DBDFE2E9FA0C0C0C0C0C0C0C0C0C0C0C0C0CFACC
      D0D1D5D6D9DCDFFA0C0C0C0C0C0C0C0C0C0C0C0C0CFACACACDD0D2D5D7DAE1FA
      0C0C0C0C0C0C0C0C0C0C0C0C0CFAFAFAFACDD0D2D5D8FA0C0C0C0C0C0C0C0C0C
      0C0C0C0C0C0C0C0C0CFAFAFAFAFA0C0C0C0C0C0C0C0C0C0C0C0C}
    ParentFont = False
    OnClick = btnRelatorioClick
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 3
    Width = 221
    Height = 52
    Caption = 'Escolha um Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 102
      Top = 24
      Width = 9
      Height = 20
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DataI: TDateTimePicker
      Left = 5
      Top = 24
      Width = 92
      Height = 24
      Date = 38908.026379664290000000
      Time = 38908.026379664290000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 118
      Top = 24
      Width = 95
      Height = 24
      Date = 38908.026601736100000000
      Time = 38908.026601736100000000
      TabOrder = 1
    end
  end
  object btnFechar: TBitBtn
    Left = 418
    Top = 638
    Width = 81
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object GroupBox2: TGroupBox
    Left = 243
    Top = 2
    Width = 454
    Height = 57
    Caption = 'Gerar Consultas'
    Color = 15724527
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object btnVendas: TSpeedButton
      Left = 6
      Top = 22
      Width = 99
      Height = 28
      Caption = 'Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = btnVendasClick
    end
    object btnContasReceber: TSpeedButton
      Left = 227
      Top = 21
      Width = 116
      Height = 29
      Caption = 'Contas a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = btnContasReceberClick
    end
    object btnContasPagar: TSpeedButton
      Left = 109
      Top = 22
      Width = 113
      Height = 28
      Caption = 'Contas a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = btnContasPagarClick
    end
    object btnPerdas: TSpeedButton
      Left = 348
      Top = 20
      Width = 94
      Height = 30
      Caption = 'Perdas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Sans'
      Font.Style = [fsItalic]
      ParentFont = False
      OnClick = btnPerdasClick
    end
  end
  object pgc1: TPageControl
    Left = 10
    Top = 62
    Width = 865
    Height = 457
    ActivePage = tsContasReceber
    TabOrder = 2
    object tsVendas: TTabSheet
      Caption = 'Vendas'
      object DBGridEh1: TDBGridEh
        Left = 5
        Top = 3
        Width = 841
        Height = 419
        DataSource = DataSource1
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        OddRowColor = clInactiveCaption
        ReadOnly = True
        SumList.Active = True
        SumList.ExternalRecalc = True
        SumList.VirtualRecords = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PED_CLIENTE'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'CLIENTE'
            Width = 510
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 191
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tsContasPagar: TTabSheet
      Caption = 'Contas a Pagar'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 2
        Top = 3
        Width = 852
        Height = 421
        DataSource = dsContasPagar
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        OddRowColor = clInactiveCaption
        ReadOnly = True
        SumList.Active = True
        SumList.ExternalRecalc = True
        SumList.VirtualRecords = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'FORNECEDOR'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 450
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 152
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tsContasReceber: TTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 5
        Top = 3
        Width = 841
        Height = 416
        DataSource = dsContasReceber
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        OddRowColor = clInactiveCaption
        ReadOnly = True
        SumList.Active = True
        SumList.ExternalRecalc = True
        SumList.VirtualRecords = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'CLIENTE'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 589
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 170
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tsPerdas: TTabSheet
      Caption = 'Perdas'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 2
        Top = 2
        Width = 841
        Height = 419
        DataSource = dsPerdas
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh]
        OddRowColor = clInactiveCaption
        ReadOnly = True
        SumList.Active = True
        SumList.ExternalRecalc = True
        SumList.VirtualRecords = True
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'REF'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 168
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'DESCRICAO'
            Footer.FieldName = 'TOTAL'
            Footers = <>
            Title.Alignment = taCenter
            Width = 474
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            Width = 160
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object grp1: TGroupBox
    Left = 7
    Top = 527
    Width = 869
    Height = 105
    Caption = 'Totaliza'#231#227'o:'
    Color = 10935214
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsItalic, fsUnderline]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object lbl2: TLabel
      Left = 5
      Top = 34
      Width = 61
      Height = 18
      Caption = 'Vendas:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 176
      Top = 34
      Width = 114
      Height = 18
      Caption = 'Contas a Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 696
      Top = 33
      Width = 48
      Height = 18
      Caption = 'Saldo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 349
      Top = 34
      Width = 132
      Height = 18
      Caption = 'Contas a Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 522
      Top = 34
      Width = 50
      Height = 18
      Caption = 'Perdas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edEntradas: TJvMaskEdit
      Left = 6
      Top = 53
      Width = 167
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object edContasPagar: TJvMaskEdit
      Left = 177
      Top = 53
      Width = 167
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object edContasReceber: TJvMaskEdit
      Left = 350
      Top = 53
      Width = 167
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
    object edSaldo: TJvMaskEdit
      Left = 695
      Top = 53
      Width = 167
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '0'
    end
    object edPerdas: TJvMaskEdit
      Left = 523
      Top = 53
      Width = 167
      Height = 26
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
  end
  object qryVendas: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PED_CLIENTE, SUM(PED_VRFINAL) AS TOTAL'
      'FROM PEDIDOS'
      'WHERE PED_DATA between :VarDataI and :VarDataF'
      'GROUP BY PED_CLIENTE '
      'ORDER BY TOTAL DESC'
      '')
    Left = 892
    Top = 8
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
    object tbQuery1PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'SYSEGG."PEDIDOS.DB".Ped_Cliente'
      Size = 50
    end
    object qryVendasTOTAL: TCurrencyField
      FieldName = 'TOTAL'
      Origin = 'SYSEGG."PEDIDOS.DB".Ped_VrFinal'
    end
  end
  object DataSource1: TDataSource
    DataSet = qryVendas
    Left = 860
    Top = 8
  end
  object qryContasPagar: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.FORNECEDOR, SUM(B.TOTALPARCELA) AS TOTAL'
      'FROM CPGMASTER A, CPGDETALHE B'
      
        'WHERE A.ID_CPG = B.CONTROLE and DATAPARCELA between :VarDataI an' +
        'd :VarDataF'
      'GROUP BY A.FORNECEDOR'
      'ORDER BY TOTAL DESC')
    Left = 893
    Top = 40
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
    object tbContasPagarFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'SYSEGG."CPGMaster.DB".Fornecedor'
      Size = 80
    end
    object tbContasPagarTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SYSEGG."CPGDetalhe.DB".TotalParcela'
      currency = True
    end
  end
  object dsContasPagar: TDataSource
    DataSet = qryContasPagar
    Left = 860
    Top = 40
  end
  object dsContasReceber: TDataSource
    DataSet = qryContasReceber
    Left = 932
    Top = 8
  end
  object qryContasReceber: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT A.CLIENTE, SUM(A.VALORTOTAL) AS TOTAL'
      'FROM CPRMASTER A, CPRDETALHE B'
      
        'WHERE A.ID_CPG = B.CONTROLE and DATAPARCELA between :VarDataI an' +
        'd :VarDataF'
      'GROUP BY A.CLIENTE'
      'ORDER BY TOTAL DESC')
    Left = 965
    Top = 8
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
    object tb2: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SYSEGG."CPGDetalhe.DB".TotalParcela'
      currency = True
    end
    object tbContasReceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'SYSEGG."CPRMaster.DB".Cliente'
      Size = 80
    end
  end
  object dsPerdas: TDataSource
    DataSet = QueryPerdas
    Left = 932
    Top = 40
  end
  object QueryPerdas: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT B.REF, B.DESCRICAO, SUM(B.VALOR) AS TOTAL'
      'FROM PERDAMASTER A, PERDADETALHE B'
      
        'WHERE A.ID = B.CONTROLE AND A.DATA BETWEEN :VARDATAI AND :VARDAT' +
        'AF'
      'GROUP BY B.REF, B.DESCRICAO'
      'ORDER BY B.REF')
    Left = 965
    Top = 40
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
    object tblQueryPerdasREF: TStringField
      FieldName = 'REF'
      Origin = 'SYSEGG."PerdaDetalhe.DB".Ref'
      Size = 15
    end
    object tblQueryPerdasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SYSEGG."PerdaDetalhe.DB".Descricao'
      Size = 80
    end
    object tblQueryPerdasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'SYSEGG."PerdaDetalhe.DB".Valor'
      currency = True
    end
  end
end
