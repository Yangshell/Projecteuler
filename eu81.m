[sizea,sizea]=size(a);
b=zeros(sizea);
b(1,1)=a(1,1);
for i=2:sizea
    b(1,i)=b(1,i-1)+a(1,i);
    b(i,1)=b(i-1,1)+a(i,1);
end

for i=2:sizea
    for j=2:sizea
        b(i,j)=min(b(i-1,j),b(i,j-1))+a(i,j);
    end
end
b