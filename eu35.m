n=0;flag=1;
for i=1:1000000
    if isprime(i)
        a=num2str(i)-'0';
        b=[a,a];
        l=length(b)/2;
        for j=1:l
            c=polyval(b(1,j:j+l-1),10);
            if isprime(c)==0
                flag=0;
                break;
            end
        end
        if flag==1
            i
            n=n+1;
        end
        flag=1;
    end
end
                