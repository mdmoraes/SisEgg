object FrmCadastrodeEmpresas: TFrmCadastrodeEmpresas
  Left = 28
  Top = 148
  Width = 758
  Height = 333
  Caption = 'Cadastro de Empresas'
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
    Left = 614
    Top = 273
    Width = 105
    Height = 25
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btnFecharClick
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 1
    Width = 743
    Height = 265
    DataSource = DmDados.dsEmpresas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lucida Sans'
    Font.Style = []
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
        FieldName = 'Nome_Empresa'
        Title.Alignment = taCenter
        Title.Caption = 'EMPRESAS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Slogan'
        Title.Alignment = taCenter
        Title.Caption = 'SLOGAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Lucida Sans'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 84
    Top = 274
    Width = 280
    Height = 27
    DataSource = DmDados.dsEmpresas
    Hints.Strings = (
      'PRIMEIRO'
      'ANTERIOR'
      'PR'#211'XIMO'
      #218'LTIMO'
      'NOVO'
      'EXCLUIR'
      'ALTERAR'
      'GRAVAR'
      'CANCELAR'
      'ATUALIZAR DADOS')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
end
