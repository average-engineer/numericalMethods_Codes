%% Settings
clear all
close all
clc

%%
m = 0; % No Symmetry/Slb Symmetry defined

% X Domain
x = linspace(0,1,20);
% Time Span
t = linspace(0,2,10);

% Solving the PDE
u = pdepe(m,@PDEFunc,@initCond,@boundCond,x,t); % Temperature Distribution across space and time

%% Plotting the solution
figure
surf(x,t,u)
title('Temperature Distribution')
xlabel('Space Coordinate (m)')
ylabel('Time Coordinate (s)')

%% Time propogation of temperature distribution
% We will be plotting the variation of temperature distribution across the
% spatial domain as time progresses
figure
for ii = 1:length(t)
    
   h = plot(x,u(ii,:),'linewidth',2)
   pause(1)
   delete(h)
   grid on
    
end
