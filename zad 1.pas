const   n=20;

var
  a: array[1..n] of integer;

var
  b: integer;

var
  max_raz: integer;

var
  c: integer;

var
  j: integer;

var
  k1: integer;

var
  k2: integer;


  max: integer;

begin
  for b := 1 to n do
  begin
    a[b] := random(160) - 99;
    write(a[b],' ');
  end;
  begin
    max := abs(a[1] - a[2]);
    for c := 1 to n - 1 do
      for j := c + 1 to n do
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
  writeln;
  writeln(k1,' ', k2)
end.