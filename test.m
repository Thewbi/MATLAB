% workspace löschen, auch versteckte Variablen
clear all

% alle File handles schließen und alle Diagramme schließen
close all

% Leerzeilen entfernen
format compact

% Shell löschen
clc

% I = linspace(1, 4)
%I = linspace(1, 4, 10)

%I = logspace(1, 4) % Zweite

%vektor = [1:1:25]
vektor = [2 4 9 3 4 10]
vektor_min = min(vektor)
vektor_max = max(vektor)

vektor_sorted = sort(vektor)
vektor(1)
vektor(6)

vektor_sum = sum(vektor)
vektor_length = length(vektor)

vektor_avg = vektor_sum / vektor_length
vektor_mean = mean(vektor)

% Standardabweichung der Stichprobe
std_abw = sqrt( sum( (vektor - vektor_avg).^2 ) / (vektor_length -1) )
std(vektor)

% Standardabweichung der Grundgesamtheit
std_abw_gg = sqrt( sum( (vektor - vektor_avg).^2 ) / (vektor_length) )
std(vektor, 1, "all")

lt_std_abw = vektor(find(vektor < std_abw))

%str = "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
%sort_result = sort(split(str))
%unique_result = unique(split(str))
%eraseBetween(unique_result, 1, 1)

str = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
sort_result = sort(str)
unique_result = unique(str)

%str2 = 'HE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
str2 = 'THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG'
str2(1) = []
sort_result = sort(str2)
unique_result = unique(str2)







numbers = [ 1 2 3 4 5 6 7 8 9 ];

%     1 2 3 4 5 6 7 8 9
A = [ 1 0 1 0 1 0 1 0 0 ];

%     1 2 3 4 5 6 7 8 9
B = [ 1 1 1 1 0 0 0 0 0 ];

A_or_B = A | B;

A_and_B = A & B;


indices = find ( (A_or_B) == 1 );
numbers(indices);




