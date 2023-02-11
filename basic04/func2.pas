program LatihanFunction;

uses
    SysUtils, crt;

procedure BujurSangkar();
var
    sisi: real;
    keliling: real;
    luas: real;
begin
    writeln;
    writeln('===== BUJUR SANGKAR =====');
    write('Input Sisi :');
    readln(sisi);

    keliling := 4 * sisi;
    luas := sisi * sisi;

    writeln('---------------------------');
    writeln('Keliling : ', Format('%.2f', [keliling]));
    writeln('Luas     : ', Format('%.2f', [luas]));
    writeln('---------------------------');
end;

procedure Persegi();
var
    panjang: real;
    lebar: real;
    keliling: real;
    luas: real;
begin
    writeln;
    writeln('===== PERSEGI PANJANG =====');
    write('Input Panjang : ');
    readln(panjang);
    write('Input Lebar   : ');
    readln(lebar);

    keliling := (2 * panjang) + (2 * lebar);
    lebar := panjang * lebar;

    writeln('---------------------------');
    writeln('Keliling    : ', Format('%.2f', [keliling]));
    writeln('Luas        : ', Format('%.2f', [lebar]));
    writeln('---------------------------');
end;

begin

    Persegi();
    writeln;
    BujurSangkar();
    writeln;
    readln;

end.