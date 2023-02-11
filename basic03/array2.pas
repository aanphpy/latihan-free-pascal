program LatihanArray;

uses
    crt;

var
    nomor: array [1..10] of Integer;
    i: integer;
    pilihan: integer;
    keluar: boolean = false;

begin

    writeln('===== PROGRAM TAMPUNG INTEGER =====');

    while keluar = false do
    begin

        writeln;
        writeln('1) Input ke array');
        writeln('2) Cetak isi array');
        writeln('3) Keluar');
        writeln;
        write('Input Pilihan (1-3): ');
        readln(pilihan);

        if pilihan = 1 then
        begin
            writeln;
            write('Index ke: ');
            readln(i);
            write('Data: ');
            readln(nomor[i]);
            writeln;
        end
        else if pilihan = 2 then
        begin
            writeln;
            writeln('Isi array saat ini: ');
            for i := 1 to High(nomor) do
            begin
                write(nomor[i], ' ');
            end;
            writeln;
        end
        else
        begin
            keluar := true;
        end;

    end;

end.
