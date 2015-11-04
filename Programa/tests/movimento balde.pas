Program Pzim ;

var goXJ,goYJ:integer;
ch: char;

procedure balde;
begin
  textcolor(lightblue);
  gotoxy(goXJ,goYJ+1);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+2);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+3);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+4);write(#223,#219,'   ',#219,#223);
  gotoxy(goXJ,goYJ+5);write(' ',#219);textcolor(cyan);write(#178,#178,#178);textcolor(lightblue);write(#219);
  gotoxy(goXJ,goYJ+6);write(' ',#219,#219,#219,#219,#219,' ');
  textcolor(white);
end;

procedure baldeAnimeL;
begin
  textcolor(lightblue);
  gotoxy(goXJ,goYJ+1);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+2);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+3);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+4);write(#223,#219,'  ');textcolor(cyan);write(#178);textcolor(lightblue);write(#219,#223);
  gotoxy(goXJ,goYJ+5);write(' ',#219);textcolor(cyan);write(#178,#178,#178);textcolor(lightblue);write(#219);
  gotoxy(goXJ,goYJ+6);write(' ',#219,#219,#219,#219,#219,' ');
  textcolor(white);
end;

procedure baldeAnimeR;
begin
  textcolor(lightblue);
  gotoxy(goXJ,goYJ+1);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+2);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+3);write(#219,'     ',#219);
  gotoxy(goXJ,goYJ+4);write(#223,#219);textcolor(cyan);write(#178);textcolor(lightblue);write('  ',#219,#223);
  gotoxy(goXJ,goYJ+5);write(' ',#219);textcolor(cyan);write(#178,#178,#178);textcolor(lightblue);write(#219);
  gotoxy(goXJ,goYJ+6);write(' ',#219,#219,#219,#219,#219,' ');
  textcolor(white);
end;


procedure goRight;
begin
  if goXJ<=72 then
  begin
    clrscr;
    goXJ:=goXJ+1;
    baldeAnimeR;
    delay(100);
    balde;
  end;
end;

procedure goLeft;
begin
  if goXJ>=3 then
  begin
    clrscr;
    goXJ:=goXJ-1;
    baldeAnimeL;
    delay(100);
    balde;
  end;
end;

procedure LorR;
begin
  ch:=readkey;
  if (ch = #77) then goRight else if (ch = #75) then goLeft;
end;

Begin
  goYJ:=16;
  goXJ:=38;
  balde;
  repeat
    lorr;
  until ch=#27
End.