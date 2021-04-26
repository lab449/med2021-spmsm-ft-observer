clear;
%% Motor parameters
R = 0.39;
L = 1.4e-3;
J = 0.0015;
np = 8;
lm = 0.032;

S = [0, -1; 1, 0];  % Skew matrix

%% Flux observer param
flux_initial = [1; 1];
nu = [50, 550];                 % flux filter paramters
gamma = 50;
G = [gamma, 0; 0, gamma];
rho_1 = 0.9;

%% Velocity observer and torque estimator parameters

mu = 100;               % velocity and torue model filter
gamma_L = 10000;        % torque estimatro gain
gamma_w = 10000;        % speed observer gain

rho_2 = 0.4;            % threshold value for load torque
rho_3 = 0.7;            % threshold value for rotor speed