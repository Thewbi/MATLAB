%% Übung 7
%% 7.1 Startup
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
% angegeben, unterdrücken Sie die Ergebnis-Ausgabe (Strichpunkt am
% Zeilenende). Wenn Sie alle Übungsaufgaben bearbeitet haben, publizieren
% ('publishen') Sie das Skript als PDF. Geben Sie dieses PDF (und nur
% dieses PDF) zur Kontrolle ab (moodle/Laufwerk/email).

%% 7.2 Berechnung des Scheitelfaktors
% Der Scheitelfaktor einer Wechselspannung u(t) ist der Spitzenwert der
% Wechselspannung, dividiert durch deren Effektivwert:
%%
% $$ U_{eff} = \sqrt{ \frac{1}{T} \int_0^T u^2(t) dt } $$
%%
% Berechnen Sie symbolisch den Scheitelfaktor für eine sinusförmige
% Wechselspannung.
...

%% 7.3 Sinus / Kosinustransformation
% Gegeben ist die Funktion f(t) mit
%%
% $$ f(t) = \sin (\omega t) $$
%%
% Multiplizieren Sie dieses Signal mit
%%
% a)       $$ \sin(\omega t) $$
%%
% b)       $$ \sin(2 \omega t) $$
%%
% c)       $$ \cos(\omega t) $$
%%
% d)       $$ \cos(2 \omega t) $$
%%
% und zeigen Sie jeweils 
%%
% 1. die Funktionsgraphen beider beteiligter Funktionen (_figure_, _subplot_, _ezplot_),
%%
% 2. den Funktionsgraphen des Produktes
%%
% 3. das unbestimmte Integral des Produktes (_pretty_), 
%%
% 4. das bestimmte Integral des Produktes im Intervall 0..2*pi (als Zahlenwert).
%%
% HINWEISE: 
% Setzen Sie $$\omega = const. = 1 $$.
% Entwickeln Sie zur Bebarbeitung der Punkte 1. bis 4. eine _function_.

%%
% Zur Anzeige der _function_ an dieser Stelle verwenden Sie die Funktion
% "type <funktionsname>.m"
...

%%
%
...

%%
...

%%
...

%%
...

%%
% e) Diskutieren Sie die Ergebnisse.
%%
...
%%
% f) Welches Ergebnisse erwarten Sie für das Signal
%%
% $$ f(t) = 1/2 \sin(\omega t) + 1/4 \cos(2*\omega t) + 1 $$ ?
%%
...

%%
% g) Prüfen Sie Ihre Vermutungen, analog zum oben angewandten Verfahren
...

%%
...

%%
...

%%
...

