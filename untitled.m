g = 9.8;
[Xc, Yc, Zc] = cylinder([0, 5, 6], 50);
Zc(1:2,:) = -2.5; Zc(3,:) = 0.5;
surf(Xc, Yc, Zc, EdgeAlpha = 0, FaceColor = 'r'); hold on; 

[Xw, Yw] = ndgrid(linspace(-6,6,501));
Zw = 0*Xw; D = hypot(Xw, Yw); Zw(D>(5+2.5/3)) = nan;
water = surf(Xw, Yw, Zw, EdgeAlpha = 0.05, ...
        EdgeColor = 'w', FaceColor = 'none');
[Xb, Yb, Zb] = sphere(20); Zb = Zb + 30;
ball = surf(Xb, Yb, Zb, EdgeAlpha = 0, FaceColor = 'g');
axis([-6,6,-6,6,-3,40]); daspect([1,1,1]); camlight; lighting gouraud;