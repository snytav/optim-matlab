rng default % for reproducibility
tdata = 0:1:10;
xdata = 0:1:10;
[X,T] = meshgrid(xdata,tdata)
ydata = 0.5*cos(X*0.8); %*cos(b*T));% + randn(size(tdata,2),size(xdata,2));
figure;
surf(X,T,ydata);




fun = @(x)  sum(sum( ydata - x(1)*cos(X*x(2))  ))^2;
x0 = [0,0];

%result gets worse but unevenly if you reduce FiniteDifferenceStepSize
% opt = optimset('fminsearch', 'StepTolerance', 1e-14, 'Display', 'iter', 'FiniteDifferenceStepSize', 1e-9);
options = optimset('Display','iter','PlotFcns',@optimplotfval,'MaxIter', 3000, 'MaxFunEvals', 10000,'TolFun',1e-14,'TolX',1e-14);

figure;
x = fminsearch(fun,x0,options)
qq = 0;