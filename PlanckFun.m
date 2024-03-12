% In-Parameters:
% T - Temperature
% l - wavelength range
%
% Out-Parameters:
% M - distribution (Verteilung)
% maxM - Maximum across the distribution M
% lambdaMaxM - wavelength at which maxM is found
function [M maxM lambdaMaxM] = PlanckFun(T, l)

    c = 3e8;        % m / s, Lichtgeschwindigkeit im Vakuum
    h = 6.26e-34;   % Js, Planksches Wirkungsquantum
    %k = 5.67e-8;    % W / (m^2 K^4)
    k = 1.38e-23;    % W / (m^2 K^4)

    % ./ weil Konstante dividiert durch vektor, da elementweiße geteilt
    % werden soll. Jedes element des Vektors l soll einzeiln die Konstante
    % teilen!
    M = 2*pi*c^2*h ./ ( l.^5 .* ( exp((c*h) ./ (l*T*k)) - 1 ) );
    
    %pretty(M)

    % Finde maximalen Wert nach maxM und Index dieses Wertes nach n
    [maxM n] = max(M);

    % Gib das maximale lambda aus
    lambdaMaxM = l(n);

end