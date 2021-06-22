%Forward_differencing _first _order_approx
%Author: Aditya Iyer Ramesh

function error_forward_differencing = forward_diff_first_order(x,dx);
%analytical_function = sin(x)/x^3


%f'(x) = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;
analytical_derivative = ((x^3)*cos(x)-3*x^2*sin(x))/x^6;

%numerical derivative by forward differencing
%Forward differencing = (f(x+a) - f(x))/dx

%first order approximation
forward_differencing = ((sin(x+dx)/(x+dx)^3 - sin(x)/(x^3)))/dx;

%absolute error = exact_derivative - analytical_derivative
error_forward_differencing = abs(forward_differencing - analytical_derivative);
end
