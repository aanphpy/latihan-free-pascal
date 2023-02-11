program LatihanArray;

uses
    crt;

var
    numbers: array [1..10] of Integer;
    i: integer;

begin

    writeln('Kapasitas array: ', High(numbers));

    // Mencetak isi array saat ini
    writeln('Isi array saat ini:');
    for i := 1 to High(numbers) do // Menggunakan High artinya sampai index terakhir
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    // Mengisi array menggunakan for loop
    for i := 1 to 10 do
    begin
        numbers[i] := i;
    end;

    // Mencetak isi array
    writeln('Isi array saat ini: ');
    for i := 1 to 10 do
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    // Mengisi/mengubah isi array satu persatu
    numbers[1] := 25;
    numbers[3] := 100;
    numbers[6] := 75;

    // Mencetak isi array saat ini
    writeln('Isi array saat ini: ');
    for i := 1 to 10 do
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    // Mencetak sebagian isi array
    writeln('Isi dari array ke 1 sampai 5');
    for i := 1 to 5 do
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    writeln('Isi dari array yang lebih besar dari 10');
    for i:= 1 to High(numbers) do
    begin
        if numbers[i] > 10 then
        begin
            write(numbers[i], ' ');
        end;
    end;


    writeln;


    writeln('Isi dari array saat ini');
    for i:= 1 to High(numbers) do
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    // Mengubah nilai array
    numbers[1] := 100;
    numbers[2] := 101;
    numbers[3] := 102;
    numbers[4] := 103;
    numbers[5] := 104;

    writeln('Isi dari array saat ini');
    for i:= 1 to High(numbers) do
    begin
        write(numbers[i], ' ');
    end;

    writeln;

    readln;

end.
