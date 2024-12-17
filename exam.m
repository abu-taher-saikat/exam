1

help plot % Display help for the plot function
x = linspace(0, 2*pi, 100); % Create a vector of 100 evenly spaced points
y = sin(x);
plot(x, y); % Plot the sine function




2 
--- 
base = input('Enter the base of the triangle: ');
height = input('Enter the height of the triangle: ');
area = 0.5 * base * height;
fprintf('The area of the triangle is: %f\n', area);



3
---- 
% With a third variable
a = input('Enter the first number: ');
b = input('Enter the second number: ');
temp = a;
a = b;
b = temp;
fprintf('After swapping (with temp): a = %f, b = %f\n', a, b);
% Without a third variable
a = input('Enter the first number: ');
b = input('Enter the second number: ');
a = a + b;
b = a - b;
a = a - b;
fprintf('After swapping (without temp): a = %f, b = %f\n', a, b);


4
----
4. Write a MATLAB program to sum of squares of n natural numbers.

n = input('Enter the value of n: ');
sum_of_squares = n * (n + 1) * (2 * n + 1) / 6;
fprintf('The sum of squares of the first %d natural numbers is: %f\n', n,
sum_of_squares);
%Using loop
sum_of_squares_loop=0;
for i=1:n
sum_of_squares_loop=sum_of_squares_loop+i^2;
end
fprintf('The sum of squares of the first %d natural numbers is(using
loop): %f\n', n, sum_of_squares_loop);




5
---5. Write a MATLAB program to plot the function y=x^2 for x ranging -10 to 10. Label the
axes and add a title to your plot.

x = -10:0.1:10; % Create a vector of x values from -10 to 10 with a step
of 0.1
y = x.^2; % Calculate the corresponding y values
plot(x, y); % Plot the function
xlabel('x'); % Label the x-axis
ylabel('y = x^2'); % Label the y-axis
title('Plot of y = x^2'); % Add a title to the plot
grid on; % Add grid lines for better visualization



66. Write a MATLAB program to plot the sine and cosine functions on the same graph for
x ranging from 0 to 2π. Use a legend to distinguish the two curves
---
x = 0:0.1:2*pi;
y_sin = sin(x);
y_cos = cos(x);
plot(x, y_sin, 'b-', x, y_cos, 'r--'); % Plot with different line styles
xlabel('x');
ylabel('y');
title('Sine and Cosine Functions');
legend('sin(x)', 'cos(x)'); % Add a legend
grid on;


7---
7. Write a MATLAB program to plot a bar chart for the following data x=[1,2,3,4,5],
y=[10,20,15,25,30].


x = [1, 2, 3, 4, 5];
y = [10, 20, 15, 25, 30];
bar(x, y);
xlabel('x');
ylabel('y');
title('Bar Chart');
grid on;

8. Write a MATLAB program to create a mesh plot for z=sin(x)cos(y) using the mesh

8---
x = linspace(-pi, pi, 50);
y = linspace(-pi, pi, 50);
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);
mesh(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Mesh Plot of z = sin(x)cos(y)');
grid on;


9--
9. Write a MATLAB program to create a figure with four subplots:

x = -2*pi:0.1:2*pi;
subplot(2, 2, 1); % 2 rows, 2 columns, 1st subplot
plot(x, x.^2);
title('y = x^2');
subplot(2, 2, 2); % 2 rows, 2 columns, 2nd subplot
plot(x, sin(x));
title('y = sin(x)');
subplot(2, 2, 3); % 2 rows, 2 columns, 3rd subplot
plot(x, cos(x));
title('y = cos(x)');
subplot(2, 2, 4); % 2 rows, 2 columns, 4th subplot
plot(x, tan(x));
title('y = tan(x)');


10. Write a program to find out the root of a polynomial equation by using the Bisection
Method
10--
f = @(x) x^3 - x - 2; % Example function
xl = 1;
xu = 2;
tol = 0.001;
max_iter = 100;
for i = 1:max_iter
xr = (xl + xu) / 2;
if f(xr) == 0 || (xu - xl) / 2 < tol
break;
elseif f(xl) * f(xr) < 0
xu = xr;
else
xl = xr;
end
end
fprintf('Root found at x = %f\n', xr);



11--
11. Write a program to find out the root of a polynomial equation by using the False
Position Method

f = @(x) x^3 - x - 2; % Example function
xl = 1;
xu = 2;
tol = 0.001;
max_iter = 100;
for i = 1:max_iter
xr = xu - (f(xu) * (xu - xl)) / (f(xu) - f(xl));
if f(xr) == 0 || abs(xu - xl) < tol
break;
elseif f(xl) * f(xr) < 0
xu = xr;
else
xl = xr;
end
end
fprintf('Root found at x = %f\n', xr);


12. Write a program to find out the root of a polynomial equation by using the
Fixed-Point Iteration Method.
12---
f = @(x) x^3 - x - 2;
g = @(x) (x + 2)^(1/3); % Rearranged equation x = g(x)
x0 = 1.5;
tol = 0.001;
max_iter = 100;
for i = 1:max_iter
x1 = g(x0);
if abs(x1 - x0) < tol
break;
end
x0 = x1;
end
fprintf('Root found at x = %f\n', x1);



13--13. Write a program to find out the root of a polynomial equation by using the
Newton-Raphson Method
f = @(x) x^3 - x - 2;
df = @(x) 3*x^2 - 1; % Derivative of f(x)
x0 = 1.5;
tol = 0.001;
max_iter = 100;
for i = 1:max_iter
x1 = x0 - f(x0) / df(x0);
if abs(x1 - x0) < tol
break;
end
x0 = x1;
end
fprintf('Root found at x = %f\n', x1);


14. Write a MATLAB program for the Trapezoidal Rule.

14--
f = @(x) x.^2; % Example function
a = 0;
b = 1;
n = 100; % Number of trapezoids
h = (b - a) / n;
x = a:h:b;
y = f(x);
integral = (h/2) * (y(1) + 2*sum(y(2:n)) + y(n+1));
fprintf('Approximate integral using Trapezoidal Rule: %f\n', integral);


15--
15. Write a MATLAB program for Simpson's 1/3 Rule.

f = @(x) x.^2; % Example function
a = 0;
b = 1;
n = 100; % Number of intervals (must be even)
h = (b - a) / n;
x = a:h:b;
y = f(x);
integral = (h/3) * (y(1) + 4*sum(y(2:2:n)) + 2*sum(y(3:2:n-1)) + y(n+1));
fprintf('Approximate integral using Simpson''s 1/3 Rule: %f\n', integral);



16--
16. Write a MATLAB program for Simpson's 3/8 Rule.

% Example function
f = @(x) x.^2; % Use .^ for element-wise power
a = 0;
b = 1;
n = 9; % Number of intervals (must be a multiple of 3)
if mod(n, 3) ~= 0
error('Number of intervals (n) must be a multiple of 3 for Simpson's
3/8 rule.');
end
h = (b - a) / n;
x = a:h:b;
y = f(x);
% Simpson's 3/8 Rule implementation
integral = (3*h/8) * (y(1) + 3*sum(y(2:3:n)) + 3*sum(y(3:3:n)) +
2*sum(y(4:3:n-2)) + y(n+1));
fprintf('Approximate integral using Simpson's 3/8 Rule: %f\n', integral);