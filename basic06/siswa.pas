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

var
  accounts: array [1..3] of TUserModel;
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


// Main Procedure
procedure Main;
var
  account: TUserModel;
begin
  clrscr;
  DisplayTitle;
  DisplayLogin(username, password);

  account := LoginAccount(username, password, accounts);

  if Length(account.username) > 0 then
  begin
    ShowMessage('Login Sukses. Selamat datang ' + account.fullname, MESSAGE_SUCCESS, MESSAGE_IN_LINE);
  end
  else
  begin
    clrscr;
    DisplayTitle;
    ShowMessage('Login Gagal', MESSAGE_ERROR, MESSAGE_IN_LINE);
    Main;
  end;
end;


begin

  InitAccounts;
  Main;

end.
