program LatihanArray;

uses
    crt;

var
    matrix: array [1..3, 1..3] of Integer;
    i: integer;
    j: integer;
begin

    writeln('Isi matrix saat ini: ');
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write(matrix[i][j], ' ');
        end;
        writeln;
    end;

    writeln;

    matrix[1][1] := 1;
    matrix[1][2] := 2;
    matrix[1][3] := 3;
    matrix[2][1] := 4;
    matrix[2][2] := 5;
    matrix[2][3] := 6;
    matrix[3][1] := 7;
    matrix[3][2] := 8;
    matrix[3][3] := 9;

    writeln('Isi matrix saat ini: ');
    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
        begin
            write(matrix[i][j], ' ');
        end;
        writeln;
    end;

    writeln;




    readln;

end.