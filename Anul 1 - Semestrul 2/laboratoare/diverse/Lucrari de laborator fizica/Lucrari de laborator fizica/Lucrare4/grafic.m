x = [10.3 9.5 7.9 7.8 5 2.9 2.6];
lambda = [579 546.1 491.6 490 435.8 407.7 404.9];
p = polyfit(x, lambda, 2);
l = linspace(2,14,1000);

plot(l, polyval(p,l), '-b');
hold on
p

plot(x, lambda, '.r', 'markersize', 16);
ylabel("$\lambda/nm$");
xlabel("$x/div$")
print -dpdflatexstandalone grafic

xm = [12 12.5 10.6 8.3 7.9 7 5.7 5.4];
polyval(p, xm);
xm2 = [11.5 11.7 11.3 11 10.8 10.7 10.5 10.3 9.3];
polyval(p, xm2)

verde = [11.2 11.6];
rosie = [7.5 7.7; 8.4 9; 9.8 10.1];
for i = 1:3
    polyval(p, rosie(i,:))
endfor
polyval(p, verde);

der = polyder(p);

lambdaP = [420 500 580];
panta = polyval(der, lambdaP);
[1 1 1] ./ panta