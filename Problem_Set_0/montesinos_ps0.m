% Manuel V. Montesinos -- Econometrics I. Problem Set 0
% -- Main script
clear all
clc
close all

%% Exercise 1
P = [3.14,15,9,26]

% The elements of vector R go from 100 to 1. Each element is the previous
% one minus 1:
R = [100:-1:1]

% We create a vector of elements going from 0 to 99, and then we divide it
% by 99 in order to obtain vector S:
S = [0:99]/99

%% Exercise 2
% We create a vector of ones, with 11 elements, and multiply it by 0.5,
% which is r in the exercise. After that, we raise each element of that
% vector to the corresponding element of another vector going from
% 0 to 10, using the dotted operator "^":
 S = [0.5*ones(1,11)].^(0:10);

% We redefine S as the sum of its elements to obtain the sum of the
% geometric series:
 S = sum(S)

%% Exercise 3 a)
% We define the elements F_n-1 and F_n-2, which we need to compute the
% series. We call them f_old and f_older:
f_older = 1;
f_old = 1;

% Starting from the third element of the series, we apply recursively the
% operation F_n = F_n-1 + F_n-2. After each iteration, we need to redefine
% F_n and F_n-1 to be the elements F_n-1 and F_n-2, respectively, of the
% next iteration:
for i=3:20
    f_current = f_old + f_older;
    f_older = f_old;
    f_old = f_current;
end

% The 20th element of the series:
f_20 = f_old

%% Exercise 3 b)
f_older = 1;
f_old = 1;

% We define the variable nstar, the one that we are looking for in this
% exercise and that counts the number of iterations done in the loop:
nstar = 1;

% The loop does the same operation of Exercise 3a), but stops when it
% reaches an element bigger or equal than 1000:
while f_old+1 < 1000
    f_current = f_old + f_older;
    f_older = f_old;
    f_old = f_current;
    nstar=nstar+1;
end

% nstar gives us the desired number:
nstar

%% Exercise 4
% After creating the function in "Bernoulli.m", we call it, setting n=1000
% and theta = 0.25.
bern_rvs = Bernoulli(1000,0.25);

% We compute the fraction of "one" entries in our random vector:
frac_one = (1/size(bern_rvs,2))*sum(bern_rvs)

%% Exercise 5
% After creating the function in "createspecialarrays.m", we call it,
% setting M = 3 and N = 2:
createspecialarrays(3,2);
