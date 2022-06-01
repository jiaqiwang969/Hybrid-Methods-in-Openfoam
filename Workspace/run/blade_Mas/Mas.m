clc
clear



figure;
plot(Points0,Points1)

hold on 

p = polyfit(Points0,Points1,5)


idf=[Points1<polyval(p,Points0)];

x1=Points0(find(idf==0));
y1=Points1(find(idf==0));
z1=Mas(find(idf==0));
x2=Points0(find(idf==1));
y2=Points1(find(idf==1));
z2=Mas(find(idf==1));




figure
plot((x1-x1(1))/(x1(end)-x1(1)),z1,'r');
hold on
plot((x2-x2(1))/(x2(end)-x2(1)),z2,'r');


plot(s1(:,1),s1(:,2),'b')
plot(s2(:,1),s2(:,2),'b')

