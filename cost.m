function J = cost(x,y,w)

N = size(x,1); % N = number of rows of x
for i=1:N
    
    J(i) = (w'*x(i,:)'-y(i))^2; % Defination of Cost function
    
end

J = (1/(2*N)) * sum(J);
end