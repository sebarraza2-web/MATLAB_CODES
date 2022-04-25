clc
clear all
k = 8.617e-5;
T = 300;
ni = 1.078e10; %% Sillicon
e_r = 11.9;
e_o = 8.85e-14;
q = 1.602e-19;
e_s = e_r * e_o;

Na = 78e16; %% parameters to change
Nd  = 54e16; %% parameters to change

Vbi = k*T*log((Na*Nd)/ (ni^2)); %% built-in potential
format shortE
%%display(Vbi);

W = sqrt(((2*e_s*Vbi) / q)*((Na + Nd)/ (Na*Nd))); %% depletion width
format shortE
%%display(W);

X_p = (W*Nd) / (Na+Nd) ;
E_max = (-q*Na*X_p) / e_s; %% maximum electric field
format shortE
%%display(E_max);

C = e_s / W; %% depletion capacitance
format shortE
%%display(C);
