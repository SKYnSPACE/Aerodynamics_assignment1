%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MATLAB Plot for the Problem 2.21
% Seongheon Lee, AE Dept., skynspace@kaist.ac.kr
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


clc;
clear all;
close all;

t=0:0.05:3;
t0=0;

%% PATHLINE EQ.
x_t = exp((t.^2 - t0^2)/8);
y_t = 2 + 1/3 .* (t - t0);

disp('Final Position of x(3),y(3)');
x_t(length(x_t))
y_t(length(y_t))

x=1:0.0001:3.0802;
y=sqrt(8/9*log(x))+2;

%% STREAKLINE EQ. 
%%% For the streakline, t=3 and t0 changes from 0 to 3
%%% In the following equations, t is actually the t0.
x_t2 = exp((9 - t.^2)/8);
y_t2 = 3-1/3.*t;
y2 = 3 - sqrt((9-8.*log(x))/(9)); % Explicit Form.

%% Plotting
hold on;
plot(x_t,y_t,'*');
plot(x_t2,y_t2,'*');
plot(x,y,'-')
plot(x,y2,'-')
grid on;
title('Pathline & Streakline')
xlabel('x[m]');
ylabel('y[m]');
legend('Pathline', 'Streakline', 'Location','southeast')