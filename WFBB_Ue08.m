%% �bung 8
%% 8.1 Startup
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
% angegeben, unterdr�cken Sie die Ergebnis-Ausgabe (Strichpunkt am
% Zeilenende). Wenn Sie alle �bungsaufgaben bearbeitet haben, publizieren
% ('publishen') Sie das Skript als PDF. Geben Sie dieses PDF (und nur
% dieses PDF) zur Kontrolle ab (moodle/Laufwerk/email).

%% 8.2 Beschreibung des Experiments
% Mit einem einfachen Versuchsaufbau soll der lineare
% W�rmeausdehnungskoeffizient von Kupfer bestimmt werden. Neben dem
% Messwert soll auch berechnet werden, in welchem Intervall der
% tats�chliche Wert, unter Ber�cksichtigung s�mtlicher Messfehler, liegen
% kann.

%%
% Die Probe (ein Kupferrohr) hat bei Raumtemperatur eine L�nge von _495mm_.
% Aus mechanischen Gr�nden l�sst sich diese L�nge aber nur auf _+-5mm_ genau
% bestimmen. Das Rohr wird nun mit Wasserdampf erw�rmt. Eine
% Temperaturmessung (auch der Raumtemperatur) findet nicht statt. Alle 
% Temperaturen werden gro�z�gig gesch�tzt und mit einem entsprechend gro�em
% Fehler angegeben.

%%
% Das Rohr dehnt sich mit steigender Temperatur aus. Die Ausdehnung wird
% �ber einen Hebel auf einen Zeiger �betragen, dessen Ausschlag an einer
% Skala mit mm-Einteilung ablesbar ist. Um die tats�chliche Ausdenung des
% Rohres bestimmen zu k�nnen, muss die Zeigermechanik vermessen werden und
% der abgelesene Zeigerausschlag (mittels Dreisatz) auf die H�he der 
% Rohrauflage zur�ckgerechnet werden. Alle Messungen, bis auf die H�he der
% Auflage, erfolgen mit einem Lineal (_+-0.5mm_). Die Auflage wird mit einer
% Messschieber vermessen (_+-0.05mm_).

%% 8.3 Messdaten
l0 = 495; %mm, urspr�ngliche Rohrl�nge
dl0 = 10; %mm, Messfehler urspr�ngliche Rohrl�nge

theta1 = 20; %deg C, Raumtemperatur
theta2 = 92; %deg C, Rohrtemperatur
dtheta = 5; % deg C, Messfehler Temperaturen

a = 200; %mm, Gesamte Zeigerl�nge
da = 1; %mm, Messfehler Zeigerl�nge

b = 4; %mm, H�he Rohrauflage
db = 0.1; %mm, Messfehler H�he Auflage

s = 32; %mm, Zeigerausschlag nach Erhitzung
ds = 1; %mm, Messfehler Zeigerausschlag nach Erhitzung

%% 8.4 Berechnung des Messwerts
% Erstellen Sie die symbolische Gleichung zur Berechnung der
% tats�chlichen Ausdehnung aus dem Zeigerausschlag _S_ und der
% Zeigergeometrie _A_ und _B_. Es gilt:

%%
% $$ \frac{dL}{B} = \frac{S}{A} $$

%%
% WICHTIG: Damit es keine Verwechslung mit den
% Zahlenwerten _s_, _a_ und _b_ gibt, verwenden Sie f�r die symbolischen
% Gleichungen am besten Gro�buchstaben.
...

%%
% Die L�ngen�nderung des Rohres ist gegeben durch 

%%
% $$ dL = \alpha \cdot l_0 \cdot (\vartheta_1 - \vartheta_2) $$.

%%
% Gesucht ist der Koeffizient $$\alpha $$. Erstellen Sie auch hierf�r eine
% symbolische Gleichung und �berlassen Sie das Einsetzen von dL ruhig
% Matlab. Lassen Sie sich die Formel mit dem Befehl _pretty_ anzeigen.
...

%% 8.5 Einsetzen
%%
% Benutzen Sie nun die Funktion _subs()_ um f�r jedes der Symbole _A_, _B_,
% _S_, etc. den entprechenden Zahlenwert in die Gleichung einzusetzen.
% Das Ergebnis ist der gesuchte Ausdehnungskoeffizient, zun�chst aber in
% einem seltsamen Format. Verwenden Sie die Funktion _eval_ um das Ergebnis 
% als Flie�kommazahl zu erhalten.
...

%%
% Verwenden Sie die Funktion _fprintf()_ um das Ergebnis, auf wenige
% Nachkommastellen gerundet und mit Einheit (_1/K_) ausgzugeben.
...

%% 8.6 Fehlerrechnung
%%
% Damit w�re das Experiment fast ausgewertet. Die Frage ist aber, wie sich
% die einzelnen Messfehler auf das Ergebnis auswirken. Dies werden Sie nun
% mit Matlab berechnen. F�r die Funktion _y = f(x)_ und den Fehler $$_\Delta x $$ gilt:

%%
% $$ _\Delta y = | \frac{df}{dx} | \cdot _\Delta x $$, 

%%
% d.h. der Messfehler von x wirkt sich mit der Steigung df/dx auf das
% Ergebnis aus. F�r Funktionen mehrerer Parameter ist die Berechnung
% f�r jeden Parameter durchzuf�hren und (im einfachsten Fall) die Summe der
% Teilfehler zu bilden, also z.B. f�r _z = f(x,y)_:

%%
% $$ _\Delta y = $$
% $$ | \frac{\delta f}{\delta x} | \cdot _\Delta x + $$
% $$ | \frac{\delta f}{\delta y} | \cdot _\Delta y $$

%%
% Berechnen Sie symbolisch alle partiellen Ableitungen der Gleichung aus
% Aufgabe 5.4 und die sich ergebenden Teilfehler. Setzen Sie, wie oben,
% die echten Zahlenwerte ein und geben Sie die Teilfehler mit der Funktion
% _fprintf_ aus (mit Exponent und Einheit).

%%
...

%%                
% Fehlerbeitrag _dS_:
...

%%            
% Fehlerbeitrag _dA_:
...            

%%
...

%%
% Bilden Sie jetzt die Summe der Teilfehler und geben Sie das Ergebnis
% an (_fprintf()_). 
...

%% 8.7 Ergebnis W�rmeausdehnung
% Formulieren Sie nun das Enderegbnis (Messwert +- Fehler) *Exponent * Einheit
% mit _fprintf_. Regel: Messwert und Fehlerangabe besitzen denselben 
% Exponenten. Der Fehler wird auf zwei signifikante Stellen gerundet, der 
% Messwert wird mit der Zahl von Nachkommastellen angegeben, die durch den
% gerundeten Fehler vorgegeben wird. Beispiel: U = (230 +- 10) V.
...








