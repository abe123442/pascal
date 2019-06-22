program count_vowels;
var
    line: string;
    s, vowels, cons: integer;
begin
    vowels := 0;
    cons := 0;
    write('Write down a word: ');
    readln(line);

    for s := 1 to length(line) do
    begin

      if (line[s] = 'A') or (line[s] = 'E') or (line[s] = 'I') or (line[s] = 'O') or (line[s] = 'U') or (line[s] = 'a') or (line[s] = 'e') or (line[s] = 'i') or (line[s] = 'o') or (line[s] = 'u') then
        vowels := vowels + 1;

    end;

    cons := length(line) - vowels;
    writeln('There are: ', vowels, ' vowels and ', cons, ' consonants');
    readln;

end.

//Mini task 11:
//Prompt the user to enter a string. Output the number of vowels contained in the string.
//Vowels can be either upper or lower case.