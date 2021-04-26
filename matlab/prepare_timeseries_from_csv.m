data = csvread('csv/data5.csv',1,0);
T = 2.0000e-04;
t = (0:length(data)-1)*T;

q = data(:, 1)/256;
w = data(:, 2)/256;
i = data(:, 3:4)/256;
u = data(:, 5:6)/256;

voltage = timeseries(u, t);
current = timeseries(i, t);
ang     = timeseries(q, t); 
vel     = timeseries(w, t);