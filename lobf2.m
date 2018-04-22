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
        case '1' %exponential
            clc
            if sum(y<0)>0
                fprintf('ERROR: Exponential functions cannot pass through the origin.')
                fprintf('\nTry a different fit.\n\n')
                
            else
                hold on;
                xlabel('X');
                ylabel('Y');
                p=fit(x,y,'exp1');
                plot(p,x,y);
                hold off
            end
            
            
            fprintf('Press any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
            
        case '2' %power law
            clc;
            hold on;
            graphit;
            
            subplot(2,2,1)
            scatter(x,y)
            title('Scatter')
            
            subplot(2,2,2)
            
            if sum(x<0)>0||sum(y<0)>0 %check if there are any negative x or y values
                scatter(0,0,'x','DisplayName','Power fit not reccomended')
                legend('show')
                title('Log')
                fprintf('ERROR: Negative x or y values found. Power fit not reccommended.\n')
                
                fprintf('\n\nPress any key to return to the graphing menu. ');
                line2=false;
                line=false;
                pause;
            else
                loglog(x,y)
                title(Log)
                
                fprintf('\n\nPress any key to return to the graphing menu. ');
                line2=false;
                line=false;
                pause;
            end
            
            
            subplot(2,2,3);
            semilogx(x,y)
            title('Semi-Log X')
            
            subplot(2,2,4);
            semilogy(x,y)
            title('Semi-Log Y')
           
            line2=false;
            line=false;
            pause;
            
        case '3' %trigonometric
            clc;
            hold on;
            graphit;
            fprintf('placeholder. go away.\n\n');
            line2=false;
            line=false;
            pause;
        case '4' %logorarithmic
            %yo what the fuck
            clc;
            hold on;
            graphit;
            b=nlinfit(x,y);
            p = b(1) .* exp(b(2).*x)+ b(3);
            plot(x,p)
            hold off
            
            fprintf('\n\nPress any key to return to the graphing menu. ');
            line2=false;
            line=false;
            pause;
        case '5' %reciprocal (1/x)
            clc;
            hold on;
            graphit;
            p=(1./x).\y;
            yfit=p./x;
            plot(x,yfit);
            ti=['y = ' num2str(p(1)) '/x'];
            title(ti);
            saveas(gcf,[pdfName '.pdf'])
            
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