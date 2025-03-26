rng default % for reproducibility
tdata = 0:1:10;
xdata = 0:1:10;
[X,T] = meshgrid(xdata,tdata)
ydata = 0.5*cos(X*0.8); %*cos(b*T));% + randn(size(tdata,2),size(xdata,2));
figure;
surf(X,T,ydata);




fun = @(x)norm(ydata - x(1)*cos(X*x(2)) );
x0 = [-1.2,1];

%result gets worse but unevenly if you reduce FiniteDifferenceStepSize
% opt = optimset('fminsearch', 'StepTolerance', 1e-14, 'Display', 'iter', 'FiniteDifferenceStepSize', 1e-9);
options = optimset('PlotFcns',@optimplotfval);

x = fminsearch(fun,x0,options);
qq = 0;