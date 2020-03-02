function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%cost function (regularized)
h = sigmoid(X * theta);
theta(1) = 0;
J = 1/m*sum((-y'*log(h))-(1-y)'*log(1-h))+(lambda/(2*m))*sum(theta.^2);

%gradient (regularized)

%theta(1) = 1/m * sum(X'*(h-y)); I followed the equation in the assignement and andrewe's course but Tom in his tutorial asked to set theta(1) to 0 to exclude it from grad calc
grad = (1/m * (X' * (h-y)))+(lambda/m)*theta;




% =============================================================

end