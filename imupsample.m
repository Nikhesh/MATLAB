function y=imupsample(x)
[m,n]=size(x);
y=zeros(2*m,2*n);
for i=1:m
    for j=1:n
        y(2*(i-1)+1,2*(j-1)+1)=x(i,j);
    end
end