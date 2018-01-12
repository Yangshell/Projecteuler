[x,y]=size(a);
m=0;
for i=1:x-3
    for j=1:y-3
        s(1)=sum(a(i:i+3,j))
        s(2)=sum(a(i:i+2,j))+a(i+3,j+1);
        s(3)=a(i,j)+a(i+1,j)+a(i+2,j+1)+a(i+3,j+1);
        s(4)=a(i,j)+a(i+1,j)+a(i+2,j+1)+a(i+3,j+2);
        s(5)=a(i,j)+a(i+1,j+1)+a(i+2,j+1)+a(i+3,j+1);
        s(6)=a(i,j)+a(i+1,j+1)+a(i+2,j+1)+a(i+3,j+2);
        s(7)=a(i,j)+a(i+1,j+1)+a(i+2,j+2)+a(i+3,j+2);
        s(8)=a(i,j)+a(i+1,j+1)+a(i+2,j+2)+a(i+3,j+3);
        if max(s(1:8))>m
            m=max(s(1:8));
        end
    end
end