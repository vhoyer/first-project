Program Pzim ;

var
ch:array[1..16] of char;
n:integer;
senha:string;
Begin
  write('senha: ');
  for n:=1 to 16 do
  begin
    gotoxy(8+n,1);
    ch[n]:=readkey;
    if ch[n]=#08 then 
		begin
		n:=n-2;
		gotoxy(8+n,1);
		write(' '); 
		end else
    if ch[n]=#13 then break else
    if (ch[n]<>#08) or (ch[n]<>#13) then
    begin
      gotoxy(7+n,1);
      write('*');
    end;
  end;
  senha:=ch[1]+ch[2]+ch[3]+ch[4]+ch[5]+ch[6]+ch[7]+ch[8]+ch[9]+ch[10]+ch[11]+ch[12]+ch[13]+ch[14]+ch[15]+ch[16];
  gotoxy(1,2);write('sua senha: ',senha);
  readln;
End.