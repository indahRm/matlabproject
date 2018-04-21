%%HERE WE GO!!!!

% !! <-- signifies 'to do'
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
            graph_options;
            %fprintf('hooray it works!');
            %pause;
        
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