%line of best fit menu, part 1

line=true;
while line
    fprintf('What kind line would you like to fit %s with?\n', fileName);
    fprintf('1) Linear fit with non-zero y-intercept (y=mx+b).\n');
    fprintf('2) Linear fit with zero y-intercept (y=mx+b).\n');
    fprintf('3) General polynomial of degree n.\n');
    fprintf('4) More options...\n');
    fprintf('5) Return to graphing options.\n');
    choicel=input('Enter your choice: ','s');  
    
    switch choicel
        case '1' %lin fit (non-zero intercept)
            clc;
            hold on;
            graphit;
            p = polyfit(x,y,1);
            yfit=polyval(p,x);
            plot(x,yfit);
            title(print_equation(p))
            hold off
            
            mse
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line=false;
            pause;
        case '2' %lin fit (zero intercept)
            clc;
            hold on;
            graphit;
            p=x(:)\y(:);
            yfit=x*p;
            plot(x,yfit);
            title(print_equation(p))
            hold off
            
            mse
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
                        d=input('\nWhat degree polynomial would you like to graph?\n');
                        clc
                        hold on;
                        graphit;
                        p = polyfit(x,y,d);
                        yfit=polyval(p,x);
                        plot(x,yfit);
                        title(print_equation(p))
                        hold off
                        mse
                
                        fprintf('\n\nPress any key to return to the graphing menu. ');
                        genp=false;
                        line=false;
                        pause;
            
                    case '2'
                        
                        if length(loaded)-1>10
                            lim=10;
                        else
                            lim=length(loaded)-1;
                        end
                        fprintf('\nWhat is the maximum degree polynomial you would like to include?\n');
                        fprintf('(Maximum degree allowed: %i) \n',lim);
                        d=input('Enter number now: ');
                        clc
                        hold on;
                        graphit;
                        
                        for I=1:d-1
                            p = polyfit(x,y,I);
                            yfit=polyval(p,x);
                            plot(x,yfit);
                            mse
                        end
                        hold off
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