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
procedure zad5(var myarr,myarr1:arr1d);
var i,fast1,fast2,max1,max2,min1,min2:int64;
begin
  max1:=1;
  max2:=1;
  min1:=1;
  min2:=1;
  for i:=1 to 5 do begin
    if myarr[i]>myarr[max1] then max1:=i;
    if myarr1[i]>myarr1[max2] then max2:=i;
    end;
  max1:=min2;
  max2:=min1;
  for i:=1 to 5 do begin
     if myarr[i]<myarr[min1] then min1:=i;
     if myarr1[i]<myarr1[min2] then min2:=i;
     end;
  for i:=1 to 5 do begin
    if (myarr[i] mod 5= 0) and (myarr[i]<>0) then begin fast1:=1; break; end;
    if (myarr1[i] mod 5= 0) and (myarr1[i]<>0) then begin fast2:=1; break; end;
    end;
  if fast1=1 then begin
    myarr[max1]:=0;
    for i:= (min2+1) to 5 do
      myarr1[i]*=2;
  end
  else begin
    myarr1[max2]:=0;
    for i:= (min1+1) to 5 do
      myarr[i]*=2;
  end;
                
                                         
end;
//start/////////////////////////////////
begin
  random_input1d(-5,5,arr1);
  random_input1d(-5,5,arr2);
  output1d(arr1);
  writeln;
  writeln('second:');
  output1d(arr2);
  zad5(arr1,arr2);
  writeln;
  writeln;
  writeln('after: ');
  output1d(arr1);
  writeln;
  writeln('second:');
  output1d(arr2);
end.