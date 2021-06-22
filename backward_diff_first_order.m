%Backward_differencing_first_order
%Author: Aditya Iyer Ramesh

function error_backward_differencing = backward_diff_first_order(x,dx);
%analytical_function = sin(x)/x^3


%f'(x) = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;
analytical_derivative = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;


%numerical derivative by backward differencing
%backward_differencing = (f(x) - f(x-dx))/dx

%first order approximation
backward_differencing = ((sin(x)/(x)^3 - sin(x-dx)/(x-dx)^3))/dx;

%absolute error = exact_derivative - analytical_derivative
error_backward_differencing = abs(backward_differencing - analytical_derivative);
end