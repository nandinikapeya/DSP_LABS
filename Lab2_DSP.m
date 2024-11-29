%Lab report
%Aim:
%Program:
%Output:

%Aim: Generation of discrete time sequence of
%1) unit impulse signal
%2) unit step signal
%3) sin signal
%4) cosine
%5) sawtooth

%Impulse signal
t=[-1:0.03:1];
impulse=t==0;
subplot(3,2,1);
stem(t,impulse);
title('Impulse function');
xlabel('Time');
ylabel('Amplitude')

%Unit step
t=[-1:0.03:1];
unitstep=t>=0;
subplot(3,2,2);
stem(t,unitstep);
title('Unitstep function');
xlabel('Time');
ylabel('Amplitude')

%sin signal
t=[0:0.03:1];
y= 2*sin(2*pi*2*t);
subplot(3,2,3);
stem(t,y);
title('sinewave');
xlabel('Time');
ylabel('Amplitude')

%Cosine
t=[0:0.03:1];
y= 2*cos(2*pi*2*t);
subplot(3,2,4);
stem(t,y);
title('cosine');
xlabel('Time');
ylabel('Amplitude')

%sawtooth
t=[0:0.03:1];
y= 2*sawtooth(2*pi*2*t);
subplot(3,2,5);
stem(t,y);
title('cosine');
xlabel('Time');
ylabel('Amplitude')