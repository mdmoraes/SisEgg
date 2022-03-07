unit UFrmComissaoVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ExtCtrls, DBTables, Grids, DBGrids,
  RXCtrls, Mask, ComCtrls, DBCtrls;

type
  TFrmComissaoVendedores = class(TForm)
    dsComissaoVendedor: TDataSource;
    DBGrid1: TDBGrid;
    QryComissaoVendedor: TQuery;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSair: TBitBtn;
    QryComissaoVendedorPed_Numero: TIntegerField;
    QryComissaoVendedorPed_Data: TDateField;
    QryComissaoVendedorPed_Cliente: TStringField;
    QryComissaoVendedorPed_VrFinal: TCurrencyField;
    QryComissaoVendedorPed_Vendedor: TStringField;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    MaskEdit1: TMaskEdit;
    rxlblComissao: TRxLabel;
    RxLabeldtInicio: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComissaoVendedores: TFrmComissaoVendedores;

implementation

uses Base;

{$R *.dfm}

end.
