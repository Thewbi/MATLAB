%% �bung 6
%% 6.1 Startup
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

%% 6.2 Messdaten
% Bei einem Experiment mit einem optischen Prisma wurden mit einem
% Goniometer (Winkelmesser) f�r verschiedene Wellenl�ngen 
% unterschiedliche Brechungswinkel ermittelt. Diesen Effekt bezeichnet man
% als Dispersion. Sind die Dispersionseigenschaften des Prismas bekannt, so
% kann man aus gemessenen Brechungswinkeln Wellenl�ngen bestimmen.

% Bei folgenden (exakt angenommenen) Wellenl�ngen wurde gemessen
lambda = [ 707;        % rot1
           668;        % rot2
           588;        % gelb
           505;        % t�rkis1 
           502;        % t�rkis2 
           492;        % t�rkis3 
           471;        % blau1
           447;        % blau2
           439 ]; %nm, violett1
%%
% Licht der o.g. Wellenl�ngen wurde durch das Prisma wie folgt gebrochen:
phi_dms = [ 47 19 0;   % rot1, 47� 19' 0'', 47 Grad, 19 Minuten, 0 Sekunden
            47 29 0;   % rot2
            48  5 0;   % gelb
            48 58 0;   % t�rkis1 
            49  0 0;   % t�rkis2
            49  8 0;   % t�rkis3
            49 30 0;   % blau1
            49 59 0;   % blau2
            50 12 0 ]; % Grad, Minuten, Sekunden (dms), viloett1
%%        
% Alle Werte seien auf +- 1' genau bestimmt.        
   
%% 6.3 Umrechnung in Grad und Plot
% Um mit den Brechungswinkeln rechnen zu k�nnen ist zun�chst eine
% Umrechnung in Dezimalgrad n�tig. Erstellen Sie eine Funktion _dms2deg_
% (degress, minutes, secons to degrees) und benutzen Sie diese, um den ganzen
% Vektor _phi_dms_ auf ein Mal in einen Dezimalgrad-Vektor umzurechnen.

%%
% Hinweis: Eine Minute ist (1/60) Grad, eine Sekunde ist (1/60) Minute.

%%
% Verwenden Sie also weder beim Funktionsaufruf, noch in der Funktion
% selbst Schleifen! 

%% 
% Zur Anzeige der Datei _dms2deg.m_ an diese STelle verwenden Sie den 
% Befehl "type dms2deg.m"
...

%%
% Zeigen Sie in einem Diagramm die Wellenl�ngen �ber den berechneten
% Winkeln an, also _lambda_(_phi_).
...

%% 6.4 Mittlere Brechung und Brechungsindex
% Berechnen Sie den mittleren Brechungswinkel und, f�r diesen Winkel, den
% Brechungsindex _n2_ des verwendeten Materials. Das verwendete Prisma ist
% ein gleichseitiges, d.h. der brechende Winkel Epsilon betr�gt 60�.

%%
% $$ n_2 = \frac{sin((\phi+\epsilon)/2)}{sin(\epsilon/2)} $$

%% 
% Hinweis: O.g. Gleichung gilt nur, wenn das Prisma so justiert wurde, dass
% die Brechnung minimal ist. Dann ist der Winkel des in das Prisma 
% einfallenden Strahls gleich dem Winkel des austretenden Stahls. Gehen Sie
% davon aus, dass diese Bedingung erf�llt ist.
...

%%
% Welche Glasarten finden Sie, wenn Sie diesen Brechungsindex recherchieren?
%%
...

%% 6.5 Polynomfitting (2. Grades)
% Damit sind die Brecheigenschaften des verwendeten Glases bekannt. Nun geht es um 
% die Charakterisierung der Wellenl�ngenabh�ngigkeit dieses
% Brechungswinkels, der Dispersion. Diese kann mit einer Kurve
% charakterisiert werden. Benutzen Sie die Funktion _polyfit_ um ein
% Polynom zweiten Grades zu finden, das die gegebenen Punkte
% ( _lambda_(_phi_) )
% interpoliert. Speichern Sie auch die Strukur _S_ (_help polyfit_) mit ab,
% Sie brauchen diese sp�ter f�r die Fehlerrechnung.
...

%%
% Geben Sie den Koeffizientenvektor aus.
...

%% 5.6 Funktion polyout
% Schreiben Sie nun eine Funktion _polyout( fun, var, p )_ , die das durch
% _p_ beschiebene Polynom wie folgt ausgibt:
%%
%%
%>>polyout( 'y', 'x', p );
% y(x)= 
%  <p(1)> x^(N-1) + 
%  <p(2)> x^(N-2) + 
%  ... +
%  <p(N)>

