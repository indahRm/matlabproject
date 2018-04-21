%line of best fit menu, part 2

line2=true;
while line2
    fprintf('1) Exponential.\n');
    fprintf('2) Power Law.\n');
    fprintf('3) Trigonomic.\n');
    fprintf('4) Logarithmic.\n');
    fprintf('5) Reciprocal.\n');
    fprintf('6) Back...\n');
    fprintf('7) Return to graphing options.\n');
    choicel2=input('Enter your choice: ','s');  
    
    switch choicel2
        case '1' %exp
            %!! find smth to test this on
            clc
            hold on;
            graphit;
            p=fit(x,y,'exp1');
            plot(p,x,y);
            hold off
            
            %mse
            fprintf('Press any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
        case '2' %power law
            clc;
            hold on;
            graphit;
            fprintf('placeholder. go away.\n\n');
            line2=false;
            line=false;
            pause;
        case '3' %trig
            clc;
            hold on;
            graphit;
            fprintf('placeholder. go away.\n\n');
            line2=false;
            line=false;
            pause;
        case '4' %log
            clc;
            hold on;
            graphit;
            fprintf('placeholder. go away.\n\n');
            line2=false;
            line=false;
            pause;
        case '5' %recip
            clc;
            hold on;
            graphit;
            fprintf('placeholder. go away.\n\n');
            line2=false;
            line=false;
            pause;    
        case '6'
            clc;
            line2=false;
        case '7'
            clc;
            line2=false;
            line=false;    
        otherwise
            clc;
            fprintf('ERROR: Invalid input.\n')
            fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
            fprintf('Press any key to return to the line of best fit menu.');
            pause;    
    end
end