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
        writeln('Anda memilih Soto')
    else if pilihan = 2 then
        writeln('Anda memilih Sate')
    else if pilihan = 3 then
        writeln('Anda memilih Ayam Bakar')
    else if pilihan = 4 then
        writeln('Anda memilih Pecel Lele')
    else
        writeln('Maaf pilihan Anda ', pilihan, ' tidak ada di menu');

    writeln;
    writeln('===== Selamat menikmati =====');

    readln;
end.
