program Fizzbuzz; 

uses
  crt;


var
  limit, i: Integer;


begin
  Write('Enter maximum number to calculate for: ');
  ReadLn(limit);
  WriteLn('Writing FizzBuzz upto ', limit);
  for i := 1 to limit do 
    begin
      if i mod 15 = 0 then
        Write('FizzBuzz ')  
      else if i mod 5 = 0 then
        Write('Buzz ')  
      else if i mod 3 = 0 then
        Write('Fizz ')  
      else 
        Write(i, ' ')
    end;
      readln;
    end.
