program Login;

uses
    crt;

var
    username: string;
    password: string;

begin

    writeln('===== LOGIN =====');
    write('Username: ');
    readln(username);
    write('Password: ');
    readln(password);

    writeln;

    if (username = 'user') and (password = '12345') then
    begin
        writeln('Login berhasil');
        writeln('Selamat datang ,', username);
    end
    else if (username = 'admin') or (username = 'root') then
    begin
        writeln('Login berhasil tanpa password');
        writeln('Selamat datang ,', username);
    end
    else if (username = 'user') and (password <> '12345') then
    begin
        writeln(username, ', username Anda benar tetapi passwordnya salah');
    end
    else
    begin
        writeln('Login gagal. Username atau password salah');
    end;

    readln;

end.
