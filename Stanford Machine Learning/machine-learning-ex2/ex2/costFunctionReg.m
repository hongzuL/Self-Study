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
grad1 = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
costSum1=0;
costSum2=0;
gradSum1=0;
n=length(X(1,:));

for i=1:m
    xi = X(i,:);
    yi = y(i,:);
    costSum1 = costSum1 + ((-1)*yi*log(sigmoid(theta'*xi')) - (1-yi)*log(1-sigmoid(theta'*xi')));
    gradSum1 = gradSum1 + ((sigmoid(theta'*xi')-yi).*xi');
end
temp = (lambda*theta)/m;
for j=1:n
    if(j>=2)
        costSum2 = costSum2 + power(theta(j),2);
        grad1(j)=gradSum1(j)/m+temp(j);
    else
        grad1(j) = gradSum1(j)/m;
    end
end
J = costSum1/m + (lambda*costSum2)/(2*m);

grad = grad1;
save('cost')
% =============================================================

end
