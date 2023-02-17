program operasifile;

{$mode objfpc}{$H+}

uses
  SysUtils, crt;

procedure CreateMyFile;
var
  fileName: String;
  f: TextFile;
  i: Integer;
  content: String;
  pilihan: Integer;
begin
  write('Create new file...');
  readln(fileName);
  
  fileName := GetCurrentDir + '/' + fileName + '.txt';
  
  if not FileExists(fileName) then begin
    writeln('File not exists... create new file');
    assign(f, fileName);
    rewrite(f);
    writeln('File created...');
  end else begin
    writeln('File already exists....');
    writeln('1) Rewrite   2) Append');
    readln(pilihan);
    assign(f, fileName);
    if pilihan = 1 then begin
      rewrite(f);
    end else begin
      append(f)
    end;
  end;
  
  for i := 1 to 3 do begin
    write('>>> ');
    readln(content);
    writeln(f, content);
  end;
  
  writeln;
  writeln('Done writing file');
  close(f);
end;


procedure ReadMyFile;
var
  f: TextFile;
  fileName: String;
  content: String;
begin
  write('Read file...: ');
  readln(fileName);
  
  fileName := GetCurrentDir + '/' + fileName + '.txt';
  
  if not FileExists(fileName) then begin
    writeln('File not exists... exiting');
    exit;
  end;
  
  assign(f, fileName);
  reset(f);
  
  while not eof(f) do begin
    readln(f, content);
    writeln(content);
  end;
  
  close(f);
end;
  
  
begin

  CreateMyFile();
  ReadMyFile();
      
end.
