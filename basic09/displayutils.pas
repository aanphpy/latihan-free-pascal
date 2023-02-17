// Display Utils
// Versi  : 0.1
// Author : Aan Kurniawan <aan.phpy@gmail.com>
// Since  : 2023

unit displayutils;

interface

uses
  crt;

function ToCol(const s: String; len: Integer): String;
function StringRepeat(const s: String; len: Integer): String;
function PasswordInput: String;

implementation

function ToCol(const s: String; len: Integer): String;
var
    newStr: String = '';
    i: Integer = 1;
begin
    ToCol := '';
    if Length(s) > len then
    begin
        newStr := Copy(s, 1, len);
        ToCol := newStr;
    end
    else
    begin
        ToCol := s;
        for i := Length(s) to (len - 1) do
        begin
            ToCol := Concat(ToCol, ' ');
        end;
    end;
end;


function StringRepeat(const s: String; len: Integer): String;
var
    i: Integer = 1;
begin
    StringRepeat := '';
    for i := 1 to len do
        StringRepeat := Concat(StringRepeat, s);
end;


function PasswordInput: String;
var
  passwd: String;
  ch: Char;
begin
  passwd := '';
  ch := #0;
  while (ch <> #13) do
  begin
    ch := readkey;
    if ch = #8 then begin
      if Length(passwd) > 0 then begin
        write(#8,' ',#8);
        delete(passwd, Length(passwd), 1);
      end;
    end else if ch <> #13 then begin
      write('*');
      passwd := passwd + ch;
    end;
  end;
  PasswordInput := passwd;
end;


end.
