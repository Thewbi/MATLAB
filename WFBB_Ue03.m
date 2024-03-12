%% �bung 3
%% 3.01 Vorbereitung
% Stellen Sie durch zwei geeignete Matlab-Befehle sicher, dass 
%%
% - der Workspace initialisiert ist,
%%
% - alle Figures (Diagrammfenster) geschlossen sind und
%%
% - die Darstellung der Ergebnisse 'compact', also ohne zus�tzliche
%   Leerzeilen erfolgt.
...

%%
% Im Folgenden erg�nzen/erweitern Sie dieses Script. Sofern nicht anders
% angegeben, unterdr�cken Sie die Ergebnisausgabe (Strichpunkt am
% Zeilenende). Wenn Sie alle �bungsaufgaben bearbeitet haben, publizieren
% ('publishen') Sie das Skript als PDF. Geben Sie dieses PDF (und nur
% dieses PDF) zur Kontrolle ab (moodle/Laufwerk/email).

%% 3.02 Messdaten
% An bis zu vier Drahtst�cken, in Reihen- und Parallelschaltung, wird eine 
% Spannung von 1 V angelegt und der dann flie�ende Strom gemessen.
% Die L�nge der Drahtst�cke ist 1 m, der Durchmesser betr�gt 0.4 mm.
figure
img = imread('Ue3.png');
imshow(img);
title('Messschaltungen');

%%

% Messspannung
U = 1; %V

% Drahtgeometrie
l = 1; %m
d = 0.4; %mm

% Messtabelle 
%               N*R/R   I/mA    Bemerkung
Messung =  [    4       60      % 4 St�cke in Reihe
                3       80      % 3 St�cke in Reihe
                2       117     % 2 St�cke in Reihe
                1       220     % 1 St�ck
                1/2     385     % 2 St�cke parallel
                1/3     516     % 3 St�cke parallel
                1/4     618 ];  % 4 St�cke parallel

%% 3.03 Datenextraktion
% Extrahieren Sie die Daten der Messtabelle in zwei Vektoren _N_ und
% _Imess_.
...

%% 3.04 Plot der Daten
% Plotten Sie die Str�me �ber dem Widerstandsfakotr N, ohne die einzelnen
% Datenpunkte durch Linien zu verbinden. Beschriften Sie
% das Diagramm aussagekr�ftig.
...

%% 3.05 Widerstandsberechnung
% Berechnen Sie aus der angelegten Spannung und den gemessenen Stromst�rken
% die Gesamtwiderst�nde _Rgem_ der Schaltungen in Ohm. 
...

%% 3.06 Teilwiderstand
% Berechnen Sie den Teilwiderstand der Drahst�cke durch Division der
% Gesamtwiderst�nde durch N. Berechnen Sie den Mittelwert (_R_) und die 
% zweifache Standardabweichung (_dR_).
...

%% 3.07 Ergebnis
% Geben Sie den Mittelwert _R_ und die zweifache Standardabweichung _dR_
% als Endergebnis an. Runden Sie hierzu zun�chst _dR_ auf zwei signifikante
% Stellen und runden Sie dann _R_ auf die selbe Zahl von Nachkommastellen
% wie _dR_. Verwenden Sie f�r _R_ und _dR_ den selben Exponenten!
...

%%
% Geben Sie das Endergebnis auch als Mittelwert mit relativem Fehler (in 
% Prozent, ohne Nachkommastellen) an.
...

%% 3.08 Alternative Auswertung
% Plotten Sie die Gesamtwiderst�nde aus Aufgabe 3.05 �ber dem 
% Widerstandsfaktor _N_, ohne die einzelnen Datenpunkte zu verbinden.
...

%% 3.09 Kurvenanpassung
% Benutzen Sie die Funktion _polyfit_ um die Gesamtwiderst�nde mit einer 
% Funktion erster Ordnung zu interpolieren. Lassen Sie sich von _polyfit_ 
% auch die Datenstrukltur _'S'_ zur sp�teren Fehlerabsch�tzung zur�ck geben
% (_help ployfit_).
% Geben die die Ergebnisfunktion an.
% Interpretieren Sie das Ergebnis (zun�chst ohne Ber�cksichtigung der 
% Struktur 'S').
...

%% 3.10 Plotten der Interpolationsfunktion
% Verwenden Sie die Funktion _polyval_ um eine Anzahl von Widerstandswerten
% der Interpolationsfunktion und deren abgesch�tze Fehler zu berechnen 
% (Datenstruktur _'S'_). Stellen Sie die Funktion im vorherigen Graphen dar
% (_hold_, _errorbar_).
...

%% 3.11 Fitting-Fehlerrechnung, einfach
% Bestimmen Sie aus dem ersten und dem letzen Datensatz der Kurvenanpassung
% die minimal und maximal m�gliche Steigung der Interpolationsfunktion.
% Bestimmen Sie daraus _dR_. Geben Sie die mittlere Steigung und die
% maximale Abweichung als Endergebnis an.
...

%%
% Geben Sie das Endergebnis auch als Mittelwert mit relativem Fehler (in 
% Prozent, ohne Nachkommastellen) an.
...

%% 3.12 Berechnen des spezifischen Widerstands
% Berechnen Sie aus dem mittleren Drahtwiderstand den spezifischen
% Widerstand des verwendeten Materials und bestimmen sie das Material
% durch eine Internet-Recherche.
...

