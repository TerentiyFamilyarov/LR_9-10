program z3;
type arr2d=array[1..5,1..5] of int64;
var i,j,chet1:int64; arr:arr2d;
//input///////////////////////////////////////////////
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
//func.first///////////////////
function first(myarr:arr2d):string;
var i,j:int64;
begin
  for i:=1 to 5 do
  for j:=1 to 5 do begin
    if (arr[i,j]>0) and (chet1=0) then begin first:='Первый положительный елемент= '+ arr[i,j]+ ' ['+ i+ ', '+ j+']'; chet1:=1; end;
  end;  
if chet1=1 then  else first:='0' ;
end;
//func.ends/////////////////////////
function ends(myarr:arr2d):string;
var i,j:int64;
begin
  for i:=1 to 5 do
  for j:=1 to 5 do begin
    if arr[i,j]<0 then begin ends:='Номер посл. отрицательного эл-та= ';ends:='Номер посл. отрицательного эл-та= ['+ i+ ', '+ j+']';end; 
  end;  
end;
//start////////////////////////////
begin
 random_input2d(-100,100,arr);
 output2d(arr);
 writeln(first(arr));
 writeln(ends(arr));
end.