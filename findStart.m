%finds where to start reading on .txt files

line=fgetl(fid);
startfound=false;

if ischar(line) %check if first line has chars
    while ischar(line) %while there are lines that have chars...
        if strcmp(line,'START')
            startfound=true;
            break
        
        end
        line=fgetl(fileName);
    end
    loaded=fscanf(fid,'%f%f',[2,inf]);
    loaded=loaded';
    fclose(fid);

else %if the first line isnt a char then it yells at you
    startfound==false
    fprintf('\nERROR: ''START'' not found.\nMake sure your file has a START in it.')
end