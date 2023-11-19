program z4;
type arr1d= array[1..5] of int64;
var arr1,arr2:arr1d;
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
//prod////////////////////////////////////////////////
procedure zad4(var myarr,myarr1:arr1d);
var i,sum1,sum2:int64;
begin
  sum1:=0;
  sum2:=0;
  for i:=1 to 5 do begin
    if myarr[i]>0 then sum1+=myarr[i];
    if myarr1[i]>0 then sum2+=myarr1[i];
  end;
  if sum1<sum2 then 
    for i:=1 to 5 do 
      myarr[i]*=10
  else
    for i:=1 to 5 do
      myarr1[i]*=10;
end;
//start/////////////////////////////////
begin
  random_input1d(-5,5,arr1);
  output1d(arr1);
  writeln;
  random_input1d(-5,5,arr2);
  output1d(arr2);
  writeln;
  writeln('After: ');
  zad4(arr1,arr2);
  output1d(arr1);
  writeln;
  output1d(arr2);
end.