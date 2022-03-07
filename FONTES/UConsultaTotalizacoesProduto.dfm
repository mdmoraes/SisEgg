object FrmConsultaTotalProdutos: TFrmConsultaTotalProdutos
  Left = -14
  Top = 54
  Width = 797
  Height = 493
  Caption = 'Consulta - Totaliza'#231#245'es de Produtos'
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
  object btnRelatorio: TSpeedButton
    Left = 3
    Top = 435
    Width = 107
    Height = 28
    Caption = '&Relat'#243'rio'
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
  end
  object SpeedButton1: TSpeedButton
    Left = 677
    Top = 436
    Width = 107
    Height = 28
    Caption = '&Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 1
    Width = 783
    Height = 389
    BorderStyle = bsNone
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Sans'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Lucida Sans'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_REF'
        Title.Alignment = taCenter
        Title.Caption = 'REF.:'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'PRO_DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O:'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRO_QTDEATUAL'
        Title.Alignment = taCenter
        Title.Caption = 'QTD.:'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PCUSTO'
        Title.Alignment = taCenter
        Title.Caption = 'VR. CUSTO:'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PVENDA'
        Title.Alignment = taCenter
        Title.Caption = 'VR. VENDA:'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LUCRO'
        Title.Alignment = taCenter
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 81
        Visible = True
      end
      item
        Color = 12582911
        Expanded = False
        FieldName = 'PORCENT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Lucida Sans'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = '%'
        Title.Color = clGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 3
    Top = 395
    Width = 781
    Height = 38
    TabOrder = 1
    object Label1: TLabel
      Left = 21
      Top = 12
      Width = 68
      Height = 14
      Caption = 'TOT. CUSTO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 253
      Top = 13
      Width = 67
      Height = 14
      Caption = 'TOT. VENDA:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 525
      Top = 13
      Width = 68
      Height = 14
      Caption = 'TOT. LUCRO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Lucida Sans'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtotcusto: TEdit
      Left = 100
      Top = 8
      Width = 139
      Height = 21
      BevelInner = bvLowered
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edtotvenda: TEdit
      Left = 330
      Top = 8
      Width = 142
      Height = 21
      BevelInner = bvLowered
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object edtotlucro: TEdit
      Left = 604
      Top = 8
      Width = 139
      Height = 21
      BevelInner = bvLowered
      BorderStyle = bsNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = QryGerProduto
    Left = 434
    Top = 2
  end
  object QryGerProduto: TQuery
    Active = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT PRO_REF, PRO_DESCRICAO, PRO_QTDEATUAL,'
      '(PRO_QTDEATUAL*PRO_PRECOCUSTO) AS PCUSTO,'
      '(PRO_QTDEATUAL*PRO_PRECOVENDA) AS PVENDA,'
      '(PRO_QTDEATUAL*PRO_LUCRO) AS LUCRO,'
      
        '((PRO_QTDEATUAL*PRO_PRECOVENDA) / (PRO_QTDEATUAL*PRO_PRECOCUSTO)' +
        ' *100 -100) AS PORCENT'
      'FROM PRODUTOS'
      'ORDER BY PRO_QTDEATUAL DESC')
    Left = 392
    Top = 8
    object QryGerProdutoPRO_REF: TStringField
      Alignment = taRightJustify
      FieldName = 'PRO_REF'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_Ref'
      Size = 8
    end
    object QryGerProdutoPRO_DESCRICAO: TStringField
      Alignment = taRightJustify
      FieldName = 'PRO_DESCRICAO'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_Descricao'
      Size = 50
    end
    object QryGerProdutoPRO_QTDEATUAL: TFloatField
      FieldName = 'PRO_QTDEATUAL'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_QtdeAtual'
    end
    object QryGerProdutoPCUSTO: TCurrencyField
      FieldName = 'PCUSTO'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_QtdeAtual'
    end
    object QryGerProdutoPVENDA: TCurrencyField
      FieldName = 'PVENDA'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_QtdeAtual'
    end
    object QryGerProdutoLUCRO: TCurrencyField
      FieldName = 'LUCRO'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_QtdeAtual'
    end
    object QryGerProdutoPORCENT: TCurrencyField
      FieldName = 'PORCENT'
      Origin = 'DEBORA."PRODUTOS.DB".Pro_QtdeAtual'
      DisplayFormat = '0.000%'
    end
  end
end
