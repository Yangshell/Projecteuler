tic;
per=0;i=100;flag=99;a=zeros(10);
while per<0.99
    len=length(num2str(i));
    yu=i;
    a(1)=mod(yu,10);
    yu=(yu-a(1))/10;
    s=0;S=0;
    for j=2:len
        a(j)=mod(yu,10);
        yu=(yu-a(j))/10;
    if a(j)<=a(j-1)
        s=s+1;
    end
    if a(j)>=a(j-1)
        S=S+1;
    end
    end
    if s==len-1||S==len-1
        flag=flag+1;
    end
    fflag=i-flag;
    per=fflag/i;
    i=i+1;
end
toc;