program PrintName;

uses
    crt;

var
    name: string;

begin
    writeln('Hi, what is your name?');
    readln(name);
    writeln('How do you do, ', name);
    readln;
end.
