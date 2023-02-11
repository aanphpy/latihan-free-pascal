program TampilMenu;

uses
    crt;

var
    pilihan: integer;

begin
    writeln('===== MENU =====');
    writeln('1) Paket Soto');
    writeln('2) Paket Sate');
    writeln('3) Paket Ayam Bakar');
    writeln('4) Paket Pecel Lele');

    writeln;

    writeln('Input menu (1-4):');
    readln(pilihan);

    writeln;

    if pilihan = 1 then
    begin
        writeln('Anda memilih Paket Soto');
        writeln('- Soto 1 Porsi');
        writeln('- Nasi 1 Piring');
        writeln('- Es Teh Manis 1 Gelas');
    end
    else if pilihan = 2 then
    begin
        writeln('Anda memilih Paket Sate');
        writeln('- Sate 10 Tusuk');
        writeln('- Nasi 1 Piring');
        writeln('- Es Teh Manis 1 Gelas');
    end
    else if pilihan = 3 then
    begin
        writeln('Anda memilih Paket Ayam Bakar');
        writeln('- Ayam Bakar 1 Porsi');
        writeln('- Nasi 1 Piring');
        writeln('- Es Teh Manis 1 Gelas');
    end
    else if pilihan = 4 then
    begin
        writeln('Anda memilih Paket Pecel Lele');
        writeln('- Pecel Lele 1 Porsi');
        writeln('- Nasi 1 Piring');
        writeln('- Es Teh Manis 1 Gelas');
    end
    else
    begin
        writeln('Maaf pilihan Anda ', pilihan, ' tidak ada di menu')
    end;

    writeln;
    writeln('===== Selamat menikmati =====');

    readln;
end.
