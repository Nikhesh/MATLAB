function[x1,x2,ep,eo]=evenodd(x,n)
xp=x(end:-1:1); 
x1=(x+xp)/2;
ep=sum(abs(x1.^2));
x2=(x-xp)/2;
eo=sum(abs(x2.^2));