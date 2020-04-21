x = linspace(0.5,5);
plot(x,f(x));

slope = f(1.001) - f(1);
slope = slope * 1000;
disp(slope)

function y = f(x)
    y = log(1+log(x));
end