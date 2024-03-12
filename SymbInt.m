% Given two functions f and g 
% will draw f, g and f*g in the interval [0 2*pi]
function SymbInt(fx, gx, x)

    % Multiplikation beider Funktionen
    hx = fx * gx;

    % Print string literal into console ?!?
    disp('Y =');

    % start a figure
    figure;

    % draw the function f
    subplot(3, 1, 1);
    ezplot(fx, [0 2*pi]);

    % draw the function g
    subplot(3, 1, 2);
    ezplot(gx, [0 2*pi]);

    % draw the function f * g
    subplot(3, 1, 3);
    ezplot(hx, [0 2*pi]);

    % int - definite and indefinite integrals
    Hx = int(hx, x);
    pretty(Hx);

    Ybest = int(hx, x, 0, 2*pi)
    
end