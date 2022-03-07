object FrmConsultaAniversariantes: TFrmConsultaAniversariantes
  Left = 41
  Top = 78
  Width = 620
  Height = 530
  BorderIcons = [biSystemMenu]
  Caption = 'Consultar Aniversariantes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensagem: TLabel
    Left = 159
    Top = 190
    Width = 94
    Height = 16
    Caption = 'lblMensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalNiver: TLabel
    Left = 26
    Top = 480
    Width = 55
    Height = 16
    Caption = 'lblNiver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnImprimir: TSpeedButton
    Left = 233
    Top = 58
    Width = 89
    Height = 25
    Caption = '&Imprimir'
    OnClick = btnImprimirClick
  end
  object Button1: TButton
    Left = 154
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 11
    Top = 147
    Width = 721
    Height = 254
    Caption = 'Panel2'
    TabOrder = 1
    Visible = False
    object QuickRep1: TQuickRep
      Left = 31
      Top = 30
      Width = 794
      Height = 1077
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = QryAniversario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Custom
      Page.Values = (
        150.000000000000000000
        2850.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      object QRBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = 15790320
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          105.833333333333300000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRLabelMes: TQRLabel
          Left = 268
          Top = 1
          Width = 103
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            709.083333333333300000
            2.645833333333333000
            272.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRLabelMes'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRLabel1: TQRLabel
          Left = 26
          Top = 1
          Width = 227
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            68.791666666666670000
            2.645833333333333000
            600.604166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Aniversariantes do Mes de:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 109
        Width = 718
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          74.083333333333330000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRLabel6: TQRLabel
          Left = 206
          Top = 5
          Width = 193
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            55.562500000000000000
            545.041666666666700000
            13.229166666666670000
            510.645833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Total de Aniversariantes do M'#234's:'
          Color = 15066597
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRExpr1: TQRExpr
          Left = 418
          Top = 6
          Width = 56
          Height = 19
          Frame.Color = clTeal
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            50.270833333333330000
            1105.958333333333000000
            15.875000000000000000
            148.166666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsUnderline]
          Color = 15066597
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'COUNT'
          FontSize = 12
        end
      end
      object QRBand3: TQRBand
        Left = 38
        Top = 137
        Width = 718
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          63.500000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRSysData4: TQRSysData
          Left = 703
          Top = 4
          Width = 15
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1860.020833333333000000
            10.583333333333330000
            39.687500000000000000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsPageNumber
          Transparent = False
          FontSize = 10
        end
        object QRSysData3: TQRSysData
          Left = 481
          Top = 3
          Width = 68
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1272.645833333333000000
            7.937500000000000000
            179.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Transparent = False
          FontSize = 10
        end
      end
      object DetailBand1: TQRBand
        Left = 38
        Top = 78
        Width = 718
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ForceNewColumn = False
        ForceNewPage = False
        ParentFont = False
        Size.Values = (
          82.020833333333330000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText1: TQRDBText
          Left = 102
          Top = 2
          Width = 50
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            269.875000000000000000
            5.291666666666667000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryAniversario
          DataField = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRDBText2: TQRDBText
          Left = 15
          Top = 2
          Width = 78
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            63.500000000000000000
            39.687500000000000000
            5.291666666666667000
            206.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = QryAniversario
          DataField = 'Dia_Nasc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 14
        end
        object QRShape1: TQRShape
          Left = 14
          Top = 27
          Width = 528
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            2.645833333333330000
            37.041666666666700000
            71.437500000000000000
            1397.000000000000000000)
          Shape = qrsRectangle
          VertAdjust = 0
        end
      end
    end
  end
  object Qconsultaaniversario: TQuery
    DatabaseName = 'SAI'
    SQL.Strings = (
      'Select * from Cadastro')
    Left = 424
    Top = 65456
    object QconsultaaniversarioCod_cadastro: TFloatField
      FieldName = 'Cod_cadastro'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cod_cadastro'
    end
    object QconsultaaniversarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'NOVAIGREJA."Cadastro.DB".Nome'
      Size = 45
    end
    object QconsultaaniversarioCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cargo'
    end
    object QconsultaaniversarioRg: TStringField
      FieldName = 'Rg'
      Origin = 'NOVAIGREJA."Cadastro.DB".Rg'
      Size = 15
    end
    object QconsultaaniversarioCic: TStringField
      FieldName = 'Cic'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cic'
      Size = 14
    end
    object QconsultaaniversarioPai: TStringField
      FieldName = 'Pai'
      Origin = 'NOVAIGREJA."Cadastro.DB".Pai'
      Size = 45
    end
    object QconsultaaniversarioMae: TStringField
      FieldName = 'Mae'
      Origin = 'NOVAIGREJA."Cadastro.DB".Mae'
      Size = 45
    end
    object QconsultaaniversarioData_nasc: TStringField
      FieldName = 'Data_nasc'
      Origin = 'NOVAIGREJA."Cadastro.DB".Data_nasc'
      Size = 10
    end
    object QconsultaaniversarioAno_nasc: TStringField
      FieldName = 'Ano_nasc'
      Origin = 'NOVAIGREJA."Cadastro.DB".Ano_nasc'
      Size = 4
    end
    object QconsultaaniversarioLocal_nasc: TStringField
      FieldName = 'Local_nasc'
      Origin = 'NOVAIGREJA."Cadastro.DB".Local_nasc'
      Size = 30
    end
    object QconsultaaniversarioUf: TStringField
      FieldName = 'Uf'
      Origin = 'NOVAIGREJA."Cadastro.DB".Uf'
      Size = 2
    end
    object QconsultaaniversarioEstado_civil: TStringField
      FieldName = 'Estado_civil'
      Origin = 'NOVAIGREJA."Cadastro.DB".Estado_civil'
      Size = 12
    end
    object QconsultaaniversarioConjuge: TStringField
      FieldName = 'Conjuge'
      Origin = 'NOVAIGREJA."Cadastro.DB".Conjuge'
      Size = 45
    end
    object QconsultaaniversarioProfissao: TStringField
      FieldName = 'Profissao'
      Origin = 'NOVAIGREJA."Cadastro.DB".Profissao'
      Size = 40
    end
    object QconsultaaniversarioEscolaridade: TStringField
      FieldName = 'Escolaridade'
      Origin = 'NOVAIGREJA."Cadastro.DB".Escolaridade'
    end
    object QconsultaaniversarioData_batismo: TDateField
      FieldName = 'Data_batismo'
      Origin = 'NOVAIGREJA."Cadastro.DB".Data_batismo'
    end
    object QconsultaaniversarioLocal_bastimo: TStringField
      FieldName = 'Local_bastimo'
      Origin = 'NOVAIGREJA."Cadastro.DB".Local_bastimo'
      Size = 30
    end
    object QconsultaaniversarioRua: TStringField
      FieldName = 'Rua'
      Origin = 'NOVAIGREJA."Cadastro.DB".Rua'
      Size = 50
    end
    object QconsultaaniversarioBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'NOVAIGREJA."Cadastro.DB".Bairro'
      Size = 30
    end
    object QconsultaaniversarioCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cidade'
      Size = 30
    end
    object QconsultaaniversarioUf1: TStringField
      FieldName = 'Uf1'
      Origin = 'NOVAIGREJA."Cadastro.DB".Uf1'
      Size = 2
    end
    object QconsultaaniversarioCep: TStringField
      FieldName = 'Cep'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cep'
      Size = 9
    end
    object QconsultaaniversarioTel: TStringField
      FieldName = 'Tel'
      Origin = 'NOVAIGREJA."Cadastro.DB".Tel'
      Size = 15
    end
    object QconsultaaniversarioObs: TMemoField
      FieldName = 'Obs'
      Origin = 'NOVAIGREJA."Cadastro.DB".Obs'
      BlobType = ftMemo
      Size = 100
    end
    object QconsultaaniversarioEmail: TStringField
      FieldName = 'Email'
      Origin = 'NOVAIGREJA."Cadastro.DB".Email'
      Size = 50
    end
    object QconsultaaniversarioCartao: TStringField
      FieldName = 'Cartao'
      Origin = 'NOVAIGREJA."Cadastro.DB".Cartao'
      Size = 3
    end
    object QconsultaaniversarioBatizado: TStringField
      FieldName = 'Batizado'
      Origin = 'NOVAIGREJA."Cadastro.DB".Batizado'
      Size = 3
    end
    object QconsultaaniversarioFoto: TGraphicField
      FieldName = 'Foto'
      Origin = 'NOVAIGREJA."Cadastro.DB".Foto'
      BlobType = ftGraphic
    end
    object QconsultaaniversarioDtcadastro: TDateField
      FieldName = 'Dtcadastro'
      Origin = 'NOVAIGREJA."Cadastro.DB".Dtcadastro'
    end
    object QconsultaaniversarioSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'NOVAIGREJA."Cadastro.DB".Sexo'
      Size = 4
    end
    object QconsultaaniversarioSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'NOVAIGREJA."Cadastro.DB".Situacao'
      EditMask = '!99/99/0000;1;_'
      Size = 12
    end
    object QconsultaaniversarioCelular: TStringField
      FieldName = 'Celular'
      Origin = 'NOVAIGREJA."Cadastro.DB".Celular'
      Size = 15
    end
    object QconsultaaniversarioSigla_congregacao: TStringField
      FieldName = 'Sigla_congregacao'
      Origin = 'NOVAIGREJA."Cadastro.DB".Sigla_congregacao'
    end
    object QconsultaaniversarioIgrejaIn: TStringField
      FieldName = 'IgrejaIn'
      Origin = 'NOVAIGREJA."Cadastro.DB".IgrejaIn'
      Size = 50
    end
    object QconsultaaniversarioDtChegada: TDateField
      FieldName = 'DtChegada'
      Origin = 'NOVAIGREJA."Cadastro.DB".DtChegada'
    end
    object QconsultaaniversarioMinistroIn: TStringField
      FieldName = 'MinistroIn'
      Origin = 'NOVAIGREJA."Cadastro.DB".MinistroIn'
      Size = 40
    end
    object QconsultaaniversarioCargoMinistroIn: TStringField
      FieldName = 'CargoMinistroIn'
      Origin = 'NOVAIGREJA."Cadastro.DB".CargoMinistroIn'
      Size = 15
    end
    object QconsultaaniversarioCidadeIn: TStringField
      FieldName = 'CidadeIn'
      Origin = 'NOVAIGREJA."Cadastro.DB".CidadeIn'
      Size = 30
    end
    object QconsultaaniversarioEstadoIn: TStringField
      FieldName = 'EstadoIn'
      Origin = 'NOVAIGREJA."Cadastro.DB".EstadoIn'
      Size = 2
    end
    object QconsultaaniversarioIgrejaOut: TStringField
      FieldName = 'IgrejaOut'
      Origin = 'NOVAIGREJA."Cadastro.DB".IgrejaOut'
      Size = 50
    end
    object QconsultaaniversarioDtPartida: TDateField
      FieldName = 'DtPartida'
      Origin = 'NOVAIGREJA."Cadastro.DB".DtPartida'
    end
    object QconsultaaniversarioMinistroLocal: TStringField
      FieldName = 'MinistroLocal'
      Origin = 'NOVAIGREJA."Cadastro.DB".MinistroLocal'
      Size = 40
    end
    object QconsultaaniversarioCargoMinistroLocal: TStringField
      FieldName = 'CargoMinistroLocal'
      Origin = 'NOVAIGREJA."Cadastro.DB".CargoMinistroLocal'
      Size = 15
    end
    object QconsultaaniversarioSegundoMinistroLocal: TStringField
      FieldName = 'SegundoMinistroLocal'
      Origin = 'NOVAIGREJA."Cadastro.DB".SegundoMinistroLocal'
      Size = 40
    end
    object QconsultaaniversarioCargoSegundoMinistro: TStringField
      FieldName = 'CargoSegundoMinistro'
      Origin = 'NOVAIGREJA."Cadastro.DB".CargoSegundoMinistro'
      Size = 15
    end
    object QconsultaaniversarioCidadeOut: TStringField
      FieldName = 'CidadeOut'
      Origin = 'NOVAIGREJA."Cadastro.DB".CidadeOut'
      Size = 40
    end
    object QconsultaaniversarioEstadoOut: TStringField
      FieldName = 'EstadoOut'
      Origin = 'NOVAIGREJA."Cadastro.DB".EstadoOut'
      Size = 2
    end
    object QconsultaaniversarioDt_Nascimento: TDateField
      FieldName = 'Dt_Nascimento'
      Origin = 'NOVAIGREJA."Cadastro.DB".Dt_Nascimento'
      EditMask = '!99/99'
    end
    object QconsultaaniversarioDia_Nasc: TStringField
      FieldName = 'Dia_Nasc'
      Origin = 'NOVAIGREJA."Cadastro.DB".Dia_Nasc'
      Size = 2
    end
    object QconsultaaniversarioMes_Nasc: TStringField
      FieldName = 'Mes_Nasc'
      Origin = 'NOVAIGREJA."Cadastro.DB".Mes_Nasc'
      Size = 2
    end
  end
  object QryAniversario: TQuery
    DatabaseName = 'SysEgg'
    Left = 432
    Top = 24
    object QryAniversarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'SAI."Cadastro.DB".Nome'
      Size = 45
    end
    object QryAniversarioDia_nasc: TStringField
      FieldName = 'Dia_nasc'
      Origin = 'SAI."Cadastro.DB".Dia_nasc'
      Size = 2
    end
    object QryAniversarioMes_nasc: TStringField
      FieldName = 'Mes_nasc'
      Origin = 'SAI."Cadastro.DB".Mes_nasc'
      Size = 2
    end
  end
end
