%asks user if theyd like to save their graph

sav=true;

while sav
   fprintf('\nWould you like to save this file? It will be saved as %s.pdf.\n', pdfName);
   n=input('(Y/N) ','s');
   
   switch n
       case {'Y' 'y'}
           saveas(gcf,[pdfName '.pdf']);
           fileID=fopen([pdfName '_report.txt'], 'wt');
           fprintf(fileID,'User Name: %s\n\n',name);
           fprintf(fileID,'Date: %s\n\n', datetime());
           fprintf(fileID,'Data file: %s\n', fileName);
           fprintf(fileID,'Contains %i rows of data.', length(x));
           fclose(fileID);
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