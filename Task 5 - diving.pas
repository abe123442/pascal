program diving;
uses math;

var
   high, low, a, b, c, d, e: real;
   avg: real;
begin
  write('Enter the diving score: ');
  readln(a);
  readln(b);
  readln(c);
  readln(d);
  readln(e);
  high := 0;
  low := 10;
  if high < a then
     high := a;
  if high < b then
     high := b;
  if high < c then
     high := c;
  if high < d then
     high := d;
  if high < e then
     high := e;

  if low > a then
     low := a;
  if low > b  then
     low := b;
  if low > c  then
     low := c;
  if low > d  then
     low := d;
  if low > e  then
     low := e;
  writeln('Highest score: ', high:5:2);
  writeln('Lowest score: ', low:5:2);
  avg := ((a + b + c + d + e) - high - low);
  avg := (avg / 3);
  writeln('Average score: ', avg:5:2);
  readln();
end.