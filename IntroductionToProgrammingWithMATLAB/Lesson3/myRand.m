function [a, s] = myRand (low, high, rows, cols)

a = low + rand(rows,cols)*(high-low);
s = sumAllElements(a);

function summa = sumAllElements(M)

v=M(:);
summa=sum(v);