%% Übung 5
%% 5.1 Vorbereitung
% Stellen Sie durch zwei geeignete Matlab-Befehle sicher, dass 
% - der Workspace initialisiert ist,
% - alle Figures (Diagrammfenster) geschlossen sind und
% - die Darstellung der Ergebnisse 'compact', also ohne zusätzliche
%   Leerzeilen erfolgt.
...

%%
% Im Folgenden ergänzen/erweitern Sie dieses Script. Sofern nicht anders
% angegeben, unterdrücken Sie die Ergebnis-Ausgabe (Strichpunkt am
% Zeilenende). Wenn Sie alle Übungsaufgaben bearbeitet haben, publizieren
% ('publishen') Sie das Skript als PDF. Geben Sie dieses PDF (und nur
% dieses PDF) zur Kontrolle ab (moodle/Laufwerk/email).

%% 5.2 Einlesen der Messdaten
% Die Strom/Spannungskennlinie einer beleuchteten Solarzelle wurde
% gemessen. Da es sich bei der Zelle um ein reales Bauelement handelt, sind
% neben der Diodeneigenschaften auch die Einflüsse parasitärer Widerstände
% erkennbar. Diese sollen im Folgenden ausgewertet werden.

%%
% Öffnen Sie die Datei _sz.txt_ und lesen Sie deren Inhalt in Matlab ein.
% Verwenden Sie hierzu die Funktionen _fopen()_, _textscan()_ und
% _fclose()_ so, dass Sie die Tabellenüberschriften in einer Zelle (_head_)
% und die Daten in einer Zelle (_data_) erhalten.
...

%% 5.3 Finden der relevanten Daten
% Durchsuchen Sie _head_ nach den Spaltenüberschriften _I(Rshunt)_ und
% _V(cell)_ um die Spaltennummern der relevanten Datenspalten zu erhalten.
...

%% 5.4 Extrahieren der relevanten Daten
% Extrahieren Sie aus der Zelle _data_ die Daten der Spalten _I(Rshunt)_ und
% _V(cell)_ in die Vektoren _I_ und _U_.
...

%% 5.5 Parallel und Reihenwiderstand
% Stellen Sie _I_ über _U_ in einem Diagramm dar, Linienfarbe:
% schwarz. Versehen Sie das Diagramm mit einem Raster (_grid_), 
% beschriften Sie das Diagramm.
...

%%
% Bestimmen Sie aus den ersten 10 Messwerten (negative U, negative I) den
% Parallelwiderstand _Rp_. 
...

%%
% Bestimmen Sie aus den letzen 20 Messwerten (positive U, positive I) den
% Reihenwiderstand _Rs_.
...

%%
% Markieren Sie zur besseren Dokumentation die zur Ermittlung der 
% Widerstände verwendeten Datenpunkte rot, bzw. blau (_hold_, _plot_ ).
...

%%
% und fügen Sie eine Legende hinzu.
...

%% 5.6 Auswertung Solarzelle
% Als Solarzelle arbeitet der untersuchte Aufbau nur im IV. Quadranten.
% Finden Sie heraus, welche Indizes die im IV. Quardanten liegenden Datenpunkte  
% haben (_find_, _min_ ). Extrahieren Sie die genannten Spannungen und 
% Ströme in zwei Vektoren.

%%
% HINWEIS: Die Schnittpunkte mit den Achsen sollten noch Teil des Diagrammes
% sein, d.h. der erste Punkt sollte 'gerade noch' im III., der letze Punkt
% schon im I. Quadranten liegen.
...

%%
% Stellen Sie die extrahierten Daten (wieder I über U) in einem neuen 
% Diagramm dar (_figure_). Farbe: schwarz.
...

%%
% Ermitteln Sie die Leerlaufspannung und den Kurzschlussstrom der
% Solarzelle. Im Rahmen dieser Auswertung genügt es, die minimalen 
% Strom- bzw. Spannungsbeträge zu ermitteln. Beträge!
...

%%
% Markieren Sie Leerlaufspannung und Kurzschlussstrom im Diagramm mit zwei
% unterschiedlichen Markern (_hold_, _plot_, rot).
...

%%
% Berechnen Sie die von der Solarzelle abgegebene Leistung. Diese ist im
% IV. Quadranten negativ und ist damit, in physikalischem Sinn, eine
% abgegebene Leistung. Plotten Sie die Leistung in das aktuelle Diagramm
% (_hold_) und passen Sie die Beschriftung der Y-Achse an.
...

%%
% Bestimmen Sie jetzt die maximale abgegebene Leistung, also, weil neagtiv,
% das Leistungsminimum. Finden Sie erst den zugehörigen Index, dann die
% Leistungs-, Strom- und Spannungwerte.
...

%%
% Markieren Sie den Punkt der maximalen Leistung (Arbeitspunkt) auf der
% Leistungskurve (roter Kreis). 
...

%%
% Berechnen Sie nun den Lastwiderstand, mit der die Solarzelle betrieben
% werden muss, damit sich der Arbeitspunkt einstellt. Stellen Sie die
% Widerstandsgerade im Diagramm dar.
...

%%
% Zeichnen Sie, ausgehend vom Punkt der maximalen Leistung, eine 
% gestrichelte Senkrechte nach unten. Markieren Sie den Anfang der Lini 
% und den Schnittpunkt mit der U-I-Kennlinie mit einem roten Kreis. 
% Passen Sie die Legende so an, dass die blau gestrichelte Linie nicht in 
% der Legende erscheint.
...

%%
% Berechnen Sie aus den gefundenen Daten für Leerlaufspannung,
% Kurzschlussstrom und maximaler Leistung den Füllfaktor.
...

%% 5.7 Numerische Ergebnisse
% Geben Sie, mit _fprintf_ alle bestimmten Zahlenwerte aus. Achten Sie auf
% eine vernünftige Zahl von Nachkommastellen und die Angabe der korrekten
% Zehnerpotenz und Einheit.
...


