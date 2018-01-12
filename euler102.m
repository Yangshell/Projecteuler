[pointsizex,pointsizey]=size(point);
flag=0;
i=1;
while i<=pointsizex
    t=0;
    for j=1:3
        [in on]=inpolygon(0,0,[point(i,1) point(i,3) point(i,5)],[point(i,2) point(i,4) point(i,6)]);
        if in
            t=t+1;
        end
    end
    if t==3
        flag=flag+1;
    end
    i=i+1;
end