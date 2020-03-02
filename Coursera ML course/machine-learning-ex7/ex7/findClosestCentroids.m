function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
m = numel(X(:,1));
% distnace matrix gonna hold in each row the distance of i'th example from each centroid
distance = zeros(m,K);
for k=1:K
  d = bsxfun(@minus,X,centroids(k,:));%}
  distance(:,k) = sum(d.^2,2);        %} ==> ||X(i) - µ(k)||²
end
%Get the index of minimum in each row(closest cluster to i'th element) and assign it to idx
  [~, idx] = min(distance');





% =============================================================

end

