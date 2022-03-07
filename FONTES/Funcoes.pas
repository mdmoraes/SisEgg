unit Funcoes;

interface

uses
  DBTables, Dialogs, SysUtils, Windows, Messages, Forms, Winsock;

function extenso(valor: real): string;
function vercpf(snrcpf: string): boolean;
function VerCGC(snrcgc: string): boolean;
function GetIP: string;
function GetHstName(strIPAddress: string): string;
function UltimodoMes(wMes, wAno: word): word;

implementation

function GetHstName(strIPAddress: string): string;
var
  strHost: string;
  pszIPAddress: PChar;
  pReturnedHostEnt: PHostEnt;
  InternetAddr: u_long;
  GInitData: TWSADATA;
begin
  strHost := '';
  if WSAStartup($101, GInitData) = 0 then
  begin
    pszIPAddress := StrAlloc(Length(strIPAddress) + 1);
    StrPCopy(pszIPAddress, strIPAddress);
    InternetAddr := Inet_Addr(pszIPAddress);
    StrDispose(pszIPAddress);
    pReturnedHostEnt := GetHostByAddr(PChar(@InternetAddr), 4, PF_INET);
    try
      strHost := pReturnedHostEnt^.h_name;
      WSACleanup;
      Result := strHost;
    except
      Result := 'Host inválido ou não encontrado';
    end;
  end;
end;

function GetIP: string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d', [byte(h_addr^[0]), byte(h_addr^[1]),
      byte(h_addr^[2]), byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

function extenso(valor: real): string;
var
  Centavos, Centena, Milhar, Milhao, Texto, msg: string;
const
  Unidades: array[1..9] of string = ('Um', 'Dois', 'Três', 'Quatro', 'Cinco',
    'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array[1..9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze',
    'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');
  Dezenas: array[1..9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta',
    'Cinqüenta', 'Sessenta', 'Setenta',
    'Oitenta', 'Noventa');
  Centenas: array[1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
    'Quatrocentos', 'Quinhentos', 'Seiscentos',
    'Setecentos', 'Oitocentos', 'Novecentos');

  function ifs(Expressao: boolean; CasoVerdadeiro, CasoFalso: string): string;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result := CasoFalso;
  end;

  function MiniExtenso(trio: string): string;
  var
    Unidade, Dezena, Centena: string;
  begin
    Unidade := '';
    Dezena := '';
    Centena := '';

    if (trio[2] = '1') and (trio[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(trio[3])];
      Dezena := '';
    end
    else
    begin
      if trio[2] <> '0' then Dezena := Dezenas[StrToInt(trio[2])];
      if trio[3] <> '0' then Unidade := Unidades[StrToInt(trio[3])];
    end;

    if (trio[1] = '1') and (Unidade = '') and (Dezena = '') then
      Centena := 'Cem'
    else if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';
    Result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')),
      ' e ', '') + Dezena + ifs((Dezena <> '') and (Unidade <> ''), ' e ', '') + Unidade;
  end;                                  //fim da função MiniExtenso
begin
  if (valor > 999999.99) or (valor < 0) then
  begin
    msg := 'O valor está fora do intervalo permitido.';
    msg := msg + 'O número deve ser maior ou igual a zero e menor que 999.999,99.';
    msg := msg + ' Se não for corrigido o número não será escrito por extenso.';
    ShowMessage(msg);
    Result := '';
    exit;
  end;

  if valor = 0 then
  begin
    Result := '';
    exit;
  end;

  Texto := formatfloat('000000.00', valor);
  Milhar := MiniExtenso(Copy(Texto, 1, 3));
  Centena := MiniExtenso(Copy(Texto, 4, 3));
  Centavos := MiniExtenso('0' + Copy(Texto, 8, 2));
  Result := Milhar;

  if Milhar <> '' then
    if Copy(Texto, 4, 3) = '000' then
      Result := Result + ' Mil Reais'
    else
      Result := Result + ' Mil e ';      // o "e" do if abaixo foi substituido por este

  {if (((copy(texto,4,2)='00') and (Milhar<>'')
     and (copy(texto,6,1)<>'0')) or (centavos=''))
     and (Centena<>'') then
       Result:=Result+' e ';}

  if (Milhar + Centena <> '') then Result := Result + Centena;

  if (Milhar = '') and (Copy(Texto, 4, 3) = '001') then
    Result := Result + ' Real'

  else if (Copy(Texto, 4, 3) <> '000') then
    Result := Result + ' Reais';

  if Centavos = '' then
  begin
    Result := Result + '.';
    exit;
  end
  else
  begin
    if Milhar + Centena = '' then
      Result := Centavos
    else
      Result := Result + ', e ' + Centavos;

    if (Copy(Texto, 8, 2) = '01') and (Centavos <> '') then
      Result := Result + ' Centavo.'
    else
      Result := Result + ' Centavos.';
  end;
end;

function vercpf(snrcpf: string): boolean;
var
  WCPFCALC: string;
  WSOMACPF: integer;
  WSX1: shortint;
  WCPFDIGT: integer;
  digit: string;
  s: string;
