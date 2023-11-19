program z1;
type arr2d= array[1..5,1..5] of int64;
var i,j:int64; arr: arr2d;
//input////////////////////////////////////////////////
procedure random_input2d(ut,du:int64; var myarr:arr2d);
var i,j:int64;
begin
for i:=1 to 5 do
    for j:=1 to 5 do begin
      myarr[i,j]:=random(ut..du);
      end;
end;
//outut////////////////////////////////////////////////
procedure output2d(myarr:arr2d);
var i,j:int64;
begin
 for i:=1 to 5 do begin
  for j:=1 to 5 do
    write(myarr[i,j]:5);
  writeln;
                 end; 
end;
//func//////////////////////////////////////////////
function prod_chet(my_arr2d:arr2d):int64;
var i,j:int64;
begin
  prod_chet:=1;
for i:=1 to 5 do 
   for j:=1 to 5 do
     if my_arr2d[i,j] mod 2= 0 then
       prod_chet*=my_arr2d[i,j];
end;
//start///////////////////////////////////////////
begin
  random_input2d(1,2,arr);
  output2d(arr);
  writeln(prod_chet(arr));
end.