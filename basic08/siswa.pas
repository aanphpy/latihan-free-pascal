// Program Sistem Informasi Siswa
// Versi  : 0.1
// Author : Aan Kurniawan <aan.phpy@gmail.com>
// Since  : 2023
// File   : siswa.pas

program Siswa;

uses
  SysUtils, crt,
  displayutils, appconfig, appmessage, appviews;

type
  TUserModel = record
    username: String;
    password: String;
    fullname: String;
    isadmin: Boolean;
  end;
  TSiswa = record
    nik: String;
    nama: String;
    tahunLahir: Integer;
  end;

var
  accounts: array [1..3] of TUserModel;
  dataSiswa: array [1..3] of TSiswa;
  cdataSiswa: array [1..3] of TSiswa;
  TSiswa1: TSiswa; 
  username: String;
  password: String;
  

procedure InitAccounts;
begin
  accounts[1].username := 'admin';
  accounts[1].password := 'admin';
  accounts[1].fullname := 'System Admin';
  accounts[1].isadmin  := true;

  accounts[2].username := 'user';
  accounts[2].password := 'user';
  accounts[2].fullname := 'System User';
  accounts[2].isadmin  := false;
end;


function NilAccount: TUserModel;
begin
  NilAccount.username := '';
  NilAccount.password := '';
  NilAccount.fullname  := '';
  NilAccount.isadmin  := false;
end;


function LoginAccount(u: String; p: String; a: array of TUserModel): TUserModel;
var
  i: Integer;
begin
  if Length(a) = 0 then
    exit(NilAccount);
  for i := Low(a) to High(a) do
  begin
    if (a[i].username = u) and (a[i].password = p) then
      exit(a[i]);
  end;
  LoginAccount := NilAccount;
end;


procedure ConfirmQuit;
var
  keluar: Char;
begin
  writeln;
  write('Keluar (Y/N) : ');
  readln(keluar);

  if Length(keluar) = 0 then begin
    keluar := 'N';
  end;

  if (keluar = 'Y') or (keluar = 'y') then begin
    halt;
  end;
end;


procedure ResetArrSiswa(var d: array of TSiswa);
var
  i: Integer;
begin
  for i := Low(d) to High(d) do begin
    d[i].nik := '';
    d[i].nama := '';
    d[i].tahunLahir := 0;
  end;
end;


procedure DisplayDataSiswa(var d: array of TSiswa);
var
  hasData: Boolean = false;
  i: Integer;
  tahunIni: Integer;
  usia: Integer;
begin
  tahunIni := CurrentYear;
  writeln(ToCol('NIK', 4), ToCol('NAMA', 13), ToCol('TLHR', 5), ToCol('USIA', 5));
  writeln(StringRepeat('-', LSCREEN));
  for i := Low(d) to High(d) do begin
    if d[i].nik <> '' then begin
      hasData := true;
      usia := tahunIni - d[i].tahunLahir;
      writeln(ToCol(d[i].nik, 4), ToCol(d[i].nama, 13), ToCol(IntToStr(d[i].tahunLahir), 5), ToCol(IntToStr(usia), 5));
    end;
  end;
  if not hasData then begin
    writeln('Belum ada record....');
  end;
  writeln(StringRepeat('-', LSCREEN));
end;


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


procedure DisplayTambahSiswa;
var
  dSiswa: TSiswa;
  hasEmptyRecord: Boolean = false;
  i: Integer;
  iData: Integer;
begin
  clrscr;
  DisplayTitle;
  for i := Low(dataSiswa) to High(dataSiswa) do begin
    if dataSiswa[i].nik = '' then begin
      hasEmptyRecord := true;
      iData := i;
      break;
    end;
  end;
  if hasEmptyRecord then begin
    DisplayFormSiswa(dSiswa);
    dataSiswa[iData].nik := dSiswa.nik;
    dataSiswa[iData].nama := dSiswa.nama;
    dataSiswa[iData].tahunLahir := dSiswa.tahunLahir;
    write('Data tersimpan....[ENTER]');
  end else begin
    writeln('Record penuh...[ENTER]');
  end;
  readln;
