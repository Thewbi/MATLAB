% workspace löschen, auch versteckte Variablen
clear all

% alle File handles schließen und alle Diagramme schließen
close all

% Leerzeilen entfernen
format compact

% Shell löschen
clc



% %x = 0.004513; % Ergebnis wäre "4.513 m"
% x = 432.10;
% %x = 4000.00;
% 
% %ex = [ 9 6 3 0 -3 -6 -9 -12 ] % Giga, Mega, Kilo, 0, milli, micro, nano, pico
% ex_vec = [ 9 : -3 : -12 ];
% 
% teiler_vec = 10 .^ ex_vec;
% 
% test_vec = x ./ teiler_vec;
% 
% idx = find(test_vec > 1 & test_vec < 1000);
% 
% %test(idx)
% 
% prefix = 'GMK mµnp';
% %prefix(idx)

[lul lil] = scientific_prefix(4000.23)




