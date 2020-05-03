function isvalid = valid_date_v2(y, m, d)

% Write a function called valid_date that takes 3 positive integer scalar inputs year, month, day.
% If these 3 represent a valid date, return logical true, otherwise false.
% The name of the output argument is valid.
% If any of the arguments is not a positive integer scalar, return false as well.
% Note that every year that is exactly divisible by 4 is a leap year, except for years that are
% exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years.
% Your solution must not contain any of the date related built-in Matlab functions.

   % Check if the inputs are valid 
   % Check that they are scalars
   if ~(isscalar(y) && isscalar(m) && isscalar(d))
       isvalid = false;
   % Check that inputs are positive
   elseif ~all([y, m, d] > 0)
       isvalid = false;
   % Check that inputs are integers (not the data type)    
   elseif any(rem([y, m, d], 1))
       isvalid = false;
   % Check that m and d are below the max possible
   elseif (m > 12) || (d > 31)
       isvalid = false;
   % The inputs could be a valid date, let's see if they actually are
   else
       % Vector of the number of days for each month
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       % If leap year, change days in Feb
       if isequal(rem(y, 4), 0) && (~isequal(rem(y, 100), 0) || isequal(rem(y, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(m);
       if d > maxDay
           isvalid = false;
       else
           isvalid = true;
       end
       
   end
end