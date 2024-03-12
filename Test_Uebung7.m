% workspace löschen, auch versteckte Variablen
clear all

% alle File handles schließen und alle Diagramme schließen
close all

% Leerzeilen entfernen
format compact

% Shell löschen
clc



% Excercise 7 - Strahlung Radioaktiver Zerfall

% Messwerte, d Abstände und R sind die Zerfälle pro Sekunde
d = [ 30:10:100 ]; % mm distance
R = [ 423 243 163 115 85 71 54 41 ]; % 1/s Zählrate, Zerfälle pro Sekunde

figure
plot(d, R, '.');
xlabel('Distanz /mm');
ylabel('Zählrate 1/s');
grid on

% Linearisierung der Kurve
% R ~ 1/d^2 ---> d^2 = 1/R ---> d ~ 1 / sqrt(R)
R_lin = sqrt(1./R);

figure
plot(d, R_lin, '.');
xlabel('Distanz /mm');
ylabel('Zählrate Wurzel(1/R) 1/s');
grid on

% Lineare Regression
% Fitte in die Punktmenge d, R_lin ein Polynom vom Grad 1
p = polyfit(d, R_lin, 1);

% Lineare Funktion berechnen
R_test = polyval(p, d);

% Darstellung der Linearfunktion im selben Diagramm mit den Punkten
hold on
plot(d, R_test, '-');
%legend('Messwerte', 'Regression');
legend('Messwerte', 'Regression', 'Location', 'southeast');

% Achsen skalieren, damit die Legende nicht die Kurve übermalt
axis([30 100 0 0.2])