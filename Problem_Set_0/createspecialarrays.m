% Manuel V. Montesinos -- Econometrics I. Problem Set 0
% -- Function for Exercise 5
% We define the desired matrices in terms of M (number or rows)
% and N (number of columns):
function[D,E,F] = createspecialarrays(M,N)
D = zeros(M,N)
E = 3*ones(M)
F = 5*eye(N)
end
