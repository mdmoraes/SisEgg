unit unt_dtmod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  Tdtmod = class(TDataModule)
    tbldep: TTable;
    dtsdep: TDataSource;
    tblsaq: TTable;
    dtssaq: TDataSource;
    tblter: TTable;
    dtster: TDataSource;
    tblimo: TTable;
    dtsimo: TDataSource;
    tblloc: TTable;
    dtsloc: TDataSource;
    tblpro: TTable;
    dtspro: TDataSource;
    tblcai: TTable;
    dtscai: TDataSource;
    tblcta: TTable;
    dtscta: TDataSource;
    tblcal: TTable;
    dtscal: TDataSource;
    tblcvt: TTable;
    dtscvt: TDataSource;
    tblcvi: TTable;
    dtscvi: TDataSource;
    tbldepDEP_CODI: TIntegerField;
    tbldepDEP_DATA: TDateField;
    tbldepDEP_VALO: TCurrencyField;
    tbldepDEP_COMI: TFloatField;
    tbldepDEP_PROP: TStringField;
    tbldepDEP_LOCA: TStringField;
    tbldepDEP_BANC: TStringField;
    tblsaqSAQ_CODI: TIntegerField;
    tblsaqSAQ_DATA: TDateField;
    tblsaqSAQ_DATS: TDateField;
    tblsaqSAQ_ANOT: TMemoField;
    tblsaqSAQ_VALO: TCurrencyField;
    tblsaqSAQ_BANC: TStringField;
    tblterTER_CODI: TIntegerField;
    tblterTER_CODP: TIntegerField;
    tblterTER_AREA: TFloatField;
    tblterTER_TIPO: TStringField;
    tblterTER_ENDE: TStringField;
    tblterTER_CIDA: TStringField;
    tblterTER_BAIR: TStringField;
    tblterTER_CEP1: TStringField;
    tblterTER_ESTA: TStringField;
    tblterTER_VALO: TCurrencyField;
    tblterTER_OBSE: TMemoField;
    tblterTER_VEND: TBooleanField;
    tblimoIMO_CODI: TIntegerField;
    tblimoIMO_CODP: TIntegerField;
    tblimoIMO_ARTO: TFloatField;
    tblimoIMO_ARCO: TFloatField;
    tblimoIMO_NDOR: TIntegerField;
    tblimoIMO_DISP: TStringField;
    tblimoIMO_TIPO: TStringField;
    tblimoIMO_GARA: TBooleanField;
    tblimoIMO_ENDE: TStringField;
    tblimoIMO_CIDA: TStringField;
    tblimoIMO_BAIR: TStringField;
    tblimoIMO_CEP1: TStringField;
    tblimoIMO_ESTA: TStringField;
    tblimoIMO_VALO: TCurrencyField;
    tblimoIMO_OBSE: TMemoField;
    tblimoIMO_VOUL: TBooleanField;
    tbllocLOC_CODI: TIntegerField;
    tbllocLOC_NOME: TStringField;
    tbllocLOC_ENDE: TStringField;
    tbllocLOC_CIDA: TStringField;
    tbllocLOC_BAIR: TStringField;
    tbllocLOC_CEP1: TStringField;
    tbllocLOC_ESTA: TStringField;
    tbllocLOC_TELE: TStringField;
    tbllocLOC_CELU: TStringField;
    tbllocLOC_RG11: TStringField;
    tbllocLOC_CPF1: TStringField;
    tbllocLOC_PAI1: TStringField;
    tbllocLOC_MAE1: TStringField;
    tbllocLOC_OBSE: TMemoField;
    tblproPRO_CODI: TIntegerField;
    tblproPRO_NOME: TStringField;
    tblproPRO_ENDE: TStringField;
    tblproPRO_CIDA: TStringField;
    tblproPRO_BAIR: TStringField;
    tblproPRO_CEP1: TStringField;
    tblproPRO_ESTA: TStringField;
    tblproPRO_TELE: TStringField;
    tblproPRO_FAX1: TStringField;
    tblproPRO_CELU: TStringField;
    tblproPRO_RG11: TStringField;
    tblproPRO_CPF1: TStringField;
    tblproPRO_PAI1: TStringField;
    tblproPRO_MAE1: TStringField;
    tblproPRO_OBSE: TMemoField;
    tblproPRO_COMI: TFloatField;
    tblcaiCAI_CODI: TFloatField;
    tblcaiCAI_DATA: TDateField;
    tblcaiCAI_DC11: TStringField;
    tblcaiCAI_DESC: TStringField;
    tblcaiCAI_VALO: TCurrencyField;
    tblcaiCAI_LANC: TStringField;
    tblctaCTA_CODI: TIntegerField;
    tblctaCTA_DATA: TDateField;
    tblctaCTA_NOML: TStringField;
    tblctaCTA_PGTO: TStringField;
    tblctaCTA_VALO: TCurrencyField;
    tblctaCTA_MULT: TCurrencyField;
    tblctaCTA_COMI: TIntegerField;
    tblctaCTA_TOTA: TCurrencyField;
    tblctaCTA_IPTU: TCurrencyField;
    tblcalCAL_CODI: TIntegerField;
    tblcalCAL_CODM: TIntegerField;
    tblcalCAL_ENDM: TStringField;
    tblcalCAL_CODL: TIntegerField;
    tblcalCAL_NOML: TStringField;
    tblcalCAL_DATI: TDateField;
    tblcalCAL_DATF: TDateField;
    tblcalCAL_ARQU: TStringField;
    tblcalCAL_OBSE: TMemoField;
    tblcviCVI_CODI: TIntegerField;
    tblcviCVI_CODM: TIntegerField;
    tblcviCVI_ENDM: TStringField;
    tblcviCVI_CODL: TIntegerField;
    tblcviCVI_NOML: TStringField;
    tblcviCVI_DATA: TDateField;
    tblcviCVI_ARQU: TStringField;
    tblcviCVI_VALO: TCurrencyField;
    tblcviCVI_OBSE: TMemoField;
    tblcvtCVT_CODI: TIntegerField;
    tblcvtCVT_CODT: TIntegerField;
    tblcvtCVT_ENDT: TStringField;
    tblcvtCVT_CODL: TIntegerField;
    tblcvtCVT_NOML: TStringField;
    tblcvtCVT_DATA: TDateField;
    tblcvtCVT_ARQU: TStringField;
    tblcvtCVT_VALO: TCurrencyField;
    tblcvtCVT_OBSE: TMemoField;
    tblimoPRO_NOME: TStringField;
    tblterPRO_NOME: TStringField;
    tblcalCAL_VALO: TCurrencyField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmod: Tdtmod;

implementation

{$R *.DFM}

end.
