object FrmConsultaClientesFormaPagto: TFrmConsultaClientesFormaPagto
  Left = 463
  Top = 229
  Width = 508
  Height = 528
  Caption = 'Consultar Clientes para Cadastro de Formas de Pagemento '
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
  object grp3: TGroupBox
    Left = 5
    Top = 6
    Width = 473
    Height = 428
    Caption = 'Pesquisar Cliente '
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 26
      Width = 144
      Height = 16
      Caption = 'Digite o Nome do Cliente'
    end
    object JvDBGrid3: TJvDBGrid
      Left = 5
      Top = 51
      Width = 462
      Height = 363
      DataSource = DmDados.DsClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = JvDBGrid3DblClick
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
          FieldName = 'Cli_Codigo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Cli_Cliente'
          Visible = True
        end>
    end
    object edNome: TEdit
      Left = 157
      Top = 23
      Width = 225
      Height = 24
      TabOrder = 0
      OnChange = edNomeChange
    end
  end
  object btnFechar: TBitBtn
    Left = 205
    Top = 449
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = btnFecharClick
  end
end
