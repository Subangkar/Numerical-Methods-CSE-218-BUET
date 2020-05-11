function [l,u] = lu_trig(A)

[n,~]=size(A);

l=eye(n);
u=zeros(n,n);

e=zeros(n,1);

f=zeros(n,1);
g=zeros(n,1);

for i=1:n
   f(i)=A(i,i);
%   u(i,i)=f(i);
end
f
for i=2:n
    e(i)=A(i,i-1);
end
e
for i=1:n-1
    g(i)=A(i,i+1);
    u(i,i+1)=g(i);
end
g
l
u
u(1,1)=f(1);

for k=2:n
    fact=e(k)/f(k-1)
    l(k,k-1)=fact;
    f(k)=f(k)-fact*g(k-1);
    u(k,k)=f(k)
end
l
u