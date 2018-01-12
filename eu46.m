l=10000;
a(1:l/2)=1:2:l;
b=primes(l);
b(2:length(b)+1)=b;
b(1)=0;
c=2*power(1:100,2);
c(2:length(c)+1)=c;
c(1)=0;
c=c';
d=zeros(length(c),length(b));
d=b+c;
e=unique(d);
f=intersect(a,e);
for i=1:length(f)
    f(i,2)=2*i+1;
    f(i,3)=f(i,2)-f(i,1);
end
find(f<0)