Program JogoDagua ;

//a tela tem 80x25

type registro = record
  user:string[16];
  email:string[25];
  senha,confSenha:string[16];
end;
confirma = record
  user,senha:string[16];
end;

var
conf:confirma;
login: registro;
menu,erro,goX,goY,HsAtual:integer;
confLogBool:boolean;
menui,confirmar,ch:char;
cadfile:file of registro;
highscoreA:array [1..5] of integer;
highscoref:file of array [1..5] of integer;

//Frame
procedure frame ;
var n:integer;
begin
  textcolor(yellow);
  gotoxy(1,1); write(#201); for n:= 1 to 78 do write(#205); write(#187); //top do frame
for n:=2 to 24 do begin gotoxy(1,n); write(#186); end;                   //borda direita
for n:=2 to 24 do begin gotoxy(80,n);write(#186); end;                   //borda esquerda
  gotoxy(1,25); write(#200); for n:= 1 to 78 do write(#205); write(#188);//botton do frame
  gotoxy(1,1);textcolor(white);
end;

//regras/how_to do jogo
procedure Srule ;
begin
  clrscr;
  frame;
end;

//HIGHSCORES
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
//write highscore
procedure highscoreWrite ;
var n,temp:integer;
begin
  assign(HighscoreF, 'Highscore.dat' ) ;
  reset(HighscoreF);
  read(highscoreF,HighscoreA);
  for n:=1 to 5 do
  begin
    if HsAtual>highscoreA[n]	then
    begin
      temp:=highscoreA[n];
      highscoreA[n]:=HsAtual;
      HsAtual:=temp;
    end;
  end;
  close(highscoreF);
  rewrite(highscoreF);
  write(highscoreF,highscoreA);
  close(highscoreF);
end;

//Show highscore
procedure highscore ;
begin
  clrscr;
  frame;
  assign(HighscoreF, 'Highscore.dat' ) ;
  reset(HighscoreF);
  read(HighscoreF,HighscoreA) ;
  gotoxy(35,6);write ('As Melhores Pontuações:');
  gotoxy(35,8);write ('1. ',highscoreA[1]);
  gotoxy(35,10);write('2. ',highscoreA[2]);
  gotoxy(35,12);write('3. ',highscoreA[3]);
  gotoxy(35,14);write('4. ',highscoreA[4]);
  gotoxy(35,16);write('5. ',highscoreA[5]);
  close(HighscoreF);
  gotoxy(35,18);write('Pressione <enter> para voltar');
  if readkey=#13 then
end;



//Joginho
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------
procedure Jogo;
var Qdlay,goXJ,goYJ,NdaGota,alt,n3:integer;

//jogo:grafico
procedure balde;
begin
  textcolor(lightblue);
  gotoxy(goXJ,goYJ+1);write(' ' ,#219,#219,#219,#219,#219,#219,#219,' ');
  gotoxy(goXJ,goYJ+2);write(' ' ,#219,#219,#219,#219,#219,#219,#219,' ');
  gotoxy(goXJ,goYJ+3);write(' ' ,#219,#219,#219,#219,#219,#219,#219,' ');
  gotoxy(goXJ,goYJ+4);write(' ' ,#223,#219,#219,#219,#219,#219,#223,' ');
  gotoxy(goXJ,goYJ+5);write('  ',#219);textcolor(cyan);write(#178,#178,#178);textcolor(lightblue);write(#219,'  ');
  gotoxy(goXJ,goYJ+6);write('  ',#219,#219,#219,#219,#219,'  ');
  textcolor(white);
end;

//jogo:grafico
procedure teto;
var n1,n2:integer;
begin
  gotoxy(2,2);
  for n1:=1 to 19 do
  begin
    textbackground(red);
    textcolor(lightgray);
    write(#196,#194,#196,#193);
  end;
  write(#196,#194);
  gotoxy(2,3);
  for n1:=1 to 19 do
  begin
    textbackground(red);
    textcolor(lightgray);
    write(#196,#193,#196,#194);
  end;
  write(#196,#193);
  gotoxy(2,4);
  for n1:=1 to 19 do
  begin
    textbackground(red);
    textcolor(lightgray);
    write(#196,#194,#196,#193);
  end;
  write(#196,#194);
  textbackground(black);
  textcolor(white);
end;

//jogo:procedure

procedure gotaOnde;
begin
  randomize;
  alt:=5;
  NdaGota:=random(66)+8; 
end;

procedure AQuedadaGota;
begin
  //delay(Qdlay);
  gotoxy(NdaGota,Alt);textcolor(cyan);write(#178);
  alt:=alt+1;
  if alt>6 then
  begin
    gotoxy(ndagota,alt-2);
    write(' ');
  end
  else
  if alt=23 then
  begin
    gotoxy(ndagota,alt);
    write(' ');
  end;
end;

//jogo:procedimento
procedure goRight;
begin
  if goXJ<=70 then
  begin
    goXJ:=goXJ+1;
    balde;
  end;
end;

//jogo:procedimento
procedure goLeft;
begin
  if goXJ>=3 then
  begin
    goXJ:=goXJ-1;
		balde;
  end;
end;
//--------------------------------------------------------------------
//--------------------------------------------------------------------
//--------------------------------------------------------------------
begin
  clrscr;
  frame;
  teto;
  goYJ:=18;
  goXJ:=38;
  Qdlay:=500;
  balde;
  repeat
    gotaonde;
    for n3:=1 to 19 do
    begin
      aquedadagota;
      if (keypressed) then
      begin
        case upcase(readkey) of
          #75: begin
            goLeft();
            Qdlay:=25;
            delay(Qdlay);
          end;
          #77: begin
            goRight();
            Qdlay:=25;
            delay(Qdlay);
          end;
        end;
      end
      else
      Qdlay:=50;
      delay(Qdlay);
    end;
    if (ndagota<=goxj+1) and (ndagota>=goxj+5) then break else;
  until 2<>2;
  //HsAtual:=;
end;
//-------------------------------------------------------------------------
//-------------------------------------------------------------------------



Procedure AfterMenu ;
begin
  clrscr;
  repeat
    frame;
    gotoxy(35,6);write('Entre com um indice:');
    gotoxy(35,8);write('0.Sair');
    gotoxy(35,10);write('1.Jogar');
    gotoxy(35,12);write('2.Melhor pontuação');
    gotoxy(35,14);write('3.pontuação edite');
    gotoxy(35,16);menui:=readkey;val(menui,menu,erro);
    clrscr;
  until erro = 0;
  case menui of
    '0': ;
  '1': begin jogo; afterMenu; end;
  '2': begin highscore; afterMenu; end;
  '3': begin Srule; afterMenu; end;
  end;
end;

//o programa fica aqui em baixo !!!!
Begin
  repeat
    clrscr;
    aftermenu;
    repeat
      clrscr;
      frame;
      gotoxy(35,10);write('Continuar? (');textcolor(lightgreen);write('S');textcolor(white);write('im/');textcolor(lightgreen);write('N');textcolor(white);write('ão)');
      gotoxy(35,11);confirmar:=readkey;
      if (confirmar='S')or(confirmar='s')or(confirmar='N')or(confirmar='n') then erro:=10 else
    until erro=10;
  until (confirmar ='N') or (confirmar ='n');
End.