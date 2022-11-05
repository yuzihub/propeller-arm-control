close all

Ts = 0.01; % sampling time
N = 20; % derivative filter coeff.

% system parameters are derived from previous experimental results
a = 39.16; % system parameter a
thetaS = 89.9*2*pi/360;
g = 1566.4; % system parameter g
b = (g*sin(thetaS))*2*pi/360; % system parameter b
c = -g*cos(thetaS)-g*sin(thetaS)*thetaS*360^2/(4*pi^2); % system parameter c
beta = 0.1449; % rotational friction coefficient
z = zpk('z',Ts); % zero pole gain model

mdtopsn = (Ts^2*a*z^(-2))/(1+(beta*Ts-2)*z^(-1)+z^(-2)*(1-b*Ts^2-beta*Ts)); % plant transfer function



Kd_Kp = 0.3; % Kd/Kp
Ki_Kp = 1.2; % Ki/Kp
%conpd = 1 + Kd_Kp*(1-z^(-1))/Ts;
%conpd = (1 + Kd_Kp*(1-z^(-1))/Ts) + Ki_Kp*Ts*z^(-1)/(1-z^(-1))); % PID control transfer function without filtered derivative
conpd = (1 + Kd_Kp*(N/(1+N*Ts*(1/(z-1)))) + Ki_Kp*Ts*z^(-1)/(1-z^(-1))); % PID control transfer function with filtered derivative

rltool(mdtopsn, conpd); % root locus tool for stability analysis

