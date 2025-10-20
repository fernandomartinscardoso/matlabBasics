% Derivada de funcoes de transferencia
clear all
clc
syms x

disp('Calculo de derivadas de funcoes racionais com polinomios')
num = input('Insira o vetor de coeficientes do numerador: ')
n = length(num);

den = input('Insira o vetor de coeficientes do denominador: ')
d = length(den);

nu = 0;
while n > 0
    nu = nu + num(n)*x^(n-1);
    n = n-1;
end

de = 0;
while d > 0
    de = de + den(d)*x^(d-1);
    d = d-1;
end

disp('Funcao original: ')
fx = nu/de

disp('Derivada da funcao: ')
dfx = diff(fx,x)
    