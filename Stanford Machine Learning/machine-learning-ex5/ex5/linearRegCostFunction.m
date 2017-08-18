function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


costSum1=0;
costSum2=0;
gradSum1=0;
n=length(X(1,:));

for i=1:m
    xi = X(i,:);
    yi = y(i,:);
    costSum1 = costSum1 + ((xi*theta) - yi).^2;
    gradSum1 = gradSum1 + (xi*theta-yi).*xi';
end
for j=1:n
    if(j==1)
        grad(j)=gradSum1(j)/m;
    end
    if(j>=2)
        costSum2 = costSum2 + theta(j)^2;
        grad(j) = gradSum1(j)/m + (lambda*theta(j))/m;
    else
    end
end
J = costSum1/(2*m) + (lambda*costSum2)/(2*m);


%grad = gradSum1/m + (lambda.*theta)/m;









% =========================================================================

grad = grad(:);

end
