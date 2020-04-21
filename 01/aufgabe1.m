e = 2.7;
x = linspace(0.5, 10);
disp(e^(-1.5));

plot(x,f(x),'b');
hold on;
plot(e,f(e),'r.');
plot(e^1.5,f(e^1.5),'m.');
xlabel('x');
% ylabel('f(x)');
title('f(x) = (ln x) /x')
legend('f(x)', 'HP bei (e,f(e))', 'WP bei (e^{1.5},f(e^{1.5}))');

function y = f(x)
    y = log(x) ./ x;
end
    