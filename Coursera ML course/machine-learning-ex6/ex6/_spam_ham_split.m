%load _data
load('spam_ham_data.m');
%number of elements
m = numel(y);
sel = randperm(m);
%Divide Train/Val 70%/30% split
sel_train = sel(1:floor(m * 0.7));
sel_val = sel(floor(m*0.7) + 1:end);
X_train = X(sel_train,:);
y_train = y(sel_train);
X_val = X(sel_val,:);
y_val = y(sel_val);
