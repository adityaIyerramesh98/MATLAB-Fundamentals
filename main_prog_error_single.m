%Solving first_order,second_order and fourth_order error
%For discretization
%Author: Aditya Iyer Ramesh

close all
clc

%variable
%Initial derivative
x = pi/3;

%numerical derivative
dx = pi/30;

%function given f(x) = sin(x)/x^3
%exact derivative
analytical_derivative = ((x^3*cos(x))-sin(x)*3*x^2)/x^6; 

%calculating derivatives
%first order derivative
forward_differencing = ((sin(x+dx)/(x+dx)^3)-(sin(x)/x^3))/dx;

%second order derivative
central_differencing_sec_order = ((sin(x+dx)/(x+dx)^3)- (sin(x-dx)/(x-dx)^3))/2*dx;

%fourth order derivatives
central_differencing_fourth_order = ((sin(x-2*dx)/(x-2*dx)^3) - 8*(sin(x-dx)/(x-dx)^3)+ 8*(sin(x+dx)/(x+dx)^3) - (sin(x+2*dx)/(x+2*dx)^3))/(12*dx);

%error function calculation
error_first_order = abs(forward_differencing - analytical_derivative);
error_second_order = abs(central_differencing_sec_order - analytical_derivative);
error_fourth_order = abs(central_differencing_fourth_order - analytical_derivative);

%plotting results
derivatives = categorical({'2nd order','1st order','4th order'});
error = [error_first_order,error_second_order,error_fourth_order];

bar(derivatives,error,0.5,'r')
xlabel("Approximations")
ylabel("Error")
title("Error approximations against derivatives order")
legend("Error")