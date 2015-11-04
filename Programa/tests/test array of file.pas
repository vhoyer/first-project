Program Pzim ;

type cad = array[1..5] of record
	nome,nume,ende:string
	end;

var
	n      : integer;
	cadinfo: cad;
//	cad
	cadfile: file of cad;

Begin
	assign(cadfile, 'dados.txt' ) ;
	rewrite(cadfile);
	
	while (n <> 6) do
	begin
		reset(cadfile);
		n:= n+filesize(cadfile)+1;
	  readln(cadinfo[n].nome);
	  readln(cadinfo[n].nume);
	  readln(cadinfo[n].ende);
	  writeln;
	  write(cadfile,cadinfo);
	  writeln('nome: ',cadinfo[n].nome);
	  writeln('nume: ',cadinfo[n].nume);
	  writeln('ende: ',cadinfo[n].ende);
	  writeln('file size: ',filesize(cadfile),' n: ',n);
	  close(cadfile);
	  writeln;
  end;
  close(cadfile);
End.