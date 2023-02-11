program TampilMenu;

uses
    crt;

var
    pilihan: integer;

begin
    writeln('===== MENU =====');
    writeln('1) Soto');
    writeln('2) Sate');
    writeln('3) Ayam Bakar');
    writeln('4) Pecel Lele');

    writeln;

    writeln('Input menu (1-4):');
    readln(pilihan);

    writeln;

    if pilihan = 1 then
        writeln('Anda memilih Soto');

    if pilihan = 2 then
        writeln('Anda memilih Sate');

    if pilihan = 3 then
        writeln('Anda memilih Ayam Bakar');

    if pilihan = 4 then
        writeln('Anda memilih Pecel Lele');

    writeln;
    writeln('===== Selamat menikmati =====');

    readln;
end.
