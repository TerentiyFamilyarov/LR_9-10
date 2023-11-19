program z2_1;
type arr2d= array[1..6,1..8] of int64; arr1d= array[1..6] of int64;
var arr: arr2d; arr1: arr1d;
//input2d///////////////////////////////////////////////
procedure random_input2d(ut,du:int64; var myarr:arr2d);
var i,j:int64;
begin
for i:=1 to 6 do
    for j:=1 to 8 do begin
      myarr[i,j]:=random(ut..du);
      end;
end;
//outut2d////////////////////////////////////////////////
procedure output2d(myarr:arr2d);
var i,j:int64;
begin
 for i:=1 to 6 do begin
  for j:=1 to 8 do
    write(myarr[i,j]:5);
  writeln;
                 end; 
end;
//output1d//////////////////////////////////////////////
procedure output1d(myarr:arr1d);
var i:int64;
begin
  for i:=1 to 6 do
    write(myarr[i]:5);
end;
//prod//////////////////////////////////////////////////
procedure zad2_1(myarr2d:arr2d; var myarr:arr1d);
var el,i,j:int64;
begin
  for i:=1 to 6 do begin
    el:=0;
    for j:=1 to 8 do
      if (abs(myarr2d[i,j])>4) then begin
        el:=myarr2d[i,j];
        break;
      end;
    myarr[i]:=el;
    end;
end;
//start///////////////////////
begin
  random_input2d(-10,10,arr);
  output2d(arr);
  zad2_1(arr,arr1);
  writeln;
  writeln('1dmassive: ');
  output1d(arr1);
end.