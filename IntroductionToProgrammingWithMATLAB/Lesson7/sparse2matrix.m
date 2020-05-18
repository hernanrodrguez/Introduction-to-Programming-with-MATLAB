function matrix = sparse2matrix(arg)

% A sparse matrix is a large matrix with almost all elements
% of the same value (typically zero).
% The normal representation of a sparse matrix takes up
% lots of memory when the useful information can be captured
% with much less. A possible way to represent a sparse matrix
% is with a cell vector whose first element is a 2-element
% vector representing the size of the sparse matrix.
% The second element is a scalar sepecifying the default 
% value of the sparse matrix.
% Each successive element of the cell vector is a 3 element
% vector representing one element of the sparse matrix
% that has a value other tan the default.
% The three elements are the row index, the column index and
% the actual value. 
% Write a function called sparse2matrix that takes a single
% input of a cell vector as defined above and returns the
% output argument called matrix, the matrix in its traditional
% form

matrix = (ones(arg{1}(1,1), arg{1}(1,2))) * arg{2};
for ii = 3:length(arg)
    matrix( arg{ii}(1,1) , arg{ii}(1,2) ) = arg{ii}(1,3);
end

end