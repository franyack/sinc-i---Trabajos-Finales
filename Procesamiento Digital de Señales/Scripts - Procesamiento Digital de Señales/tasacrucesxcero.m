function zcr = tasacrucesxcero(x)
    x = x/norm(x);
    zcr = sum(abs(diff(x>0)));
end