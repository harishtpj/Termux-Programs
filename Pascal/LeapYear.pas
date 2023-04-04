program LeapYear; 
uses Crt;

var
  year: Byte;

function isLeap(yr: Integer) : Boolean;
begin
  isLeap := (((yr mod 4 = 0) and (yr mod 100 <> 0)) or (yr mod 400 = 0)) 
end; 

begin
  Write('Enter a year to check if it is leap: ');
  ReadLn(year);
  if isLeap(year) then
    WriteLn(year, ' is a Leap Year')  
  else 
    WriteLn(year, ' is not a Leap Year');
  readln;
end.
