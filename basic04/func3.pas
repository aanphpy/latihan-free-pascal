program LatihanFunction;

uses
    SysUtils, crt;

function luas(panjang: real; lebar: real): real;
begin
    luas := panjang * lebar;
end;

function keliling(panjang: real; lebar: real): real;
begin
    keliling := (2 * panjang) + (2 * lebar);
end;

procedure HasilPersegi(panjang: real; lebar: real);
begin
    writeln('---------------------------');
    writeln('Keliling : ', Format('%.2f', [keliling(panjang, lebar)]));
    writeln('Luas     : ', Format('%.2f', [luas(panjang, lebar)]));
    writeln('---------------------------');
end;

procedure BujurSangkar();
var
    sisi: real;
begin
    writeln;
    writeln('===== BUJUR SANGKAR =====');
    write('Input Sisi : ');
    readln(sisi);
    HasilPersegi(sisi, sisi);
end;

procedure Persegi();
var
    panjang, lebar: integer;
begin
    writeln;
    writeln('===== PERSEGI PANJANG =====');
    write('Input Panjang : ');
    readln(panjang);
    write('Input Lebar   : ');
    readln(lebar);
    HasilPersegi(panjang, lebar);
end;

begin

    Persegi();
    BujurSangkar();
    readln;

end.