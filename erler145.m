max=power(10,9);t=0;
for i=1:max/2
    if mod(i,10)~=0
    j=(str2num(fliplr(num2str(i))));
    end
    sum=i+j;
    SUM=(str2num(fliplr(num2str(sum))));
    if mod(floor(log10(sum))+1,2)==0&&sum+SUM==(str2num(fliplr(num2str(sum+SUM))))
        t=t+1;
    end
end