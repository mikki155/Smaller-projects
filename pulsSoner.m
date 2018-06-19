function gVec = pulsSoner(maksPuls, pulsData)
cmp = pulsSoneGrenser(maksPuls);
l = length(pulsData);
s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;
s5 = 0;
for i = 1:length(pulsData)
   if pulsData(i) >= cmp(1) && pulsData(i)<cmp(2)
       s1 = s1+1;
   elseif pulsData(i) >= cmp(2) && pulsData(i)<cmp(3)
       s2 = s2+1;
   elseif pulsData(i) >= cmp(3) && pulsData(i)<cmp(4)
       s3 = s3+1;
   elseif pulsData(i) >= cmp(4) && pulsData(i)<cmp(5)
       s4 = s4+1;
   elseif pulsData(i) >= cmp(5)
       s5 = s5+1;
   end
end
gVec = [s1/l s2/l s3/l s4/l s5/l];

end

