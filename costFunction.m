function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

m = length(y); % number of training examples

% Compute cost.
coefficient = 1/m;
h = sigmoid(X * theta); % (m x (n+1)) * ((n+1) x 1) = (mx1)
y0Cost = y' * log(h); % (1 x m) * (m x 1) = (1 x 1)
y1Cost = (1-y)' * log(1-h); % (1 x m) * (m x 1) = (1 x 1)
J = -coefficient * (y0Cost + y1Cost);

% Compute partial derivatives, and save them in grad.
grad = coefficient * X' * (h-y); % ((n+1) x m) * (m x 1) = ((n+1) x 1)

end