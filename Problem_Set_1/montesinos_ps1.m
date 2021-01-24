%% Econometrics I
%  Manuel V. Montesinos
%  PS #1: Main script
cd('write your path')

%% Exercise 1
close all; clear; clc; rng(13);

% a) The function OLS is defined in "ols.m"

% b) Generate the vectors of random numbers
x1 = 1 + 3 * randn(500,1); % Vector from N(1,3)
x2 = 3 * randn(500,1); % Vector from N(0,3)
epsilon = randn(500,1); % Vector from N(0,1)
y_reg = 2 * ones(500,1) + 2 * x1 - x2 + epsilon;

% c) Save the generated data as a csv file
data = [y_reg,x1,x2,epsilon];
csvwrite('dataex1_ps1.csv',data);

% d) Estimate the model with the generated data from b)
x_reg = [ones(500,1),x1,x2]; % Generate the matrix X for the estimation

[betas, SSR, r_squared_u, r_squared_c, var_epsilon, varcov_betas, std_betas] = ols(y_reg,x_reg);

disp('Estimated model')
disp('____________________________________')
disp('Beta coefficients (beta1, beta2, beta3)')
disp(betas)
disp('____________________________________')
disp('Sum of square errors')
disp(SSR)
disp('____________________________________')
disp('R-squared (uncentered)')
disp(r_squared_u)
disp('____________________________________')
disp('R-squared (centered)')
disp(r_squared_c)
disp('____________________________________')
disp('Estimate of variance of the error')
disp(var_epsilon)
disp('____________________________________')
disp('Standard errors of estimates (beta1, beta2, beta3)')
disp(std_betas)
disp('____________________________________')

% e) Hypothesis test
% Null hypothesis: -2 * beta2 + 20 * beta3 = 0
R = [0,-2,20]; % Left-hand side of the null hypothesis
r = 0; % Right-hand side of the null hypothesis
F_ratio = ((R * betas - r)' * inv(R * inv(x_reg' * x_reg) * R') * (R * betas - r)) * ((var_epsilon))^(-1); % Compute the F-ratio

disp('____________________________________')
disp('Test of hypothesis')
disp('H0: -2 * beta2 + 20 * beta3 = 0')
disp('F-ratio')
disp(F_ratio)
disp('The value of the F-ratio is big enough to reject the null hypothesis')
disp('____________________________________')
