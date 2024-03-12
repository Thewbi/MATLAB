syms f L L1 L2 ZL
Zl = 2*pi*f*L

Zl_subst = subs(Zl, L L1*L2 / (L1+L2))

Zlx = subs (Zl_subst, {f, L1, L2}, {1000, 1e-3, 500e-6})




% Partielle Ableitungen

syms a b
c = a / b

% Ableitung von c nach der Variable a
dc_da = diff(c, a)

% Ableitung von c nach der Variable b
dc_db = diff(c, b)

% Fehlerfortflanzung

% sin^2(x)
syms k
l = sin(k)^2
%ezplot(l)

l2 = -0.5*cos(2*k) + 0.5
%ezplot(l2)