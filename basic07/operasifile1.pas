program operasifile;

{$mode objfpc}{$H+}

uses
  SysUtils, crt;

var
  fileName: String;
  fileContent: String;
  f: Text;
  i: Integer;

begin

  clrscr;

  fileName := GetCurrentDir + '/test2.txt';

  assign(f, fileName);

  if not FileExists(fileName) then begin
    writeln('File not exists... Create new file');
    rewrite(f);
    close(f);
  end;

  if FileExists(fileName) then begin
    writeln('Write to file...');
    assign(f, fileName);
    append(f);
    for i := 1 to 3 do begin
      write('>>> ');
      readln(fileContent);
      writeln(f, fileContent);
    end;
    close(f);

    assign(f, fileName);
    reset(f);
    while not eof(f) do begin
      readln(f, fileContent);
      writeln(fileContent);
    end;
    close(f);
  end;

end.
