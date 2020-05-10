function k = next_prime(n)
%Write a function called nextprime that takes a scalar positive integer
%input n. Use a while loop to find and return k, the smallest prime number
%that is greater than n. Feel free to use the built in function isprime.
k=n+1;
while ~isprime(k)
    k=k+1;
end
end