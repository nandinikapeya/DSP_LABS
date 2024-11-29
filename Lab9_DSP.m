clc;
clear all;
close all;
% Example Usage
Fs = 100; % Sampling frequency
t = 0:1/Fs:1; % Time vector
x = sin(2*pi*100*t) + 0.5*sin(2*pi*200*t) + 0.2*sin(2*pi*300*t);
% Decimation
M = 2;
y_decimated = decimate_signal(x, M);
% Interpolation
L = 3;
y_interpolated = interpolate_signal(x, L);
% Plotting
subplot(3,1,1);
plot(t, x);
title('Original Signal');
subplot(3,1,2);
stem(y_decimated);
title('Decimated Signal');
subplot(3,1,3);
plot(y_interpolated);
title('Interpolated Signal');

% Function for Decimation
function y = decimate_signal(x, M)
% Ensure the length of the signal is a multiple of M
N = length(x);
L = floor(N/M)*M;
x = x(1:L);
% Decimation using downsample
y = downsample(x, M);
end

% Function for Interpolation
function y = interpolate_signal(x, L)
% Interpolation
N = length(x);
y = zeros(1, N * L);
y(1:L:end) = x;
end