function L = costfn(x,y,w)

N = size(x,1); % N = number of rows of x
J = [];        % Defining empty matrix(vector) J
for k=1:N
    
    J = [J; ((w'*x(k,:)'-y(k))*x(k,:))]; 
    
end

L = (1/N) * sum(J);
L = L';

end
