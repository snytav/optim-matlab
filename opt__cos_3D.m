rng default % for reproducibility
tdata = 0:0.1:10;
xdata = 0:0.1:10;
ydata = 40*cos(-0.5*(tdata+xdata)) + randn(size(tdata+xdata));

type sseval

function sse = sseval(x,tdata,xdata,ydata)
A = x(1);
lambda = x(2);
b = x(3);
sse = sum((ydata - A*cos(-lambda*(tdata+xdata)+b)).^2);
end

fun = @(x)sseval(x,tdata,xdata,ydata);

x0 = rand(3,1);
bestx = fminsearch(fun,x0);


A = bestx(1);
lambda = bestx(2);
b = bestx(3);
yfit = A*cos(-lambda*tdata +b);
plot(tdata+xdata,ydata,'*');
hold on
plot(tdata,yfit,'r');
xlabel('tdata')
ylabel('Response Data and Curve')
title('Data and Best Fitting Exponential Curve')
legend('Data','Fitted Curve')
hold off
qq = 0;