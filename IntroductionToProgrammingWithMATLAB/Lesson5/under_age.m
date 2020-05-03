function too_young = under_age (age, limit)

% Write a function called under_age that takes two positive integer scalar arguments:
%  - age that represents someone's age
%  - limit that represents an age limit
% The function return true if the person is younger than the age limit.
% If limit not provided, it defaults to 21.
% You don't need to check that the inputs are positive integer scalars.
% The name of the output argument is too_young

if nargin<2
    limit = 21;
end

if age < limit
    too_young = true;
else
    too_young = false;
end

end