%% Econometrics I
%  Manuel V. Montesinos 
%  PS #1: OLS function
%The function -ols- estimates the model y = x'*beta + epsilon using
%the Ordinary Least Squares procedure.
% Input:
    % y = vector of data on dependent variable.
    % X = matrix of data on regressors. Each row corresponds to one
    % observation and each column corresponds to one regressor.
% Output:
    % betas = vector of estimates of the model coefficients
    % SSR = sum of square errors
    % r_square_u = uncentered r-squared
    % r_square_c = centered r-squared
    % var_epsilon = estimate of variance of the error
    % varcov_betas = variance-covariance matrix of estimates of betas
    % std_betas = vector of standard errors of estimated betas

function[betas, SSR, r_squared_u, r_squared_c, var_epsilon, varcov_betas, std_betas] = ols(y,X)
betas = inv(X' * X) * X' * y;
SSR = (y - X * betas)' * (y - X * betas);
r_squared_u = 1 - SSR * inv(y' * y);
r_squared_c = 1 - SSR * inv((y - mean(y) * ones(size(y)))' * (y - mean(y) * ones(size(y))));
var_epsilon = SSR * (size(y,1) - size(X,2))^(-1);
varcov_betas = (var_epsilon * inv(X' * X));
std_betas = [sqrt(varcov_betas(1,1)); sqrt(varcov_betas(2,2)); sqrt(varcov_betas(3,3))];
end
