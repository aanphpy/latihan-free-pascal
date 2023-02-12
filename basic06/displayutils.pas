// Display Utils
// Versi  : 0.1
// Author : Aan Kurniawan <aan.phpy@gmail.com>
// Since  : 2023

unit displayutils;

interface

function ToCol(const s: String; len: Integer): String;
function StringRepeat(const s: String; len: Integer): String;

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

end.
