%calculates mse for polynomial functions

% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018


e = y - yp;
MSE = mean(e.^2);
            
fprintf('The MSE for the polynomial %s is %.2f.\n', print_equation(p),MSE);