clear
clc

h1=0:pi/4:pi
h2=0:pi/8:pi
h3=0:pi/16:pi
h4=0:pi/32:pi
g1=g2=g3=g4=0;

for i=1:2:3
  g1=g1+((pi/4)^3)/24*sin(h1(i))+(pi/4)^3/12*sin(h1(i+1))+(pi/4)^3/24*sin(h1(i+2))+1/2*(pi/4)*(sin(h1(i))+2*sin(h1(i+1))+sin(h1(i+2)));
end

for i=1:2:7
  g2=g2+((pi/8)^3)/24*sin(h2(i))+(pi/8)^3/12*sin(h2(i+1))+(pi/8)^3/24*sin(h2(i+2))+1/2*(pi/8)*(sin(h2(i))+2*sin(h2(i+1))+sin(h2(i+2)));
end
for i=1:2:15
  g3=g3+((pi/16)^3)/24*sin(h3(i))+(pi/16)^3/12*sin(h3(i+1))+(pi/16)^3/24*sin(h3(i+2))+1/2*(pi/16)*(sin(h3(i))+2*sin(h3(i+1))+sin(h3(i+2)));
end
for i=1:2:31
  g4=g4+((pi/32)^3)/24*sin(h4(i))+(pi/32)^3/12*sin(h4(i+1))+(pi/32)^3/24*sin(h4(i+2))+1/2*(pi/32)*(sin(h4(i))+2*sin(h4(i+1))+sin(h4(i+2)));
end

f=2;

error1=log10(abs(g1-f))
error2=log10(abs(g2-f))
error3=log10(abs(g3-f))
error4=log10(abs(g4-f))

x=[pi/4 pi/8 pi/16 pi/32];
y=[error1 error2 error3 error4];

plot(log10(x),y,'-r');
hold on
plot(log10(x),y,"o");
ylabel("log(error)")
xlabel("log(grid spacing)");
print -dpng output.png

