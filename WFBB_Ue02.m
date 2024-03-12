%% Übung 2
%% 2.1 Vorbereitung
% Stellen Sie durch zwei geeignete Matlab-Befehle sicher, dass 
%%
% - der Workspace initialisiert ist,
%%
% - alle Figures (Diagrammfenster) geschlossen sind und
%%
% - die Darstellung der Ergebnisse 'compact', also ohne zusätzliche
%   Leerzeilen erfolgt.
...

%%
% Im Folgenden ergänzen/erweitern Sie dieses Script. Sofern nicht anders
% angegeben, unterdrücken Sie die Ergebnisausgabe (Strichpunkt am
% Zeilenende). Wenn Sie alle Übungsaufgaben bearbeitet haben, publizieren
% ('publishen') Sie das Skript als PDF. 

%% 2.2 Signalgenerierung
% Erzeugen Sie einen Vektor _s_ mit 
%%
% $$ s = \sum_{m=1}^M 1/m*sin(m*2*pi*n/N) $$
%%
% mit _N_= 2^6, _n_= 0:(N-1), M= 10, m= alle ungerade <= M 
...

%% 2.3 Plotten der Daten
% Plotten Sie die Daten des Vektors _s_ in ein Diagramm _s_(_n_).
% Zeigen Sie zunächst nur die berechneten Punkte in blau an (ohne
% Verbindungslinie).
...

%% 2.4 Neue Funktion (_genRect_)
% Erzeugen Sie eine Matlab-Funktion _s_ = _genRect_(_N_, _M_), welche das
% Signal aus Aufgabe 1.2 für gegebene _N_ und _M_ berechnet und als Vektor
% _s_ zurückgibt. 
%%
% Erzeugen Sie die neue Funktion über das Matlab Menü (New, Function), 
% ersetzen Sie die von Matlab erzeugten Kommentare durch eigene, sinnvolle
% Texte und speichern Sie die fertige Funktion genRect im selben Verzeichnis
% wie dieses Script.
%%
% Dateiinhalt genRect.m hier einfügen mit "type genRect.m"
% type genRect.m

%%
% Verwenden Sie dann die Funktion _genRect_(_N_, _M_) zur Erzeugung des Signale
% _s1_ mit _M_= 1,  _s2_ mit _M_= 5, _s3_ mit _M_= 10 und _s4_ mit _M_= 50.
...

%%
% Plotten Sie nun _s1_ bis _s4_ in ein weiteres Diagramm, geben Sie
% dem Diagramm eine Überschrift, beschriften Sie die Achsen und erzeugen
% Sie eine Legende. Diesmal geben Sie keine Farben vor und verbinden die
% Datenpunkte.
...

%% 2.5 Subplots
% Erzeugen Sie in einem neuen Diagramm einen 2x2 Subplot und stellen sie 
% die Signale _s1_ bis _s4_ jeweils in einem eigenen Diagramm innerhalb
% des Subplots dar.
...

%% 2.6 Neue Funktion (_myPlot_)
% Um jetzt nicht jeden der Plots explizit mit Überschrift und
% Achsenbeschriftung ausstatten zu müssen, erzeugen Sie eine
% Matlab-Funktion _myPlot_, die den plot generiert und beschriftet. 
% Die Texte sollen als Parameter übergeben werden, eine Ergebnisrückgabe 
% erfolgt nicht. Überschreiben Sie einfach die Plots des aktuellen Subplots.
...

%%
% Dateiinhalt myplot.m hier einfügen mit "type myPlot.m"
% type myPlot.m

%% 2.7 Alternative Plot-Formate: Stairs, Stem und Bar
% Stellen Sie das Signal _s1_, jeweils mit voller Beschriftung als Stair-,
% Stem- und Bar-Diagramm dar. Statten Sie hierzu Ihre Funktion _myPlot_ mit
% einem weiteren Parameter aus, mit dem sich die Darstellungsart auswählen
% lässt.
% ACHTUNG: Wenn Sie die Definition von _myPlot_ ändern, müssen Sie auch die
% Lösung der vorhergehenden Aufgabe anpassen, damit Ihr Script ablauffähig
% bleibt!
...
