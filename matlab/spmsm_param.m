clear;
%% Motor Param
R = 8.875;
L = 40.03e-3;
J = 59e-6;
np = 5;
lm = 0.2086;
f = 0.00275;

S = [0, -1; 1, 0];  % Skew matrix

%% Control system parameters

% For velocity w
P_w = 0.4;
I_w = 50;

% For currents Id and Iq
P_d = 5;
I_d = 1;
P_q = 5;
I_q = 1;

%% Flux observer param
flux_initial = [1; 1];
nu = [50, 550];
gamma = 0.01;
G = [gamma, 0; 0, gamma];
rho_1 = 0.9;

%% Velocity observer param
mu = 800;               % velocity and torue model filter
gamma_L = 20000;        % torque estimatro gain
gamma_w = 30000;        % speed observer gain

rho_2 = 0.4;            % threshold value for load torque
rho_3 = 0.7;            % threshold value for rotor speed
