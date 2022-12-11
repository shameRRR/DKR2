const   n=20;
begin

var a: array[1..n] of integer;
var max_raz: integer;
var k1: integer;
var k2: integer;
var max: integer;
  for var b := 1 to n do
  begin
    a[b] := random(160) - 99;
    write(a[b],' ');
  end;
  begin
    max := abs(a[1] - a[2]);
    for var c := 1 to n - 1 do
      for var j := c + 1 to n do
      begin
        max_raz := abs(a[c] - a[j]);
        if max_raz > max then 
        begin
          max := max_raz;
          k1 := c;
          k2 := j;
        end;
      end;
  end;
  write(k1,' ', k2)
end.
