function rTid = rundeTid(startTid, sluttTid)

rTid = (60*sluttTid(1) + sluttTid(2) + sluttTid(3)/100) ...
    - (60*startTid(1) + startTid(2) + startTid(3)/100);

end

