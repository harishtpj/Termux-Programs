program BaseConverter; 

uses
  Crt, Math, SysUtils;

var
  rnum: String;
  radix: Integer;
  decnum: Real;

function toDecimal(rnum: String; radix: Integer) : Real;
var
  decnum: Real;
  num: Integer;
  i, j: Byte;
begin
  i := Length(rnum);
  j := 0;
  while i >= 1 do 
    begin
      num := StrToInt(rnum[i]);
      decnum := decnum + (num * power(radix, j));
      i := i - 1;
      j := j + 1;
    end;
  toDecimal := decnum;
end; 

begin
  WriteLn('Any Base to Decimal Converter');
  Write('Enter Radix(aka Base): ');
  ReadLn(radix);
  Write('Enter a number of base ', radix, ': ');
  ReadLn(rnum);
  decnum := toDecimal(rnum, radix);
  WriteLn(rnum, ' of base ', radix, ' in decimal is ', decnum);
end.
