%% Settings
clearvars
close all
clc

%% Exercise1: Approximating sinx using higher order polynomial
x = linspace(0,pi,100); % 10 Nodes between 0 and pi
y = sin(x); % Desired Function
n = 4; % Order of Interpolation
p = polyfit(x,y,n); % Using a nth order polynomial to approximate y
f = polyval(p,x);

%% Comparing the approximate soluton with the desired curve
figure
hold on
plot(x,y,'o','linewidth',2)
plot(x,f,'linewidth',2)
grid on

%% Exercise2: 
numNodes = 50 % Number of Nodes
x = linspace(-2,7,numNodes);
y1 = zeros(1,length(x));
n = 10; % Order of Interpolation
p1 = polyfit(x,y1,n); % Using a nth order polynomial to approximate y
f1 = polyval(p1,x);

y2 = y1;
y2(end) = 0.6;
p2 = polyfit(x,y2,n); % Using a nth order polynomial to approximate y
f2 = polyval(p2,x);

% y3 = [2,-1,6,3,4,-2];
% p3 = polyfit(x,y3,n); % Using a nth order polynomial to approximate y
% f3 = polyval(p3,x);
% 
% y4 = [2,-1,6.2,3,4,-2];
% p4 = polyfit(x,y4,n); % Using a nth order polynomial to approximate y
% f4 = polyval(p4,x);

figure
subplot(2,1,1)
hold on
plot(x,y1,'o','linewidth',2)
plot(x,f1,'linewidth',2)
grid on
legend('Desired','Approximated')

subplot(2,1,2)
hold on
plot(x,y2,'o','linewidth',2)
plot(x,f2,'linewidth',2)
grid on
legend('Desired','Approximated')

% subplot(2,2,3)
% hold on
% plot(x,y3,'o','linewidth',2)
% plot(x,f3,'linewidth',2)
% grid on
% 
% subplot(2,2,4)
% hold on
% plot(x,y4,'o','linewidth',2)
% plot(x,f4,'linewidth',2)
% grid on





