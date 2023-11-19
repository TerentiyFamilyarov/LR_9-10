program z2_3;
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
procedure zad2_3(myarr2d:arr2d; var myarr:arr1d);
var el,i,j:int64;
begin
  for i:=1 to 8 do begin
    el:=-1;
    for j:=1 to 7 do
      if (myarr2d[i,j]+myarr2d[i,(j+1)])=7 then begin
        el:=1;
      end;
    myarr[i]:=el;
    end;
end;
//start///////////////////////
begin
  random_input2d(-2,10,arr);
  output2d(arr);
  zad2_3(arr,arr1);
  writeln;
  writeln('1dmassive: ');
  output1d(arr1);
end.