Program Pzim ;
var
n:integer;
highscoreAofN:array [1..5] of string;
highscorefofN:file of array [1..5] of string;
highscoreA:array [1..5] of integer;
highscoref:file of array [1..5] of integer;

Begin
  repeat
    clrscr;
    assign(HighscoreF, 'Highscore.dat' ) ;
    reset(HighscoreF);
    read(highscoreF,HighscoreA);
    close(highscoreF);
    
    assign(HighscoreFofN, 'HighscoreN.dat' ) ;
    reset(highscoreFofN);
    read(highscoreFofN,highscoreAofN) ;
    close(highscoreFofN);
    
    for n:=1 to 5 do
    begin
      writeln(highscoreAofN[n]);
    end;
    
    for n:=1 to 5 do
    begin
      write(n,': ');read(highscoreAofN[n]);
    end;
    
    rewrite(highscoreFofN);
    write(highscorefofN,highscoreAofN);
    close(highscorefofN);
  until 2<>2;
End.