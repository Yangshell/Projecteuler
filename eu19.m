n=datenum('1-jan-1901');
m=datenum('31-dec-2000');
num=0;
for i=n:m
    if day(i)==1&&weekday(i)==1
            num=num+1;
    end
end