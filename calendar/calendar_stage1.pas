program calendar_stage1;
uses crt;
var
  month_days, first_day, line_break: integer;  {input variables}
  x: integer; {loops through days of the month}

function first_row(first_day, no_days:integer):string;
var output_string: string;
begin
    if first_day = 0 then
        output_string := ' '
    else if first_day = 1 then
        output_string := '     '
    else if first_day = 2 then
        output_string := '         '
    else if first_day = 3 then
        output_string := '             '
    else if first_day = 4 then
        output_string := '                 '
    else if first_day = 5 then
        begin
            if no_days = 31 then
                output_string :=  ' 31                  '
            else
                output_string :=  '                     '
        end
    else if first_day = 6 then
        begin
            if no_days = 30 then
                output_string := ' 30                      '
            else if no_days = 31 then
                output_string := ' 30  31                  '
            else
                output_string := '                         ';
        end;

    first_row := output_string;

end;

begin
  write;
  readln(month_days, first_day);

  line_break := 8 - first_day;

  ClrScr;

  writeln('SUN MON TUE WED THU FRI SAT');

    for x := 1 to month_days do
        if x = 1 then
           write(first_row(first_day, month_days), ' ', x, ' ')

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
    writeln;
    readln;
end.