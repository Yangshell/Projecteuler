rate=1;
moweishu(1)=1;
bianchang(1)=1;
n=1;
fenzi=0;
while rate>0.1
    n=n+1;
    bianchang(n)=2*n-1;
    moweishu(n)=bianchang(n)*bianchang(n);
    for i=1:4
        fenzi=fenzi+isprime(moweishu(n-1)+i*(bianchang(n)-1));
    end
    fenmu=2*bianchang(n)-1;
    rate=fenzi/fenmu
end