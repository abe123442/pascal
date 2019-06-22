program who_r_u;
var
  name: string;
begin
  write('What is your name? ');
  readln(name);

  if (name = 'George') or (name = 'george') then
    writeln('I do not like you!')
  else if (name = 'Lazlow') or (name = 'lazlow') then
    writeln('I think I hear my mother calling')
  else
    writeln('Hello ', name, '!');

  readln;
end.


//Mini task 7:
//Not George:
//Your computer likes everyone except George and Lazlow. Write a program
//that asks people to enter their name, if they enter George the computer responds ‘I do not like you’ if they enter
//Lazlow the computer responds ‘I think I hear my mother calling’ and if the user enters anything else then
//the computer reponds ‘Hello <name>’ where <name> is the name the user typed in.
