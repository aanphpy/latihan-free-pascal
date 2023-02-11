program Table;

uses
    SysUtils, crt;

const
    LSCREEN = 80;   // Lebar Screen

var
    pilihMenu: Integer;
    keluar: Boolean = false;
    headerCols: String;
    dataNIK: array [1..3] of String;
    dataNama: array [1..3] of String;
    dataTLahir: array [1..3] of Integer;
    tahunIni: integer = 2023;


function ToCol(const s: String; len: Integer): String;
var
    newStr: String = '';
    i: Integer = 1;
begin
    ToCol := '';
    if Length(s) > len then
    begin
        newStr := Copy(s, 1, len);
        ToCol := newStr;
    end
    else
    begin
        ToCol := s;
        for i := Length(s) to (len - 1) do
        begin
            ToCol := Concat(ToCol, ' ');
        end;
    end;
end;


function RepeatString(const s: String; len: Integer): String;
var
    i: Integer = 1;
begin
    RepeatString := '';
    for i := 1 to len do
        RepeatString := Concat(RepeatString, s);
end;


procedure TableHeader(const col: String);
begin
    writeln(RepeatString('-', LSCREEN));
    writeln(col);
    writeln(RepeatString('-', LSCREEN));
end;


procedure Table;
var
    row: String;
    i: Integer = 1;
    usia: Integer;
begin
    headerCols := Concat(ToCol('NIK', 7), ToCol('NAMA', 13), ToCol('TLHR', 5), ToCol('USIA', 5));
    TableHeader(headerCols);
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        usia := tahunIni - dataTLahir[i];
        if usia < 0 then
            usia := 0;
        row := Concat(ToCol(dataNIK[i], 7), ToCol(dataNama[i], 13), ToCol(IntToStr(dataTLahir[i]), 5), ToCol(IntToStr(usia), 5));
        writeln(row);
    end;
    writeln(RepeatString('-', LSCREEN));
end;


procedure DebugData;
var
    i: Integer = 1;
begin
    writeln;
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        writeln(dataNIK[i], ' -- ', dataNama[i], ' -- ', dataTLahir[i]);
    end;
    writeln('[ENTER]');
    readln;
end;


procedure DataSiswaTidakDitemukan;
begin
    writeln;
    writeln('[!] Data tidak ditemukan [!]');
    writeln;
    write('[ENTER]');
    readln;
end;


procedure DataSiswaDitemukan(i: integer);
begin
    writeln;
    writeln('>>> Data ditemukan...');
    writeln;
    writeln('NIK    : ', dataNIK[i]);
    writeln('Nama   : ', dataNama[i]);
    writeln('TLahir : ', dataTLahir[i]);
    writeln('Usia   : ', (tahunIni - dataTLahir[i]));
    writeln;
    write('[ENTER]');
    readln;
end;


procedure TambahSiswa;
var
    availableRow: integer = 0;
    i: Integer = 1;
begin
    availableRow := 0;
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        if (Length(dataNIK[i]) = 0) and (Length(dataNama[i]) = 0) and (dataTLahir[i] = 0) then
        begin
            availableRow := i;
            break;
        end
        else
        begin
            availableRow := 0;
        end;
    end;

    if availableRow > 0 then
    begin
        writeln;
        write(ToCol('NIK', 7), ': ');
        readln(dataNIK[availableRow]);
        write(ToCol('NAMA', 7), ': ');
        readln(dataNama[availableRow]);
        write(ToCol('TLAHIR', 7), ': ');
        readln(dataTLahir[availableRow]);
        writeln;
    end
    else
    begin
        writeln;
        writeln('Database Penuh...[ENTER]');
        readln;
        writeln;
    end;
end;


procedure CariSiswa;
var
    keyword: String;
    i: Integer;
    ketemu: Boolean = false;
begin
    writeln;
    write('Cari NIK : ');
    readln(keyword);

    ketemu := false;
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        if dataNIK[i] = keyword then
        begin
            ketemu := true;
            DataSiswaDitemukan(i);
            clrscr;
            break;
        end;
    end;

    if ketemu = false then
    begin
        DataSiswaTidakDitemukan();
    end;

end;


procedure UbahSiswa;
var
    keyword: String;
    i: Integer;
    ketemu: Boolean;
    nikOld: String;
    namaOld: String;
    tahunOld: Integer;
begin
    writeln;
    write('Cari NIK : ');
    readln(keyword);

    ketemu := false;
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        if dataNIK[i] = keyword then
        begin
            ketemu := true;

            nikOld := dataNIK[i];
            namaOld := dataNama[i];
            tahunOld := dataTLahir[i];

            write('NIK [', dataNIK[i], '] : ');
            readln(dataNIK[i]);
            if Length(dataNIK[i]) = 0 then
                dataNIK[i] := nikOld;

            write('Nama [', dataNama[i], '] : ');
            readln(dataNama[i]);
            if Length(dataNama[i]) = 0 then
                dataNama[i] := namaOld;

            write('TLahir [', dataTLahir[i], '] : ');
            readln(dataTLahir[i]);
            if dataTLahir[i] = 0 then
                dataTLahir[i] := tahunOld;

            break;
        end;
    end;

    if ketemu = false then
    begin
        DataSiswaTidakDitemukan();
    end;
end;


procedure HapusSiswa;
var
    keyword: String;
    i: Integer;
    ketemu: Boolean;
    doHapus: Char;
begin
    writeln;
    write('Cari NIK : ');
    readln(keyword);

    ketemu := false;
    for i := Low(dataNIK) to High(dataNIK) do
    begin
        if dataNIK[i] = keyword then
        begin
            ketemu := true;
            DataSiswaDitemukan(i);
            write('Hapus (Y/N): ');
            readln(doHapus);
            if (doHapus = 'Y') or (doHapus = 'y') then
            begin
                dataNIK[i] := '';
                dataNama[i] := '';
                dataTlahir[i] := 0;
            end;
            break;
        end;
    end;

    if ketemu = false then
    begin
        DataSiswaTidakDitemukan();
    end;
end;


procedure AppTitle;
begin
    clrscr;
    writeln;
    writeln('SISTEM INFORMASI SISWA');
    writeln('ver 0.1');
    writeln;
end;


procedure MainScreen;
begin
    writeln;

    Table();

    writeln;
    write('1) Tambah  2) Ubah  3) Hapus  4) Cari  5) Tampil Semua  6) Debug  7) Keluar: ');
    readln(pilihMenu);

    if pilihMenu = 1 then // Tambah
    begin
        clrscr;
        TambahSiswa();
    end
    else if pilihMenu = 2 then // Ubah
    begin
        UbahSiswa();
    end
    else if pilihMenu = 3 then // Hapus
    begin
        HapusSiswa();
    end
    else if pilihMenu = 4 then // Cari
    begin
        CariSiswa();
    end
    else if pilihMenu = 5 then // Tampil Semua
    begin
        clrscr;
        AppTitle();
        MainScreen();
    end
    else if pilihMenu = 6 then // Debug Data
    begin
        clrscr;
        DebugData();
        clrscr;
    end
    else if pilihMenu = 7 then // Keluar
    begin
        keluar := true;
    end
    else
    begin
        clrscr;
        writeln('Input tidak tersedia di menu....[ENTER]');
        readln;
        AppTitle();
        MainScreen();
    end;
end;


begin

    AppTitle();

    writeln;
    write('Tahun : ');
    readln(tahunIni);

    while keluar = false do
    begin
        MainScreen();
    end;

end.
