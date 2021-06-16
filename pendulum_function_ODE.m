%Second-order Ordinary Differential Function for Pendulum

function [dtheta_dt]  = pendulum_function_ODE(t,theta,b,l,g,m);

theta1 = theta(1);
theta2 = theta(2);
dtheta1_dt = theta(2);
dtheta2_dt = -(b/m)*theta2 - (g/l)*sin(theta1); 
dtheta_dt = [dtheta1_dt; dtheta2_dt];

end