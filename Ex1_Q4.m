clear all;
x1=0:.1:3;
y1=x1/18
x2=3:.1:4;
y2 = (2*x2).^(-1);
x3=4:.1:5;
y3=((18*x3).^(-1)).*(25-(((x3).^2)));
x4=5:.1:7;
y4=exp(-x4.^2);

figure
x=[x1 x2 x3 x4];
y=[y1 y2 y3 y4];
plot(x,y)
xlabel('r')
ylabel('H')
grid on;