program LatihanArrayType;

uses
    crt;

type
    TSiswa = record
        nik: String;
        nama: String;
        tahunLahir: Integer;
    end;

var
    siswa: array [1..3] of TSiswa;
    i: integer;

begin

    siswa[1].nik := '001';
    siswa[1].nama := 'Budi';
    siswa[1].tahunLahir := 1990;

    siswa[2].nik := '002';
    siswa[2].nama := 'Anis';
    siswa[2].tahunLahir := 1991;

    siswa[3].nik := '003';
    siswa[3].nama := 'Wati';
    siswa[3].tahunLahir := 1992;


    for i:= 1 to 3 do
    begin
        writeln('NIK: ', siswa[i].nik, #9, 'NAMA: ', siswa[i].nama, #9, 'TLAHIR: ', siswa[i].tahunLahir);
    end;

    writeln;
    readln;

end.
