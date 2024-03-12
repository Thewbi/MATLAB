%% Übung 1
%% 1.1 Vorbereitung
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

%% 1.2 Vektoren, statischer Größe
% Erzeugen Sie einen Vektor _n_ mit natürlichen Zahlen von 0 bis 99.
% Verwenden Sie hierzu die Matlab-Syntax zur Erzeugung von Vektoren.
...

%%
% Erzeugen Sie die Variable _N_ und weisen Sie dieser Variablen die
% Länge (Zahl der Elemente) von _n_ als Wert zu.
...

%%
% Erzeugen Sie nun den Vektor _x_, indem sie den Vektor _n_ mit dem 
% (konstanten) Faktor 2 pi / _N_ skalieren.
...

%%
% Berechnen Sie aus dem Vektor x den Vektor _s_ = sin(_x_)
...

%%
% Bestimmen sie das Maximum und das Minimum von _s_. Bei welchen Indizes
% treten diese Werte auf? Welche Werte enthalten die Vektoren _n_ und _x_ 
% bei diesen Indizes? Lassen Sie diese Werte ausgeben.
...

%%
% Verwenden Sie nun die Funktion linspace() zur Erzeugung des Vektors 
% _y_. _y_ soll 100 Elemente von 0 bis 2 pi enthalten. Berechnen Sie 
% aus diesem Vektor die Sinuswerte _t_ = sin(_y_). 
...

%%
% Bestimmen sie auch von _t_ das Maximum und das Minimum. Bei welchen 
% Indizes treten hier diese Werte auf? Welche Werte enthalten die 
% Vektoren _n_ und _y_ bei diesen Indizes? Lassen Sie diese Werte ausgeben.
...

%%
% Erklären Sie das Zustandekommen der unterschiedlichen Ergebnisse!

%%
% Kommentar: 
%% 1.3 Vektoren, dynamischer Größe
% Hier geht es darum, Vektoren zu erzeugen, deren Länge a priori nicht
% bekannt ist: Beispiel: Gesucht werden die ganzzahligen Teiler einer 
% Zahl _z_. Ist _z_ eine Primzahl, so gibt es keine Teiler außer 1 und _z_.
% Ist _z_ nicht prim und beliebig groß, wird es beliebig viele Teiler
% geben. Die tatsächliche Zahl ist also vor der Verarbeitung nicht bekannt.
%%
% 
% Suchen sie die ganzzahligen Teiler von _z_, indem Sie in einer (for-)
% Schleife probeweise durch ansteigende Ganzzahlen _t_ dividieren. Geht die
% Division ohne Rest auf, ist _t_ ein Teiler von _z_. Den Divisionsrest von
% _z_/_t_ berechnet Ihnen die modulo-Funktion ( mod(_z_,_t_) ). Die 
% ermittelten Teiler von _z_ speichern Sie im Vektor _tz_ ab. Lassen Sie 
% _tz_ für eine beliebige Zahl _z_ ( 100 < _z_ < 10000, _z_ nicht prim )
% ausgeben. 
...

%%
% Das erste, respektive letzte Element des Vektors _tz_ sind 1 und 
% _z_. Entfernen Sie diese beiden Elemente vom Vektor _tz_ und
% speichern Sie das Ergebnis im Vektor _tz2_. Zeigen Sie auch diesen Vektor
% an (das letzte Element eines Vektors hat den Index 'end').
...

%% 1.4 Produkte von Vektoren
% Gegeben ist der Zeilenvektor _zv_, sowie der Spaltenvektor _sv_ = _zv_':
...

%%
% Es seien 
h1 = sv * zv
h2 = h1 ^2
h3 = h1.^2
h4 = zv  * sv
h5 = zv .* zv
h6 = zv .^ zv
h7 = h1 + 1
h8 = h1 + h1
h9 = 1./ h1

%%
% Kommentieren Sie die Ergebnisse _h1_ bis _h6_:
%%
...

%%
...

%%
...

%%
...

%%
...

%%
...
    
%%
% h7: Elementweise Addition von 1

%%
% h8: Elementweise Addition

%%
% h9: Elementweiser Kehrwert

%% 1.5 Matrizen
% Erzeugen Sie die Matrix a so, dass Sie aus den Vektoren _a1_ bis _a4_ 
% besteht. Geben Sie die Matrix _a_ und deren Determinante aus.
...

%%
% Wie müsste man formulieren, wenn _a1_ bis _a4_ die Spaltenvektoren der Matrix
% sein sollen? Geben Sie auch hierfür die Matrix _a_ und deren Determinante aus.
...

%% 1.6 Initialisierte Vektoren/Matrizen

%%
% Zeigen Sie, anhand der Matrix _h1_, dass die Funktion zeros() das
% neutrale Element bzgl. der Addition von Matrizen erzeugt. Kommentieren
% Sie Ihr Vorgehen und das Ergebnis.
...

%%
% Kommentar:

% Das Ergebnis der Addition ist die Matrix selbst, d.h. zeros(5) ist das
% neutrale Element bzgl. der Addition.

%%
% Zeigen Sie, anhand der Matrix _h1_, dass die Funktion eye(5,5) das
% neutrale Element bzgl. der Multiplikation von Matrizen erzeugt. 
% Kommentieren Sie Ihr Vorgehen und das Ergebnis.
...

%%
% Kommentar: 

% Das Ergebnis der Multiplikation ist die Matrix selbst, d.h. zeros(5) ist
% das neutrale Element bzgl. der Addition.

%% 1.7 Rechnen mit Matrizen
% Skalieren Sie den Vektor _s_ aus Aufgabe mit 0.5 und addieren Sie
% 0.5. Speichern Sie das Ergebnis im Vektor _s2_.
...

%% 
% Kehren Sie im Vektor _s2_ die Reihenfolge der Elemente 25:75 um 
% ( Funktion wrev() ).
...


%%
% Multiplizieren _s2_ mit ones(100,1) so, dass Sie am Ende eine 100x100 
% Matrix erhalten, die _s2_ spaltenweise enthält.
...

%%
% Benutzen Sie die Funktion imshow() um das Ergebnis Ihrer Berechnung 
% als Grauwertbild darzustellen.
...
