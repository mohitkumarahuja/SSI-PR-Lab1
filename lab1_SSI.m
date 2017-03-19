% Lab 1 (SSI)

%%%% Mohit Kumar Ahuja %%%%
   %%%%%%   MSCV  %%%%%%


clear 
clc
close all

%% Ques 1

load('lab1data1.txt');
x = lab1data1(:,1); % x = population of city
y = lab1data1(:,2); % y = profit
plotdata(x,y)
w = LinearRegression(x,y); % we get the value of Wo and W1
pridiction1_Ques1 = 10000*(w(1,1)+w(2,1)*3.5) % Population as 35000
pridiction2_Ques1 = 10000*(w(1,1)+w(2,1)*7.0) % Population as 70000

%% Ques 2

load('lab1data2.txt');
x = lab1data2(:,1:2); % In x = two features are there now : 2 columns 
                      % x1 = size of house, x2 = no of bedrooms
y = lab1data2(:,3);   % y = price of house

w = LinearRegression(x,y); % we get value of w0, w1, w2
[a, b, c]=featurenorm(x); % normalized features are saved in a

w1 = LinearRegression(a,y) % Normalized W

d = [1, (1650-b)/c, (3-b)/c]'; % normalizing prediction : b = mean, c = std

Prediction_Ques2 = (w1)' * d  % Prediction for 1650 sq feet, 3 bed room


%% Ques 3

a = [ones(size(a,1),1) a];
w = zeros(size(a,2),1);

alpha = 0.3;         % Learning Rate
NIter = 50;         % Number of Iterations
w = gradientDescent(a,y,w,alpha,NIter) 

gh = [1, (1650-b)/c, (3-b)/c]'; % Normalizing prediction : b = mean, c = std
Prediction_Ques3 = (w)' * gh    % Prediction for 1650 sq feet, 3 bed room

