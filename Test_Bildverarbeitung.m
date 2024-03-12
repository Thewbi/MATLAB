clear all      % Workspace löschen, auch versteckte Variablen
close all      % Alle File handles schließen und alle Diagramme schließen
clc            % Shell löschen
format compact % Leerzeilen entfernen

b = imread("fehlersuchbild.jpg");

imshow(b);

% linke Seite geht von x = 0 bis

% Zählung in Matlab beginnt bei 1
%b1 = b(1:539, 1:475);
b1 = double( b(1:539, 1:475) );
b1 = b1 ./ max(max(b1));
%imshow(b1);

%b2 = b(1:539, 485:959);
b2 = double( b(1:539, 485:959) );
b2 = b2 ./ max(max(b2));
%imshow(b2);

b_delta = abs(b1 - b2);
imshow(b_delta);