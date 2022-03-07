unit UPesquisaCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TFrmPesquisaCheque = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    GroupBox1: TGroupBox;
    rdNumCheque: TRadioButton;
    rdData: TRadioButton;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    DataI: TDateTimePicker;
    procedure btnFecharClick(Sender: TObject);
    procedure rdNumChequeClick(Sender: TObject);
    procedure rdDataClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DataIChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesquisaCheque: TFrmPesquisaCheque;

implementation

uses Base;

{$R *.dfm}

procedure TFrmPesquisaCheque.btnFecharClick(Sender: TObject);
begin
Panel2.Visible:= false;
close;
end;

procedure TFrmPesquisaCheque.rdNumChequeClick(Sender: TObject);
begin
dmdados.TContasPagar.IndexName:= 'INumCheque';
Edit1.SetFocus;
Panel2.Visible:= false;
end;

procedure TFrmPesquisaCheque.rdDataClick(Sender: TObject);
begin
dmdados.TContasPagar.IndexName:= 'IDatapagto';
Panel2.Visible:= True;
end;

procedure TFrmPesquisaCheque.Edit1Change(Sender: TObject);
begin
dmdados.TContasPagar.FindNearest([Edit1.Text]);
end;

procedure TFrmPesquisaCheque.DataIChange(Sender: TObject);
begin
dmdados.TContasPagar.FindNearest([DataI.Date]);
end;

procedure TFrmPesquisaCheque.FormShow(Sender: TObject);
begin
DataI.Date:= Date;
end;

end.
