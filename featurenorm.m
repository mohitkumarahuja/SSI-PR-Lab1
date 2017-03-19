function [Xn, mu, sigma] = featurenorm(X)

sigma = std(X); % Standard Deviation of feature column
mu = mean(X);   % Mean of feature column

Xn = (X - mu) ./ sigma; % Normalizing columns 

end
