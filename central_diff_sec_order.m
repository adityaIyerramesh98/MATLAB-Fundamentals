%Central_differencing_second_order
%Author: Aditya Iyer Ramesh

function error_central_differencing = central_diff_sec_order(x,dx);
%analytical_function = sin(x)/x^3

%f'(x) = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;
analytical_derivative = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;


%numerical derivative by central differencing
%central_differencing = (f(x+dx) - f(x-dx))/2*dx

%second order approximation
central_differencing = ((sin(x+dx)/(x+dx)^3 - sin(x-dx)/(x-dx)^3))/2*dx;

%absolute error = exact_derivative - analytical_derivative
error_central_differencing = abs(central_differencing - analytical_derivative);
end