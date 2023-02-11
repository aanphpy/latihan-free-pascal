program HitungGrade;

uses
    SysUtils, crt;

var
    nilaiBahasa: integer;
    nilaiMatematika: integer;
    nilaiIPA: integer;
    nilaiIPS: integer;
    jumlahPelajaran: integer = 4;
    nilaiTotal: real;
    nilaiRataRata: real;
    grade: char;
    kelulusan: string;
begin

    writeln('===== HITUNG GRADE =====');
    writeln('Nilai Bahasa: ');
    readln(nilaiBahasa);
    writeln('Nilai Matematika: ');
    readln(nilaiMatematika);
    writeln('Nilai IPA: ');
    readln(nilaiIPA);
    writeln('Nilai IPS: ');
    readln(nilaiIPS);

    nilaiTotal := nilaiBahasa + nilaiMatematika + nilaiIPA + nilaiIPS;
    nilaiRataRata := nilaiTotal / jumlahPelajaran;

    if nilaiRataRata > 80 then
    begin
        grade := 'A';
        kelulusan := 'LULUS';
    end
    else if nilaiRataRata > 70 then
    begin
        grade := 'B';
        kelulusan := 'LULUS';
    end
    else if nilaiRataRata > 60 then
    begin
        grade := 'C';
        kelulusan := 'LULUS';
    end
    else if nilaiRataRata > 50 then
    begin
        grade := 'D';
        kelulusan := 'TIDAK LULUS';
    end
    else
    begin
        grade := 'E';
        kelulusan := 'TIDAK LULUS';
    end;

    writeln('===== HASIL =====');
    writeln('Total: ', Format('%.2f', [nilaiTotal]));
    writeln('Rata-Rata: ', Format('%.2f', [nilaiRataRata]));
    writeln('Grade: ', grade);
    writeln('Kelulusan: ', kelulusan);

    readln;

end.