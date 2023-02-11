program Bidang2D;

uses
    crt;

var
    panjang: integer;
    lebar: integer;
    sisi: integer;
    keliling: integer;
    luas: integer;

begin
    writeln('===== PERSEGI PANJANG =====');
    writeln('Masukkan panjang:');
    readln(panjang);
    writeln('Masukkan lebar:');
    readln(lebar);

    keliling := (2 * panjang) + (2 * lebar);
    luas := panjang * lebar;

    writeln('Keliling: ', keliling);
    writeln('Luas: ', luas);

    writeln;

    writeln('===== BUJUR SANGKAR =====');
    writeln('Panjang sisi: ');
    readln(sisi);

    keliling := 4 * sisi;
    luas := sisi * sisi;

    writeln('Keliling: ', keliling);
    writeln('Luas: ', luas);

    readln;
end.
