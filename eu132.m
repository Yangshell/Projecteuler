b=primes(200000);
j=1;
for t=1:length(b)
    m=sym(mod(10^10,9*b(t)));
    for i=1:8
        m=power(m,10);
        m=mod(m,9*b(t));
    end
    if m==1
        c(j)=b(t);
        j=j+1;
    end
end