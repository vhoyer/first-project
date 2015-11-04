Program Pzim ;
var 
n:integer;
highscoreAofN:array [1..5] of string;
highscorefofN:text;

Begin
assign(Highscorefofn, 'Highscoren.dat' ) ;
reset (Highscorefofn);
writeln('5 nomes: ');
for n:=1 to 5 do readln(Highscorefofn, Highscoreaofn[n]);
writeln(Highscoreaofn[1]);
writeln(Highscoreaofn[2]);
writeln(Highscoreaofn[3]);
writeln(Highscoreaofn[4]);
writeln(Highscoreaofn[5]);
close(Highscorefofn);
readln;
End.