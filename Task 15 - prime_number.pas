program sieve_task15;
const MAX=1000;
var prime_array: array[2..MAX] of boolean;
  i,j: integer;
 
begin
    for i:=2 to 1000 do prime_array[i]:=false;
    i:=2;
    repeat
      if not prime_array[i] then begin
        j:=i*i;
        while j<=1000 do begin
          prime_array[j]:=true;
          j:=j+i;
        end;
      end;
      i:=i+1;
    until i*i>1000;
    for i:=2 to 1000 do
      if not prime_array[i] then
        write(i:3, ', ');
  readln;
end.