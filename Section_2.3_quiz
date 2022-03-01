clc 
clear all

beta = 1e-10;

Nd = 3e14;
Na = 0;
GL = 2e11;
ni = 1.078e10;
time = 3;

nno = Nd;
pno = Na;


if Nd > Na %%ntype
    pno = ni^2 / nno;
    tao_p = 1 / (beta*Nd);
    delta_p = tao_p * GL;
    p = pno + delta_p;
    p_t = pno + delta_p*exp(-time);
    %display(delta_p) %delta_p
    %display(p) %steady-state minority carrier concentration
    display(tao_p) % minority carrier lifetime 
    %display(p_t) %minority carrier concentration with time
else %%ptype
    nno = ni^2 / pno;
    tao_n = 1 / (beta*Na);
    delta_n = tao_n * GL;
    n = nno + delta_n;
    n_t = nno + delta_n*exp(-time);
    %display(delta_n) %delta n
    %display(n) %steady-state minority carrier concentration
    display(tao_n) % minority carrier lifetime
    %display(n_t) %minority carrier concentration with time
end


