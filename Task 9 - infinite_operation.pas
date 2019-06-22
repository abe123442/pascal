program infinite_loop;
uses math;
var
  zero, count, num, add, num1: real;
begin
  add := 0;
  count := 0;
  write('Enter a number: ');
  readln(num);
  while num <> 0 do
  begin
      add := add + num;
      count := count + 1;
      write('Enter a number: ');
      readln(num);
  end;
  writeln('Sum: ', add:2:2, ' Average: ', (add / count):2:2);
  readln;
end.

//Mini task 9:
//Sum and average of sequence of numbers:
//Write a program that allows the user to input a (unlimited) sequence of numbers.
//(i.e. the user can input 1, 5 or 2000 numbers).
//To indicate the end of the sequence the user will input the number 0.
//Once the user has entered the sequence your program is to print out the sum and the average of all the numbers entered
//(not including the 0).