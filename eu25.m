a=sym(1);
b=sym(1);
c=sym(a+b);
t=3;
while double(log10(c))<999
    a=b;
    b=c;
    c=a+b;
    t=t+1;
end