program calendar_stage1;
uses crt, strutils;
var
  month_days, first_day, line_break: integer;  {input variables}
  x: integer; {loops through days of the month}
function first_calendar_row(first_day_month, no_days:integer):string;
var output_string: string;
begin
    if first_day_month = 0 then
      output_string := ' '
    else if first_day_month = 1 then
      output_string := DupeString(' ', 5)
    else if first_day_month = 2 then
      output_string := DupeString(' ', 9)
    else if first_day_month = 3 then
      output_string := DupeString(' ', 13)
    else if first_day_month = 4 then
      output_string := DupeString(' ', 17)
    else if first_day_month = 5 then
    begin
        if no_days = 31 then
          output_string :=  ' 31' + DupeString(' ', 18)
        else
          output_string :=  DupeString(' ', 21)
    end
    else if first_day_month = 6 then
    begin
        if no_days = 30 then
          output_string := ' 30' + DupeString(' ', 22)
        else if no_days = 31 then
          output_string := ' 30  31' + DupeString(' ', 18)
        else
          output_string := DupeString(' ', 25);
    end;
    first_calendar_row := output_string;
end;
function print_calendar(month_days, first_day: integer): string;
begin
    line_break := 8 - first_day;
    writeln('Sun Mon Tue Wed Thu Fri Sat');
    for x := 1 to month_days do
        if x = 1 then
          write(first_calendar_row(first_day, month_days), ' ', x, ' ')
        else if (x = 30) and (first_day = 6) then
          writeln
        else if (x = 31) and (first_day = 5) then
          writeln
        else if (x = 31) and (first_day = 6) then
          writeln
        else if x < 10 then
        begin
            if x = line_break then
            begin
                writeln;
                line_break := line_break + 7;
            end;
            write('  ', x, ' ');
        end
        else
        begin
            if x = line_break then
            begin
                writeln;
                line_break := line_break + 7;
            end;
            write(' ', x, ' ');
        end;
    print_calendar:= '';
    writeln;
end;
begin
    readln(month_days, first_day);
    clrscr;
    print_calendar(month_days, first_day);
    readln;
end.
