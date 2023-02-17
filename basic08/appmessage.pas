unit appmessage;

interface

uses
  crt;

const
  MESSAGE_GENERAL = 0;
  MESSAGE_INFO = 1;
  MESSAGE_ERROR = 2;
  MESSAGE_SUCCESS = 3;
  MESSAGE_WARNING = 4;
  MESSAGE_IN_LINE = 0;
  MESSAGE_SCREEN = 1;

procedure ShowMessage(s: String; t: Integer; d: Integer);

implementation

procedure ShowMessage(s: String; t: Integer; d: Integer);
begin
  if t = MESSAGE_INFO then
    s := Concat('[I] ', s)
  else if t = MESSAGE_ERROR then
    s := Concat('[E] ', s)
  else if t = MESSAGE_SUCCESS then
    s := Concat('[S] ', s)
  else if t = MESSAGE_WARNING then
    s := Concat('[W] ', s);

  if d = MESSAGE_SCREEN then
    clrscr;
  writeln(s);
  writeln('[ENTER]');
  readln;
end;

end.
