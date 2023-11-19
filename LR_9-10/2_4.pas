program z2_4;
type arr2d= array[1..8,1..8] of int64; arr1d= array[1..8] of int64;
var arr: arr2d; arr1: arr1d; yesno:string;
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
procedure zad2_4(myarr2d:arr2d; var myarr:arr1d);
var min,i,j:int64;
begin
  for i:=1 to 8 do begin
    min:=100;
    for j:=1 to 8 do
      if myarr2d[i,j]<min then begin
        min:=myarr2d[i,j];
      end;
    myarr[i]:=min;
    end;
end;
function sred_arif(kolvo:int64;myarr:arr1d):real;
var i,okr:int64;
begin
  for i:=1 to kolvo do 
    sred_arif+=myarr[i];
  sred_arif*=power(kolvo,-1);
  writeln;
end;
//start///////////////////////
begin
  random_input2d(-3,8,arr);
  output2d(arr);
  zad2_4(arr,arr1);
  writeln;
  writeln('1dmassive: ');
  output1d(arr1);
  writeln;
  writeln('Среднее ариф целое? ',sred_arif(8,arr1));
  readln(yesno);
  if yesno='no'  then writeln('Среднее арифметическое-->Увы не целое: ',sred_arif(8,arr1))
  else writeln('Среднее арифметическое-->Целое =) : ',sred_arif(8,arr1))
end.