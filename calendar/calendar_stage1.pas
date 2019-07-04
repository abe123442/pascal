program calendar_stage1;
uses strutils;  //allows the use of DupeString
var
  month_days, first_day, line_break, x: integer;  //input variables and incremental variables

function first_calendar_row(first_day_month, no_days:integer):string;  //outputs the first set of spaces and/or dates for the first row with DupeString
var output_string: string;
begin  //sets the amount of spaces on the first row depending on the first day of the month
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
<<<<<<< HEAD
  //the remaining else-if statements output the wraparound (when number of days is 30 and the first day is 6 and also when number of days is 31 and the first day is either 5 or 6) part in the beginning
=======
  //the remaining else-if statements output the wraparound part in the beginning
>>>>>>> d40e4bf4f2d42dd479f9ab6b00b01bddf2512925
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
  first_calendar_row := output_string;  //assigns the result to the 'output_string' variable
end;

function print_calendar(no_days, first_day_month: integer): string;  //outputs the entire calendar
begin
  line_break := 8 - first_day;  
  writeln('Sun Mon Tue Wed Thu Fri Sat');
<<<<<<< HEAD
  for x := 1 to no_days do  //This loop cycles through all the month days and prints them out in the calendar. It has some if statements that are needed to make the calendar look like a calendar
=======
  for x := 1 to no_days do  //this loop cycles through all the month days and prints them out in the calendar
>>>>>>> d40e4bf4f2d42dd479f9ab6b00b01bddf2512925
    if x = 1 then
      write(first_calendar_row(first_day_month, no_days), ' ', x, ' ')  //first row output
    else if (x = 30) and (first_day_month = 6) then   //line break for x = 30 and first_day_month = 6
      writeln
    else if (x = 31) and (first_day_month = 5) then  //line break for x = 31 and first_day_month = 5
      writeln
    else if (x = 31) and (first_day_month = 6) then  //line break for x = 31 and first_day_month = 6
      writeln
    else if x < 10 then  //goes to the next line after the first row of the calendar
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
  print_calendar:= '';  //assigns result of function to an empty string
end;

begin
  readln(month_days, first_day);
  print_calendar(month_days, first_day);  //calls output function with the user input values
  readln;
<<<<<<< HEAD
end.
=======
end.
>>>>>>> d40e4bf4f2d42dd479f9ab6b00b01bddf2512925
