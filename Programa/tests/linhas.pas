Program Pzim ;
var goxt,goyt,nl:integer;
Begin
   goxt:=3;
   goyt:=2;
   repeat
   nl:=0;
   clrscr;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('11111');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('22222');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('33333');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('44444');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('55555');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('66666');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('77777');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('88888');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('99999');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('101010');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('111111');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('121212');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('131313');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('141414');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('151515');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('161616');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('171717');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('181818');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('191919');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('202020');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('212121');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('222222');end;nl:=nl+1;
   if (goyt+nl>=2) and (goyt+nl<=22) then begin gotoxy(goxt,goyt+nl);write('242424');end;nl:=nl+1;
   gotoxy(3,24);write(' ',#30,' ',#31,' controlam a rolagem do texto                   <ESC> volta para o menu');
	 gotoxy(1,1);
	 case (readkey) of
   #80:goyt:=goyt-1;
   #72:goyt:=goyt+1;
   #27:break;
   end;
   until 2<>2;
End.