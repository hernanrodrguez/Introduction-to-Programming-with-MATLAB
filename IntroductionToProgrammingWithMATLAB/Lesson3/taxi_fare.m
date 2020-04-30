% Write a function called taxi_fare that computes the fare of a taxi ride
% It takes 2 inputs: distance in km (d) and the time in minutes (t)
% The fare is calculated like this:
%  - the first km is $5
%  - every additional km is $2
%  - and every minute of waiting is $0.25
% 
% Once a km is started, it counts as a whole (consider de ceil built-in function)
% The same rule applies to wait times.
% You can assume that d>0 and t>=0 but they are not necessarully integers
% The function returns de fare in dollars
% For example, a 3.5km ride with 2.25 minutes of wait costs $11.75

function fare = taxi_fare(d,t)

fare = 5 + ceil(d-1)*2 + 0.25*ceil(t);

end
