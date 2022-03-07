unit UAtualizaQtdOvo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DB, DBTables, Grids, DBGrids, Gauges, StdCtrls;

type
  TFrmAtualizaQtdOvo = class(TForm)
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    tbQtdOvo: TTable;
    tblQtdOvoIt_Quantidade: TFloatField;
    tblQtdOvoIt_Ref: TStringField;
    tblQtdOvoIt_Unid: TStringField;
    tblQtdOvoIt_QtdOvo: TFloatField;
    btnOK: TSpeedButton;
    Gauge1: TGauge;
    tblQtdOvoIt_UN_GERAL: TStringField;
    btnLimpaBase: TSpeedButton;
    lblRecno: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnLimpaBaseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtualizaQtdOvo: TFrmAtualizaQtdOvo;

implementation

uses Base;

{$R *.dfm}

procedure TFrmAtualizaQtdOvo.btnOKClick(Sender: TObject);
begin
  tbQtdOvo.First;

  Gauge1.MaxValue := tbQtdOvo.RecordCount;

  while not tbQtdOvo.Eof do
  begin
      if (tblQtdOvoIt_QtdOvo.Value > 0) and (tblQtdOvoIt_Unid.Value <> 'UN') then
      begin
      tbQtdOvo.Edit;
      tblQtdOvoIt_UN_GERAL.Value := 'CX';
      tbQtdOvo.Post;
      end else
      begin
      tbQtdOvo.Edit;
      tblQtdOvoIt_UN_GERAL.Value := 'UN';
      tbQtdOvo.Post;
      end;





//          tbQtdOvo.Edit;
//          if tblQtdOvoIt_Unid.Value = 'UN' then
//          begin
//          tblQtdOvoIt_QtdOvo.Value;
//          tblQtdOvoIt_QtdOvo.Value := tblQtdOvoIt_Quantidade.Value * 360;
//          tbQtdOvo.Post;
//          end
//          else
//
//          tbQtdOvo.Edit;
//          if tblQtdOvoIt_Unid.Value = 'DZ' then
//          begin
//          tblQtdOvoIt_QtdOvo.Value;
//          tblQtdOvoIt_QtdOvo.Value := tblQtdOvoIt_Quantidade.Value * 12;
//          tbQtdOvo.Post;
//          end
//          else
//
//          tbQtdOvo.Edit;
//          if tblQtdOvoIt_Unid.Value = 'BD' then
//          begin
//          tblQtdOvoIt_QtdOvo.Value;
//          tblQtdOvoIt_QtdOvo.Value := tblQtdOvoIt_Quantidade.Value * 30;
//          tbQtdOvo.Post;
//          end
//          else
//          tbQtdOvo.Edit;
//          if tblQtdOvoIt_Unid.Value = 'CX' then
//          begin
//          tblQtdOvoIt_QtdOvo.Value;
//          tblQtdOvoIt_QtdOvo.Value := tblQtdOvoIt_Quantidade.Value * 360;
//          tbQtdOvo.Post;
//          end;

  tbQtdOvo.Next;
  Gauge1.Progress:=Gauge1.Progress + 1;
  end;
  ShowMessage('PROCESSO TERMINADO !');

end;

procedure TFrmAtualizaQtdOvo.btnLimpaBaseClick(Sender: TObject);
var
    sRef: string;
    i: Integer;
begin


  tbQtdOvo.First;

  Gauge1.MaxValue := tbQtdOvo.RecordCount;

  while not tbQtdOvo.Eof do
  begin
      sRef := tblQtdOvoIt_Ref.AsString;
      i := Length(sRef);

//      if (tblQtdOvoIt_QtdOvo.IsNull = True) or (tblQtdOvoIt_QtdOvo.Value = 0) then
//      begin
//      tbQtdOvo.Delete;
//      end;

      if i >= 3  then
      begin
      tbQtdOvo.Edit;
      tblQtdOvoIt_UN_GERAL.Value := 'UN';
    //  tbQtdOvo.Post;
      end;

      if i = 2  then
      begin
      tbQtdOvo.Edit;
      tblQtdOvoIt_UN_GERAL.Value := 'CX';
   //   tbQtdOvo.Post;
      end;


  tbQtdOvo.Next;
  Gauge1.Progress:=Gauge1.Progress + 1;
  end;
  tbQtdOvo.Edit;
  tbQtdOvo.Post;
  tbQtdOvo.Refresh;
  lblRecno.Caption := IntToStr(tbQtdOvo.RecordCount);
  ShowMessage('PROCESSO TERMINADO !');
end;

end.