begin
  s := snrcpf;
  digit := Copy(snrcpf, 14, 1);
  while Pos('.', s) > 0 do
    s[Pos('.', s)] := ' ';
  while Pos('-', s) > 0 do
    s[Pos('-', s)] := ' ';
  s := TRIM(s);
  if s = '' then
  else if length(s) < 11 then
  begin
    application.messagebox('CPF Inválido !', 'Atenção!', mb_iconstop + mb_ok);
    vercpf := False;
  end
  else
  begin
    snrcpf := Copy(snrcpf, 1, 3) + Copy(snrcpf, 5, 3) +
      Copy(snrcpf, 9, 3) + Copy(snrcpf, 13, 2);
    WCPFCALC := Copy(snrcpf, 1, 9);
    WSOMACPF := 0;
    for WSX1 := 1 to 9 do
      WSOMACPF := WSOMACPF + StrToInt(Copy(WCPFCALC, WSX1, 1)) * (11 - WSX1);
    WCPFDIGT := 11 - WSOMACPF mod 11;
    if WCPFDIGT in [10, 11] then
    begin
      WCPFCALC := WCPFCALC + '0';
    end
    else
    begin
      WCPFCALC := WCPFCALC + IntToStr(WCPFDIGT);
    end;
    WSOMACPF := 0;
    for WSX1 := 1 to 10 do
      WSOMACPF := WSOMACPF + StrToInt(Copy(WCPFCALC, WSX1, 1)) * (12 - WSX1);
    WCPFDIGT := 11 - WSOMACPF mod 11;
    if WCPFDIGT in [10, 11] then
    begin
      WCPFCALC := WCPFCALC + '0';
    end
    else
    begin
      WCPFCALC := WCPFCALC + IntToStr(WCPFDIGT);
    end;
    if snrcpf <> WCPFCALC then
    begin
      application.messagebox('CPF Inválido !', 'Atenção!', mb_iconstop + mb_ok);
      vercpf := False;
      Result := False;
    end
    else
    begin
      vercpf := True;
      Result := True;
    end;
  end;
end;

function VerCGC(snrcgc: string): boolean;
var
  WCGCCALC: string;
  WSOMACGC: integer;
  WSX1: shortint;
  WCGCDIGT: integer;
  s: string;
begin
  s := snrcgc;
  while Pos('.', s) > 0 do
    s[Pos('.', s)] := ' ';
  while Pos('/', s) > 0 do
    s[Pos('/', s)] := ' ';
  while Pos('-', s) > 0 do
    s[Pos('-', s)] := ' ';
  s := TRIM(s);
  if s = '' then
  else if length(s) < 18 then
  begin
    application.messagebox('CGC Inválido !', 'Atenção!', mb_iconstop + mb_ok);
    VerCGC := False;
  end
  else
  begin
    snrcgc := Copy(snrcgc, 1, 2) + Copy(snrcgc, 4, 3) +
      Copy(snrcgc, 8, 3) + Copy(snrcgc, 12, 4) + Copy(snrcgc, 17, 2);
    WCGCCALC := Copy(snrcgc, 1, 12);
    WSOMACGC := 0;
    for WSX1 := 1 to 4 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1, 1)) * (6 - WSX1);
    for WSX1 := 1 to 8 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1 + 4, 1)) * (10 - WSX1);
    WCGCDIGT := 11 - WSOMACGC mod 11;
    if WCGCDIGT in [10, 11] then
    begin
      WCGCCALC := WCGCCALC + '0';
    end
    else
    begin
      WCGCCALC := WCGCCALC + IntToStr(WCGCDIGT);
    end;
    WSOMACGC := 0;
    for WSX1 := 1 to 5 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1, 1)) * (7 - WSX1);
    for WSX1 := 1 to 8 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1 + 5, 1)) * (10 - WSX1);
    WCGCDIGT := 11 - WSOMACGC mod 11;
    if WCGCDIGT in [10, 11] then
    begin
      WCGCCALC := WCGCCALC + '0';
    end
    else
    begin
      WCGCCALC := WCGCCALC + IntToStr(WCGCDIGT);
    end;
    if snrcgc <> WCGCCALC then
    begin
      application.messagebox('CGC Inválido !', 'Atenção!', mb_iconstop + mb_ok);
      VerCGC := False;
      Result := False;
    end
    else
    begin
      VerCGC := True;
      Result := True;
    end;
  end
end;

function UltimodoMes(wMes, wAno: word): word;
var
  UltMes: TDateTime;
begin
  if wMes > 12 then
    raise ERangeError.Create('Mês inválido');
  // mês seguinte
  Inc(wMes);
  // se mês > 12 incrementa o ano e volta mês a 1
  if wMes > 12 then
  begin
    wMes := 1;
    Inc(wAno);
  end;
  // pega data do último do mês
  UltMes := EncodeDate(wAno, wMes, 1) - 1;
  // decodifica para pegar o último dia do mês
  DecodeDate(UltMes, wAno, wMes, Result);
end;

end.
