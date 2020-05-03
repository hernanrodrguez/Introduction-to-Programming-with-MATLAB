% Write a function called picker that takes 3 input arguments called condition, in1, in2 in this order
% The argument condition is a logical
% If it is true, the function assigns the value of in1 to the output argument out
% Otherwise, it assigns the valur of in2 to out

function out = picker(condition, in1, in2)

if condition
    out = in1;
else
    out = in2;
end

end