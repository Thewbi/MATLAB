clear all      % Workspace löschen, auch versteckte Variablen
close all      % Alle File handles schließen und alle Diagramme schließen
clc            % Shell löschen
format compact % Leerzeilen entfernen

figure

p = plot([1 2 3 4 5 6], [0 3 1 6 4 10]);
%p.Color = '#00841a';
p.Color = '#FF0000';
p.LineStyle = '--';
p.Marker = '*';

hold on

x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
y = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

plot(x, y, "o")

hold off

x = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
y = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0];

plot(x, y, ":")
