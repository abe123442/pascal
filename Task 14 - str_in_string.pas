program findStr;
var
	str1, str2: string;
	i, j: Integer;
begin
	write('Enter a word: ');
	readln(str1);
	write('Enter another word: ');
	readln(str2);

	for i := 1 to (length(str2)-length(str1)) do
	begin
	    if str1[1] = str2[i] then
	    begin
		    for j := 2 to length(str1) do
		    begin
			    if str1[j] <> str2[i+j-1] then
				    break;
		    end;
		end;
	end;
	if j = length(str1) then
	    writeln('Yes')
	else
	    writeln('No');
end.
