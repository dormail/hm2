% plot fuer hm2 aufgabe 26

x = linspace(-0.5, 2.5);
xposi = linspace(0.5, 2.5);

two = x .* 0 .+ 2;
zero = x .* 0;

hold on;
plot(x,x);
plot(x,zero);
plot(xposi, 1./xposi);
plot(two, x);

