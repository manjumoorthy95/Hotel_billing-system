% Local alignment matrix - Smith watermann Algorithm
% Author: Manju.M
% Date: 7-9-17
clc
clear
S1='SHIVAN'%coloumn name
S2='ASHAVIAYAN'%row name
A=zeros(7,11);
m=length(S1)
n=length(S2)
 A(1,:)=0;
 A(:,1)=0;
 A(1,1)=0;
for i=2:m+1
    for j=2:n+1
       if S1(i-1)==S2(j-1)
           A(i,j)=2;
       else
           A(i,j)=0;
       end
    end
end
A 
T=A;
g=-2;
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
T
figure;
pcolor(T);
colormap(parula(05));
