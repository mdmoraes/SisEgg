object FrmConsultadeFaturadosPendentes: TFrmConsultadeFaturadosPendentes
  Left = 14
  Top = 30
  Width = 948
  Height = 603
  Caption = 'Consulta de Faturados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnProcurar: TSpeedButton
    Left = 225
    Top = 27
    Width = 101
    Height = 26
    Caption = '&Procurar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
      3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
      00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
      30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
      3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
      303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
      3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
      00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
      33333333F33333338F3333000000000333333333FFFFFFFFF333}
    NumGlyphs = 2
    ParentFont = False
    OnClick = btnProcurarClick
  end
  object btnFiltrar: TSpeedButton
    Left = 237
    Top = 3
    Width = 105
    Height = 20
    Caption = '&Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000010000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333300000333330
      00003FFFFF33333FFFFF30F000333330F0003F7FFF33333F7FFF30F000333330
      F0003F7FFF33333F7FFF30000000300000003FFFFFFF3FFFFFFF300F000000F0
      00003FF7FFFFFF7FFFFF300F000700F000003FF7FFF7FF7FFFFF300F000700F0
      00003FF7FFF7FF7FFFFF330000000000000333FFFFFFFFFFFFF33330F00030F0
      0033333F7FFF3F7FFF333330000030000033333FFFFF3FFFFF33333300033300
      03333333FFF333FFF33333330F03330F03333333F7F333F7F333333300033300
      03333333FFF333FFF33333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    Visible = False
    OnClick = btnFiltrarClick
  end
  object btnFechar: TSpeedButton
    Left = 663
    Top = 432
    Width = 90
    Height = 26
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object btnRelatorio: TSpeedButton
    Left = 12
    Top = 432
    Width = 104
    Height = 26
    Caption = 'Relat'#243'rio'
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
    OnClick = btnRelatorioClick
  end
  object Label4: TLabel
    Left = 225
    Top = 60
    Width = 478
    Height = 16
    Caption = 
      'Nota: Click Duplo na Linha Selecionada, vai para o Pedido corres' +
      'pondente.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelPednumero: TLabel
    Left = 359
    Top = 39
    Width = 104
    Height = 16
    Caption = 'LabelPednumero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 79
    Width = 749
    Height = 346
    Color = clWhite
    DataSource = DataSource1
    FixedColor = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'PED_E'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' PED.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_DATA'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_FORPAGA'
        Title.Alignment = taCenter
        Title.Caption = 'F.PAGT'#186':'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_VRFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'VR.PED.:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 91
        Visible = True
      end
      item
        Color = clGray
        Expanded = False
        FieldName = 'VALOR1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
        Title.Alignment = taCenter
        Title.Caption = 'VR1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO1'
        Title.Alignment = taCenter
        Title.Caption = 'VENC_1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 81
        Visible = True
      end
      item
        Color = 16769444
        Expanded = False
        FieldName = 'DTPGT1'
        Title.Alignment = taCenter
        Title.Caption = '1'#186' PGT'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = clGray
        Expanded = False
        FieldName = 'VALOR2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = [fsItalic]
        Title.Alignment = taCenter
        Title.Caption = 'VR2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO2'
        Title.Alignment = taCenter
        Title.Caption = 'VENC_2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 86
        Visible = True
      end
      item
        Color = 16769444
        Expanded = False
        FieldName = 'DTPGT2'
        Title.Alignment = taCenter
        Title.Caption = '2'#186' PGT'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = 8454143
        Expanded = False
        FieldName = 'TotPend'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        Title.Alignment = taCenter
        Title.Caption = 'Pend'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clRed
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold, fsUnderline]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PED_NUMERO'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 151
    Top = 106
    Width = 393
    Height = 297
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 5
      Top = 2
      Width = 142
      Height = 13
      Caption = 'Digite o Nome do Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnTodos: TSpeedButton
      Left = 250
      Top = 9
      Width = 131
      Height = 28
      Caption = 'TODOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      ParentFont = False
      OnClick = btnTodosClick
    end
    object DBGrid2: TDBGrid
      Left = 5
      Top = 42
      Width = 380
      Height = 225
      DataSource = DmDados.DsClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'Cli_Cliente'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'CLIENTE:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsUnderline]
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 5
      Top = 17
      Width = 187
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
      OnClick = Edit1Click
    end
    object btnSair: TBitBtn
      Left = 155
      Top = 269
      Width = 79
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnSairClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 2
    Width = 216
    Height = 67
    Caption = 'Escolha um Per'#237'odo:  '
    Color = 14540253
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 38
      Top = 21
      Width = 31
      Height = 16
      Caption = 'In'#237'cio'
    end
    object Label3: TLabel
      Left = 146
      Top = 21
      Width = 22
      Height = 16
      Caption = 'Fim'
    end
    object DataI: TDateTimePicker
      Left = 9
      Top = 37
      Width = 93
      Height = 24
      Date = 39389.587629837970000000
      Time = 39389.587629837970000000
      TabOrder = 0
    end
    object DataF: TDateTimePicker
      Left = 113
      Top = 37
      Width = 93
      Height = 24
      Date = 39389.587629837970000000
      Time = 39389.587629837970000000
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 206
    Top = 430
    Width = 369
    Height = 38
    BevelInner = bvLowered
    TabOrder = 3
    object edTotal: TLabel
      Left = 176
      Top = 8
      Width = 82
      Height = 24
      Caption = 'R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 6
      Top = 8
      Width = 160
      Height = 24
      Caption = 'Total Pendente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object btnAtualiza: TButton
    Left = 516
    Top = 11
    Width = 50
    Height = 25
    Caption = 'Atualiz.'
    TabOrder = 4
    Visible = False
    OnClick = btnAtualizaClick
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PED_NUMERO, PED_E, PED_DATA, PED_CLIENTE, PED_FORPAGA,'
      'PED_VRFINAL, VALOR1, VALOR2, VENCIMENTO1, VENCIMENTO2,'
      'PAGO1, PAGO2, DTPGT1, DTPGT2'
      'FROM PEDIDOS'
      
        'WHERE PED_CLIENTE <> '#39'VENDA BALC'#195'O'#39' AND Ped_ForPaga <> '#39#193' VISTA'#39 +
        ' and'
      
        'PED_DATA BETWEEN :VARDATAI AND :VARDATAF AND PED_CLIENTE LIKE(:V' +
        'ARCLIENTE)'
      'ORDER BY PED_DATA DESC'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 592
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
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object Query1PED_DATA: TDateField
      FieldName = 'PED_DATA'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Data'
    end
    object Query1PED_CLIENTE: TStringField
      FieldName = 'PED_CLIENTE'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Cliente'
      Size = 50
    end
    object Query1PED_FORPAGA: TStringField
      FieldName = 'PED_FORPAGA'
      Origin = 'SYSEGG."Pedidos.DB".Ped_ForPaga'
    end
    object Query1PED_VRFINAL: TCurrencyField
      FieldName = 'PED_VRFINAL'
      Origin = 'SYSEGG."Pedidos.DB".Ped_VrFinal'
    end
    object Query1VENCIMENTO1: TDateField
      FieldName = 'VENCIMENTO1'
      Origin = 'SYSEGG."Pedidos.DB".Vencimento1'
    end
    object Query1VENCIMENTO2: TDateField
      FieldName = 'VENCIMENTO2'
      Origin = 'SYSEGG."Pedidos.DB".Vencimento2'
    end
    object Query1VALOR1: TCurrencyField
      FieldName = 'VALOR1'
      Origin = 'SYSEGG."Pedidos.DB".Valor1'
    end
    object Query1VALOR2: TCurrencyField
      FieldName = 'VALOR2'
      Origin = 'SYSEGG."Pedidos.DB".Valor2'
    end
    object Query1PAGO1: TBooleanField
      FieldName = 'PAGO1'
      Origin = 'SYSEGG."Pedidos.DB".Pago1'
      DisplayValues = 'Sim;N'#227'o'
    end
    object Query1PAGO2: TBooleanField
      FieldName = 'PAGO2'
      Origin = 'SYSEGG."Pedidos.DB".Pago2'
      DisplayValues = 'Sim;N'#227'o'
    end
    object Query1TotPend: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'TotPend'
      Calculated = True
    end
    object Query1DTPGT1: TDateField
      FieldName = 'DTPGT1'
      Origin = 'SYSEGG."Pedidos.DB".DtPgt1'
    end
    object Query1DTPGT2: TDateField
      FieldName = 'DTPGT2'
      Origin = 'SYSEGG."Pedidos.DB".DtPgt2'
    end
    object Query1PED_E: TIntegerField
      FieldName = 'PED_E'
      Origin = 'SYSEGG."Pedidos.DB".Ped_E'
    end
    object Query1PED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'SYSEGG."Pedidos.DB".Ped_Numero'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnDataChange = DataSource1DataChange
    Left = 656
    Top = 16
  end
  object ActionList1: TActionList
    Left = 444
    Top = 4
    object TotalizaPendencias: TAction
      Caption = 'TotalizaPendencias'
      OnExecute = TotalizaPendenciasExecute
    end
  end
end
