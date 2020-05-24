function charnum = char_counter(fname,ch)

% Write a function called char_counter that counts the number of a certain
% character in a text file. 
% The function takes two input arguments, fname, a char vector of the filename
% and ch, the character it counts in the file.
% The function returns charnum, the number of characters found.
% If the file is not found or ch is not a valid char, the function returns -1.

charnum=0;

fid=fopen(fname);
if fid<0 || ch<32 || ch>126
    charnum=-1;
    return
end
line = fgets(fid);
while ischar(line)
    [~,col] = size(line);
    aux_line = ones(1,col);
    aux_line(:)=ch;
    
    charnum = charnum + sum(line==aux_line);
    
    line = fgets(fid);
end

fclose(fid);
end