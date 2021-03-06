% By submitting this assignment, I agree to the following:
%  Aggies do not lie, cheat, or steal, or tolerate those who do.
%  I have not given or received any unauthorized aid on this assignment.
% 
% Name:           Indah Rahmadina
% Section:        514
% Team:           12
% Assignment:     MATLAB Project
% Date:           23/4/2018

clear
done=true;
name='guest';

while done
clc
fprintf('Welcome to the MATLAB Graphing Project. � Indah Rahmadina 2018.\n');
fprintf('What would you like to do, %s?\n',name);
fprintf('1) Change username.\n');
fprintf('2) Load data.\n');
fprintf('3) Start graphing.\n');
fprintf('4) Exit.\n');
choice=input('Enter your choice: ','s');

switch choice
    case '1' 
        clc
        name=input('What would you like to change your name to?\n','s');
        fprintf('\nChanges saved. Press any key to continue.');
        pause;
    case '2'
        clc
        data_options; %redirects to data_options script
    case '3'
        clc
        if exist('loaded','var')
            if exist('pdfName','var')
                graph_options;
                
            else
                fprintf('ERROR: File name has not been set.\n')
                fprintf('Please provide a name for the output .pdf file.\n\n')
                fprintf('Press any key to return to the main menu. ');
                pause;
            end        
        else % check to see if a file was loaded into the var 'loaded'
            fprintf('ERROR: No file detected.\n')
            fprintf('You''ll need to load a file before graphing it.\n\n')
            fprintf('Press any key to return to the main menu. ');
            pause;
        end
    case '4'
        clc;
        fprintf('Okay, have a nice day!\n');
        done=false;
    otherwise
        clc
        fprintf('ERROR: Invalid input.\n')
        fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
        fprintf('Press any key to return to the main menu. ');
        pause;
end
end