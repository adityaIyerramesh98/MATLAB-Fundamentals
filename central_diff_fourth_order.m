%Central_differencing_fourth_order
%Author: Aditya Iyer Ramesh

function error_central_differencing_fourth_order_approx = central_diff_fourth_order(x,dx);
%analytical_function = sin(x)/x^3

%f'(x) = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;
analytical_derivative = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;

%numerical derivative by central differencing fourth order approximation
%central_differencing_fourth_order_approx = (f(x-2*dx) - 8*f(x-dx) + 8*f(x+dx) - f(x+2*dx))/12*dx

%fourth order approximation
central_differencing_fourth_order_approx = ((sin(x-2*dx)/(x-2*dx)^3 - 8*(sin(x-dx)/(x-dx)^3) + 8*(sin(x+dx)/(x+dx)^3) - sin(x+2*dx)/(x+2*dx)^3))/12*dx;

%absolute error = exact_derivative - analytical_derivative
error_central_differencing_fourth_order_approx = abs(central_differencing_fourth_order_approx - analytical_derivative);
end