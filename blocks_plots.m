clear all
close all
clc

Data = load('datas/travas/control_signal.mat');
signal_control = Data.control_signal;
% plot(signal_control(:,1),signal_control(:,2));
%%
Data = load('datas/travas/htank1.mat');
htank1 = Data.htank1;
% plot(htank1(:,1),htank1(:,2));
%%
Data = load('datas/travas/htank2.mat');
htank2 = Data.htank2;
% plot(htank2(:,1),htank2(:,2));
%%
Data = load('datas/travas/motor_voltage.mat');
motor_voltage = Data.motor_voltage;
% plot(motor_voltage(:,1),motor_voltage(:,2));
%%
Data = load('datas/travas/setpoint.mat');
setpoint = Data.setpoint;
%%
start_setpoint30 = find(setpoint(:,2)==30);
x1 = (start_setpoint30(1))/10;
%%
start_block30 = find(motor_voltage(:,2)~=0 & motor_voltage(:,2)~=4);
x2 = (start_block30(1))/10;
%%
start_block30_2 = find(htank2(:,2)>=30);
x3 = (start_block30_2(1))/10;
%%
start_setpoint4 = find(setpoint(:,2)==4);
x4 = (start_setpoint4(1))/10;
%% Plots
figure
xs = [0 165];
hys = [-1 35];
cys = [-35 35];
mys = [-4.5 4.5];
%ax1 = subplot(2,2,1);
plot(htank1(:,1),htank1(:,2))
%title('Height Tank 1');
ylabel('Height(cm)');
xlabel('Time(s)');
xlim(xs)
ylim(hys);
hold on
plot([x1 x1],hys, '-k')
plot([x2 x2],hys, '--k')
plot([x3 x3],hys, ':k')
plot([x4 x4],hys, '-.k')
legend({'h_1(t)','Setpoint 30 cm in Tank 2', 'Lock 30 cm in Tank 1', 'Lock 30 cm in Tank 2', 'Setpoint 4 cm in Tank 2'}, 'Location','northwest')
%%
% ---------------------
figure
%ax2 = subplot(2,2,2);
plot(htank2(:,1),htank2(:,2))
%title('Height Tank 2');
ylabel('Height(cm)');
xlabel('Time(s)');
xlim(xs)
ylim(hys)
hold on
plot(setpoint(:,1),setpoint(:,2), 'r')
plot([x1 x1],hys, '-k')
plot([x2 x2],hys, '--k')
plot([x3 x3],hys, ':k')
plot([x4 x4],hys, '-.k')
legend({'h_2(t)','Setpoint(t)','Setpoint 30 cm in Tank 2', 'Lock 30 cm in Tank 1', 'Lock 30 cm in Tank 2', 'Setpoint 4 cm in Tank 2'}, 'Location','northwest')
% ---------------------
%ax3 = subplot(2,2,3);
figure
plot(signal_control(:,1),signal_control(:,2));
%title('Signal Control');
ylabel('Error(cm)');
xlabel('Time(s)');
xlim(xs)
ylim(cys)
hold on
plot([x1 x1],cys, '-k')
plot([x2 x2],cys, '--k')
plot([x3 x3],cys, ':k')
plot([x4 x4],cys, '-.k')
legend({'e(t)','Setpoint 30 cm in Tank 2', 'Lock 30 cm in Tank 1', 'Lock 30 cm in Tank 2', 'Setpoint 4 cm in Tank 2'}, 'Location','northwest')
% ---------------------
%ax4 = subplot(2,2,4);
figure
plot(motor_voltage(:,1),motor_voltage(:,2));
%title('Motor Voltage');
ylabel('Voltage(V)');
xlabel('Time(s)');
xlim(xs)
ylim(mys)
hold on
plot([x1 x1],mys, '-k')
plot([x2 x2],mys, '--k')
plot([x3 x3],mys, ':k')
plot([x4 x4],mys, '-.k')
legend({'x(t)','Setpoint 30 cm in Tank 2', 'Lock 30 cm in Tank 1', 'Lock 30 cm in Tank 2', 'Setpoint 4 cm in Tank 2'}, 'Location','northwest')