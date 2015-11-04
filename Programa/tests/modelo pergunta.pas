program pzim;

Var
HsAtual,n:integer;
goXJ,goYJ:integer;
Begin
  goXJ:= 45;
  goYJ:= 5;
  gotoxy (goXJ,goYJ +00); write ('1-Quantos litros de água são gastos');
	gotoxy (goXJ,goYJ +01); write ('ao deixar uma torneira parcialmente');
  gotoxy (goXJ,goYJ +02); write ('aberta por 15 min?                 ');
  gotoxy (goXJ,goYJ +03); write ('                                   '); 
	gotoxy (goXJ,goYJ +04); write ('                                   ');
	gotoxy (goXJ,goYJ +05); write ('                                   ');
	gotoxy (goXJ,goYJ +06); write ('1)26 litros                        ');
  gotoxy (goXJ,goYJ +07); write ('2)16 litros                        ');
  gotoxy (goXJ,goYJ +08); write ('3)329 litros                       ');
  gotoxy (goXJ,goYJ +09); write ('4)243 litros                       ');
  gotoxy (goXJ,goYJ +10);
  for n:= 100 downto 0 do
  begin
    if (keypressed) then
    begin
      case upcase(readkey) of
        '4': begin
          HsAtual:= HsAtual+n;
          break;
        end;
        '1','2','3':break;
      end;
    end;
		delay(100);
  End;
  
end.