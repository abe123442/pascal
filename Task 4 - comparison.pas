program task_4;
var
    a, b, c, d: integer;
begin
  write('Enter a number: ');
  readln(a);
  write('Enter a number: ');
  readln(b);
  write('Enter a number: ');
  readln(c);
  write('Enter a number: ');
  readln(d);
 
  if a * b > c * d then
    writeln('The product of the first 2 numbers is greater!')
  else if a * b = c * d then
    writeln('Both products are equal!')
  else if a * b < c * d then
    writeln('The product of the last 2 numbers is greater!')
end.