function [q,g,h,r] = boundCondClampPlate(p,e,u,time)

% p: Point Matrix Returned from initmesh
% e: Edge Matrix Returned from initmesh
% u used for non-linear problems only
% time used for transient problems

N =2;
ne = size(e,2)
k = 1e7; % High Stiffness provided in order to ensure that deflection at the boundary is minimal
q = [0 k 0 0]'*ones(1,ne);
g = zeros(N,ne);
h = zeros(N^2,2*ne);
r = zeros(N,2*ne);

end