clear all
clc
figure
Data = load('datas/ondas/control_signal_degree.mat');
plot(Data.control_signal_degree.time,Data.control_signal_degree.signals.values);

% Title
title('Degree Wave')

% Axis X
xlabel('t (s)')
xlim([0 50])

% Aix Y
ylabel('Amplitude')
ylim([0 4.5])
%%
clear all
clc
figure
Data = load('datas/ondas/control_signal_random_wave.mat');
a = Data.control_signal_square;
plot(a(:,1),a(:,2));

% Title
title('Random Wave')

% Axis X
xlabel('t (s)')
xlim([0 120])

% Aix Y
ylabel('Amplitude')
ylim([0 4.5])
%%
clear all
clc
figure
Data = load('datas/ondas/control_signal_sawtooth.mat');
a = Data.control_signal_square;
plot(a(:,1),a(:,2));

% Title
title('Sawtooth Wave')

% Axis X
xlabel('t (s)')
xlim([0 80])

% Axis Y
ylabel('Amplitude')
ylim([0 4.5])
%%
clear all
clc
figure
Data = load('datas/ondas/control_signal_sine.mat');
a = Data.control_signal_square;
plot(a(:,1),a(:,2));

% Title
title('Sine Wave')

% Axis X
xlabel('t (s)')
xlim([0 70])

% Axis Y
ylabel('Amplitude')
ylim([0 4.5])
%%
clear all
clc
figure
Data = load('datas/ondas/control_signal_square.mat');
a = Data.control_signal_square;
plot(a(:,1),a(:,2));

% Title
title('Square Wave')

% Axis X
xlabel('t (s)')
xlim([0 50])

% Axis Y
ylabel('Amplitude')
ylim([0 4.5])