clc;
clear all;
syms i;
unitcount=0,combcount=1;
Ng=5;
total_unserved_load=15;
sumunit=0,pos=0,P=100,pgi=10,pgt=20;
cinvestment=1,cfuel=1,cocm=1;

lamda=0.02*total_unserved_load;
combfinalcount=(2.^Ng)-1;
cost=lamda;
cinvestment=symsum(cinvestment.*pgi,i,1,Ng);
cfuel=symsum(cfuel*pgi,i,1,Ng);
cocm=symsum(cocm*pgi,i,1,Ng);
while(combfinalcount<=combcount)
    unito=P,unitcount=0;
    while(unitcount<=Ng-Pos)
        uniti=unito;
        sumunit=sumunit+uniti;
        Pa=pgi+pgt;
        if(sumunit>=(((1+R/100)*P)-symsum(Pa,Pa,1,Ng)))
            cost=sumunit*(investunit+cfuelunit+cospunit);
        end 
        uniti=nextunit;
        unitcount=unitcount+1;
    end
    costmin=cost;
    unito=nextunit;
    combcount=combcount+1;
    pos=pos+1;
end

    
        
        
            