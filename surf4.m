ft = fittype(FitFormula, 'independent', {'x', 'y'}, 'dependent', 'z','problem',{'sigma' ,'y0'});
[fitresult, gof] = fit( [xData, yData], zData, ft, opts, 'problem',{sigma,y0} );
qq = 0;