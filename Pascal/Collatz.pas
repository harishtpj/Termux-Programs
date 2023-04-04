program Collatz;
uses Crt, Math; 

var 
  num, counter: Integer;

function CollatzConj(n: Integer): Integer; 
begin
  if not Odd(n) then
    CollatzConj := n div 2
  else
    CollatzConj := (3 * n) + 1;
end; 

begin
  WriteLn('Collatz Conjecture Step Counter');
  Write('Enter number: ');
  ReadLn(num);
  while num <> 1 do begin
    num := CollatzConj(num);
    counter := counter + 1;
  end;
  WriteLn('Number of steps: ', counter);
  readln;
end.
