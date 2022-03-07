unit Global;

interface
  uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, ComCtrls, DBDateTimePicker, Buttons,
  Db, DBTables;

  function cpf(num: string): boolean;
  function ChecaEstado(Dado : string) : boolean;
  procedure Jump(Form : TForm; key : Char);
  procedure limpavar;
  Function varrebanco:boolean;
  procedure relatorio;
Var
  GlbCodigo: Integer;
  glbBoolea: Boolean;
  glbString, glbrotina, glbende: String;
  glbdata: TdateTime;
  glbcurr: Currency;


  implementation
      uses unt_relcai;

function cpf(num: string): boolean;
var n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
  d1,d2: integer;
  digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[10]+num[11];
 if calculado=digitado then
   cpf:=true
  else
   cpf:=false;
end;

function ChecaEstado(Dado : string) : boolean;
const
Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
Posicao : integer;
begin
  Result := true;
  if Dado <> '' then
  begin
    Posicao := Pos(UpperCase(Dado),Estados);
    if (Posicao = 0) or ((Posicao mod 2) = 0) then
    begin
      Result := false;
    end;
  end;
end;

procedure Jump(Form : TForm; key : Char);
begin
  if Key = #13 then
  Form.Perform(Wm_NextDlgCtl,0,0);
end;

procedure limpavar;
begin
  GlbCodigo:= 0;
  glbString:='';
  glbrotina:='';
  glbende  :='';
end;

Function varrebanco:boolean;
var vAno,vMes,vDia: word;
    vData: TdateTime;
begin
    vData:=date;
    decodedate(vData,vAno,vMes,vDia);
    result:=false;
    if ((vDia = 1)  and (vMes = 1)) then result:= true;
end;

procedure relatorio;
Var ano, mes, dia: Word;
    Vdata: TDateTime;
    Aano: Array [1..12] of string;
begin
   vdata:= date;
   DecodeDate(vdata, ano, mes, dia);

   Aano[1]:='JANEIRO';
   Aano[2]:='FEVEREIRO';
   Aano[3]:='MARÇO';
   Aano[4]:='ABRIL';
   Aano[5]:='MAIO';
   Aano[6]:='JUNHO';
   Aano[7]:='JULHO';
   Aano[8]:='AGOSTO';
   Aano[9]:='SETEMBRO';
   Aano[10]:='OUTUBRO';
   Aano[11]:='NOVEMBRO';
   Aano[12]:='DEZEMBRO';

   try
     Application.CreateForm(TFrmrelcai, Frmrelcai);
     frmrelcai.lbldata.Caption :='RELATÓRIO DE FECHAMENTO DO CAIXA ' + Aano[mes] + '/'+ inttostr(ano);
     with frmrelcai.qrycai do
     begin
        close;
        sql.clear;

        sql.add('select * from cai Order by cai_data,cai_dc11');
        prepare;
        open;
     end;
 //    frmfecai.somarel;
     frmrelcai.Qrprelcai.preview;

   finally
     frmrelcai.free;
   end;
end;



end.






