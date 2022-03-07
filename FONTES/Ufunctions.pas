Unit Ufunctions;

Interface
//  Procedure OpenDataBases;
  Procedure Logging(mUsuario: String; mCodAcao: Integer);
//  Function ConsisteEMail(const EMail: ShortString): Boolean;
  //  Function  StrZero( Num:Double; Tam:Integer ):String;
//  procedure OnEnter(Sender: TObject; var Key: Char);
//  Procedure RelClientesProcesso;
  Procedure FechaArquivos;
  Procedure AbreArquivos;

  Const fLogin_OK = 1 ;
  Const fLogout_OK = 2 ;
  Const fSenha_Errada = 3 ;
  Const fApelido_Errado = 4 ;
  Const fExecucao_Abortada = 5 ;
  Const fAbotada_Desc = 6 ;
  Const fNivel_Proibido = 7 ;
  Const fBackUp_OK = 8 ;
  Const fSys_OK = 9 ;
  Const fGrava_OK = 10 ;
  Const fExclui_OK = 11 ;
  Const fAltera_OK = 12 ;
  Const fSenha_OK = 12 ;

  // Definições para segurança
  Const fSupervisor = 1;
  Const fOperador2 = 2;
  Const fOperador1 = 3;
//  Const fAdvogado = 2;
//  Const fEstagiario = 2;
//  Const fUsuario2 = 2;
//  Const fUsuario1 = 1;
  Const fConvidado = 0;

  // Definição dos ramos do processesso
//  Const fAdministrativa = 0;
//  Const fCivil          = 1;
//  Const fCriminal       = 2;
//  Const fTrabalhista    = 3;
//  Const fTributaria     = 4;

  // Definição dos eventos para filtro
//  Const fAudiencias = 1;
//  Const fFatais = 4;

  // Definição dos ramos do processesso
//  Const fAndamento = 1;
//  Const fArquivado = 2;
//  Const fParado    = 3;
//  Const fOutros    = 4;
//  Const fEncerrado = 6;
//  Const fAgenda      = 1;
//  Const fRelEspecial = 2;


  // Descrição dos grupos
//  Const fAtivos: Array[0..4] of String =('Autuado', 'Autor','Estado','Reclamada','Autor');
//  Const fPassivos: Array[0..4] of String =('Estado','Réu','Reu','Reclamante','Réu');
//  Const DataVazia = '  /  /    ';


Implementation
Uses   SysUtils, Dialogs, Classes,  Windows, Messages,
       Graphics, Controls, Forms, StdCtrls, Buttons, DBCGrids,
       ExtCtrls, Mask, ComCtrls, DB, Printers, UDMUsuario;

Procedure Logging(mUsuario: String; mCodAcao: Integer);
Begin
    {Acha a mensagem}
    {Dm.TMensagem.FindKey([mCodAcao]);}
    DmSenha.TLog.Append;
    {Grava os dados}
    DmSenha.TLogUsuario.Value := mUsuario;
    DmSenha.TLogOperacao.Value := ' ';{Dm.TMensagemDescricao.Value;}
//    Dm.TLogSeveridade.Value := ' ';{Dm.TMensagemSeveridade.Value;}
    DmSenha.TLogData.Value := date+time;
    DmSenha.TLog.Post;
end;


Procedure FechaArquivos;
Begin
  // o  config
  DMSenha.TUsuario.Active := False;
  DMSenha.TLog.Active := False;
//  DM.TUF.Active := False;
  // o padrão...
End;

Procedure AbreArquivos;
Begin
  // o  config
  DMSenha.TUsuario.Active := True;
  DMSenha.TLog.Active := True;
//  DM.TUF.Active := True;
  // o padrão...
End;

{Function IntToZero(mNumZeros:Integer, mValor:String): String;
Begin

end}

{Function StrZero( Num:Double; Tam:Integer ):String;
Var
   BTemp:String;
   i:Integer;
Begin
   BTemp:=Format( '%'+IntToStr( Tam )+'.0f',[Num] );
   For i:=1 to Tam do if BTemp[i]=' ' then BTemp[i]:='0';
   StrZero:=BTemp;
End; }

procedure OnEnter(Sender: TObject; var Key: Char);
Begin

End;

Procedure RelClientesProcesso;
begin
end;

{Function ConsisteEMail(const EMail: ShortString): Boolean;
begin
  Result := True;
  if EMail <> '' then begin
    Result := (Pos('@', EMail) > 0) and (Pos('.', EMail) > 0) then
  //  if not Result then
  begin
    if Result := False then
      Result := ShowMessage('O endereço de correio eletrônico "' + EMail + '" é inválido.');
  end;
end;}

Procedure OpenDataBases;
Begin

end;


end.
