// App Views
// Versi  : 0.1
// Author : Aan Kurniawan <aan.phpy@gmail.com>

unit appviews;

interface

uses
  appconfig, displayutils;

procedure DisplayTitle;
procedure DisplayLogin(var u: String; var p: String);

implementation


// Title Screen
procedure DisplayTitle;
begin
  writeln;
  writeln(StringRepeat('-', LSCREEN));
  writeln('Sistem Informasi Siswa');
  writeln(ToCol('Versi', 6), ': ', APP_VERSION);
  writeln(StringRepeat('-', LSCREEN));
  writeln;
end;

// Login Screen
//
// params Username
// params Passowrd
procedure DisplayLogin(var u: String; var p: String);
begin
  writeln;
  write('Username : ');
  readln(u);
  write('Password : ');
  readln(p);
  writeln;
end;

end.