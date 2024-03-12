clear all      % Workspace löschen, auch versteckte Variablen
close all      % Alle File handles schließen und alle Diagramme schließen
clc            % Shell löschen
format compact % Leerzeilen entfernen

syms x

% Funktion (kleines Ypsilon)
y = sin(x)

% Anzeige
%ezplot(y)

dy_dx = diff(y, x)
Y = int(y, x) % Stammfunktion (großes Ypsilon)

Y_bestimmt = int(y, x, 0, pi)
Y_bestimmt = int(y, x, 0, 2*pi)

Ueff = sqrt ( 1 / (2 * pi) * int(y^2, x, 0, 2*pi) )
Ueff = eval(Ueff)