program Bidang2D;

uses
    SysUtils, crt;

const
   PHI = 22/7;

var
    panjang: real;
    lebar: real;
    sisi: real;
    jariJari: real;
    diameter: real;
    keliling: real;
    luas: real;

begin
    writeln('===== PERSEGI PANJANG =====');
    writeln('Masukkan panjang:');
    readln(panjang);
    writeln('Masukkan lebar:');
    readln(lebar);

    keliling := (2 * panjang) + (2 * lebar);
    luas := panjang * lebar;

    // Jika langsung menggunakan:
    // writeln('Keliling: ', keliling);
    // maka keliling akan ditampilkan dalam bentuk data real penuh.
    // Jika ingin menampilkan misalnya dengan 2 digit di belakang koma
    // Format('%.2f', [keliling]);

    writeln('Keliling: ', Format('%.2f', [keliling]));
    writeln('Luas: ', Format('%.2f', [luas]));

    writeln;

    writeln('===== BUJUR SANGKAR =====');
    writeln('Panjang sisi: ');
    readln(sisi);

    keliling := 4 * sisi;
    luas := sisi * sisi;

    writeln('Keliling: ', Format('%.2f', [keliling]));
    writeln('Luas: ', Format('%.2f', [luas]));

    writeln;

    writeln('===== LINGKARAN =====');
    writeln('Panjang jari-jari: ');
    readln(jariJari);

    diameter := 2 * jariJari;
    keliling := 2 * PHI * jariJari;
    luas := PHI * jariJari * jariJari;

    writeln('Diameter: ', Format('%.2f', [diameter]));
    writeln('Keliling: ', Format('%.2f', [keliling]));
    writeln('Luas: ', Format('%.2f', [luas]));

    readln;
end.