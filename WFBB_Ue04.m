%% Übung 4
%% 4.1 Startup
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
% ('publishen') Sie das Skript als PDF. Geben Sie dieses PDF (und nur
% dieses PDF) zur Kontrolle ab (moodle/Laufwerk/email).

%% 4.2 Schaltungsanalyse
% Gegeben sei folgende Schaltung
%
figure
img1 = imread('rlc.png');
img1 = imresize(img1, 0.33);
imshow(img1);
%%
% mit _R1_= 10kOhm, _Rs_= 1Ohm, _L1_= 16µH, _C1_= _C2_ = 3.3nF und u= 1Vrms.
%%
% Hinweis: _Rs_ ist integraler Bestandteil der Induktivität _L_ und soll 
% in der Impedanz der Induktivität berücksichtigt werden.
%%
% Defininieren Sie die Variablen _R1_, _L1_, _C1_, _C2_ und U. Weisen Sie 
% die entsprechenden Werte zu.
....

%% 4.3 Effektive Kapazität
% Berechnen Sie die effektive (in der Schaltung wirksame) Kapazität _C_.
....

%% 3.4 Resonanzfrequenz
% Berechnen Sie die Resonanzfrequenz des Schwingkreises (das ist diejenige
% Frequenz bei der _Zl_ = _Zc_ ist.
....

%%
% Benutzen Sie die Funktion _fprintf_ um die Resonanzfrequenz mit drei 
% Nachkommastellen in MHz auszugeben
....

%% 4.5 Qüte und Bandbreite
% Die Güte eines Parallelschwingkreises ist gegeben durch 
%%
% $$ Q = R \sqrt{ \frac{C}{L} } $$,
%%
% die Bandbreite durch
%%
% $$ B = \frac{fres}{Q} $$.
%%
% Berechnen Sie Güte und Bandbreite für den gegeben Kreis.
...

%% 4.6 Impedanzen
% Berechnen Sie die Impedanzen _zL_ und _zC_ für _f_=100kHz .. 10MHz. 
% Verwenden Sie zur Erzeugung des Frequenzenvektors die Funktion _logspace_ 
% mit 10.000 Punkten.
...

%%
% Plotten Sie die Beträge der Impedanzen _zL_ und _zC_ in ein neues Diagramm. Stellen Sie das Ergebnis 
% halblogarithmisch dar (_semilogx_). Beschriften Sie die Achsen und
% verwenden Sie eine Legende.
...

%%
% Berechnen Sie nun die Gesamtimpedanz _zG_, die an die Spannungsquelle
% angeschlossen ist.
...

%%
% Plotten Sie den Betrag der Gesamtimpedanz _zG(f)_ in ein neues Diagramm. Stellen Sie 
% das Ergebnis halblogarithmisch dar (_semilogx_). Beschriften Sie die 
% Achsen.
%%
% Verbessern Sie die Darstellung der Kurve, indem Sie die Frequenzachse
% nachskalieren (Funktion _axis_). Vorgeschlagener Bereich: fres +/- 5%.
% ACHTUNG: Sie müssen auch die Y-Achse manuell skalieren. Benutzen Sie hier
% die min- bzw. max-Funktion um die passenden Werte zu ermitteln.
...

%%
% Plotten Sie in einem weiteren Diagramm den Phasenverlauf der
% Gesamtimpedanz _zG(f)_ in Grad (Funktion _angle_ liefert Bogenmaß!).
% Auch hier bitte nachskalieren!
...

%% 4.7 Zufließender Strom Ig
% Berechnen Sie den Gesamtsrom _iG_ der durch _R1_ in die Schaltung fließt.
...

%%
% Stellen Sie den Verlauf des Strombetrages |_iG(f)_| in einem neuen Diagramm dar.
...

%% 4.8 Spannung _Uc_ 
% Berechnen Sie nun die Spannung an den Kapazitäten (Differenz der
% Spannung _U_ und dem durch _iG_ an _R_ verursachten Spannungsabfall).
...

%% 
% Stellen Sie den Verlauf der Spannung _uC_ in einem neuen Diagramm dar.
...

%%
% Erstellen Sie den Vektor _fx_, der die Kennfrequenzen (untere
% Grenzfrequenz, Resonanzfrequenz, obere Grenzfrequenz) des Schwingkreises 
% enthält und den Vektor _Ux_, der die Spannungen _Uc_ für diese Frequenzen enthält.
...

%% 
% Markieren Sie die drei Kennpunkte im aktuellen Diagramm (Funktionen 
% _hold_ und _semilogx_). Benuzen Sie rote Kreise, um die Punkte zu 
% markieren.
...

%%
% Plotten Sie den Phasenverlauf _uC(f)_ in Grad in ein neues Diagramm .
...

%%
% Erstellen Sie den Vektor _Ax_ der die Phasenwinkel für die drei
% Kennfrequenzen (in Grad) enthält. Markieren Sie auch diese Kennpunkte 
% im aktuellen Diagramm mit roten Kreisen.
...

%% 4.9 Ströme iL und iC
% Berechnen Sie den Verlauf der Beträge der Ströme durch die Kondensatoren 
%_iC(f)_ und der Spule _iL(f)_ .
...

%%
% Vergleichen Sie den in den Kreis hineinfließenden Strom mit dem im Kreis
% fließenden Strom bei Resonanz. Kommentieren Sie
...

%%
% Kommentar: der im Kreis fließende Strom ist bei Resonanz fast 100 mal 
% größer als der in den Kreis hinein fließende (Stromresonanz).

%% 4.10 Spannung an C1
% Wie groß ist das Verhältnis der Spannungen _uC1_/_uC_, wenn der Kreis in 
% Resonanz betrieben wird?
...

%% 4.11 Überlegung
% Wie groß ist die Spannung _uC_ bei Resonanz, wenn die Spannungsquelle über 
% _R_ zwischen den beiden Kondensatoren eingespeist wird?
...








