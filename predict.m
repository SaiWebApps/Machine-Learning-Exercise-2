function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic 
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a 
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples
h = sigmoid(X * theta); % predictions/hypotheses (m x 1)
p = (h >= 0.5); % 0 if h(i) < 0.5, 1 if h(i) >= 0.5 for i = 1:m

end