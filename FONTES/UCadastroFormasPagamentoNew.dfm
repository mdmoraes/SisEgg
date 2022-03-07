object FrmCadFormasPagamentoNew: TFrmCadFormasPagamentoNew
  Left = 385
  Top = 158
  Width = 383
  Height = 629
  Caption = 'Cadastro de Formas de Pagamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object btnCopiar: TSpeedButton
    Left = 296
    Top = 324
    Width = 57
    Height = 30
    Caption = 'Copiar'
    OnClick = btnCopiarClick
  end
  object btnCadCliente: TSpeedButton
    Left = 152
    Top = 536
    Width = 17
    Height = 10
    Caption = 'Clientes'
    Visible = False
    OnClick = btnCadClienteClick
  end
  object grp1: TGroupBox
    Left = 12
    Top = 8
    Width = 278
    Height = 297
    Caption = 'Formas'
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 5
      Top = 18
      Width = 257
      Height = 271
      DataSource = DmDados.dsFormaPagtoMaster
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = JvDBGrid1CellClick
      AlternateRowColor = 10935214
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'CodInc'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Formas'
          Width = 194
          Visible = True
        end>
    end
  end
  object grp2: TGroupBox
    Left = 13
    Top = 314
    Width = 277
    Height = 217
    Caption = 'Prazos  (em Dias  ex. 15/30/45)'
    TabOrder = 1
    object JvDBGrid2: TJvDBGrid
      Left = 5
      Top = 18
      Width = 259
      Height = 191
      DataSource = DmDados.dsFormaPagtoDetalhe
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnCellClick = JvDBGrid2CellClick
      AlternateRowColor = 10935214
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'CodInc'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Controle'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Prazos'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NumParcela'
          Visible = False
        end>
    end
  end
  object btnFechar: TButton
    Left = 107
    Top = 562
    Width = 97
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = btnFecharClick
  end
  object edForma: TEdit
    Left = 16
    Top = 536
    Width = 25
    Height = 24
    TabOrder = 3
    Visible = False
  end
  object edPrazo: TEdit
    Left = 51
    Top = 536
    Width = 14
    Height = 24
    TabOrder = 4
    Visible = False
  end
  object edId: TEdit
    Left = 299
    Top = 376
    Width = 37
    Height = 24
    TabOrder = 2
    Visible = False
  end
end
