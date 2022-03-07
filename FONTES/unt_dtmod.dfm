object dtmod: Tdtmod
  OldCreateOrder = False
  Left = 269
  Top = 258
  Height = 375
  Width = 544
  object tbldep: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'DEP.db'
    Left = 8
    Top = 8
    object tbldepDEP_CODI: TIntegerField
      FieldName = 'DEP_CODI'
    end
    object tbldepDEP_DATA: TDateField
      FieldName = 'DEP_DATA'
    end
    object tbldepDEP_VALO: TCurrencyField
      FieldName = 'DEP_VALO'
    end
    object tbldepDEP_COMI: TFloatField
      FieldName = 'DEP_COMI'
    end
    object tbldepDEP_PROP: TStringField
      FieldName = 'DEP_PROP'
      Size = 35
    end
    object tbldepDEP_LOCA: TStringField
      FieldName = 'DEP_LOCA'
      Size = 35
    end
    object tbldepDEP_BANC: TStringField
      FieldName = 'DEP_BANC'
      Size = 40
    end
  end
  object dtsdep: TDataSource
    DataSet = tbldep
    Left = 56
    Top = 8
  end
  object tblsaq: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'saq.DB'
    Left = 120
    Top = 8
    object tblsaqSAQ_CODI: TIntegerField
      FieldName = 'SAQ_CODI'
    end
    object tblsaqSAQ_DATA: TDateField
      FieldName = 'SAQ_DATA'
    end
    object tblsaqSAQ_DATS: TDateField
      FieldName = 'SAQ_DATS'
    end
    object tblsaqSAQ_ANOT: TMemoField
      FieldName = 'SAQ_ANOT'
      BlobType = ftMemo
      Size = 240
    end
    object tblsaqSAQ_VALO: TCurrencyField
      FieldName = 'SAQ_VALO'
    end
    object tblsaqSAQ_BANC: TStringField
      FieldName = 'SAQ_BANC'
      Size = 40
    end
  end
  object dtssaq: TDataSource
    DataSet = tblsaq
    Left = 168
    Top = 8
  end
  object tblter: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'TER.db'
    Left = 232
    Top = 8
    object tblterTER_CODI: TIntegerField
      FieldName = 'TER_CODI'
    end
    object tblterTER_CODP: TIntegerField
      FieldName = 'TER_CODP'
    end
    object tblterTER_AREA: TFloatField
      FieldName = 'TER_AREA'
    end
    object tblterTER_TIPO: TStringField
      FieldName = 'TER_TIPO'
      Size = 6
    end
    object tblterTER_ENDE: TStringField
      FieldName = 'TER_ENDE'
      Size = 40
    end
    object tblterTER_CIDA: TStringField
      FieldName = 'TER_CIDA'
      Size = 25
    end
    object tblterTER_BAIR: TStringField
      FieldName = 'TER_BAIR'
      Size = 25
    end
    object tblterTER_CEP1: TStringField
      FieldName = 'TER_CEP1'
      Size = 8
    end
    object tblterTER_ESTA: TStringField
      FieldName = 'TER_ESTA'
      Size = 2
    end
    object tblterTER_VALO: TCurrencyField
      FieldName = 'TER_VALO'
    end
    object tblterTER_OBSE: TMemoField
      FieldName = 'TER_OBSE'
      BlobType = ftMemo
      Size = 240
    end
    object tblterTER_VEND: TBooleanField
      FieldName = 'TER_VEND'
    end
    object tblterPRO_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NOME'
      LookupDataSet = tblpro
      LookupKeyFields = 'PRO_CODI'
      LookupResultField = 'PRO_NOME'
      KeyFields = 'TER_CODP'
      Size = 35
      Lookup = True
    end
  end
  object dtster: TDataSource
    DataSet = tblter
    Left = 272
    Top = 8
  end
  object tblimo: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'IMO.db'
    Left = 8
    Top = 64
    object tblimoIMO_CODI: TIntegerField
      FieldName = 'IMO_CODI'
    end
    object tblimoIMO_CODP: TIntegerField
      FieldName = 'IMO_CODP'
    end
    object tblimoIMO_ARTO: TFloatField
      FieldName = 'IMO_ARTO'
    end
    object tblimoIMO_ARCO: TFloatField
      FieldName = 'IMO_ARCO'
    end
    object tblimoIMO_NDOR: TIntegerField
      FieldName = 'IMO_NDOR'
    end
    object tblimoIMO_DISP: TStringField
      FieldName = 'IMO_DISP'
      Size = 8
    end
    object tblimoIMO_TIPO: TStringField
      FieldName = 'IMO_TIPO'
      Size = 15
    end
    object tblimoIMO_GARA: TBooleanField
      FieldName = 'IMO_GARA'
    end
    object tblimoIMO_ENDE: TStringField
      FieldName = 'IMO_ENDE'
      Size = 40
    end
    object tblimoIMO_CIDA: TStringField
      FieldName = 'IMO_CIDA'
      Size = 25
    end
    object tblimoIMO_BAIR: TStringField
      FieldName = 'IMO_BAIR'
      Size = 25
    end
    object tblimoIMO_CEP1: TStringField
      FieldName = 'IMO_CEP1'
      Size = 8
    end
    object tblimoIMO_ESTA: TStringField
      FieldName = 'IMO_ESTA'
      Size = 2
    end
    object tblimoIMO_VALO: TCurrencyField
      FieldName = 'IMO_VALO'
    end
    object tblimoIMO_OBSE: TMemoField
      FieldName = 'IMO_OBSE'
      BlobType = ftMemo
      Size = 240
    end
    object tblimoIMO_VOUL: TBooleanField
      FieldName = 'IMO_VOUL'
    end
    object tblimoPRO_NOME: TStringField
      FieldKind = fkLookup
      FieldName = 'PRO_NOME'
      LookupDataSet = tblpro
      LookupKeyFields = 'PRO_CODI'
      LookupResultField = 'PRO_NOME'
      KeyFields = 'IMO_CODP'
      Size = 35
      Lookup = True
    end
  end
  object dtsimo: TDataSource
    DataSet = tblimo
    Left = 56
    Top = 64
  end
  object tblloc: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'LOC.db'
    Left = 120
    Top = 64
    object tbllocLOC_CODI: TIntegerField
      FieldName = 'LOC_CODI'
    end
    object tbllocLOC_NOME: TStringField
      FieldName = 'LOC_NOME'
      Size = 35
    end
    object tbllocLOC_ENDE: TStringField
      FieldName = 'LOC_ENDE'
      Size = 40
    end
    object tbllocLOC_CIDA: TStringField
      FieldName = 'LOC_CIDA'
      Size = 25
    end
    object tbllocLOC_BAIR: TStringField
      FieldName = 'LOC_BAIR'
      Size = 25
    end
    object tbllocLOC_CEP1: TStringField
      FieldName = 'LOC_CEP1'
      Size = 8
    end
    object tbllocLOC_ESTA: TStringField
      FieldName = 'LOC_ESTA'
      Size = 2
    end
    object tbllocLOC_TELE: TStringField
      FieldName = 'LOC_TELE'
      Size = 10
    end
    object tbllocLOC_CELU: TStringField
      FieldName = 'LOC_CELU'
      Size = 10
    end
    object tbllocLOC_RG11: TStringField
      FieldName = 'LOC_RG11'
      Size = 11
    end
    object tbllocLOC_CPF1: TStringField
      FieldName = 'LOC_CPF1'
      Size = 11
    end
    object tbllocLOC_PAI1: TStringField
      FieldName = 'LOC_PAI1'
      Size = 35
    end
    object tbllocLOC_MAE1: TStringField
      FieldName = 'LOC_MAE1'
      Size = 35
    end
    object tbllocLOC_OBSE: TMemoField
      FieldName = 'LOC_OBSE'
      BlobType = ftMemo
      Size = 240
    end
  end
  object dtsloc: TDataSource
    DataSet = tblloc
    Left = 168
    Top = 64
  end
  object tblpro: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'PRO.db'
    Left = 232
    Top = 62
    object tblproPRO_CODI: TIntegerField
      FieldName = 'PRO_CODI'
    end
    object tblproPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 35
    end
    object tblproPRO_ENDE: TStringField
      FieldName = 'PRO_ENDE'
      Size = 40
    end
    object tblproPRO_CIDA: TStringField
      FieldName = 'PRO_CIDA'
      Size = 25
    end
    object tblproPRO_BAIR: TStringField
      FieldName = 'PRO_BAIR'
      Size = 25
    end
    object tblproPRO_CEP1: TStringField
      FieldName = 'PRO_CEP1'
      Size = 8
    end
    object tblproPRO_ESTA: TStringField
      FieldName = 'PRO_ESTA'
      Size = 2
    end
    object tblproPRO_TELE: TStringField
      FieldName = 'PRO_TELE'
      Size = 10
    end
    object tblproPRO_FAX1: TStringField
      FieldName = 'PRO_FAX1'
      Size = 10
    end
    object tblproPRO_CELU: TStringField
      FieldName = 'PRO_CELU'
      Size = 10
    end
    object tblproPRO_RG11: TStringField
      FieldName = 'PRO_RG11'
      Size = 11
    end
    object tblproPRO_CPF1: TStringField
      FieldName = 'PRO_CPF1'
      Size = 11
    end
    object tblproPRO_PAI1: TStringField
      FieldName = 'PRO_PAI1'
      Size = 35
    end
    object tblproPRO_MAE1: TStringField
      FieldName = 'PRO_MAE1'
      Size = 35
    end
    object tblproPRO_OBSE: TMemoField
      FieldName = 'PRO_OBSE'
      BlobType = ftMemo
      Size = 240
    end
    object tblproPRO_COMI: TFloatField
      FieldName = 'PRO_COMI'
    end
  end
  object dtspro: TDataSource
    DataSet = tblpro
    Left = 272
    Top = 62
  end
  object tblcai: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'CAI.db'
    Left = 8
    Top = 120
    object tblcaiCAI_CODI: TFloatField
      FieldName = 'CAI_CODI'
    end
    object tblcaiCAI_DATA: TDateField
      FieldName = 'CAI_DATA'
    end
    object tblcaiCAI_DC11: TStringField
      FieldName = 'CAI_DC11'
      Size = 7
    end
    object tblcaiCAI_DESC: TStringField
      FieldName = 'CAI_DESC'
      Size = 50
    end
    object tblcaiCAI_VALO: TCurrencyField
      FieldName = 'CAI_VALO'
    end
    object tblcaiCAI_LANC: TStringField
      FieldName = 'CAI_LANC'
      Size = 35
    end
  end
  object dtscai: TDataSource
    DataSet = tblcai
    Left = 56
    Top = 120
  end
  object tblcta: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'CTA.db'
    Left = 120
    Top = 120
    object tblctaCTA_CODI: TIntegerField
      FieldName = 'CTA_CODI'
    end
    object tblctaCTA_DATA: TDateField
      FieldName = 'CTA_DATA'
    end
    object tblctaCTA_NOML: TStringField
      FieldName = 'CTA_NOML'
      Size = 35
    end
    object tblctaCTA_PGTO: TStringField
      FieldName = 'CTA_PGTO'
      Size = 3
    end
    object tblctaCTA_VALO: TCurrencyField
      FieldName = 'CTA_VALO'
    end
    object tblctaCTA_MULT: TCurrencyField
      FieldName = 'CTA_MULT'
    end
    object tblctaCTA_COMI: TIntegerField
      FieldName = 'CTA_COMI'
    end
    object tblctaCTA_TOTA: TCurrencyField
      FieldName = 'CTA_TOTA'
    end
    object tblctaCTA_IPTU: TCurrencyField
      FieldName = 'CTA_IPTU'
    end
  end
  object dtscta: TDataSource
    DataSet = tblcta
    Left = 168
    Top = 120
  end
  object tblcal: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    FieldDefs = <
      item
        Name = 'CAL_CODI'
        DataType = ftInteger
      end
      item
        Name = 'CAL_CODM'
        DataType = ftInteger
      end
      item
        Name = 'CAL_ENDM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CAL_CODL'
        DataType = ftInteger
      end
      item
        Name = 'CAL_NOML'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CAL_DATI'
        DataType = ftDate
      end
      item
        Name = 'CAL_DATF'
        DataType = ftDate
      end
      item
        Name = 'CAL_ARQU'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CAL_OBSE'
        DataType = ftMemo
        Size = 240
      end
      item
        Name = 'CAL_VALO'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'tblcalIndex1'
        Fields = 'CAL_CODI'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'CALIDX6'
        Fields = 'CAL_CODL'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CALIDX2'
        Fields = 'CAL_CODM'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CALIDX4'
        Fields = 'CAL_DATI'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'CALIDX5'
        Fields = 'CAL_DATF'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'CAL.db'
    Left = 232
    Top = 118
    object tblcalCAL_CODI: TIntegerField
      FieldName = 'CAL_CODI'
    end
    object tblcalCAL_CODM: TIntegerField
      FieldName = 'CAL_CODM'
    end
    object tblcalCAL_ENDM: TStringField
      FieldName = 'CAL_ENDM'
      Size = 50
    end
    object tblcalCAL_CODL: TIntegerField
      FieldName = 'CAL_CODL'
    end
    object tblcalCAL_NOML: TStringField
      FieldName = 'CAL_NOML'
      Size = 35
    end
    object tblcalCAL_DATI: TDateField
      FieldName = 'CAL_DATI'
    end
    object tblcalCAL_DATF: TDateField
      FieldName = 'CAL_DATF'
    end
    object tblcalCAL_ARQU: TStringField
      FieldName = 'CAL_ARQU'
      Size = 16
    end
    object tblcalCAL_OBSE: TMemoField
      FieldName = 'CAL_OBSE'
      BlobType = ftMemo
      Size = 240
    end
    object tblcalCAL_VALO: TCurrencyField
      FieldName = 'CAL_VALO'
    end
  end
  object dtscal: TDataSource
    DataSet = tblcal
    Left = 272
    Top = 118
  end
  object tblcvt: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'CVT.db'
    Left = 120
    Top = 180
    object tblcvtCVT_CODI: TIntegerField
      FieldName = 'CVT_CODI'
    end
    object tblcvtCVT_CODT: TIntegerField
      FieldName = 'CVT_CODT'
    end
    object tblcvtCVT_ENDT: TStringField
      FieldName = 'CVT_ENDT'
      Size = 40
    end
    object tblcvtCVT_CODL: TIntegerField
      FieldName = 'CVT_CODL'
    end
    object tblcvtCVT_NOML: TStringField
      FieldName = 'CVT_NOML'
      Size = 35
    end
    object tblcvtCVT_DATA: TDateField
      FieldName = 'CVT_DATA'
    end
    object tblcvtCVT_ARQU: TStringField
      FieldName = 'CVT_ARQU'
      Size = 16
    end
    object tblcvtCVT_VALO: TCurrencyField
      FieldName = 'CVT_VALO'
    end
    object tblcvtCVT_OBSE: TMemoField
      FieldName = 'CVT_OBSE'
      BlobType = ftMemo
      Size = 240
    end
  end
  object dtscvt: TDataSource
    DataSet = tblcvt
    Left = 168
    Top = 180
  end
  object tblcvi: TTable
    Active = True
    DatabaseName = 'SistemaImo'
    TableName = 'CVI.db'
    Left = 8
    Top = 180
    object tblcviCVI_CODI: TIntegerField
      FieldName = 'CVI_CODI'
    end
    object tblcviCVI_CODM: TIntegerField
      FieldName = 'CVI_CODM'
    end
    object tblcviCVI_ENDM: TStringField
      FieldName = 'CVI_ENDM'
      Size = 50
    end
    object tblcviCVI_CODL: TIntegerField
      FieldName = 'CVI_CODL'
    end
    object tblcviCVI_NOML: TStringField
      FieldName = 'CVI_NOML'
      Size = 35
    end
    object tblcviCVI_DATA: TDateField
      FieldName = 'CVI_DATA'
    end
    object tblcviCVI_ARQU: TStringField
      FieldName = 'CVI_ARQU'
      Size = 16
    end
    object tblcviCVI_VALO: TCurrencyField
      FieldName = 'CVI_VALO'
    end
    object tblcviCVI_OBSE: TMemoField
      FieldName = 'CVI_OBSE'
      BlobType = ftMemo
      Size = 240
    end
  end
  object dtscvi: TDataSource
    DataSet = tblcvi
    Left = 56
    Top = 180
  end
end
