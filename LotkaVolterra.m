function dUdt = preypred(t,u,a,d,c,k)

% Initial Value Formulation for the Pray Predator Model
% Lotka Volterra Equations

dU1dt = a*u(1) - d*u(1)*u(2);
dU2dt = -c*u(2) + k*d*u(1)*u(2);

dUdt = [dU1dt;dU2dt];

end
