program calendar_stage2;
uses math, sysutils, Crt;
var
  year, month: integer;
  month_days: array [1..12] of integer;
  no_days, line_break, first_day, x: integer;


function day_in_year(year:integer):integer;
begin
  if (year mod 4)=0 then
    if (year mod 100)=0 then
      if (year mod 400)=0 then
        day_in_year:=2
      else day_in_year:=1
    else day_in_year:=2
  else day_in_year:=1
end;

function calendar_date(year, month: integer): TDateTime;
begin
    calendar_date:=StrToDate('01/'+ IntToStr(month) + '/' + IntToStr(year));
end;

function first_day_month(year, month: integer): integer;
var
  mydate: TDateTime;
begin
    mydate:= calendar_date(year, month);
    first_day_month := DayOfWeek(mydate);
end;

function no_days_month(year, month: integer): integer;
begin
     case month of
          1,3,5,7,8,10,12: month_days[month] := 31;
                 4,6,9,11: month_days[month] := 30;
                        2:
                          begin
                               if (day_in_year(year)) = 2 then
                                  month_days[month] := 29
                               else
                                  month_days[month] := 28;
                          end;
     end;
     no_days_month :=  month_days[month];
end;


function first_calendar_row(first_day_month:integer):string;
var output_string: string;
begin

    if first_day_month = 1 then
        output_string := ' '
    else if first_day_month = 2 then
        output_string := '      '
    else if first_day_month = 3 then
        output_string := '           '
    else if first_day_month = 4 then
        output_string := '                '
    else if first_day_month = 5 then
        output_string := '                     '
    else if first_day_month = 6 then
        begin
            if no_days = 31 then
                output_string :=  ' 31                       '
            else
                output_string :=  '                          '
        end
    else if first_day_month = 7 then
        begin
            if no_days = 30 then
                output_string := ' 30                            '
            else if no_days = 31 then
                output_string := ' 30   31                       '
            else
                output_string := '                               ';
        end;
    first_calendar_row := output_string;
end;



begin
     write;
     readln(year, month);
     if year >= 1970 then
     begin

        no_days := no_days_month(year, month);
        first_day := first_day_month(year, month);

          line_break := 9 - first_day;

          ClrScr;
          writeln;

          writeln('            ', FormatDateTime('mmmm yyyy', calendar_date(year, month)));
          writeln('Sun  Mon  Tue  Wed  Thu  Fri  Sat');

          for x := 1 to no_days do

              if x = 1 then
                 write(first_calendar_row(first_day), ' ', x, '  ')

              else if (x = 30) and (first_day = 7) then
                   writeln

              else if (x = 31) and (first_day = 6) then
                   writeln

              else if (x = 31) and (first_day = 7) then
                   writeln

              else if x < 10 then
              begin
                   if x = line_break then
                      begin
                           writeln;
                           line_break := line_break + 7;
                      end;
                   write('  ', x, '  ');
              end

              else
              begin
                   if x = line_break then
                   begin
                        writeln;
                        line_break := line_break + 7;
                   end;
                   write(' ', x, '  ');
              end;

     end;
     readln;
end.
