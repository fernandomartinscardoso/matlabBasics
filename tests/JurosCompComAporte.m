clear all
clc

% Montante final:
F = 660;

% Valor inicial:
P = 150;

% Aporte:
M = 70;

% Número de períodos:
n = 7;

fi = @ (i) F-P*(1+i)^n-M*((1+i)^n-1)/i;
[i] = solve(fi);
i_calc = double(i);

for m = 1:n
    sprintf('A taxa é igual a: %.3f+%.3fi \n',real(i_calc(m)),imag(i_calc(m)))
end