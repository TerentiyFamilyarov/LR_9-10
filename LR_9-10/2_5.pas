program z2_5;
type arr2d= array[1..8,1..8] of int64; arr1d= array[1..8] of int64;
var arr: arr2d; arr1: arr1d;
//input2d///////////////////////////////////////////////
procedure random_input2d(ut,du:int64; var myarr:arr2d);
var i,j:int64;
begin
for i:=1 to 8 do
    for j:=1 to 8 do begin
      myarr[i,j]:=random(ut..du);
      end;
end;
//outut2d////////////////////////////////////////////////
procedure output2d(myarr:arr2d);
var i,j:int64;
begin
 for i:=1 to 8 do begin
  for j:=1 to 8 do
    write(myarr[i,j]:5);
  writeln;
                 end; 
end;
//output1d//////////////////////////////////////////////
procedure output1d(myarr:arr1d);
var i:int64;
begin
  for i:=1 to 8 do
    write(myarr[i]:5);
end;
//prod//////////////////////////////////////////////////
procedure zad2_5(myarr2d:arr2d; var myarr:arr1d);
var k_max,i,j,max,el:int64;
begin
  for i:=1 to 8 do begin
    max:=0;
    k_max:=0;
    el:=-1;
    for j:=1 to 8 do
      if myarr2d[i,j]>max then begin
        max:=myarr2d[i,j];
      end;
    for j:=1 to 8 do
      if myarr2d[i,j]=max then
        k_max+=1;
    if k_max= 1 then el:=1;
    myarr[i]:=el;
    end;
end;
//start///////////////////////
begin
  random_input2d(0,10,arr);
  output2d(arr);
  zad2_5(arr,arr1);
  writeln;
  writeln('1dmassive: ');
  output1d(arr1);
end.