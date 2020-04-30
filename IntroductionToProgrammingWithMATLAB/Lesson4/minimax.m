% Write a function called minimax that that takes M, a matrix input argument and
% returns mmr, a row vector containing de absolute values of the difference between
% the maximum and minimum valued elements in each row. As a second output argument
% called mmm, it provides the difference between the maximum and minimum element in 
% the entire matrix. 

function [mmr, mmm] = minimax(M)

mmr = max(M,[],2) - min(M,[],2);
mmr = mmr';

mmm = max(max(M)) - min(min(M));

end