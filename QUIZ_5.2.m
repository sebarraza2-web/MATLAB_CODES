% %Calculate the current in units of (Amps) in a MOSFET assuming the parameters given below.
% 
% Device Parameters
% Semiconductor doping: NA = 8 × 10^16 (cm-3)
% Threshold voltage: VT = 0.7346 (V)
% Minority carrier mobility: µ = 822 (cm2/V•sec)
% Channel length: L = 1 × 10^-4 (cm)
% Channel width: Z = 5 × 10^-4 (cm)
% SiO2 thickness: d = 30 × 10^-7 (cm)
% Bias Parameters
% Gate voltage: VG = 2.8
% Drain voltage: VD = 0.9
% Temperature: 300K

%% variables to change, depending on question
NA=6e16;
VT=0.5441;
un=898; %Minority carrier mobility
L=1e-4;
Z=5e-4;
d=30e-7;
VG=1.7;
VD=3;
T=300;

Eg=1.12;
Eo = 8.85418e-14; %permiability of air
Ersi = 11.9; %permiability for silicon
Eox = 3.9*Eo; %gate oxide
Co=Eox/d;

VD_SAT=VG-VT;

%% Equations
if VD<VD_SAT
ID=((Z*un*Co)/(2*L))*(2*(VG-VT)*VD-(VD.^2))

else
ID=((Z*un*Co)/(2*L))*(VG-VT).^2
end
