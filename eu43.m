d=[2,3,5,7,11,13,17];
a=[0,1,2,3,4,5,6,7,8,9];
b=perms(a);
[ib,jb]=size(b);
t=1;
for i=1:ib
    for j=1:7
        c=polyval(b(i,j+1:j+3),10);
        if j<=6
            if mod(c,d(j))==0
                continue;
            else
                break;
            end
        end
        if mod(c,d(7))==0
            i
            e(t)=uint32(polyval(b(i,:),10));
            t=t+1;
        end
    end
end
s=uint64(sum(e));