l=5000;
for n=1:l
    p(n)=n*(3*n-1)/2;
end

for i=1:l
    for j=i:l
        if any(p==(p(i)+p(j)))&&any(p==(p(j)-p(i)))
            p(i)
            p(j)
        end
    end
end