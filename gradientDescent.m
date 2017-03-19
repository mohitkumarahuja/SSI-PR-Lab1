function w = gradientDescent(x, y, w, alpha, NIter)
    
J = []; % Defining empty matrix(Vector) J
for npn = 1:NIter % Loop will execute till number of Iterations(NIter)
    

    
    w = w - alpha*costfn(x,y,w); 
    J = [J cost(x,y,w)];   % Updating J matrix after every iteration
    
end
    
xx = 1:NIter;
figure(2);
plot(xx,J);
title('Gradient Descent');
xlabel('Number of Iterations');