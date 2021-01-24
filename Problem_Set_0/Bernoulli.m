% Manuel V. Montesinos -- Econometrics I. Problem Set 0
% -- Function for Exercise 4
% First, the function creates a row vector of n random numbers taken from a
% uniform distribution (0,1). After that, we define vector bern_rvs. The
% first element of bern_rvs is 1 if the first element of X is smaller than
% theta, and 0 otherwise. The same is done with the rest of the elements of
% bern_rvs. The outcome is a vector that only contains zeros or ones, as
% the Bernoulli distribution requires:
function[bern_rvs] = Bernoulli(n,theta)
X = rand(1,n);
bern_rvs = (X<theta);
end
