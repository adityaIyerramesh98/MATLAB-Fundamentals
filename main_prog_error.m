%Solving first_order,second_order and fourth_order error
%For discretization range of dx
%Author: Aditya Iyer Ramesh

clear all
close all
clc

%variable
x = pi/3;
dx = linspace(pi/40,pi/4000,20);
m = length(dx);

%function given f(x) = sin(x)/x^3
analytical_derivative = (((x^3)*cos(x)-((3*x^2)*sin(x))))/x^6; %exact derivative

%loop-creation
for i = 1:m;
forward_differencing_first_order_error(i)= forward_diff_first_order(x,dx(i));
backward_differencing_first_order_error(i)= backward_diff_first_order(x,dx(i));
central_differencing_second_order_error(i)= central_diff_sec_order(x,dx(i));
central_differencing_fourth_order_error(i)= central_diff_fourth_order(x,dx(i));
end

%plotting graphs
figure(1)
subplot(2,2,1)
plot(dx,forward_differencing_first_order_error,'linewidth',2)
xlabel('dx')
ylabel('error')
title("Forward Differencing")
grid on
subplot(2,2,2)
plot(dx,backward_differencing_first_order_error,'r','linewidth',2)
xlabel('dx')
ylabel('error')
title("Backward Differencing")
grid on
subplot(2,2,3)
plot(dx,central_differencing_second_order_error,'g','linewidth',2)
xlabel('dx')
ylabel('error')
title("Central Differencing Second Order Error")
grid on
subplot(2,2,4)
plot(dx,central_differencing_fourth_order_error,'m','linewidth',2)
xlabel('dx')
ylabel('error')
title("Central Differencing Fourth order Error")
grid on

figure(2)
loglog(dx,forward_differencing_first_order_error,'linewidth',2)
hold on
grid on
loglog(dx,backward_differencing_first_order_error,'r','linewidth',2)
hold on
grid on
loglog(dx,central_differencing_second_order_error,'g','linewidth',2)
hold on
loglog(dx,central_differencing_fourth_order_error,'m','linewidth',2)
legend("Forward differencing first order error","Backward differencing first order error","central differencing second order error","Central differencing fourth order error")

figure('Name', 'Absolute Error Variation w.r.t dx')
subplot(2,2,1)
bar(dx,forward_differencing_first_order_error)
title("Forward Differencing")
xlabel('dx')
ylabel('error')
subplot(2,2,2)
bar(dx,backward_differencing_first_order_error)
title("Backward Differencing")
xlabel('dx')
ylabel('error')
subplot(2,2,3)
bar(dx,central_differencing_second_order_error)
title("Central Differencing Second Order Error")
xlabel('dx')
ylabel('error')
subplot(2,2,4)
bar(dx,central_differencing_fourth_order_error)
title("Central Differencing Fourth order Error")
xlabel('dx')
ylabel('error')