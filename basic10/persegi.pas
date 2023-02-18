// Contoh Penggunaan Class
// Author  : aan.phpy@gmail.com
// Since   : 2023
program persegi;

uses
  SysUtils, crt, Classes;

type
  TPersegi = Object
    private
      nama: String;
      panjang: Real;
      lebar: Real;
    public
      procedure Init;
      procedure SetNama(n: String);
      function GetNama: String;
      procedure SetPanjang(p: Real);
      function GetPanjang: Real;
      procedure SetLebar(l: Real);
      function GetLebar: Real;
      function Keliling: Real;
      function Luas: Real;
  end;

  TBujurSangkar = object(TPersegi)
    public
      procedure Init;
      procedure SetSisi(s: Real);
      function GetSisi: Real;
      procedure SetPanjang(p: Real);
      procedure SetLebar(l: Real);
  end;


procedure TPersegi.Init;
begin
  nama := 'Persegi Panjang';
end;


procedure TPersegi.SetNama(n: String);
begin
  nama := n;
end;


function TPersegi.GetNama: String;
begin
  GetNama := nama;
end;


procedure TPersegi.SetPanjang(p: Real);
begin
  panjang := p;
end;


function TPersegi.GetPanjang: Real;
begin
  GetPanjang := panjang;
end;


procedure TPersegi.SetLebar(l: Real);
begin
  lebar := l;
end;


function TPersegi.GetLebar: Real;
begin
  GetLebar := lebar;
end;


function TPersegi.Keliling: Real;
begin
  Keliling := (2 * panjang) + (2 * lebar);
end;


function TPersegi.Luas: Real;
begin
  Luas := panjang * Lebar;
end;


procedure TBujurSangkar.Init;
begin
  TPersegi.SetNama('Bujur Sangkar');
end;


procedure TBujurSangkar.SetSisi(s: Real);
begin
  TPersegi.SetPanjang(s);
  TPersegi.SetLebar(s);
end;


function TBujurSangkar.GetSisi: Real;
begin
  GetSisi := TPersegi.GetPanjang;
end;


procedure TBujurSangkar.SetPanjang(p: Real);
begin
  TPersegi.SetLebar(p);
end;


procedure TBujurSangkar.SetLebar(l: Real);
begin
  TPersegi.SetPanjang(l);
end;


var
  pp: TPersegi;
  bs: TBujurSangkar;

begin
  clrscr;

  // ===== [ Persegi Panjang ] =====
  pp.Init;
  pp.SetPanjang(25);
  pp.SetLebar(10);

  // ===== [ Bujur Sangkar ] =====
  bs.Init;
  bs.SetSisi(10);

  writeln(pp.GetNama);
  writeln('Panjang  : ', Format('%.2f', [pp.GetPanjang]));
  writeln('Lebar    : ', Format('%.2f', [pp.GetLebar]));
  writeln('Keliling : ', Format('%.2f', [pp.Keliling]));
  writeln('Luas     : ', Format('%.2f', [pp.Luas]));
  writeln;
  writeln(bs.GetNama);
  writeln('Panjang  : ', Format('%.2f', [bs.GetPanjang]));
  writeln('Lebar    : ', Format('%.2f', [bs.GetLebar]));
  writeln('Keliling : ', Format('%.2f', [bs.Keliling]));
  writeln('Luas     : ', Format('%.2f', [bs.Luas]));
  writeln;
  writeln('[ENTER]');
  readkey;

end.
