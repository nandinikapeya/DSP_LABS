%Clc;
%Clear all;
%Close all;
t = -2:0.05:2;
x=input('enter the input number');
fr1=697; 
fr2=770;
fr3=852;
fr4=941;
fc1=1209;
fc2=1336;
fc3=1477;
fc4=1633;
signals = [
    sin(2*pi*fr4*t) + sin(2*pi*fc2*t); % 0
    sin(2*pi*fr1*t) + sin(2*pi*fc1*t); % 1
    sin(2*pi*fr1*t) + sin(2*pi*fc2*t); % 2
    sin(2*pi*fr1*t) + sin(2*pi*fc3*t); % 3
    sin(2*pi*fr2*t) + sin(2*pi*fc1*t); % 4
    sin(2*pi*fr2*t) + sin(2*pi*fc2*t); % 5
    sin(2*pi*fr2*t) + sin(2*pi*fc3*t); % 6
    sin(2*pi*fr3*t) + sin(2*pi*fc1*t); % 7
    sin(2*pi*fr3*t) + sin(2*pi*fc2*t); % 8
    sin(2*pi*fr3*t) + sin(2*pi*fc3*t); % 9
    sin(2*pi*fr4*t) + sin(2*pi*fc1*t); % *
    sin(2*pi*fr4*t) + sin(2*pi*fc3*t); % #
];

% Map input to signal and plot 
if x >= 0 && x <= 12 
    plot(t, signals(x + 1, :));  % Plot the DTMF signal 
    xlabel("Time (t)"); 
    ylabel("Amplitude"); 
    title(['DTMF Signal for Key ', num2str(x)]); 
else 
    disp("Enter a correct input (0-9, 11, 12)"); 
end 