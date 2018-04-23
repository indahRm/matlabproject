%prints polynomial equations

% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018



function [str] = print_equation(p)
str=['y = '];
L=length(p);

for i=1:L
    if L==1
        str=[str num2str(p(i)) 'x'];
    elseif p(i)==0
        continue;
    elseif p(i)<0
        if i==(L-1)
                str=[str ' - ' num2str(abs(p(i))) 'x'];
        elseif i==L
                str=[str ' - ' num2str(abs(p(i)))];
        else
            str=[str ' - ' num2str(abs(p(i))) 'x^' num2str(L-i)];
        end
    elseif i==1
        if p(i)>0
            if i==(L-1)
                str=[str num2str(p(i)) 'x'];
            else
                str=[str num2str(p(i)) 'x^' num2str(L-i)];
            end
        end
    elseif i==(L-1)
        str=[str ' + ' num2str(p(i)) 'x'];
    elseif i==(L)
        str=[str ' + ' num2str(p(i))];
    else
        str=[str ' + ' num2str(p(i)) 'x^' num2str(L-i)];
    end
end
end