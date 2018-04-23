%%a menu for loading data and changing the pdf name

dat=true;
while dat
    clc
    fprintf('This menu allows you to select what you''d like to do with the data.\n');
    fprintf('What would you like to do, %s?\n',name);
    fprintf('1) Load a data file.\n');
    fprintf('2) Clear data from memory.\n');
    fprintf('3) Add/change the report file name.\n');
    fprintf('4) Exit to main menu.\n');
    choiced=input('Enter your choice: ','s'); 
    
    switch choiced
        case '1'
            clc;
            choiced1=true;
            while choiced1
                fprintf('Which file would you like to load?\n');
                fprintf('(Input should be in format: nameOfFile.txt)\n\n');
                fileName=input('Enter the file name: ','s');
                clc
                if exist(fileName,'file') %check to make sure the file actually exists
                    choiced1=false;
                    fid=fopen(fileName);
                    
                    if fid==-1
                        fprintf('ERROR: %s cannot be opened.\n\n',fileName);
                    else
                        findStart;
                    
                        fprintf('%s loaded successfully.\n\n',fileName);
                        fprintf('Press any key to continue. ');
                        pause;
                    end
                else
                    fprintf('ERROR: %s not found.\n\n',fileName);
                end
            end            
        case '2'
            clc;
            choiced2=true;
            while choiced2
            fprintf('Memory of the loaded file will be cleared.\n');
            memclear=input('Are you sure?(Y/N) ','s');
            switch memclear
                case {'Y' 'y'}
                    clc
                    clear loaded;
                    fprintf('Memory cleared successfully.\n\n');
                    choiced2=false;
                    fprintf('Press any key to continue. ');
                    pause;
                case {'N' 'n'}
                    choiced2=false;
                    fprintf('\nOkay. Press any key to return to the data menu. ');
                    pause;
                otherwise
                    fprintf('ERROR: Input not recognized.\n\n');
            end
            end
        case '3'
            clc;
            choiced3=true;
            
            while choiced3
                fprintf('What would you like the output files to be named?\n');
                fprintf('(Input should be in format: nameOfFile)\n');
                pdfName=input('Enter the file name: ','s');
                
                if exist([pdfName '.pdf'],'file') %check to see if pdf file with that name already exists
                    fprintf('\nFile already exists. Data will be overwritten.');
                    pdfEx=input('\nProceede? (Y/N) ','s')
                    
                    switch pdfEx
                        case {'Y' 'y'}
                            clc
                            choiced3=false;
                            fprintf('Name saved successfully. Report file will be titled %s.pdf.\n\n', pdfName);
                            fprintf('Press any key to continue. ');
                            pause;
                        case {'N' 'n'}
                            clc
                            choiced3=false;
                            fprintf('\nOkay. Press any key to return to the data menu. ');
                            pause;
                otherwise
                    fprintf('ERROR: Input not recognized.\n\n');
                        
                    end
                else
                    clc
                    choiced3=false;
                    fprintf('Name saved successfully. Report file will be titled %s.pdf.\n\n', pdfName);
                    fprintf('Press any key to continue. ');
                    pause;
                end
            end
        case '4'
            dat=false;
        otherwise
            clc;
            fprintf('ERROR: Invalid input.\n')
            fprintf('I''m sorry, but that choice is not recognized.\nPlease try again.\n\n');
            fprintf('Press any key to return to the data menu.');
            pause;    
    end
end