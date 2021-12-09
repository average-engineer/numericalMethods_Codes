clearvars
close all
clc

% Plate Material and Geometry properties
E = 1e6; % Young's Modulus
nu = 0.3;
thick = 0.1;
len = 10;
hmax = len/20; % Mesh Size Parameter
D = E*thick^3/(12*(1-nu^2)); % Flexural rigidity of the plate
pres = 2; % External Pressure

% Defining Geometry of the plate and defining mesh
% The plate is rectangle
plateShape = [3 4 0 len len 0 0 0 len len];
sf = 'Plate';
nsmTrans = 'Plate';
g = decsg(plateShape',sf,nsmTrans');
[p,e,t] = initmesh(g,'Hmax',hmax);

% Obtaining the Neumann and Dirichlet Boundary Conditions for the problem
b = @boundCondClampPlate;

a = [0;0;1;0];
c = [1;0;1;D;0;D];
f = [0;pres];

u = assempde(b,p,e,t,c,a,f);
numNodes = size(p,2);
pdeplot(p,e,t,'xydata',u(1:numNodes),'contour','on')
title('Transverse Deflection')

% Transverse Deflection at plate centre:
wPlateCentre = min(u(1:numNodes,1))


% Computing Analytical Solution
wPlateCentreAny = -0.0138*pres*len^4/(E*thick^3)
