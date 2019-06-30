program calendar_year;
uses math, sysutils, strutils, crt;
const
  week_head: string = 'Sun Mon Tue Wed Thu Fri Sat';
var
  year, month, no_days, line_break, first_day, x: integer;
  month_days: array [1..12] of integer;
  month_name: string;
function is_leap_year(year:integer):integer;   //find leap year or not
begin
  if (year mod 4)=0 then
    if (year mod 100)=0 then
      if (year mod 400)=0 then
        is_leap_year:=2
      else is_leap_year:=1
    else is_leap_year:=2
  else is_leap_year:=1
end;
function calendar_date(year, month: integer): TDateTime;  // convert integer to dateformat
begin
    DefaultFormatSettings.DateSeparator := '/';
    calendar_date:=StrToDate('01'+ DefaultFormatSettings.DateSeparator + IntToStr(month) + DefaultFormatSettings.DateSeparator + IntToStr(year));
end;
function first_day_month(year, month: integer): integer;  //find the first week day of the month
var
  mydate: TDateTime;
begin
    mydate:= calendar_date(year, month);
    first_day_month := DayOfWeek(mydate);
end;
function no_days_month(year, month: integer): integer; //find no of days of each month
begin
    case month of
        1,3,5,7,8,10,12: month_days[month] := 31;
               4,6,9,11: month_days[month] := 30;
                      2:
                        begin
                            if (is_leap_year(year)) = 2 then
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
      output_string := DupeString(' ', 5)
    else if first_day_month = 3 then
      output_string := DupeString(' ', 9)
    else if first_day_month = 4 then
      output_string := DupeString(' ', 13)
    else if first_day_month = 5 then
      output_string := DupeString(' ', 17)
    else if first_day_month = 6 then
        begin
            if no_days = 31 then
              output_string :=  ' 31' + DupeString(' ', 18)
            else
              output_string :=  DupeString(' ', 21)
        end
    else if first_day_month = 7 then
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
function dupe_space(month_year: string): string;      //centers the date above the calendar -> (Month Year)
var
  width: integer;
begin
   width := floor((length(week_head) - length(month_year))/2) - 1;
   if width mod 2 = 0 then
   begin
       if (length(month_year) = 8) then
         dupe_space := DupeString(' ', width+1) + month_year + DupeString(' ', width)
       else
         dupe_space := DupeString(' ', width) + month_year + DupeString(' ', width)
   end
   else
     dupe_space := DupeString(' ', width+1) + month_year + DupeString(' ', width);
end;
function print_calendar(year, month: integer): string; //the final calendar output
begin
    no_days := no_days_month(year, month);
    first_day := first_day_month(year, month);
    line_break := 9 - first_day;
    month_name := FormatDateTime('MMMM YYYY', calendar_date(year, month));
    writeln(dupe_space(month_name));
    writeln(week_head); //outputs Sun - Sat
    for x := 1 to no_days do
    if x = 1 then
      write(first_calendar_row(first_day), ' ', x, ' ')
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
end;
begin
    readln(year, month);
    if year >= 1970 then
    begin
        ClrScr;
        print_calendar(year, month);
    end;
    readln;
end.