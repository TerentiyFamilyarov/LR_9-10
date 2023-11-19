program zz;
type arr2d= array[1..5,1..5] of int64; arr1d= array[1..5] of int64;
var arr: arr2d; arr1: arr1d;
//input2d///////////////////////////////////////////////
procedure random_input2d(ut,du:int64; var myarr:arr2d);
var i,j:int64;
begin
for i:=1 to 5 do
    for j:=1 to 5 do begin
      myarr[i,j]:=random(ut..du);
      end;
end;
//outut2d////////////////////////////////////////////////
procedure output2d(myarr:arr2d);
var i,j:int64;
begin
 for i:=1 to 5 do begin
  for j:=1 to 5 do
    write(myarr[i,j]:5);
  writeln;
                 end; 
end;


//input1d////////////////////////////////////////////////
procedure random_input1d( ut,du:int64;var myarr:arr1d);
var i:int64;
begin
  for i:=1 to 5 do
    myarr[i]:=random(ut..du);
end;
//output1d//////////////////////////////////////////////
procedure output1d(myarr:arr1d);
var i:int64;
begin
  for i:=1 to 5 do
    write(myarr[i]:5);
end;
//start/////////////////////////////////////////////////
begin
  random_input1d(1,5,arr1);
  output1d(arr1);
end.