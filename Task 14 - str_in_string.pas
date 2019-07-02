program findStr;
var
	str1, str2: string;
	i, j: Integer;
	containStr: Boolean;
begin
	write('Enter a word: ');
	readln(str1);
	write('Enter another word: ');
	readln(str2);

	for i := 1 to length(str2) do
	begin
		for j := length(str1) to length(str2) do
		begin
			if str1[j] <> str2[i+j] then
				containStr := false
			else 
				containStr := true;
		end;
	end;
	if containStr then writeln('Yes')
	else writeln('No');
end.