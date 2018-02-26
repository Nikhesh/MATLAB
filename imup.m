function y=imup(x,L)
[m,n]=size(x);
y=zeros(L*m,L*n);
for i=1:m
    for j=1:n
        y(L*(i-1)+1,L*(j-1)+1)=x(i,j);
    end
end
