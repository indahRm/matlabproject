%line of best fit menu, part 2

% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018


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
        case '1' %exponential
            c='Exponential curve'
            q=0;
            clc
            if sum(y<0)>0
                fprintf('ERROR: Exponential functions cannot pass through the origin.')
                fprintf('\nTry a different fit.\n\n')
                
            else
                hold on;
                xlabel('X');
                ylabel('Y');
                p=fit(x,y,'exp1');
                xfit=[min(x):length(x)/500:max(x)];
                plot(p,xfit,y);
                hold off
            end
            
            
            fprintf('Press any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
            
        case '2' %power law
            c='Power Law curve'
            q=0;
            clc;
            hold on;
            graphit;
            
            subplot(2,2,1)
            scatter(x,y)
            title('Scatter')
            
            subplot(2,2,3);
            semilogx(x,y)
            title('Semi-Log X')
            
            subplot(2,2,4);
            semilogy(x,y)
            title('Semi-Log Y')
            
            subplot(2,2,2)
            
            if sum(x<0)>0||sum(y<0)>0 %check if there are any negative x or y values
                scatter(0,0,'x','DisplayName','Power fit not reccomended')
                legend('show')
                title('Log')
                fprintf('ERROR: Negative x or y values found. Power fit not reccommended.\n')
            else
                loglog(x,y)
                title(Log)
            end
            saving
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
            
        case '3' %trigonometric
            clc;
            choicel24=input('Is this a sine or cosine function? ','s');
            q=0;
            hold on;
            graphit;
            xfit=[min(x):length(x)/500:max(x)];
            switch choicel24
                case 'sine'
                    c='Sine curve'
                    yfit=sin(xfit)+min(x);
                    plot(xfit,yfit);
                    title(['sin(x) + ' min(x)]);
                case 'cos'
                    c='Cosine curve'
                    yfit=cos(xfit)+min(x);
                    plot(xfit,yfit);
                    title(['cos(x) + ' min(x)]);
                otherwise
                    fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
            end
            
            hold off;
            fprintf('\n\nPress any key to return to the graphing menu. ');
            
            line2=false;
            line=false;
            pause;
        case '4' %logarithmic
            c='Logarithmic curve';
            clc;
            
            hold on;
            graphit;
            xfit=[min(x):length(x)/500:max(x)];
            yfit=log10(xfit)+min(x);
            
            if sum(x<0)>0||sum(y<0)>0
                scatter(0,0,'x','DisplayName','Logarithmic fit not reccomended')
                legend('show')
                title('Log')
                fprintf('ERROR: Negative x or y values found. Logarithmic fit not reccommended.\n')
            else
                p = b(1) .* exp(b(2).*x)+ b(3);
                plot(x,p)
            end
            hold off
            
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
        case '5' %reciprocal (1/x)
            c='Reciprocal curve';
            clc;
            hold on;
            graphit;
            p=(1./x).\y;
            yfit=p./x;
            plot(x,yfit);
            ti=['y = ' num2str(mean(p)) '/x'];
            title(ti);
            saveas(gcf,[pdfName '.pdf'])
            
            fprintf(''
            fprintf('\n\nPress any key to return to the graphing menu. ');
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