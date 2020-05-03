function [table summa] = multable(n,m)

% My first polymorphic function in Matlab
% It returns a multiplication table (n by m) in the variable table
% It can returns optionally the sum of all the elements in summa
% If m not provided, it returns a n by n matrix

if nargin<1
    error('must have at least one input argument');
end
if nargin<2
    m=n;
elseif ~isscalar(m) || m<1 || m~=fix(m)
    error('m needs to be a positive integer');
end
if ~isscalar(n) || n<1 || n~=fix(n)
    error('n needs to be a positive integer');
end

table = (1:n)' * (1:m);

if nargout == 2
    summa = sum(table(:));
end

end