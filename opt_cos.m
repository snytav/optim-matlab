rng default % for reproducibility
tdata = 0:0.1:10;
ydata = 40*cos(-0.5*tdata) + randn(size(tdata));

type sseval

function sse = sseval(x,tdata,ydata)
A = x(1);
lambda = x(2);
sse = sum((ydata - A*cos(-lambda*tdata)).^2);
end

fun = @(x)sseval(x,tdata,ydata);

x0 = rand(2,1);
bestx = fminsearch(fun,x0);


A = bestx(1);
lambda = bestx(2);
yfit = A*cos(-lambda*tdata);
plot(tdata,ydata,'*');
hold on
plot(tdata,yfit,'r');
xlabel('tdata')
ylabel('Response Data and Curve')
title('Data and Best Fitting Exponential Curve')
legend('Data','Fitted Curve')
hold off
qq = 0;