%a menu for graphing the data and such

% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018


rap=true;
while rap
    clc
    fprintf('The file currently loaded is %s.\n', fileName);
    fprintf('The output file will be titled %s.pdf.\n', pdfName);
    fprintf('What would you like to do it, %s?\n',name);
    fprintf('1) Plot the data.\n');
    fprintf('2) Add a line of best fit.\n');
    fprintf('3) Exit to main menu.\n');
    choiced=input('Enter your choice: ','s'); 
    
    x=loaded(:,1);
    y=loaded(:,2);
    switch choiced
        case '1'
            clc
            graphit;
            
            fprintf('Press any key to return to the graphing menu. ');
            pause;          
        case '2'
            clc;
            lobf
        case '3'
            clc;
            rap=false;
        otherwise
            clc;
            fprintf('ERROR: Invalid input.\n')
            fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
            fprintf('Press any key to return to the graphing menu.');
            pause;    
    end
end