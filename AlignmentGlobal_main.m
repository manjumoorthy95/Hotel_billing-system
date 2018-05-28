% global alignment matrix initiation
% Author: sagar 
% Date: 29-8-17
clc
clear
S1='SHIVAN'
S2='ASHAVIAYAN'
A=zeros(7,11);
m=length(S1)
n=length(S2)
 A(1,:)=-2;
 A(:,1)=-2;
 g=-2;
%  loop to add match and mismatch value
for i=2:m+1
    for j=2:n+1
       if S1(i-1)==S2(j-1)
           A(i,j)=2;
       else
           A(i,j)=-1;
       end
    end
end
 A(1,1)=0;
A 
x=-2;
A(1,1)=0;
% loop to add gap value
for i=2:m+1
 A(i,1)= (A(i,1)+x*i)+4;   
end
x=-2;
for j=2:n+1
 A(1,j)= (A(1,j)+x*j)+4;  
end
T=A
% trace back cell array
for i=2:m+1
    for j=2:n+1
        Temp=[];
        a1=T(i-1,j)+g;
        a2=T(i-1,j-1)+T(i,j);
        a3=T(i,j-1)+g;
        Aa=[a1,a2,a3];
        greatest=max(Aa);
        T(i,j)=greatest;
        if greatest==a1
            Temp=[Temp,1];
        end
        if greatest==a2
                Temp=[Temp,2];
        end
        if greatest==a3
                  Temp=[Temp,3];
        end
        C{i,j}=Temp;
    end
end
C{i,j}
% trace back colour map
figure;
pcolor(T);
colormap(parula(5));



        
                     
        
    
            

        