program big3;
var
	a: array [1..10] of integer;
	i, even1, even2, even3: integer;
begin
	even1 := 0;
	even2 := 0;
	even3 := 0;
	for i := 1 to 10 do
	begin 
		write('Enter a number: ');
		readln(a[i]);
		if a[i] mod 2 = 0 then
		begin
		  if a[i] > even1 then
		  begin
		    even3 := even2;
		    even2 := even1;
		    even1 := a[i];	
		  end
		  else if a[i] > even2 then
		  begin
		    even3 := even2;
		    even2 := a[i];
		  end 
		  else if a[i] > even3 then
		    even3 := a[i];
		end;
	end;
	writeln('The numbers are: ', even1, ', ', even2, ', ', even3);
end.


// Mini Task 13:
// Read in ten integers from the user into an array.
// Find and print out the three largest even numbers in the array.