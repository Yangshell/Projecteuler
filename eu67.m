a=d;
[ia,ja]=size(a);
a(ia+1,:)=0;
a(ia+1,ja+1)=0;
for I=1:ia
    for J=1:ja-I+1
        i=ia-I+1;
        j=ja-I-J+2;
        b(i,j)=a(i,j);
        if i~=ia
            b(i,j)=max(b(i+1,j),b(i+1,j+1))+b(i,j);
        end
    end
end