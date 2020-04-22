x = linspace(0.25,5);
plot(x,f(x));
hold on
plot(x,t1(x));
plot(x,t2(x));
plot(x,t3(x));

disp(f(1));
disp(f1(1));
disp(f2(1));
disp(f3(1));

legend('f(x)', 'T_1(x)', 'T_2(x)', 'T_3(x)')

% die funktion selbst
function y = f(x)
    y = log(1+log(x));
end

% fn(x) ist die nte ableitung
function y = f1(x)
    y = 1/(x*(log(x)+1));
end

function y = f2(x)
    y = -(log(x)+2)/(x^2*(log(x)+1)^2);
end

function y = f3(x)
    y = (2*log(x)^2+7*log(x)+7)/(x^3*(log(x)+1)^3);
end

% tn(x) ist das nte Taylor Polynom
function y = t1(x)
    y = x - 1;
end

function y = t2(x)
    y = -1 * x.^2 + 3 * x - 2;
end

function y = t3(x)
    y = 7/6 * x.^3 - 4.5 * x.^2 + 6.5 * x - 19/6;
end

function y = t3check(x)
    y = t2(x) + 7 .* (x-1).^3 ./ 6;
end
    