end;


procedure DisplayCariSiswa(var d: array of TSiswa);
var
  nik: String;
  i: Integer;
begin
  write('NIK : ');
  readln(nik);
  
  for i := Low(d) to High(d) do begin
    if d[i].nik = nik then begin
      ResetArrSiswa(cdataSiswa);
      cdataSiswa[1].nik := d[i].nik;
      cdataSiswa[1].nama := d[i].nama;
      cdataSiswa[1].tahunLahir := d[i].tahunLahir;
      DisplayDataSiswa(cdataSiswa);
      exit;
    end;
  end;

  writeln('Record tidak ditemukan...');

end;


procedure DisplayUbahSiswa(var d: array of TSiswa);
var
  nik: String;
  i: Integer;
begin
  write('NIK : ');
  readln(nik);
  
  for i := Low(d) to High(d) do begin
    if d[i].nik = nik then begin
      ResetArrSiswa(cdataSiswa);
      cdataSiswa[1].nik := d[i].nik;
      cdataSiswa[1].nama := d[i].nama;
      cdataSiswa[1].tahunLahir := d[i].tahunLahir;
      DisplayDataSiswa(cdataSiswa);
      write('>>> NIK     : ');
      readln(d[i].nik);
      write('>>> NAMA    : ');
      readln(d[i].nama);
      write('>>> TLAHIR  : ');
      readln(d[i].tahunLahir);
      exit;
    end;
  end;

  writeln('Record tidak ditemukan...[ENTER]');
  readln;
end;


procedure DisplayHapusSiswa(var d: array of TSiswa);
var
  nik: String;
  i: Integer;
  p: Char;
begin
  write('NIK : ');
  readln(nik);
  
  for i := Low(d) to High(d) do begin
    if d[i].nik = nik then begin
      write('Hapus Data ? (Y/N)');
      readln(p);
      if (p = 'Y') or (p = 'y') then begin
        d[i].nik := '';
        d[i].nama := '';
        d[i].tahunLahir := 0;
        exit;
      end;
    end;
  end;

  writeln('Record tidak ditemukan...[ENTER]');
  readln;
end;


procedure DisplayMenu;
var
  pilihan: Integer;
begin
  writeln;
  write('1) Tambah  2) Cari  3) Ubah  4) Hapus 5) Keluar : ');
  readln(pilihan);
  if pilihan = 1 then begin
    DisplayTambahSiswa;
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end else if pilihan = 2 then begin
    clrscr;
    DisplayTitle;
    DisplayCariSiswa(dataSiswa);
    DisplayMenu;
  end else if pilihan = 3 then begin
    clrscr;
    DisplayTitle;
    DisplayUbahSiswa(dataSiswa);
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end else if pilihan = 4 then begin
    clrscr;
    DisplayTitle;
    DisplayHapusSiswa(dataSiswa);
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end else if pilihan = 5 then begin
    ConfirmQuit;
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end else begin
    clrscr;
    DisplayTitle;
    ShowMessage('Item menu yang dipilih tidak ada [ENTER]', MESSAGE_ERROR, MESSAGE_IN_LINE);
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end;
end;


procedure LoginScreen;
var
  account: TUserModel;
begin
  DisplayLogin(username, password);

  account := LoginAccount(username, password, accounts);

  if Length(account.username) > 0 then
  begin
    clrscr;
    DisplayTitle;
    DisplayDataSiswa(dataSiswa);
    DisplayMenu;
  end
  else
  begin
    clrscr;
    DisplayTitle;
    ShowMessage('Login Gagal', MESSAGE_ERROR, MESSAGE_IN_LINE);
    ConfirmQuit;
    DisplayTitle;
  end;

end;


// Main Procedure
procedure Main;
begin
  clrscr;
  DisplayTitle;
  LoginScreen;
end;


begin

  InitAccounts;
  Main;

end.
