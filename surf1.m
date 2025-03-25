x = 1:8;
y = 1:11;
z = rand(11,8);

[xx,yy] = meshgrid(x,y);

surf(xx,yy,z);

x = 1:8;
y = 1:11;
z = rand(11,8);
[xx,yy] = meshgrid(x,y);
surf(xx,yy,z)

surffit = fit([xx(:), yy(:)], z(:), 'poly32', 'normalize', 'on')

