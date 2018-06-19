function lSec = lengstePulsOkning(pulsData)
count = 1;
recount = 0;
start = 0;
stop = 0;
for i = 1:length(pulsData)
   if pulsData(i)<=pulsData(i+1)
       if count>recount
       stop = i+1;
       start = stop-count;
       recount = recount + 1;
       count = count + 1;
       lSec = stop-start+1;
       end
       count = count + 1;
   else
       count = 0;
   end
end


end

