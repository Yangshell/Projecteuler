clear all;
i=7;
m=2*i;
t=1:m;
z=t(isprime(t));
j=1;
while z(j)<2*i
    a(j)=z(j);
    j=j+1;
    i=i-1;
end
[k1,l1]=size(a);
[k2,l2]=size(z);
for j=1:l2-2
    a(j+l1)=2;
end
ji=1;
for j=1:l1+l2-2
    ji=ji*a(j);
    if ji>500500507
        ji=mod(ji,500500507);
    end
end
yu=mod(ji,500500507);