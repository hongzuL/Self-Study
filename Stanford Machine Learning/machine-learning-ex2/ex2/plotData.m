function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
x1 = X(:,1);
x2 = X(:,2);
positiveX1 = x1(y==1);
negativeX1 = x1(y==0);
positiveX2 = x2(y==1);
negativeX2 = x2(y==0);
plot(positiveX1,positiveX2, 'k+','LineWidth', 2, ...
     'MarkerSize', 7);
 plot(negativeX1,negativeX2, 'ko','MarkerFaceColor', 'y', ...
     'MarkerSize', 7);







% =========================================================================



hold off;

end
