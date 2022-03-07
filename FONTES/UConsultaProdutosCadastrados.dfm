object FrmConsultaProdutosCadastrados: TFrmConsultaProdutosCadastrados
  Left = 325
  Top = 152
  Width = 762
  Height = 532
  Caption = 'CONSULTA PRODUTOS CADASTRADOS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object lbl1: TLabel
    Left = 275
    Top = 25
    Width = 356
    Height = 19
    Caption = 'Use a Tecla <TAB> para ir para a Grade de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object JvDBGridConsulta: TJvDBGrid
    Left = 6
    Top = 56
    Width = 726
    Height = 379
    DataSource = DmDados.Dsprodutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = JvDBGridConsultaDblClick
    OnKeyPress = JvDBGridConsultaKeyPress
    AlternateRowColor = clMoneyGreen
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 19
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'Pro_Ref'
        Title.Alignment = taCenter
        Title.Caption = 'Ref.:'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pro_Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 432
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Pro_Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'Un.:'
        Visible = True
      end>
  end
  object btnFechar: TBitBtn
    Left = 296
    Top = 448
    Width = 161
    Height = 27
    Caption = 'Fechar <ESCAPE>'
    TabOrder = 2
    OnClick = btnFecharClick
  end
  object ed1: TEdit
    Left = 7
    Top = 24
    Width = 257
    Height = 24
    TabOrder = 1
    OnChange = ed1Change
  end
end
