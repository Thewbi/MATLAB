%% �bung 4
%% 4.1 Startup
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

%% 4.2 Schaltungsanalyse
% Gegeben sei folgende Schaltung
%
figure
img1 = imread('rlc.png');
img1 = imresize(img1, 0.33);
imshow(img1);
%%
% mit _R1_= 10kOhm, _Rs_= 1Ohm, _L1_= 16�H, _C1_= _C2_ = 3.3nF und u= 1Vrms.
%%
% Hinweis: _Rs_ ist integraler Bestandteil der Induktivit�t _L_ und soll 
% in der Impedanz der Induktivit�t ber�cksichtigt werden.
%%
% Defininieren Sie die Variablen _R1_, _L1_, _C1_, _C2_ und U. Weisen Sie 
% die entsprechenden Werte zu.
....

%% 4.3 Effektive Kapazit�t
% Berechnen Sie die effektive (in der Schaltung wirksame) Kapazit�t _C_.
....

%% 3.4 Resonanzfrequenz
% Berechnen Sie die Resonanzfrequenz des Schwingkreises (das ist diejenige
% Frequenz bei der _Zl_ = _Zc_ ist.
....

%%
% Benutzen Sie die Funktion _fprintf_ um die Resonanzfrequenz mit drei 
% Nachkommastellen in MHz auszugeben
....

%% 4.5 Q�te und Bandbreite
% Die G�te eines Parallelschwingkreises ist gegeben durch 
%%
% $$ Q = R \sqrt{ \frac{C}{L} } $$,
%%
% die Bandbreite durch
%%
% $$ B = \frac{fres}{Q} $$.
%%
% Berechnen Sie G�te und Bandbreite f�r den gegeben Kreis.
...

%% 4.6 Impedanzen
% Berechnen Sie die Impedanzen _zL_ und _zC_ f�r _f_=100kHz .. 10MHz. 
% Verwenden Sie zur Erzeugung des Frequenzenvektors die Funktion _logspace_ 
% mit 10.000 Punkten.
...

%%
% Plotten Sie die Betr�ge der Impedanzen _zL_ und _zC_ in ein neues Diagramm. Stellen Sie das Ergebnis 
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
% ACHTUNG: Sie m�ssen auch die Y-Achse manuell skalieren. Benutzen Sie hier
% die min- bzw. max-Funktion um die passenden Werte zu ermitteln.
...

%%
% Plotten Sie in einem weiteren Diagramm den Phasenverlauf der
% Gesamtimpedanz _zG(f)_ in Grad (Funktion _angle_ liefert Bogenma�!).
% Auch hier bitte nachskalieren!
...

%% 4.7 Zuflie�ender Strom Ig
% Berechnen Sie den Gesamtsrom _iG_ der durch _R1_ in die Schaltung flie�t.
...

%%
% Stellen Sie den Verlauf des Strombetrages |_iG(f)_| in einem neuen Diagramm dar.
...

%% 4.8 Spannung _Uc_ 
% Berechnen Sie nun die Spannung an den Kapazit�ten (Differenz der
% Spannung _U_ und dem durch _iG_ an _R_ verursachten Spannungsabfall).
...

%% 
% Stellen Sie den Verlauf der Spannung _uC_ in einem neuen Diagramm dar.
...

%%
% Erstellen Sie den Vektor _fx_, der die Kennfrequenzen (untere
% Grenzfrequenz, Resonanzfrequenz, obere Grenzfrequenz) des Schwingkreises 
% enth�lt und den Vektor _Ux_, der die Spannungen _Uc_ f�r diese Frequenzen enth�lt.
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
% Erstellen Sie den Vektor _Ax_ der die Phasenwinkel f�r die drei
% Kennfrequenzen (in Grad) enth�lt. Markieren Sie auch diese Kennpunkte 
% im aktuellen Diagramm mit roten Kreisen.
...

%% 4.9 Str�me iL und iC
% Berechnen Sie den Verlauf der Betr�ge der Str�me durch die Kondensatoren 
%_iC(f)_ und der Spule _iL(f)_ .
...

%%
% Vergleichen Sie den in den Kreis hineinflie�enden Strom mit dem im Kreis
% flie�enden Strom bei Resonanz. Kommentieren Sie
...

%%
% Kommentar: der im Kreis flie�ende Strom ist bei Resonanz fast 100 mal 
% gr��er als der in den Kreis hinein flie�ende (Stromresonanz).

%% 4.10 Spannung an C1
% Wie gro� ist das Verh�ltnis der Spannungen _uC1_/_uC_, wenn der Kreis in 
% Resonanz betrieben wird?
...

%% 4.11 �berlegung
% Wie gro� ist die Spannung _uC_ bei Resonanz, wenn die Spannungsquelle �ber 
% _R_ zwischen den beiden Kondensatoren eingespeist wird?
...








