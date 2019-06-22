program operators;
var
    a, b, sum, diff, multi, modulo: integer;
    divd: real;
begin
    write('Enter the first number: ');
    readln(a);
    write('Enter the second number: ');
    readln(b);
    sum := a + b;
    diff := a - b;
    multi := a * b;
    modulo := a mod b;
    divd := a div b;
    writeln('a + b = ', sum);
    writeln('a - b = ', diff);
    writeln('a * b = ', multi);
    writeln('a mod b = ', modulo);
    writeln('a div b = ', divd:2:2);
end.