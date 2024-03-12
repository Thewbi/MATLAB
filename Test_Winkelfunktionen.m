clear all      % Workspace löschen, auch versteckte Variablen
close all      % Alle File handles schließen und alle Diagramme schließen
clc            % Shell löschen
format compact % Leerzeilen entfernen

syms Phi
a = sin( atan(Phi) );
pretty(a)

da_dPhi = diff(a, Phi)
pretty(da_dPhi)