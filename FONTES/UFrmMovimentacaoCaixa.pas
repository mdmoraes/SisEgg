unit UFrmMovimentacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, DB, DBTables, ExtCtrls, StdCtrls, Grids, DBGrids,
  Buttons, Mask, ComCtrls, DBDateTimePicker;

type
  TFrmMovimentacaoCaixa = class(TForm)
    dbgcai: TDBGrid;
    pnltota: TPanel;
    Label9: TLabel;
    Bevel3: TBevel;
    Label10: TLabel;
    Label11: TLabel;
    lbltoca: TLabel;
    lbltode: TLabel;
    lbltoce: TLabel;
    tblcai: TTable;
    dtscai: TDataSource;
    Label1: TLabel;
    edDataLancamento: TDBText;
    tbData: TTable;
    dsData: TDataSource;
    edCodLancamento: TDBText;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    btnincl: TBitBtn;
    BtnAlte: TBitBtn;
    BtnExcl: TBitBtn;
    btntcai: TBitBtn;
    BtnCanc: TBitBtn;
    BtnSair: TBitBtn;
    btnRelatorio: TBitBtn;
    btnSalvar: TBitBtn;
    tblcaiCAI_CODI: TAutoIncField;
    tblcaiCAI_DATA: TDateField;
    tblcaiCAI_DC11: TStringField;
    tblcaiCAI_DESC: TStringField;
    tblcaiCAI_VALO: TCurrencyField;
    tblcaiCAI_LANC: TStringField;
    tblcaiCod_lancamento: TFloatField;
    tbDataCod_lancamento: TFloatField;
    tbDataData_lancamento: TDateField;
    tbDataObs: TMemoField;
    procedure btninclClick(Sender: TObject);
    procedure BtnAlteClick(Sender: TObject);
    procedure BtnExclClick(Sender: TObject);
    procedure BtnCancClick(Sender: TObject);
    procedure btntcaiClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
  Escolha: Char;
  proximo: integer;
//    { Public declarations }
  end;

var
  FrmMovimentacaoCaixa: TFrmMovimentacaoCaixa;

implementation

uses Global;

{$R *.dfm}

procedure TFrmMovimentacaoCaixa.btninclClick(Sender: TObject);
begin

      if tbData.RecordCount = 0 then proximo:= 1;
//      If tblcai.RecordCount = 0 then proximo:= 1;
    //  if dtpdata.DateTime = Date()then
    //   dbgcai.SetFocus
    //  else
        begin
           tbData.Last;
  //         tblcai.Last;
  //         proximo:= tblcai.FieldByName('cai_codi').asinteger + 1;
            proximo:= tbData.FieldByName('cod_lancamento').asinteger + 1;
         end;
  //     if dtpdata.DateTime = Date()then
  //     dbgcai.SetFocus;
     //  tbData
     //  edtvalo.SetFocus;
       tbData.Append;
//       tblcai.Append;
       tbData['Data_Lancamento']:= DateToStr(Now);
       tbData.FieldByName('cod_lancamento').asinteger:= proximo;
//       tblcai.FieldByName('Cai_valo').ascurrency:= glbcurr;
//       tblcai.FieldByName('cai_desc').asstring  := ('Pagamento de Aluguel de ' + glbstring);
       tblcai.FieldByName('cai_dc11').asstring  := 'Crédito';
//       tblcai.FieldByName('cai_data').asdatetime:= Date();
//       tblcai.Post;
//        dbgcai.SetFocus;
//       restaura;
//    end;


end;

procedure TFrmMovimentacaoCaixa.BtnAlteClick(Sender: TObject);
begin
//tblcai.Edit;
//edtvalo.SetFocus;

end;

procedure TFrmMovimentacaoCaixa.BtnExclClick(Sender: TObject);
begin
tblcai.Delete;
tbData.Delete;
end;

procedure TFrmMovimentacaoCaixa.BtnCancClick(Sender: TObject);
begin
   tbData.Cancel;
   tblcai.cancel;
end;

procedure TFrmMovimentacaoCaixa.btntcaiClick(Sender: TObject);
var debito,credito,resul: currency;
    d,c1,d1: string;
begin
    pnltota.Visible := not pnltota.Visible;
    if pnltota.Visible then
      begin
         btntcai.Caption := '&Esconde';
     //    dbgcai.Height := 117;
         debito :=0;
         credito:=0;
         d:= 'debito';

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
       //  lbltoca.caption := clRed;
         lbltoca.caption := currtostrf(resul,ffCurrency,2);
      end
    else
      begin
       //  lbltoca.caption := clBlue;
         btntcai.Caption := '&Totalizar';
    //     pnltota.Visible := false;
    //     dbgcai.Height := 189;
      end;

end;

procedure TFrmMovimentacaoCaixa.BtnSairClick(Sender: TObject);
begin
Close;
end;

procedure TFrmMovimentacaoCaixa.FormShow(Sender: TObject);
begin
//lbltode.Caption = '';
//lbltoce.Caption = '';
//lbltoca.caption = '';
tbData.Open;
tblcai.Open;
end;

procedure TFrmMovimentacaoCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
tbData.Close;
tblcai.Close;
end;

procedure TFrmMovimentacaoCaixa.btnSalvarClick(Sender: TObject);
begin
tbData.Post;
//tblcai.Post;
end;

end.
