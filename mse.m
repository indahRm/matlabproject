e = y - yfit;
MSE = mean(e.^2);
            
fprintf('The MSE for the polynomial %s is %.2f.\n', print_equation(p),MSE);