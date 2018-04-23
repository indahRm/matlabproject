%calculates mse for polynomial functions
e = y - yp;
MSE = mean(e.^2);
            
fprintf('The MSE for the polynomial %s is %.2f.\n', print_equation(p),MSE);