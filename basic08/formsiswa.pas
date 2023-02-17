unit formsiswa;

interface

uses
  SysUtils, crt, appconfig, displayutils;


type
  TSiswa = record
    nik: String;
    nama: String;
    tahunLahir: Integer;
  end;

procedure DisplayFormSiswa(var dSiswa: TSiswa);


implementation


procedure DisplayFormSiswa(var dSiswa: TSiswa);
begin
  writeln;
  writeln(StringRepeat('=', LSCREEN));
  writeln('FORM TAMBAH SISWA');
  writeln(StringRepeat('-', LSCREEN));
  write(ToCol('NIK', 12), ': ');
  readln(dSiswa.nik); 
  write(ToCol('Nama', 12), ': ');
  readln(dSiswa.nama);
  write(ToCol('Tahun Lahir', 12), ': ');
  readln(dSiswa.tahunLahir);
  writeln;
  writeln(StringRepeat('-', LSCREEN));
end;


end.
