line=fgetl(fid);

while ischar(line)
    if strcmp(line,'START')
        break
    end
    line=fgetl(fileName);
end

loaded=fscanf(fid,'%f%f',[2,inf]);
loaded=loaded';
fclose(fid);