Program Pzim ;
var
n:integer;
highscoreAofN:array [1..5] of string;
highscorefofN:text;

Begin
assign(Highscorefofn, 'Highscoren.dat' ) ;
rewrite(Highscorefofn);
writeln('5 nomes: ');
read(Highscoreaofn[1],Highscoreaofn[2],Highscoreaofn[3],Highscoreaofn[4],Highscoreaofn[5]);
for n:=1 to 5 do writeln(Highscorefofn, Highscoreaofn[n]);
close(Highscorefofn);
End.