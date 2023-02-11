program Perulangan;

uses
    crt;

var
    i: integer;

begin

    writeln('===== EXAMPLE LOOPING =====');

    writeln('Use FOR');

    for i := 1 to 10 do
    begin
        write(i, ' ');
    end;

    writeln;

    writeln('Use WHILE');

    i := 1;
    while i <= 10 do
    begin
        write(i, ' ');
        i := i + 1;
    end;

    writeln;

    writeln('Use REPEAT UNTIL');

    i := 1;
    repeat
        write(i, ' ');
        i := i + 1;
    until i > 10;

    writeln;
    readln;

end.