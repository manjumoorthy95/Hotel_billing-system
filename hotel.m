clc
clear
k=1;
y=0;
n=0;
AmountL=0;
AmountRS=0;
AmountS=0;
AmountR=0;
AmountB=0;
AmountFR=0;
AmountF=0;
AmountC=0;
AmountEM=0;
quaL=0;
quaRS=0;
quaS=0;
quaR=0;
quaB=0;
quaFR=0;
quaF=0;
quaC=0;
quaEM=0;
disp('====================================')
disp ('**** WELCOME TO SALT N PEPPER ****')
disp('====================================')
while(k)
disp ('MENU LIST'); 
disp ('1.Starter');
disp ('2.Main course');
disp ('3.Curry');
disp ('4.Exit');
disp('*Taxes included in price');
choice=input('enter your choice:');
    switch(choice)
        case 1
            disp('you selected starter')
            disp('1.Lime = Rs.10');
            disp('2.Rice soup =Rs.5');
            disp('3.Sambharam =Rs.30');
            y=1;
            n=0;
            Lime=10;
            Rice_soup=5;
            Sambharam=30;
            sel=input('enter your choice:');
            if (sel==1)
                disp('you selected Lime')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaL=input('enter quantity:');
                    Amount=quaL*Lime
                    AmountL=AmountL+Amount;
                end
                if (x==0)
                    k=1;
                end
            end
             if (sel==2)
                disp('you selected Rice soup')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaRS=input('enter quantity:');
                    Amount=quaRS*Rice_soup
                    AmountRS=AmountRS+Amount;
                end
                 if (x==0)
                    k=1;
                end
             end
            if (sel==3)
                disp('you selected Sambharam')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaS=input('enter quantity:');
                    Amount=quaS*Sambharam
                    AmountS=AmountS+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
        case 2
            disp('you selected Main course')
            disp('1.Rice =Rs.40');
            disp('2.Biriyani =Rs.80');
            disp('3.Fried rice =Rs.60');
            y=1;
            n=0;
            Rice=40;
            Biriyani=80;
            Fried_rice=60;
            sel=input('enter your choice:');
            if (sel==1)
                disp('you selected Rice')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaR=input('enter quantity:');
                    Amount=quaR*Rice
                    AmountR=AmountR+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
            if (sel==2)
                disp('you selected Biriyani')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaB=input('enter quantity:');
                    Amount=quaB*Biriyani
                    AmountB=AmountB+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
            if (sel==3)
                disp('you selected Fried_rice')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaFR=input('enter quantity:');
                    Amount=quaFR*Fried_rice
                    AmountFR=AmountFR+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
            case 3
            disp('you selected Curry')
            disp('1.Fish =Rs.110');
            disp('2.Chicken =Rs.100');
            disp('3.Egg masala =Rs.70');
            y=1;
            n=0;
            Fish=110;
            Chicken=100;
            Egg_masala=70;
            sel=input('enter your choice:');
            if (sel==1)
                disp('you selected Fish')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaF=input('enter quantity:');
                    Amount=quaF*Fish
                    AmountF=AmountF+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
            if (sel==2)
                disp('you selected Chicken')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaC=input('enter quantity:');
                    Amount=quaC*Chicken
                    AmountC=AmountC+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end
            if (sel==3)
                disp('you selected Egg masala')
                x=input('confirm selection?(y/n):');
                if (x==1)
                    quaEM=input('enter quantity:');
                    Amount=quaEM*Egg_masala
                    AmountEM=AmountEM+Amount;
                end
                 if (x==0)
                    k=1;
                end
            end 
        otherwise
            k=0;
    end
disp('Do you want anything else?(y/n)')
    reply=input(':');
    if (reply==1)
        k=1;
    else
        k=0;
        i=0;
if (AmountL>0)
    i=i+1;
end
if (AmountRS>0)
    i=i+1;
end
if (AmountS>0)
    i=i+1;
end
if (AmountR>0)
    i=i+1;
end
if (AmountB>0)
    i=i+1;
end
if (AmountFR>0)
    i=i+1;
end
if (AmountF>0)
    i=i+1;
end
if (AmountC>0)
    i=i+1;
end
if (AmountEM>0)
    i=i+1;
end
i;
i=i+1;
item={};
item{1,1}='ITEMS';
item{1,2}='QUANTITY';
item{1,3}='AMOUNT';
l=2;
            if (AmountL>0)
               item{l,1}='LIME';
               item{l,2}=quaL;
               item{l,3}=AmountL;
               l=l+1;
            end
            if (AmountRS>0)
               item{l,1}='RICE SOUP';
               item{l,2}=quaRS;
               item{l,3}=AmountRS;
               l=l+1;
            end
            if (AmountS>0)
               item{l,1}='SAMBHARAM';
               item{l,2}=quaS;
               item{l,3}=AmountS;
               l=l+1;
            end
            if (AmountR>0)
               item{l,1}='RICE';
               item{l,2}=quaR;
               item{l,3}=AmountR;
               l=l+1;
            end
            if (AmountB>0)
               item{l,1}='BIRIYANI';
               item{l,2}=quaB;
               item{l,3}=AmountB;
               l=l+1;
            end
            if (AmountFR>0)
               item{l,1}='FRIED RICE';
               item{l,2}=quaFR;
               item{l,3}=AmountFR;
               l=l+1;
            end
            if (AmountF>0)
               item{l,1}='FISH';
               item{l,2}=quaF;
               item{l,3}=AmountF;
               l=l+1;
            end
            if (AmountC>0)
               item{l,1}='CHICKEN';
               item{l,2}=quaC;
               item{l,3}=AmountC;
               l=l+1;
            end
            if (AmountEM>0)
               item{l,1}='EGG MASALA';
               item{l,2}=quaEM;
               item{l,3}=AmountEM;
               l=l+1;
            end
    end   
end
 T=0;
 l=l-1;
 for i=2:l
     T=T+item{i,3};
 end
 l=l+1;
 item{l,1}='TOTAL';
 item{l,3}=T;
 item
 input('Leave a feedback about our service:','s');
 disp('*************************')
 disp('****THANK YOU****')
 disp('****VISIT AGAIN****')
 disp('*************************')