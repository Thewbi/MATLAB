clear all      % Workspace löschen, auch versteckte Variablen
close all      % Alle File handles schließen und alle Diagramme schließen
clc            % Shell löschen
format compact % Leerzeilen entfernen

% Übung 10

% Anzahl der Werte bei einer Abtastrate von 44.1 kHz und einer Abtastdauer
% von einer Sekunde
N = 44100;

% Vektor
n = 0:N-1;

% Periode
p = 1 / N;

% Vektor mit allen Zeitmarken
t = p * n;

f_links = 1000;
s_links = sin(2 * pi * t * f_links);

%plot(t, s_links);
%soundsc(s_links, N);

f_rechts = 1500;
s_rechts = sin(2 * pi * t * f_rechts);

%soundsc(s_rechts, N);

%s = [ s_links, s_rechts ];
s = [ s_links; s_rechts ]';

% stereo signal
audiowrite('audio.mp4', s, N);

% Summer zweier Signale
% Eingabe an sum() sind zwei Zeilen mit 44100 Werten
% Sum addiert die Werte jeder Spalte zusammen
s_summe = sum( [s_links; s_rechts] );

% mono signal
audiowrite('audio_sum.mp4', s_summe, N);

% Die Funktion sum addiert zuerst spaltenweise und danach Zeilenweiße

% Alle Elemente einer Matrix zusammenaddieren
%sum(A(:))

% Abklingende Töne
%e^(-t/T)