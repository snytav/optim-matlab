rng default % for reproducibility
tdata = 0:1:10;
xdata = 0:1:10;
[X,T] = meshgrid(xdata,tdata)
ydata = cos(X*0.8); %*cos(b*T));% + randn(size(tdata,2),size(xdata,2));
figure;
surf(X,T,ydata);




fun = @(x)norm(ydata - cos(X*x(2)) );
x0 = [-1.2,1];
x = fminsearch(fun,x0)
qq = 0;