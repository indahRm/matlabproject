%asks user if theyd like to save their graph

sav=true;

while sav
   fprintf('\nWould you like to save this file? It will be saved as %s-fig-[date].pdf.\n', pdfName);
   n=input('(Y/N) ','s');
   
   switch n
       case {'Y' 'y'}
           tv=datevec(datetime()); %creates a timestamp for the file name
           s2=datestr(tv,'yyyy-mm-dd-HH-MM-SS');
           s=[pdfName '-fig-' s2];
           
           saveas(gcf,[s '.pdf']); %saves plot to pdf
           
           fileID=fopen([pdfName '-report-' s2 '.txt'], 'wt'); %creates a .txt report file
           fprintf(fileID,'User Name: %s\n\n',name);
           fprintf(fileID,'Date: %s\n\n', datetime());
           fprintf(fileID,'Data file: %s\n', fileName);
           fprintf(fileID,'Contains %i rows of data.\n\n', length(x));
           fprintf(fileID,'Curve type: %s\n', c);
           if q==1
               fprintf(fileID,'The MSE for the polynomial %s is %.2f.\n\n', print_equation(p),MSE);
           else
               break;
           end
           
           fprintf(fileID,'End of work: %s\n\n', datetime());
           fclose(fileID);
           
           clc
           fprintf('%s.pdf saved successfully. \n', s);
           fprintf('%s_report-%s.txt report file created successfully. ', pdfName,s2);
           sav=false;
           
        case {'N' 'n'}
            fprintf('File not saved. ');
            sav=false;
        otherwise
           fprintf('ERROR: Input not recognized.\n\n');
   end
end