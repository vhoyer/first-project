Program Tela_de_Carregamento ;
 Begin
 	randomize;
 	frame;
 	clrscr;
  gotoxy (26,10);
  textcolor (lightcyan);
  Writeln ('L - O - A - D - I - N - G...');
  gotoxy (24,11);
  delay (random(500)+100);
  textcolor (lightgreen);
  Writeln ('----');
  gotoxy (24,12);
  Writeln (#219,#219,#219,#219);
  gotoxy (24,13);
  Writeln ('----');
  Delay (random(500)+100);
  gotoxy (28,11);
  Write ('---');
  gotoxy (28,12);
  Writeln (#219,#219,#219);
  gotoxy (28,13);
  Writeln ('---');
  Delay (random(500)+100);
  gotoxy (31,11);
  Writeln ('---');
  gotoxy (31,12);
  Writeln (#219,#219,#219);
  gotoxy (31,13);
  Writeln ('---');
  Delay (random(500)+100);
  gotoxy (34,11);
  Writeln ('---');
  gotoxy (34,12);
  Writeln (#219,#219,#219);
  gotoxy (34,13);
  Writeln ('---');
  Delay (random(500)+100);
  gotoxy (37,11);
  Writeln ('---');
  gotoxy (37,12);
  Writeln (#219,#219,#219);
  gotoxy (37,13);
  Writeln ('---');
  Delay (500);
  gotoxy (40,11);
  Writeln ('---');
  gotoxy (40,12);
  Writeln (#219,#219,#219);
  gotoxy (40,13);
  Writeln ('---');
  delay (random(500)+100);
  gotoxy (43,11);
  Writeln ('---');
  gotoxy (43,12);
  Writeln(#219,#219,#219);
  gotoxy (43,13);
  Writeln ('---');
  delay (random(500)+100);
  gotoxy (46,11);
  Writeln ('---');
  gotoxy (46,12);
  Writeln (#219,#219,#219);
  gotoxy (46,13);
  Writeln ('---');
  delay (random(500)+100);
  gotoxy (49,11);
  Writeln ('---');
  gotoxy (49,12);
  Writeln (#219,#219,#219);
  gotoxy (49,13);
  Writeln ('---');
  delay (random(500)+100);
  gotoxy (52,11);
  writeln ('----');
  gotoxy (52,12);
  Writeln (#219,#219,#219,#219);
  gotoxy (52,13);
  Writeln ('----');
  delay (random(500)+100);
  gotoxy (18,14);
  Writeln ('JOGADOR! Pressione a tecla enter para continuar!');
  readln;
  textcolor(white);
 End.
