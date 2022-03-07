object FrmAtualizaQtdOvo: TFrmAtualizaQtdOvo
  Left = 139
  Top = 3
  Width = 893
  Height = 719
  Caption = 'Atualiza QTD de Ovos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object btnOK: TSpeedButton
    Left = 256
    Top = 14
    Width = 93
    Height = 24
    Caption = 'OK'
    OnClick = btnOKClick
  end
  object Gauge1: TGauge
    Left = 14
    Top = 560
    Width = 830
    Height = 35
    ForeColor = clLime
    Progress = 0
  end
  object btnLimpaBase: TSpeedButton
    Left = 424
    Top = 14
    Width = 93
    Height = 24
    Caption = 'Limba Base'
    OnClick = btnLimpaBaseClick
  end
  object lblRecno: TLabel
    Left = 48
    Top = 608
    Width = 54
    Height = 16
    Caption = 'lblRecno'
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 48
    Width = 809
    Height = 497
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'It_Ref'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_Descricao'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_Unid'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_Quantidade'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_QtdOvo'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'It_UN_GERAL'
        Visible = True
      end>
  end
  object ds1: TDataSource
    DataSet = tbQtdOvo
    Left = 744
    Top = 8
  end
  object tbQtdOvo: TTable
    Active = True
    DatabaseName = 'SysEgg'
    TableName = 'Itens.DB'
    Left = 688
    Top = 8
    object tblQtdOvoIt_Quantidade: TFloatField
      FieldName = 'It_Quantidade'
    end
    object tblQtdOvoIt_Ref: TStringField
      FieldName = 'It_Ref'
      Size = 15
    end
    object tblQtdOvoIt_Unid: TStringField
      FieldName = 'It_Unid'
      Size = 10
    end
    object tblQtdOvoIt_QtdOvo: TFloatField
      FieldName = 'It_QtdOvo'
    end
    object tblQtdOvoIt_UN_GERAL: TStringField
      FieldName = 'It_UN_GERAL'
      Size = 10
    end
  end
end
