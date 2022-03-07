object FrmConsultaEstoqueEmbalagens: TFrmConsultaEstoqueEmbalagens
  Left = 206
  Top = 166
  Width = 270
  Height = 149
  Caption = 'Consulta Estoque (Embalagens)'
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
  object btnFechar: TSpeedButton
    Left = 98
    Top = 92
    Width = 64
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 4
    Top = 6
    Width = 253
    Height = 75
    DataSource = DmDados.dsTEmbalagens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdAtualPvc'
        Title.Alignment = taCenter
        Title.Caption = 'PVC:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold, fsItalic, fsUnderline]
        Width = 116
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QtdAtualPoupa'
        Title.Alignment = taCenter
        Title.Caption = 'POUPA:'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold, fsItalic, fsUnderline]
        Width = 114
        Visible = True
      end>
  end
end
