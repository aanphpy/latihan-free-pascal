program operasifile;

{$mode objfpc}{$H+}

uses
  SysUtils, crt;

var
  fileName: String;
  fileContent: String;
  f: Text;

begin

  clrscr;

  filename := GetCurrentDir + '/test.txt';

  //Write to file
  assign(f, fileName);
  rewrite(f);
  writeln(f, '=========================');
  writeln(f, 'Hello World! From text!');
  writeln(f, '=========================');
  close(f);

  //Read from file
  assign(f, fileName);
  reset(f);
  while not eof(f) do begin
    readln(f, fileContent);
    writeln(fileContent);
  end;
  close(f);

end.
