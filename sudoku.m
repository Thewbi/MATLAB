clear all          % workspace löschen, auch versteckte Variablen
close all          % alle File handles schließen und alle Diagramme schließen
format compact     % Leerzeilen entfernen
clc                % Shell löschen

%
% Sudoku
% 

%          | Spalte 4
s = [      
    0 0 5  2 0 0  0 8 0
    8 0 0  4 0 0  0 0 0
    0 6 0  5 0 0  0 0 3

    0 0 0  0 1 0  3 0 0
    0 3 0  7 2 0  0 0 0
    0 0 6  0 5 3  0 2 0  % Zeile 6

    7 1 2  0 0 0  0 0 0
    6 0 9  0 0 0  0 5 7
    0 0 0  0 0 0  0 0 4
];

% wähle Zeile 6 aus
Z6 = s(6, :);

% finde Zahlen, die in Zeile 6 vorhanden sind
Z6_values = s(6, find(Z6 > 0));

% Vektor mit Elementen 1 bis 9 erstellen und auf 0 (zeros()) initialisieren
NZ6 = zeros(1, 9);

% indiziere über die Zahlen in Z6 und setzen Werte von 0 auf 1
% Trick: Zahlen werden als Indizes wiederverwendet!
NZ6(Z6_values) = 1;

find(NZ6 == 1);





% wähle Spalte 4 aus
S4 = s(:, 4);

% find Zahlen, die in Spalte vorhanden sind
S4_values = s(find(S4 > 0), 4);

% Vektor mit 9 elementen erstellen und auf 0 initialisieren
NS4 = zeros(1, 9);

% indiziere über die Zahlen in S4 und setzen Werte von 0 auf 1
% Trick: Zahlen werden als Indizes wiederverwendet!
NS4(S4_values) = 1;

find(NS4 == 1);





% 3x3 block
%
% 0 1 0
% 7 2 0
% 0 5 3

B = s(4:6, 4:6);
B = B(:)';

% Non-Zero in B, Zahlen in B
NZ_B = find (B > 0);

% Zahlen
block_indices = B(NZ_B);

Block_Center = zeros(1, 9);

Block_Center(block_indices) = 1;

find(Block_Center == 1);




% Vereinigungsmenge
VM = NZ6 | NS4 | Block_Center;

% übrige Zahlen
nVM = ~VM;

% Ausgabe
%
% this is äquivalent to find(nVM == 1), so it will show the indexes where 
% the array is 1 which happens to be the numbers that can be inserted into 
% the cell
find(nVM) 