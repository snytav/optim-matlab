rng default % for reproducibility
tdata = 0:1:10;
xdata = 0:1:10;
[X,T] = meshgrid(xdata,tdata)
ydata = 40*cos(-0.5*(X)*cos(b*T));% + randn(size(tdata,2),size(xdata,2));
figure;
surf(X,T,ydata);




fun = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [-1.2,1];
x = fminsearch(fun,x0)
qq = 0;