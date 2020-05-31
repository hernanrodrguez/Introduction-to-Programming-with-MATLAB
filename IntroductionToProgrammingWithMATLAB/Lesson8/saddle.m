function indices=saddle(M)

% Write a function called saddle that finds saddle points in the input matrix M.
% For the purpose of this problem, a saddle point is defined as an element whose value 
% is greater than or equals to every element on its row, and less or equal to every 
% element in its column. Nothe that there may be more than one saddle point in M.
% Return a matrix called indices that has exactly two columns. Each row of indices
% corresponds to one saddle point with the first element of the row containing the row 
% index of the saddle point and the second element containing the column index. 
% If there is no saddle point in M, the indices is the empty array.

[m,n]=size(M);    
indices=[];            
for ii=1:m
    for jj=1:n
        if (M(ii,jj)==max(M(ii,:))&& M(ii,jj)==min(M(:,jj)))
            indices=[indices; ii,jj];     
        end
    end
end   
end