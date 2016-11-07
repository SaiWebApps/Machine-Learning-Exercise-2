function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

m = length(y); % number of training examples
n = length(theta); % number of features

% Compute J and grad without regularization.
[J, grad] = costFunction(theta, X, y);

% Regularize logistic regression cost function.
theta1n = theta(2:n); % theta_1 to theta_n (nx1)
theta1nSquared = theta1n' * theta1n; % sum of squares for theta_1 to theta_n
J = J + (lambda / (2*m)) * theta1nSquared;

% Regularize partial derivatives.
grad = grad + [0; (lambda/m) * theta1n];

end