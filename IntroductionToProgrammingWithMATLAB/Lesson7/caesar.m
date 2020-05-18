function coded = caesar(text, shift)

%Caesars cypher is the simplest encryption algorithm. 
%It adds a fixed value to the ASCII value of each character of a text.
%Decrypting a text is simply shifting it back by the same amount,
%that is, it substracts the same value from the characters.
%Write a function called caesar that accepts 2 arguments: 
%the first is the character vector to be encrypted, while the
%second is the shift amount. 
%The function returns the output argument coded, the encrypted 
%text. The function needs to work with all the visible ASCII characters
%from space to ~. The ASCII codes of these are 32 through 126.
%If the shifted code goes outside of this range, it should wrap around.
%For example, if we shift ~ by 1, the result should be space. 
%If we shift space by -1, the result should be ~.

numtext = double(text);
coded = numtext+shift;

for ii = 1:length(numtext)
   while coded(ii) > 126
       coded(ii) = 31 + coded(ii) - 126;
   end
   while coded(ii) < 32
       coded(ii) = 127 - (32 - coded(ii));
   end    
end

coded=char(coded);

end