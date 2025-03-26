nvar = randi([100 200]);
y = randn(1, nvar);
x = sym('x', [1, nvar]);

F = @(x) sin(x).*cos(2*x);      %function being minimized

funsym = sum((F(x)-y).^2);      %least squared minimization
f = matlabFunction(funsym, 'Vars', {x});    %numeric function with vector input

x0 = rand(1, nvar) * 100 - 50;   %starting point
bestx = fminsearch(f, x0, struct('MaxFunEvals', 100000, 'MaxIter', 100000) );