program fibonacci;
var
  limit ,first, second, next: integer;
begin
  first := 0;
  second := 1;
  next := first + second;
  write('Enter the limit for the sequence: ');
  readln(limit);

  write(first,', ', second,', ', next);
  while next < limit do
  begin
      write(', ', next);
      first := second;
      second := next;
      next := first + second;
  end;

  readln;

end.

//Mini task 10:
//Fibonacci sequence:
//The first two numbers in the Fibonacci sequence are 0 and 1,
//each subsequent number in the sequence is equal to the sum of the two immediately preceding numbers.
//Write a program that asks the user to input a number and then prints out numbers in the fibonnacci sequence until
//it reaches a number larger than the users input.