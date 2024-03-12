function polyout( fun, var, p )
%polyout( fun, var, p ) Gibt ein polynom p in menschenlesbarer Schreibweise aus
% Parameter fun is the name of the function as passed in by the caller
% Parameter var is the name of the variable to fun as passed in by the caller
% Parameter p is the polynomial as returned by the polyfit function for
% example
% Das Ausgabeformat ist:
% fun(var)=
% <p(1)> var^(N-1) +
% <p(2)> var^(N-2) +
% ... +
% <p(N)>
 N = length(p);
 fprintf('%s(%s)= \n', fun, var);
for i = 1:N-1
 fprintf(' %f %s^%d + \n', p(i), var, N-i);
end
 fprintf(' %f\n', p(end));
end