program reverse_output;
var
  word, invert: string;
  i: integer;

begin
  invert:='';
  i:=0;
  write('Enter the word: ');
  readln(word);
  word:=lowercase(word);

  for i:=length(word) downto 1 do
    invert:=invert + word[i];
  writeln;
  writeln('The word you entered ~ ', word);
  writeln;
  writeln('The word reversed is ~ ', invert);

  readln;
end.


//Mini task 12:
//Prompt the user to input a string.
//Construct another string which is the reverse of the string the user entered and then print that string to the screen.
//(i.e. if the user types ‘hello’ your program should make a reversed copy and output ‘olleh’).
//Hint you will probably need to use reverse := reverse + ??????