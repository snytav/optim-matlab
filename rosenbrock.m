% https://www.mathworks.com/help/matlab/ref/fminsearch.html
fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [-1.2,1];
x = fminsearch(fun,x0)
qq = 0;