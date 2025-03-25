type bowlpeakfun
a = 2;
b = 3;
c = 10;
f = @(x)bowlpeakfun(x,a,b,c);
x0 = [-.5; 0];
options = optimoptions('fminunc','Algorithm','quasi-newton');
[x, fval] = fminunc(f,x0,options);
[x,fval] =  nestedbowlpeak(a,b,c,x0,options);
qq = 0;
