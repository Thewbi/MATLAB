% Given a numeric value x, scales x into the range of 1 to 1000 and
% returns the scaled value as well as a prefix that describes the scaling
% in the form Giga, Mega, Kilo, milli, micro, nano, pico
function [mant prefix] = scientific_prefix(x)

    ex = [ 9 : -3 : -12 ];   
    teiler = 10 .^ ex;
    
    test = x ./ teiler;
    
    idx = find(test > 1 & test < 1000);
    
    % return value 1: the scaled value
    mant = test(idx);

    % return value 2: the character matching the dimension that the scaled
    % value now has
    prefixScales = 'GMK mµnp';
    prefix = prefixScales(idx);

end