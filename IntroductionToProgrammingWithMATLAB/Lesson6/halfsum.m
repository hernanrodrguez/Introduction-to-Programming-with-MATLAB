function summa = halfsum(M)

%Write a function called halfsum that takes as input a matrix and
%computes the sum of its elements that are in the diagonal or are right
%of it. The diagonal is defined as the set of those elements whose column
%and row indexes are the same. In other words, tha function adds up the 
%element in the uppertriangular part of the matrix.
%The name of the output argument is summa

[row col] = size(M);
summa=0;
for r = 1:row
    for c = r:col
        summa=summa+M(r,c);
    end
end
end