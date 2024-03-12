% workspace löschen, auch versteckte Variablen
clear all

% alle File handles schließen und alle Diagramme schließen
close all

% Leerzeilen entfernen
format compact

% Shell löschen
clc




%syms c h k T l
%M = 2*pi*c^2*h / (l^5 * (exp((c*h) / (l*T*k)) - 1))
%pretty(M)
%latex(M)




% Aufgabe 17

% temperatur
tempInKelvin = 1500;

% lambda wavelength is 500nm to 3000nm
lambda = 1e-9 * linspace(500, 3000);
[M maxM lambdaMaxM] = PlanckFun(tempInKelvin, lambda);
plot(lambda, M, '.');

% temperatur
tempInKelvin = 2000;

% lambda wavelength is 500nm to 3000nm
lambda = 1e-9 * linspace(500, 3000);
[M maxM lambdaMaxM] = PlanckFun(tempInKelvin, lambda);
hold on
plot(lambda, M, '.');

% temperatur
tempInKelvin = 2300;

% lambda wavelength is 500nm to 3000nm
lambda = 1e-9 * linspace(500, 3000);
[M maxM lambdaMaxM] = PlanckFun(tempInKelvin, lambda);
hold on
plot(lambda, M, '.');

xlabel('Wellenlänge /m')
ylabel('M(\lambda, T)/ W m^{-2}')
grid on

hold on
plot(lambdaMaxM, maxM, 'rO')





