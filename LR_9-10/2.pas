program z2;
type arr2d= array[1..5,1..5] of int64;
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
//prod/////////////////////////////
procedure zad2(my_arr:arr2d);
var i,j,max_el,min_abs,below:int64; max:string;
begin
min_abs:=100;
below:=100;
for i:=1 to 5 do
  for j:=1 to 5 do begin
    if my_arr[i,j]>max_el then begin max_el:=my_arr[i,j]; max:='[i,j]= ';max:='[i,j]= '+ i+ ', '+ j end;
    if (my_arr[i,j]<min_abs) and (my_arr[i,j]>=0) then min_abs:=my_arr[i,j];
    if my_arr[i,j]<below then below:=my_arr[i,j];
  end;
writeln;
writeln('Максимальный елемент: ',max_el,' ',max);
writeln('Минимальный по модулю: ',min_abs);
writeln('Самый минимальный: ',below);
end;
var i,j:int64; arr:arr2d;
//start///////////////////////
begin
random_input2d(-100,100,arr); 
output2d(arr);              
zad2(arr);
end.