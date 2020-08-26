clear
clc

x=1:7/8:8
f=zeros(1,9)

for i=1:9
  f(i)=log10(x(i))./x(i)
end

myanswer=7/8/3*(f(1)+f(9)+2*(f(3)+f(5)+f(7))+4*(f(2)+f(4)+f(6)+f(8)))
error=abs(0.9389614174-myanswer)