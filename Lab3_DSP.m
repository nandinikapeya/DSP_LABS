% Finding Impulse response

clc; clear all; close all;

%Define the transfer function
%h(s) = s/(s + 1)^2
numerator = [1]; %Numerator coefficients
denominator = [1 2 1]; %Denominator coefficients

%Create the transfer function object
sys = tf(numerator, denominator);

%Define the Laplace variable
syms s;

%Define the Laplace-domain transfer function H(s)
H_s = poly2sym(numerator, s) / poly2sym(denominator, s);

%Compute the inverse Laplace transform to obtain the impulse response h(t)
impulse_response = ilaplace(H_s);

%Define the time vector associated with the impulse response
t = 0:0.1:10; %Adjust the time range as needed

%Evaluate the impulse response at the specified time points
impulse_response_numeric = double(subs(impulse_response, t));

%Plot the impulse response
stem(t, impulse_response_numeric);
title('Impulse Response');
xlabel('Time (seconds)');
ylabel('Amplitude');