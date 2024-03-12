% workspace löschen, auch versteckte Variablen
clear all

% alle File handles schließen und alle Diagramme schließen
close all

% Leerzeilen entfernen
format compact

% Shell löschen
clc

P = [1 0] % polynom 1*x^1 + 0*x^0
y = polyval(P, [1 0])

figure
plot([1 0], y, '-')


P2 = [4 0 0 8]
x = -2:0.1:2
y = polyval(P2, x)

figure
plot(x, y, 'o')