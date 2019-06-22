program divisible;
var
    x, y: integer;
begin
  write('Enter the dividend: ');
  readln(x);
  write('Enter the divisor: ');
  readln(y);
  if x mod y = 0 then
    writeln('The first number is divisible by the second number!')
  else
    writeln('The first number is not divisible by the second number!')
end.