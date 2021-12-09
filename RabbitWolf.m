%% Settings
clearvars
close all
clc

%%
a = 0.08;
c = 0.2;
d = 0.002;
k = 0.2;

t_span = linspace(0,200,100);

%% Initial Conditions
u0 = [500;20];

[t,u] = ode45(@(t,u)LotkaVolterra(t,u,a,d,c,k),t_span,u0);

figure
hold on
plot(t,u(:,1),'linewidth',2)
plot(t,u(:,2),'linewidth',2)
xlabel('Time')
ylabel('Population')
legend('Rabbit Population','Predator Population')
grid on 