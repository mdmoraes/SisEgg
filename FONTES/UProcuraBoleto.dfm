object FrmProcurarBoleto: TFrmProcurarBoleto
  Left = 71
  Top = 131
  Width = 737
  Height = 511
  Caption = 'Procurar Boleto'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 66
    Width = 725
    Height = 390
    BevelInner = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 13
      Top = 8
      Width = 402
      Height = 16
      Caption = 'Dica: Selecione o pedido e Tecle <ENTER> para localizar o Boleto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnDblClick = DataFimCloseUp
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 29
      Width = 712
      Height = 355
      DataSource = DataSource1
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      OnMouseMove = DBGrid1MouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Ped.:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAPED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cliente:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 331
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VRTOTPED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Vl.Total:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 102
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'DATA1PARC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = '1'#170' Parc.:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 89
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'VR1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Vl. 1'#170
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'DATA2PARC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = '2'#170' Parc.:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 91
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'VR2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Vl. 2'#170
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'DATA3PARC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = '3'#170' Parc.:'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 92
          Visible = True
        end
        item
          Color = clGray
          Expanded = False
          FieldName = 'VR3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Vl. 3'#170
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 3
    Top = 3
    Width = 503
    Height = 61
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 216
      Height = 16
      Caption = 'Digite o Nome:  >>> ou   %  p/ Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 199
      Top = 31
      Width = 29
      Height = 22
      Cursor = crHandPoint
      Hint = 'EXECUTA O FILTRO!'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333300
        3333333333333333FF333333333330EC033333333333333FE7F3330000000ECC
        00333333FFFFFFFE77FF33033330ECC330333333F8888FE7788F330FFF0ECC3F
        30333333F333FE77838F3300003CC3FF30333333FFFF8778338F303E30003FFF
        3033333F8E8FFF83338F0FE3E303FFFF303333F3E8E8F833338F0EFE3E03FFFF
        303333FE3E8EF833338F0FEFE303FFFF303333F3E3E8F833338F30FEF03FFFFF
        3033333F3E3F8333338F330003FFFFFF30333333FFF83333338F330FFFFFFF00
        00333333F3333333FFFF330FFFFFFF3F03333333F333333383F3330FFFFFFF30
        33333333F33333338F3333000000000333333333FFFFFFFFF333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 31
      Width = 177
      Height = 21
      TabOrder = 0
      Text = '%'
    end
    object GroupBox1: TGroupBox
      Left = 243
      Top = 5
      Width = 252
      Height = 51
      Caption = 'Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 5
        Top = 25
        Width = 21
        Height = 16
        Caption = 'De:'
      end
      object Label3: TLabel
        Left = 132
        Top = 25
        Width = 9
        Height = 16
        Caption = #192
      end
      object DataIni: TDateTimePicker
        Left = 33
        Top = 21
        Width = 92
        Height = 23
        Date = 39580.945107418980000000
        Time = 39580.945107418980000000
        TabOrder = 0
        OnCloseUp = DataIniCloseUp
      end
      object DataFim: TDateTimePicker
        Left = 149
        Top = 21
        Width = 93
        Height = 23
        Date = 39580.945107418980000000
        Time = 39580.945107418980000000
        TabOrder = 1
        OnCloseUp = DataFimCloseUp
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 536
    Top = 4
    Width = 174
    Height = 59
    Caption = 'Boleto Emitido:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label4: TLabel
      Left = 9
      Top = 18
      Width = 50
      Height = 16
      Caption = 'SIM  >>>'
    end
    object Label5: TLabel
      Left = 9
      Top = 38
      Width = 53
      Height = 16
      Caption = 'N'#195'O >>>'
    end
    object Edit2: TEdit
      Left = 65
      Top = 18
      Width = 89
      Height = 19
      AutoSelect = False
      AutoSize = False
      Color = clBlue
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 65
      Top = 37
      Width = 89
      Height = 19
      AutoSelect = False
      AutoSize = False
      Color = clRed
      TabOrder = 1
    end
  end
  object btnFechar: TBitBtn
    Left = 328
    Top = 460
    Width = 75
    Height = 22
    Caption = 'Fechar'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 400
    Top = 144
  end
  object Query1: TQuery
    DatabaseName = 'SysEgg'
    SQL.Strings = (
      'SELECT NUMPED, DATAPED, CLIENTE, VRTOTPED,'
      
        'DATA1PARC, VR1, DATA2PARC,VR2, DATA3PARC, VR3, PAGO1, PAGO2, PAG' +
        'O3'
      'FROM PENDENCIASBOLETO'
      
        'WHERE DATAPED BETWEEN :VARDATAINI AND :VARDATAFIM AND CLIENTE LI' +
        'KE :VARCLIENTE'
      'ORDER BY DATAPED')
    Left = 496
    Top = 176
    ParamData = <
      item
        DataType = ftDate
        Name = 'VARDATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'VARDATAFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'VARCLIENTE'
        ParamType = ptUnknown
      end>
    object Query1NUMPED: TIntegerField
      FieldName = 'NUMPED'
      Origin = 'DEBORA."PendenciasBoleto.DB".NumPed'
    end
    object Query1DATAPED: TDateField
      FieldName = 'DATAPED'
      Origin = 'DEBORA."PendenciasBoleto.DB".DataPed'
    end
    object Query1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'DEBORA."PendenciasBoleto.DB".Cliente'
      Size = 80
    end
    object Query1VRTOTPED: TCurrencyField
      FieldName = 'VRTOTPED'
      Origin = 'DEBORA."PendenciasBoleto.DB".VrTotPed'
    end
    object Query1DATA1PARC: TDateField
      FieldName = 'DATA1PARC'
      Origin = 'DEBORA."PendenciasBoleto.DB".Data1Parc'
    end
    object Query1VR1: TCurrencyField
      FieldName = 'VR1'
      Origin = 'DEBORA."PendenciasBoleto.DB".Vr1'
    end
    object Query1DATA2PARC: TDateField
      FieldName = 'DATA2PARC'
      Origin = 'DEBORA."PendenciasBoleto.DB".Data2Parc'
    end
    object Query1VR2: TCurrencyField
      FieldName = 'VR2'
      Origin = 'DEBORA."PendenciasBoleto.DB".Vr2'
    end
    object Query1DATA3PARC: TDateField
      FieldName = 'DATA3PARC'
      Origin = 'DEBORA."PendenciasBoleto.DB".Data3Parc'
    end
    object Query1VR3: TCurrencyField
      FieldName = 'VR3'
      Origin = 'DEBORA."PendenciasBoleto.DB".Vr3'
    end
    object Query1PAGO1: TBooleanField
      FieldName = 'PAGO1'
      Origin = 'DEBORA."PendenciasBoleto.DB".Pago1'
    end
    object Query1PAGO2: TBooleanField
      FieldName = 'PAGO2'
      Origin = 'DEBORA."PendenciasBoleto.DB".Pago2'
    end
    object Query1PAGO3: TBooleanField
      FieldName = 'PAGO3'
      Origin = 'DEBORA."PendenciasBoleto.DB".Pago3'
    end
  end
end
