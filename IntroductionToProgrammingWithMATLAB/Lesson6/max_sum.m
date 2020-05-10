function [summa, index] = max_sum(v,n)

%Write a function called max_sum that takes v, a row
%of numbers, and n, a positive integer as inputs.
%The function needs to find the n consecutive elements
%of v whose sum is the largest possible.
%In other words, if v is [1 2 3 4 5 4 3 2 1] and
%n us 3, it will find 4 5 and 4 because their sum of
%13 is the largest of any 3 consecutive elements of v.
%If multiple such sequences exist in v, max_sum returns
%the first one.
%The function returns summa, the sum as the first output
%argument and index, the index of the first element
%of the n consecutive ones as the second output.
%If the input n is larger than the number of elements
%of v, the function returns 0 as the sum and -1 as
%the index

aux=0;
summa=0;
index=-1;
firstloop=false;

if n <= length(v)
    for ii = 1:(length(v)-(n-1))
        for jj = ii:(ii+(n-1))
            aux=aux+v(jj);        
        end
        if ~firstloop
            summa=aux;
            index=ii;
            firstloop=true;
        end
        if aux>summa
            summa=aux;
            index=ii;
        end
        aux=0;
    end
end
end