% P1 & P2
% P2: function appears to be (output signal = 1) for all values after 
% t = 5s
time = 0:0.01:10;
delay = 5;
figure;
plot(time, heaviside(time - delay));
title('P1 & P2: Unit Step Function with Delay of 5 Seconds');
xlabel('time (s)');
ylabel('output signal');
ylim([-0.1 1.1]);

% P3
A = 1;
T = 0.1;
k = 1:1:100;
alpha = 0.8;
figure;
stem(k*T, A*alpha.^(k*T));
title('P3: Real Exponential Sequence with Alpha = 0.8');
xlabel('time (s)');
ylabel('output signal');

% P4
alpha = 1.6;
figure;
stem(k*T, A*alpha.^(k*T));
title('P4: Real Exponential Sequence with Alpha = 1.6');
xlabel('time (s)');
ylabel('output signal');

% P5
A = 1;
T = 0.1;
k = 1:1:50;
alpha = 0;
figure;
stem(k*T, A*alpha.^(k*T));
alpha = 1;
k = 50:1:100;
hold on;
stem(k*T, A*alpha.^(k*T), 'Color', [0 0.4470 0.7410]);
title('P5: Real Exponential Sequence of P1 & P2');
xlabel('time (s)');
ylabel('output signal');
ylim([-0.1 1.1]);

% P6 & P7
T = 1;
k = 1:1:25;
figure;
stem(k*T, cos(pi/4*k*T));
hold on;
stem(k*T, cos(pi/4*((k*T)+8)), 'Color', [0 0.4470 0.7410]);
title('P6 & P7: Discrete Time Sinusoids');
xlabel('time (s)');
ylabel('output signal');

% P8
figure;
stem(k*T, cos(3*pi/8*k*T));
hold on;
stem(k*T, cos(3*pi/8*((k*T)+16)), 'Color', [0 0.4470 0.7410]);
title('P8: Discrete Time Sinusoid (bad sampling locations)');
xlabel('time (s)');
ylabel('output signal');

%k = 1:0.01:25
%plot(k*T, cos(3*pi/8*((k*T)+16)), 'Color', [0 0.4470 0.7410]);

% P9: P7 function appears to have higher frequency which makes since
% because (1/4)pi < (3/8)pi

% P10: P7 function appears period sooner than P8 function because of the
% sampling interval, however, P8 is actually more periodic than P7 based on
% the cos functions

