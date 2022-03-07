object FrmRelacaoClientesporDiaSemana: TFrmRelacaoClientesporDiaSemana
  Left = 152
  Top = 205
  Width = 769
  Height = 448
  Caption = 'Rela'#231#227'o de Clientes por Dia da Semana'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnImprimir: TSpeedButton
    Left = 309
    Top = 21
    Width = 131
    Height = 30
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
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
  object lbltotaldeclientes: TLabel
    Left = 13
    Top = 391
    Width = 146
    Height = 20
    Caption = 'lbltotaldeclientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 2
    Top = 68
    Width = 755
    Height = 308
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cli_RotaSegunda'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaTerca'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaQuarta'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaQuinta'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaSexta'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaSabado'
        Title.Caption = 'ROTA:'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Cli_RotaDomingo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CLI_CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NFANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'N_FANTASIA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'ENDERE'#199'O:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 290
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ENDNUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186':'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'BAIRRO:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ESTADO'
        Title.Alignment = taCenter
        Title.Caption = 'UF:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Title.Alignment = taCenter
        Title.Caption = 'CEP:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE1'
        Title.Alignment = taCenter
        Title.Caption = 'FONE:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CELULAR'
        Title.Alignment = taCenter
        Title.Caption = 'CELULAR:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 4
    Width = 276
    Height = 57
    Caption = 'ESCOLHA O DIA DA SEMANA'
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 10
      Top = 23
      Width = 169
      Height = 22
      Style = csOwnerDrawFixed
      Color = 15134153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnCloseUp = ComboBox1CloseUp
      Items.Strings = (
        'Segunda'
        'Ter'#231'a'
        'Quarta'
        'Quinta'
        'Sexta'
        'S'#225'bado'
        'Domingo')
    end
    object btnFiltrar: TBitBtn
      Left = 185
      Top = 23
      Width = 72
      Height = 22
      Caption = 'Filtrar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnFiltrarClick
    end
  end
  object btnFechar: TBitBtn
    Left = 337
    Top = 383
    Width = 83
    Height = 29
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    Left = 640
    Top = 16
    object Query1CLI_CLIENTE: TStringField
      FieldName = 'CLI_CLIENTE'
      Origin = 'SYSEGG."Clientes.DB".Cli_Cliente'
      Size = 60
    end
    object Query1CLI_NFANTASIA: TStringField
      FieldName = 'CLI_NFANTASIA'
      Origin = 'SYSEGG."Clientes.DB".Cli_NFantasia'
      Size = 60
    end
    object Query1CLI_ENDERECO: TStringField
      FieldName = 'CLI_ENDERECO'
      Origin = 'SYSEGG."Clientes.DB".Cli_Endereco'
      Size = 50
    end
    object Query1CLI_ENDNUMERO: TStringField
      FieldName = 'CLI_ENDNUMERO'
      Origin = 'SYSEGG."Clientes.DB".Cli_EndNumero'
      Size = 10
    end
    object Query1CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'SYSEGG."Clientes.DB".Cli_Bairro'
      Size = 30
    end
    object Query1CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'SYSEGG."Clientes.DB".Cli_Cidade'
      Size = 30
    end
    object Query1CLI_ESTADO: TStringField
      FieldName = 'CLI_ESTADO'
      Origin = 'SYSEGG."Clientes.DB".Cli_Estado'
      Size = 2
    end
    object Query1CLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'SYSEGG."Clientes.DB".Cli_Cep'
      Size = 9
    end
    object Query1CLI_FONE1: TStringField
      FieldName = 'CLI_FONE1'
      Origin = 'SYSEGG."Clientes.DB".Cli_Fone1'
      Size = 15
    end
    object Query1CLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Origin = 'SYSEGG."Clientes.DB".Cli_Celular'
      Size = 15
    end
    object Query1CLI_SEGUNDA: TStringField
      FieldName = 'CLI_SEGUNDA'
      Origin = 'SYSEGG."Clientes.DB".Cli_Segunda'
    end
    object Query1CLI_TERCA: TStringField
      FieldName = 'CLI_TERCA'
      Origin = 'SYSEGG."Clientes.DB".Cli_Terca'
    end
    object Query1CLI_QUARTA: TStringField
      FieldName = 'CLI_QUARTA'
      Origin = 'SYSEGG."Clientes.DB".Cli_Quarta'
    end
    object Query1CLI_QUINTA: TStringField
      FieldName = 'CLI_QUINTA'
      Origin = 'SYSEGG."Clientes.DB".Cli_Quinta'
    end
    object Query1CLI_SEXTA: TStringField
      FieldName = 'CLI_SEXTA'
      Origin = 'SYSEGG."Clientes.DB".Cli_Sexta'
    end
    object Query1CLI_SABADO: TStringField
      FieldName = 'CLI_SABADO'
      Origin = 'SYSEGG."Clientes.DB".Cli_Sabado'
    end
    object Query1CLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Origin = 'SYSEGG."Clientes.DB".Cli_CGC'
      Size = 18
    end
    object Query1CLI_INSCRICAO: TStringField
      FieldName = 'CLI_INSCRICAO'
      Origin = 'SYSEGG."Clientes.DB".Cli_Inscricao'
      Size = 15
    end
    object Query1CLI_CPF: TStringField
      FieldName = 'CLI_CPF'
      Origin = 'SYSEGG."Clientes.DB".Cli_Cpf'
      Size = 15
    end
    object Query1CLI_RG: TStringField
      FieldName = 'CLI_RG'
      Origin = 'SYSEGG."Clientes.DB".Cli_Rg'
      Size = 15
    end
    object Query1Cli_RotaSegunda: TFloatField
      FieldName = 'Cli_RotaSegunda'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaSegunda'
    end
    object Query1Cli_RotaTerca: TFloatField
      FieldName = 'Cli_RotaTerca'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaTerca'
    end
    object Query1Cli_RotaQuarta: TFloatField
      FieldName = 'Cli_RotaQuarta'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaQuarta'
    end
    object Query1Cli_RotaQuinta: TFloatField
      FieldName = 'Cli_RotaQuinta'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaQuinta'
    end
    object Query1Cli_RotaSexta: TFloatField
      FieldName = 'Cli_RotaSexta'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaSexta'
    end
    object Query1Cli_RotaSabado: TFloatField
      FieldName = 'Cli_RotaSabado'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaSabado'
    end
    object Query1Cli_RotaDomingo: TFloatField
      FieldName = 'Cli_RotaDomingo'
      Origin = 'SYSEGG."Clientes.DB".Cli_RotaDomingo'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 568
    Top = 16
  end
end
