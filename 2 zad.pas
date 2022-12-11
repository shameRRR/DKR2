begin
var str,s:string;
var arr:array [1..225] of string;
var l:byte;
var n:byte;
  readln(str);
  l:=length(str);
  n:=0;
  s:='';
   for var i:=1 to l do
    if ((str[i]=' ') or (i = l)) and (s<>'') then begin
      n:= n + 1;
      if (i=l) and (str[i] <> ' ') then s:= s + str[i];
      arr[n]:=s;
      s:= '';
end
else
  if str[i] <> ' ' then
    s:= s + str[i];
writeln(n);
for var i:=1 to n do
  print(arr[i],' - ',length(arr[i]));
    
end.
