object FrmCadastroTipoEntrada: TFrmCadastroTipoEntrada
  Left = 310
  Top = 205
  Width = 870
  Height = 589
  Caption = 'Cadastro - TIPO DE ENTRADA'
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
    Top = 30
    Width = 833
    Height = 457
    DataSource = DmDados.dsTipoEntrada
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
        FieldName = 'TIPO_ENTRADA'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO DE ENTRADA'
        Width = 408
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCRICAO'
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
