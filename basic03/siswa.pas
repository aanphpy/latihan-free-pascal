program LatihanArray;

uses
    crt;

var
    dataNIK: array [1..3] of String;
    dataNama: array[1..3] of String;
    dataTahunLahir: array[1..3] of Integer;
    cariString: string;
    dataKetemu: boolean = false;
    i: integer;
    pilihan: integer;
    keluar: boolean = false;

begin

    writeln('===== PROGRAM DATA SISWA =====');

    while keluar = false do
    begin

        writeln;
        writeln('1) Input Data Siswa');
        writeln('2) Cetak Data Siswa');
        writeln('3) Edit Data Siswa');
        writeln('4) Cari Data Siswa');
        writeln('5) Keluar');
        writeln;
        write('Input Pilihan (1-5): ');
        readln(pilihan);

        if pilihan = 1 then
        begin
            for i:= 1 to High(dataNIK) do
            begin
                writeln;
                write('NIK: ');
                readln(dataNIK[i]);
                write('Nama: ');
                readln(dataNama[i]);
                write('Tahun Lahir: ');
                readln(dataTahunLahir[i]);
                writeln('--------------------------');
            end;
        end
        else if pilihan = 2 then
        begin
            writeln;
            writeln('---------------------------------------');
            writeln('NIK', #9, 'NAMA', #9, 'TLAHIR');
            writeln('---------------------------------------');
            for i := 1 to High(dataNIK) do
            begin
                write(dataNIK[i], #9, dataNama[i], #9, dataTahunLahir[i]);
                writeln;
            end;
            writeln('---------------------------------------');
            writeln;
            readln;
        end
        else if pilihan = 3 then
        begin
            writeln;
            write('NIK: ');
            readln(cariString);
            // Cari data secara sequential
            dataKetemu := false;
            for i := 1 to High(dataNIK) do
            begin
                if dataNIK[i] = cariString then
                begin
                    dataKetemu := true;
                    writeln;
                    writeln('Data ditemukan: ');
                    writeln('---------------------------------------');
                    writeln('NIK: ', dataNIK[i], #9, 'NAMA: ', dataNama[i], #9, 'TLAHIR: ', dataTahunLahir[i]);
                    writeln('---------------------------------------');
                    writeln('>>> Ubah');
                    write('NIK: ');
                    readln(dataNIK[i]);
                    write('Nama: ');
                    readln(dataNama[i]);
                    write('Tahun Lahir: ');
                    readln(dataTahunLahir[i]);
                    writeln('--------------------------');
                end;
            end;
            // Tampilkan pesan jika data tidak ditemukan
            if dataKetemu = false then
            begin
                dataKetemu := false;
                writeln;
                writeln('NIK ', cariString, ' tidak ditemukan');
                writeln;
                readln;
            end;
        end
        else if pilihan = 4 then
        begin
            writeln;
            write('NIK: ');
            readln(cariString);
            // Cari data secara sequential
            dataKetemu := false;
            for i := 1 to High(dataNIK) do
            begin
                if dataNIK[i] = cariString then
                begin
                    dataKetemu := true;
                    writeln;
                    writeln('Data ditemukan: ');
                    writeln('---------------------------------------');
                    writeln('NIK: ', dataNIK[i], #9, 'NAMA: ', dataNama[i], #9, 'TLAHIR: ', dataTahunLahir[i]);
                    writeln('---------------------------------------');
                    writeln;
                    readln;
                end;
            end;
            // Tampilkan pesan jika data tidak ditemukan
            if dataKetemu = false then
            begin
                dataKetemu := false;
                writeln;
                writeln('NIK ', cariString, ' tidak ditemukan');
                writeln;
                readln;
            end;
        end
        else
        begin
            keluar := true;
        end;

    end;

end.
