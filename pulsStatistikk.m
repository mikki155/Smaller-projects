function [gPuls, lPuls, hPuls] = pulsStatistikk(pulsData)

byttet = false;
while byttet == true
    for i = 1:length(pulsData)-1
       if pulsData(i)>pulsData(i+1)
           temp1 = pulsData(i);
           temp2 = pulsData(i+1);
           pulsData(i) = temp2;
           pulsData(i+1) = temp1;
           byttet = true;
       end
    end
end
lPuls = pulsData(1);
hPuls = pulsData(end);
gPuls = sum(pulsData)/length(pulsData);

end

