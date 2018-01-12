x=sym(1);
for i=1:100
    x=x*sym(i);
end
sum=0;
while x~=0
    sum=sum+rem(x,10);
    x=(x-rem(x,10))/10;
end