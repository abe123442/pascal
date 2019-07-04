program calendar_year;
uses math, sysutils, strutils;  //allows the use of Floor, IntToStr, DupeString etc.
const
  week_str: string = 'Sun Mon Tue Wed Thu Fri Sat';  //the string just above the dates of the calendar
var
  year, month, no_days, first_day, line_break, x: integer;  //input variables and incremental variables
  month_days: array [1..12] of integer; //array of all the months which also contains the number of days for each month
  month_name: string;

function is_leap_year(year:integer):integer;  //finds if leap year or not
begin  //If it is a leap year, the variable returns 2. Otherwise, 1 is returned
  if (year mod 4)=0 then
    if (year mod 100)=0 then
      if (year mod 400)=0 then
        is_leap_year:=2
      else is_leap_year:=1
    else is_leap_year:=2
  else is_leap_year:=1;
end;

function calendar_date(year, month: integer): TDateTime;  //converts user input integer to dateformat
begin
    DefaultFormatSettings.DateSeparator := '/';
    calendar_date:=StrToDate('01'+ DefaultFormatSettings.DateSeparator + IntToStr(month) + DefaultFormatSettings.DateSeparator + IntToStr(year));
end;

function first_day_month(year, month: integer): integer;  //finds the first week day of the month
var
  mydate: TDateTime;
begin
    mydate:= calendar_date(year, month);
    first_day_month := DayOfWeek(mydate);
end;

function no_days_month(year, month: integer): integer;  //finds number of days of each month
begin  
  case month of
    1,3,5,7,8,10,12: month_days[month] := 31;
    4,6,9,11: month_days[month] := 30;
    2:
      begin  //sets the number of days for February 
        if (is_leap_year(year)) = 2 then
          month_days[month] := 29
        else
          month_days[month] := 28;
      end;
  end;
  no_days_month :=  month_days[month];  //assigns the result to the array
end;

function first_calendar_row(first_day_month:integer):string;
var output_string: string;  //outputs the first set of spaces and/or dates for the first row with DupeString
begin  //sets the amount of spaces on the first row depending on the first day of the month
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
  //the remaining else-if statements output the wraparound part in the beginning
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
  first_calendar_row := output_string;  //assigns the result to the 'output_string' variable
end;

function center_date(month_year: string): string;  //centers the date above the calendar using the 'width' variable
var
  width: integer;
begin
  width := floor((length(week_str) - length(month_year))/2) - 1;  //floor rounds down the value of the output 
  if width mod 2 = 0 then  
  begin
    if (length(month_year) = 8) then
      center_date := DupeString(' ', width+1) + month_year + DupeString(' ', width)  //fixes centering for 8-lettered months
    else
      center_date := DupeString(' ', width) + month_year + DupeString(' ', width)
  end
  else
    center_date := DupeString(' ', width+1) + month_year + DupeString(' ', width);
end;

function print_calendar(year, month: integer): string;  //outputs the entire calendar
begin
  no_days := no_days_month(year, month);
  first_day := first_day_month(year, month);
  line_break := 9 - first_day;
  month_name := FormatDateTime('MMMM YYYY', calendar_date(year, month));  //using the function of calendar_date and formating it into the month_name string
  writeln(center_date(month_name));
  writeln(week_str); //outputs the names of the days of the week
  for x := 1 to no_days do  //this loop cycles through all the month days and prints them out in the calendar
  begin
    if x = 1 then  //first row output
      write(first_calendar_row(first_day), ' ', x, ' ')  
    else if (x = 30) and (first_day = 7) then  //line break for x = 30 and first day = 6
      writeln
    else if (x = 31) and (first_day = 6) then  //line break for x = 31 and first day = 5
      writeln
    else if (x = 31) and (first_day = 7) then  //line break for x = 31 and first_day = 6
      writeln
    else if x < 10 then  //goes to the next line for the first row of the calendar
    begin
      if x = line_break then
      begin
        writeln;
        line_break := line_break + 7;
      end;
      write('  ', x, ' ');
    end
    else  //goes to the next line after every seven days
    begin
      if x = line_break then
      begin
        writeln;
        line_break := line_break + 7;
      end;
      write(' ', x, ' ');
    end;
    print_calendar:= '';  //assigns the result of the function to an empty string
  end;
end;

begin
  readln(year, month);
  if year >= 1970 then
    print_calendar(year, month);  //calls the function with the user input values
  readln;
end.
