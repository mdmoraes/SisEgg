object FrmCadastroFormasPagamento: TFrmCadastroFormasPagamento
  Left = 119
  Top = 215
  Width = 706
  Height = 354
  Caption = 'Cadastro de Formas de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnFoco: TButton
    Left = 99
    Top = 253
    Width = 52
    Height = 20
    Caption = 'Foco'
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 38
    Width = 682
    Height = 244
    DataSource = DmDados.dsFormasPagamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Lucida Sans'
    Font.Style = [fsBold]
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'FormaPag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 8454143
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prazos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Color = 4227072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = 8454143
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Obs'
        Title.Alignment = taCenter
        Title.Color = clGreen
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clYellow
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 200
    Top = 291
    Width = 310
    Height = 33
    DataSource = DmDados.dsFormasPagamento
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr'#243'ximo'
      #218'ltimo'
      'Novo'
      'Excluir'
      'Alterar'
      'Gravar'
      'Cancelar'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object btnSair: TBitBtn
    Left = 616
    Top = 293
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = btnSairClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666660666
      666666666666668F666666660000666666600666666666666666688F66666666
      00006666668008666666666666668888F66666660000666668F0086666666666
      66686886F6666666000066660FF0FF6666666666668F68F6F666666600006660
      0F00F88666666666688F88F68F66666F00006680000080066666806688888888
      8F666688000068FF0F0070006668F068F68F886888F66868000068F00F87F80F
      868B0668F88F8F68868F8686000068000800F0FFF8F06668888F88F8F6686866
      000066008000000F8B066666888888888F86866600006607700F0008F0666666
      8F6886888868666600006687F0FFF08B066666668F68F6688686666600006668
      800FF8F06666666668888FF8686666660000666600008B066666666666888886
      86666666000066666008F06666666666666888686666666600006666668B0666
      6666666666668F86666666660000666666806666666666666666886666666666
      0000}
    NumGlyphs = 2
  end
end
