unit UTabeladePrecosBalcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TFrmTabeladePrecosBalcao = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTabeladePrecosBalcao: TFrmTabeladePrecosBalcao;

implementation

uses Base;

{$R *.dfm}

procedure TFrmTabeladePrecosBalcao.SpeedButton1Click(Sender: TObject);
begin
 close;
end;

procedure TFrmTabeladePrecosBalcao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if not odd(DbGrid1.DataSource.DataSet.RecNo) then
    if not (gdSelected in State) then
      With DBGrid1 do
      begin
        Canvas.Brush.Color:= $00EFFAE5; //cor verde claro
        Canvas.FillRect(Rect);          //pinta a célula
        DefaultDrawDataCell(Rect,Column.Field,State); //pinta o texto
      end;
end;

procedure TFrmTabeladePrecosBalcao.FormShow(Sender: TObject);
begin
dmdados.Tbprodutos.IndexName:= 'idxPro_ref';
end;

end.
