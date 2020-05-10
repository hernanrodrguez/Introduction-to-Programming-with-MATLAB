function numfreeze = freezing(days)

%Write a function called freezing that takes a vector
%of numbers that correspond to daily low temperatures
%in Farenheit. Return numfreeze, the number of days with
%subfreezing temperatures (that is lower than 32F)
%without using loops

numfreeze = sum(days < 32);

end