clc
clear

[d,b,c]=xlsread('car.xls');
num=size(c);
a=zeros(num(1),num(2));
for i=1:num(1)
     if strcmp(c{i,1},'v-high')==1
         a(i,1)=4;
     elseif strcmp(c{i,1},'high')==1
         a(i,1)=3;
      elseif strcmp(c{i,1},'med')==1
         a(i,1)=2;
     else 
         a(i,1)=1;
     end
     
     if strcmp(c{i,2},'v-high')==1
         a(i,2)=1;
     elseif strcmp(c{i,2},'high')==1
         a(i,2)=2;
      elseif strcmp(c{i,2},'med')==1
         a(i,2)=3;
     else 
         a(i,2)=4;
     end
     
     if c{i,3}==2
         a(i,3)=1;
     elseif c{i,3}==3
         a(i,3)=2;
      elseif c{i,3}==4
         a(i,3)=3;
     elseif c{i,3}==5
         a(i,3)=4;
     else 
         a(i,3)=5;
     end
     
     if c{i,4}==2
         a(i,4)=1;
     elseif c{i,4}==4
         a(i,4)=2;
     else 
         a(i,4)=3;
     end
     
     if strcmp(c{i,5},'low')==1
         a(i,5)=1;
     elseif strcmp(c{i,5},'med')==1
         a(i,5)=2;
     else 
         a(i,5)=3;
     end
     
     if strcmp(c{i,6},'samll')==1
         a(i,6)=1;
     elseif strcmp(c{i,6},'med')==1
         a(i,6)=2;
     else 
         a(i,6)=3;
     end
end
xx=sum(a');
maxxx=max(xx);
minxx=min(xx);
type1=sum(xx<13)/num(1)
type3=sum(18>xx)/num(1)
type2=1-type1-type3


