a=[1,2,3,4,5,6,7,8,9,0];
a=[a a a a];
b=combntns(a,4);
b=unique(b,'rows');
for t=1:length(b)
c=perms(b(t,:));
for j=1:24
    dd(j)=polyval(c(j,:),10);
end
d=unique(dd);
d(2:length(d)+1)=d;
d(1)=0;
d=d+d';
ld=length(unique(dd))+1;
for x=2:ld
    for y=2:ld
        d(x,y)=max(d(x,1)-d(1,y),0);
    end
end
e=unique(d);
for i=1:length(e)
    if e(i)>=1000
        f(i,1)=e(i);
        f(i,2)=length(find(d(2:ld,2:ld)==e(i)));
        if f(i,2)==2
            [x,y]=find(d(2:ld,2:ld)==f(i,1));
            if sum(isprime(d(x+1,1)))+sum(isprime(d(1,y+1)))==4&&length(unique([d(x+1,1)' d(1,y+1)]))==3
                f(i,1);
                g1=d(x+1,1)
                g2=d(1,y+1)
            end
        end
    end
end
end