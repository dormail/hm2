% plot fuer hm2 aufgabe 21

f = @(x,y) e.^(x-y) .* (x.^3 ./ 3 - y);

x = linspace(-3, 3, 601);
y = linspace(-3, 3, 601);

[xx, yy] = meshgrid(x,y);

zz = f(xx,yy);

surf(xx,yy,zz)
