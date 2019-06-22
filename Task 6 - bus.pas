program catch_the_bus;
var
   rain, distance:integer;
begin
  writeln('I am your personal trip advisor :)');
  write('Is it raining? Enter 1 for yes and 0 for no: ');
  readln(rain);
  if rain = 1 then
     writeln('You should catch the bus in this stormy weather!')
  else if rain = 0 then
  begin
     write('How long is your journey? ');
     readln(distance);
     if distance < 2 then
        writeln('You should walk!')
     else if distance < 10 then
        writeln('You should ride a bike!')
     else
       writeln('You should catch the bus!');
  end;
readln;
end.
  

// Write a program to tell the user which method of transport they should use.
// If it is raining then they should take a bus.
// If it is not raining the right method of transport depends upon the distance they are going to travel.
// They should walk if they are traveling less than 2 km.
// They should ride a bike if they are travelling between 2 and 10 kilometres (inclusive).
// They should catch a bus if they are traveling more than 10 kilometres.
// Prompt the user to enter a number: 1 if it is raining or 0 if it is not raining.
// If required prompt the user to enter the number of kilometres they are going to travel.
// Print a statement saying whether they should ride a bike or catch a bus.
