program find_hypotenuse;
var
  num1, num2: real;
function hypotenuse(a, b: real):real;
begin
  hypotenuse := sqrt((a*a) + (b * b));
end;
begin 
  write('Enter the first value: ');
  readln(num1);
  write('Enter the second value: ');
  readln(num2);
  writeln('The length of the hypotenuse is: ', (hypotenuse(num1, num2)):2:2);
end.s