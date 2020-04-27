% plotten der funktionen von aufgabe 3
clc;
close all;
clear all;

x = linspace(-5, 5, 10 / 10^-5);


% aufgabe a)
subplot(2,1,1);
plot(x,f1(x));
hold on
plot(x,atan(x));
plot(x,x);
title('Aufgabe a)');
legend('1/(1+x^2)', 'arctan(x)', 'x');
xlabel('x');
ylim([-2,2]);

% aufgabe b)
subplot(2,1,2);
plot(x,1./tan(x));
hold on
ylim([-20,20]); % damit das infty nicht verzerrt
title('Aufgabe b)');
legend('cot(x)');
xlabel('x');


function tmp = f1(x)
    tmp = x ./ (1 + x.^2);
end

function tmp = cotangent(x)
    if tan(x) == 0
        tmp = 100000;
    else
        tmp = 1 ./ tan(x);
    end
end