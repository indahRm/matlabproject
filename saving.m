%asks user if theyd like to save their graph

sav=true;

while sav
   fprintf('\nWould you like to save this file? It will be saved as %s.pdf.\n', pdfName);
   n=input('(Y/N) ','s');
   
   switch n
       case {'Y' 'y'}
           clc
           fprintf('%s.pdf saved successfully. ', pdfName);
           sav=false;
           
        case {'N' 'n'}
            fprintf('File not saved. ');
            sav=false;
        otherwise
           fprintf('ERROR: Input not recognized.\n\n');
   end
end