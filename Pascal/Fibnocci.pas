program Fibnocci;
uses crt;
var i, limit: Byte;

function Fib(n: Byte): Integer;
begin
  if n <= 1 then
    Fib := n
  else
    Fib := Fib(n - 1) + Fib(n - 2);
end;

begin
  WriteLn('Fibnocci Series Printer');
  Write('Enter Series limit: ');
  ReadLn(limit);
  if limit <= 1 then
    WriteLn('Enter a positive integer')
  else
    for i := 0 to limit-1 do WriteLn(Fib(i));
  readln;
end.
