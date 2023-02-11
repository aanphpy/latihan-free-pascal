program HitungUsia;

uses
    crt;

var
    nama: string;
    tahunIni: integer = 2023;
    tahunLahir: integer;
    usia: integer;

begin
    writeln('Hai, siapa nama Anda?');
    readln(nama);
    writeln('Tahun berapa Anda dilahirkan?');
    readln(tahunLahir);

    usia := tahunIni - tahunLahir;

    writeln('Hai, ', nama, ' usia Anda ', usia, ' tahun di ', tahunIni);
    readln;
end.