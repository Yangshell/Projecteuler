% a=sym(zeros(100));
max=0;
for i=1:100
    for j=1:100
%         a(i,j)=sym(power(sym(i),sym(j)));
        t=a(i,j);
        sum=0;
        while t~=0
            sum=sum+mod(t,10);
            t=(t-mod(t,10))/10;
        end
        if sum>max
            max=sum;
        end
    end
    i
end
