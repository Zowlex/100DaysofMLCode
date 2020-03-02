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
%find indexes of positive and negative y's
idPos = find(y==1);
idNeg = find(y==0);

%pos: positive examples from training set (meaning the student passes)
pos = X(idPos,1:2);
%neg: negative examples from training set (meaning the student fails)
neg = X(idNeg,1:2);

plot(pos(:,1),pos(:,2),"k+","LineWidth",3);
plot(neg(:,1),neg(:,2),"yo","LineWidth",3);










% =========================================================================



hold off;

end
