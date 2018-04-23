%line of best fit menu, part 1

% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018


line=true;
while line
    fprintf('What kind line would you like to fit %s with?\n', fileName);
    fprintf('1) Linear fit with non-zero y-intercept (y=mx+b).\n');
    fprintf('2) Linear fit with zero y-intercept (y=mx).\n');
    fprintf('3) General polynomial of degree n.\n');
    fprintf('4) More options...\n');
    fprintf('5) Return to graphing options.\n');
    choicel=input('Enter your choice: ','s');  
    
    switch choicel
        case '1' %lin fit (non-zero intercept)
            c='Linear fit with non-zero y-intercept (y=mx+b)'
            q=1;
            clc;
            hold on;
            graphit;
            p = polyfit(x,y,1);
            xfit=[min(x):length(x)/500:max(x)];
            yfit=polyval(p,xfit);
            yp=polyval(p,x);
            plot(xfit,yfit);
            title(print_equation(p))
            hold off
            
            mse
            saving
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line=false;
            pause;
        case '2' %lin fit (zero intercept)
            c='Linear fit with zero y-intercept (y=mx)';
            q=1;
            clc;
            hold on;
            graphit;
            p=x(:)\y(:);
            xfit=[min(x):length(x)/500:max(x)];
            yfit=xfit*p;
            yp=polyval(p,x);
            plot(xfit,yfit);
            title(print_equation(p))
            hold off
            
            mse
            saving
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line=false;
            pause;
        case '3' %general polynomial
            genp=true;
            
            while genp
                clc;
                fprintf('1) Graph a single polynomial of a chosen degree.\n');
                fprintf('2) Graph a range of several polynomials of n >= 1 degrees.\n');
                c=input('Which would you like to do? ','s');
            
                switch c
                    case '1'
                        q=1;
                        d=input('\nWhat degree polynomial would you like to graph?\n');
                        clc
                        hold on;
                        
                        c=['Polynomial of degree ' num2str(d)];
                        graphit;
                        xfit=[min(x):length(x)/500:max(x)];
                        p = polyfit(x,y,d);
                        yfit=polyval(p,xfit);
                        yp=polyval(p,x);
                        plot(xfit,yfit);
                        title(print_equation(p));
                        hold off
                        mse
                        saving
                
                        fprintf('\n\nPress any key to return to the graphing menu. ');
                        genp=false;
                        line=false;
                        pause;
            
                    case '2'
                        
                        if length(loaded)-1 >10
                            lim=10;
                        else
                            lim=length(loaded)-1;
                        end
                        fprintf('\nWhat is the maximum degree polynomial you would like to include?\n');
                        fprintf('(Maximum degree allowed: %i) \n',lim);
                        d=input('Enter number now: ');
                        
                        c=['Polynomial of degrees 1 <= x <= ' num2str(d)]
                        clc
                        hold on;
                        graphit;
                        xfit=[min(x):length(x)/500:max(x)];
                        
                        for I=1:d-1
                            p = polyfit(x,y,I);
                            yfit=polyval(p,xfit);
                            yp=polyval(p,x);
                            
                            e = y - yp; %finding individual mse's
                            MSE = mean(e.^2);
                            
                            plot(xfit,yfit,'DisplayName',['poly' num2str(I) ' MSE=' num2str(MSE)]);
                            legend('Location','southeast');
                            
                        end
                        
                        
                        hold off
                        saving
                        fprintf('\n\nPress any key to return to the graphing menu. ');
                        genp=false;
                        line=false;
                        pause;
                        
                    otherwise
                        clc;
                        fprintf('ERROR: Invalid input.\n')
                        fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
                        fprintf('Press any key to continue. ');
            pause;    
                end
                
            end
        case '4'
            clc;
            lobf2
        case '5'
            clc;
            line=false;    
        otherwise
            clc;
            fprintf('ERROR: Invalid input.\n')
            fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
            fprintf('Press any key to return to the line of best fit menu.');
            pause;    
    end
end