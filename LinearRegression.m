function w =LinearRegression(X,y)
Q = [ones(size(X,1),1) X]; % Design matrix

w = inv(Q'*Q)*Q'*y; % Linear Least Square

end