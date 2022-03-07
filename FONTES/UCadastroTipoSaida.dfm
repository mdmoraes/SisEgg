object FrmCadastroTipoSaida: TFrmCadastroTipoSaida
  Left = 294
  Top = 236
  Width = 870
  Height = 598
  Caption = 'Cadastro - TIPO DE SA'#205'DA'
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
  object dbgrd1: TDBGrid
    Left = 8
    Top = 17
    Width = 833
    Height = 472
    DataSource = DmDados.dsTipoSaida
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TipoSaida'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO DE SA'#205'DA'
        Width = 408
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 364
        Visible = True
      end>
  end
  object btnFechar: TBitBtn
    Left = 380
    Top = 506
    Width = 115
    Height = 29
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = btnFecharClick
  end
end
