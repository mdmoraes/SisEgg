object FrmEstoque: TFrmEstoque
  Left = 292
  Top = 228
  Width = 877
  Height = 560
  Caption = 'ESTOQUE'
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
  object lbl1: TLabel
    Left = 128
    Top = 9
    Width = 214
    Height = 18
    Caption = 'Estoque atualizado em ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object btnFechar: TSpeedButton
    Left = 365
    Top = 490
    Width = 119
    Height = 25
    Caption = 'Fechar'
    OnClick = btnFecharClick
  end
  object lblData: TLabel
    Left = 353
    Top = 9
    Width = 59
    Height = 18
    Caption = 'lblData'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object JvDBGrid1: TJvDBGrid
    Left = 6
    Top = 36
    Width = 827
    Height = 442
    DataSource = DmDados.dsEstoque
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    AlternateRowColor = clMoneyGreen
    SortedField = 'REF'
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'Ref'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 391
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Un'
        Title.Alignment = taCenter
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtd'
        Width = 134
        Visible = True
      end>
  end
  object qry1: TQuery
    Active = True
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT * FROM ESTOQUE'
      'ORDER BY REF')
    Left = 760
    Top = 7
    object tbqry1REFERENCIA: TStringField
      FieldName = 'Ref'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".REFERENCIA'
    end
    object tbqry1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".DESCRICAO'
      Size = 80
    end
    object tbqry1UNIDADE: TStringField
      FieldName = 'UN'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".UNIDADE'
      Size = 10
    end
    object qry1ESTOQUE: TFloatField
      FieldName = 'Qtd'
      Origin = 'SYSEGG."ENTRADAPRODUTO_DETALHE.DB".QTD'
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 632
    Top = 8
  end
end
