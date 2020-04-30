% Write a function called trio that takes two positive integers inputs n and m.
% The function returns a 3n-by-m matrix called T.
% The top third of T (an n by m matrix) is al 1s, the middle third is all 2s while the bottom
% third is all 3s.

function T = trio(n,m)

aux=ones(n,m);
T = [aux; 2*aux; 3*aux];