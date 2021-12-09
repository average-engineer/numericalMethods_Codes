function [p1,q1,pr,qr] = boundCond(x1,u1,xr,ur,t)

% 1D boundary conditions
p1 = u1;
pr = ur -1;
q1 = 0;
qr = 0;

end