%create sin value
%input:x
%output:vagued sin(x)

function y=sin1(x)
%reserve the coefficient
b=pi*(0:3)/6;
yb=sin(b);
c=newtdd(b,yb,4);
s=1;
x1=mod(x,2*pi);
if x1>pi
    x1=2*pi-x1;
    s=-1;
end
if x1>pi/2
    x1=pi-x1;
end
y=s*nest(3,c,x1,b);
end
