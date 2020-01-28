function [Hist]=clipHistogram(Hist,Nrbins,Cliplimit,NrX,NrY)

for i=1:NrX
    for j=1:NrY
        NrExcess=0;
        for nr=1:Nrbins
           excess=Hist(i,j,nr)-ClipLimit;
           if(excess>0)
             NrExcess=NrExcess+excess;
           end
        end
   

        binIncr=NrExcess/Nrbins;
        upper=ClipLimit-binIncr;
        for nr=1:Nrbins
            if Hist(i,j,nr)>Cliplimit
                Hist(i,j,nr)=Cliplimit;
            else
                if Hist(i,j,nr)>upper
                    NrExcess=NrExcess+upper-Hist(i,j,nr);
                    Hist(i,j,nr)=Cliplimit;
                else
                    NrExcess=NrExcess-binIncr;
                    Hist(i,j,nr)=Hist(i,j,nr)+binIncr;
                end
            end
        end

        if NrExcess > 0
            stepSize = max(1,fix(1+NrExcess/NrBins));
              for nr = 1:NrBins
                NrExcess = NrExcess - stepSize;
                Hist(i,j,nr) = Hist(i,j,nr) + stepSize;
                if NrExcess < 1
                    break;
                end
            end
        end
    end
end
        