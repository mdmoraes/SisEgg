unit unt_fecai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, Buttons;

type
  Tfrmfecai = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel4: TPanel;
    Bevel1: TBevel;
    lbltode: TLabel;
    lbltoce: TLabel;
    lbltota: TLabel;
    Bevel2: TBevel;
    btnfecai: TBitBtn;
    btncanc: TBitBtn;
    procedure btnfecaiClick(Sender: TObject);
    procedure somacai;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure somarel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfecai: Tfrmfecai;

implementation

uses unt_relcai,global, unt_dtmod, UFrmMovimentoDiario;

{$R *.DFM}
procedure Tfrmfecai.btnfecaiClick(Sender: TObject);
var datacai: TdateTime;
begin
  if  messagedlg('Deseja imprimir o relatório de fechamento do caixa ?',mtconfirmation,[mbyes,mbno],0) = mryes then relatorio;
  datacai:= date;
  try
  tblcai.First;
  if tblcai.RecordCount <> 0 then
      while not tblcai.Eof do
      begin
         if tblcai.FieldByName('cai_data').asdatetime < datacai then tblcai.Delete
         else tblcai.Next;
      end;
  somacai;
  except
   messagedlg('Erro no fechamento do caixa !',mterror,[mbok],0);
   exit;
  end;
  messagedlg('Fechamento do caixa concluído com sucesso !',mtcustom,[mbok],0);
  btnfecai.Enabled :=false;
  close;
end;

procedure Tfrmfecai.somacai;
var debito,credito,resul: currency;
    d,c1,d1: string;
begin
   debito :=0;
   credito:=0;
   d:= 'Débito';

   tblcai.First;
   while not tblcai.Eof do
      begin
         if d = tblcai.FieldByName('cai_dc11').asString then
           begin
             d1:= currtostr(tblcai.fieldbyname('cai_valo').ascurrency);
             debito:= debito + strtocurr(d1);
             end
         else
           begin
              c1:= currtostr(tblcai.fieldbyname('cai_valo').ascurrency);
              credito:= credito + strtocurr(c1);
           end;
           tblcai.next;
         end;
         resul:= credito - debito;
         if resul < 0 then messagedlg('O saldo do caixa está negativo',mtwarning,[mbok],0);
         lbltode.Caption := currtostrf(debito,ffCurrency,2);
         lbltoce.Caption := currtostrf(credito,ffCurrency,2);
         lbltota.caption := currtostrf(resul,ffCurrency,2);

         if tblcai.RecordCount <> 0 then btnfecai.Enabled := true;
end;

procedure Tfrmfecai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tblcai.close;
end;

procedure Tfrmfecai.btncancClick(Sender: TObject);
begin
close;
end;

procedure Tfrmfecai.FormShow(Sender: TObject);
begin
tblcai.open;
somacai;
if tblcai.RecordCount = 0 then close;
end;

procedure Tfrmfecai.somarel;
var debito,credito,resul: currency;
    d,c1,d1: string;
begin
   debito :=0;
   credito:=0;
   d:= 'Débito';

   tblcai.First;
   while not tblcai.Eof do
      begin
         if d = tblcai.FieldByName('cai_dc11').asString then
           begin
             d1:= currtostr(tblcai.fieldbyname('cai_valo').ascurrency);
             debito:= debito + strtocurr(d1);
             end
         else
           begin
              c1:= currtostr(tblcai.fieldbyname('cai_valo').ascurrency);
              credito:= credito + strtocurr(c1);
           end;
           tblcai.next;
         end;
         resul:= credito - debito;
         frmrelcai.lblsubt.caption := currtostrf(resul,ffCurrency,2);
end;


end.


