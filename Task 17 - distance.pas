program from_x_to_y;
var
	x1, x2, y1, y2: real;
function distance(a1, b1, a2, b2: real): real;
begin
	distance := sqrt(((a2-a1) * (a2-a1)) + ((b2-b1) * (b2-b1)));
end;
begin
  write('Enter the first coordinates: ');
  readln(x1, y1);
  write('Enter the second coordinates: ');
  readln(x2, y2);
  writeln('The distance between the two points is: ', (distance(x1, y1, x2, y2)):2:2);
end.