%%
% Hinweis: _polyout_ sollte mit Polynomen beliebiger Ordnung zurecht kommen.
% Der Grad des Polynoms kann der L�nge von _p_ entnommen werden.

%% 
% Zur Anzeige der Datei _dms2deg.m_ an diese STelle verwenden Sie den 
% Befehl "type polyout.m"
...

%% 
...

%% 6.7 Fitting testen
% Nun kennen Sie die Polynomkoeffizienten, aber passt das gefundene Polynom
% auch zu den gemessenenen Werten? Zeichnen Sie das Polynom in das Diagramm
% mit den Messpunkten ein. Nat�rlich brauchen Sie mehr Punkte, um die
% Kurve sch�n darstellen zu k�nnen. Benutzen Sie einfach _linspace_, um 
% viele Punkte zwischen dem kleinsten und dem gr��ten Brechungswinkel
% zu erzeugen.
...

%%
% Benutzen Sie dann die Funktion _polyval_ um die Funktionswerte zu
% berechnen.
...

%%
% Plotten Sie die Funktionswerte jetzt in das Diagramm, das schon die
% Messpunkte enth�lt (keine neue figure, _hold on_). Beschriften Sie das
% Diagramm und erzeugen Sie eine Legende.
...

%% 6.8 Charakterisierung von LEDs
% In einem zweiten Experiment wird Licht verschiedener LEDs durch das Prisma
% gebrochen. Dabei entsteht kein Spektrum mit diskreten Wellenl�ngen (wie
% vorher), sondern ein Kontinuum (also eine Art �Regenbogen�). Es wurden f�r
% das Licht jeder LED der minimale und der maximale Brechnungswinkel
% bestimmt.

%%
% Berechnen Sie f�r _eine_ der folgenden LEDs aus den Brechungswinkeln die minimale und maximale
% Wellenl�nge m�t Fehler. Der Fehler besteht aus einem Fehler aus der
% Kurvenanpassung und der Fehlerfortpflanzung des Ablesefehlers durch das
% Polynom!

%%
% Den Fehler der Kurvenanpassung finden Sie im Parameter _delta_ der
% Funktion _polyval_, die dies aber nur berechnen kann, wenn Sie  
% den Parameter _S_ der Kurvenanpassung (_polyfit_) mit �bergeben.

%%
% Um herauszufinden, wie stark sich ein Ablesefehler von z.B. +- 1' auf die
% Wellenl�nge auswirkt, m�ssen Sie die Fittingfunktion ableiten (_polyder_) 
% um die Steigung an der Stelle _phi_ zu berechnen. Mit dieser Steigung wirkt
% sich ein Winkelfehler auf die Wellenl�nge aus:

%%
% $$ _\Delta\lambda = |\frac{\delta\lambda}{\delta\phi}|_{\phi} \cdot _\Delta\phi $$
%

%%
% Benutzen Sie auch hier die Funktion _polyout_ um sich das Ergebnis der 
% Ableitung anzeigen zu lassen.

%%
% Geben Sie alle berechneten Wert einzeln an: Mittelwert, Fehler durch
% Kurvenanpassung, fortgepflanzter Ablesefehler. Fassen Sie dann die
% Ergebnisse zusammen.

%% 
% �berpr�fen Sie, anhand des Diagrammes aus Aufgabe 4.6, mit Lineal oder 
% Geodreieck ob die berechneten Wellenl�ngen plausibel sind.
% 

%% Auswertung LED 
%
% Messadaten
phi_dms = [ 47 36 0; 47 57 0; ];    % LED R-630 
% phi_dms = [ 47 41 0; 48 15 0; ];  % LED O-610
% phi_dms = [ 47 54 0; 48 24 0; ];  % LED YH-590LED YG-574
% phi_dms = [ 47 58 0; 48 35 0; ];  % LED YG-574
% phi_dms = [ 47 51 0; 49 0 0; ];   % LED G-525
% phi_dms = [ 47 55 0; 49 20 0; ];  % LED BG-505
% phi_dms = [ 47 35 0; 49 50 0; ];  % LED B-470

%%
% Umrechnung in Dezimalgrad
...

%%
% Wellenl�nge und Fittingfehler bestimmen
...

%%
% Fortpflanzung Ablesefehler
%
% Ableiten der Fittingfunktion
...

% Anzeigen der Fittingfunkton
...

%%
% Berechnen der Fehlerfortpflanzung f�r 1/60�
...

% Einzelausgabe
...

% Summe der Fehler
...

% Zusammenfassung
...








