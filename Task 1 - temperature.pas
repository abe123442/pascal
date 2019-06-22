program celsius_to_fahrenheit;
var
    celsius: integer;
    fahrenheit: real;
begin
    write('Enter the temperature in Celsius: ');
    readln(celsius);
    fahrenheit := (celsius * 1.8) + 32;
    writeln('The temperature in Fahrenheit is: ', fahrenheit:2:2);
end.

