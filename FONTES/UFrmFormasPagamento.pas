unit UFrmFormasPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ExtCtrls,
  DBCtrls, Grids, DBGrids;

type
  TFrmCadastroFormasPagamento = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnSair: TBitBtn;
    btnFoco: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroFormasPagamento: TFrmCadastroFormasPagamento;

implementation

uses Base, Interno;

{$R *.dfm}

procedure TFrmCadastroFormasPagamento.btnSairClick(Sender: TObject);
begin
btnFoco.SetFocus;
Close;
end;

procedure TFrmCadastroFormasPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     btnSairClick(self);
     if DMDados.tbFormasPagamento.Modified then
     if Application.MessageBox('Gravar alterações?', 'Dados foram Alterados', MB_ICONQUESTION
    + MB_YESNO) = IDYES then
       DMDados.tbFormasPagamento.Post
      else
      DMDados.tbFormasPagamento.Cancel;
end;

end.
