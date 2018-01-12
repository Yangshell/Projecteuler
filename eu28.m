sum=0;sumi=0;
for i=1:2:1001
    ii=i*i;
    sumi=4*ii-6*(i-1);
    sum=sum+sumi;
    sumi=0;
end
sum=sum-3;