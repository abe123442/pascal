program tiling;
var
  grade: char;
  length, height, square_meter, tile_cost: real;
  distance, delivery_cost, total: real;
  delivery: string;
begin
  write('Enter the tile grade (A, B or C): ');
  readln(grade);
  if (grade = 'A') or (grade = 'a') then
     tile_cost := 42;
  if (grade = 'B') or (grade = 'b') then
     tile_cost := 32;
  if (grade = 'C') or (grade = 'c') then
     tile_cost := 24;

  write('Enter the length: ');
  readln(length);
  write('Enter the height: ');
  readln(height);
  square_meter := length * height;
  tile_cost := tile_cost * square_meter;

  write('Do you require a delivery service? ');
  readln(delivery);
  if (delivery = 'YES') or (delivery = 'yes') then
  begin
       write('Enter the delivery distance in km: ');
       readln(distance);
       if distance <= 5 then
          delivery_cost := 75;
       if distance > 5 then
          delivery_cost := 125;
       writeln;
  end;
  if (delivery = 'NO') or (delivery = 'no') then
  begin
       writeln;
       delivery_cost := 0;
       writeln('Delivery cost is ~ $0');
  end;
  total := tile_cost + delivery_cost;
  writeln('The total cost is ~ $', total:2:2);
  readln;
end.

//Mini task 8:
//Write a program that calculates the cost of tiling a wall.
//
//Tiles come in three grades A, B and C. A grade tiles cost $42 per square meter.
//B grade tiles cost $32 per square meter. C grade tiles cost $24 per square meter.
//If the purchaser wants the tiles delivered it costs $75 =for delivery if the delivery distance is
//5km or less and $125 if the delivery distance is greater then 5km.
//
//Write a program that asks the user for quality of tile they are ordering (char) the length and height of the wall they wish to tile (float).
//Asks the user if they want delivery (accepting ‘YES’ or ‘yes’ as positive answers and anything else as a negative),
//and if they do want delivery then asking them the delivery distance.
//
//Given this input your program should print out the correct price of the tile order.
