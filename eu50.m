max=0;
j=int16(1);
for i=1:1000000
    if isprime(i);
        a(j)=i;
        j=j+1;
    end
end
[sizeax,sizeay]=size(a);
maxsum=0;
maxn=0;
for i=1:sizeay
    for j=1:sizeay-i
        suma=sum(a(i:i+j));
        if isprime(suma)&&suma>maxsum&&suma<1000000
            maxsum=suma;
            maxn=j;
        end
    end
end