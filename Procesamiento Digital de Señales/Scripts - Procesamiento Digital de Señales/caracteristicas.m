function [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs)
coeficientes = cell(3,1);
parte = x(fs*30:fs*50,1);
ventana = hann(length(parte));
parte = parte .* ventana;
pos(1) = picomaximofrecuencia(parte);
E(1) = energiacortaduracion(parte);
[media(1),varianza(1)]= flujoespectral(parte);
zcr(1) = tasacrucesxcero(parte);
coeficientes{1} = coeficientesceptrales(parte,fs);

parte = x(fs*80:fs*99,1);
ventana = hann(length(parte));
parte = parte .* ventana;
pos(2) = picomaximofrecuencia(parte);
E(2) = energiacortaduracion(parte);
[media(2),varianza(2)]= flujoespectral(parte);
zcr(2) = tasacrucesxcero(parte);
coeficientes{2} = coeficientesceptrales(parte,fs);

parte = x(fs*150:fs*169,1);
ventana = hann(length(parte));
parte = parte .* ventana;
pos(3) = picomaximofrecuencia(parte);
E(3) = energiacortaduracion(parte);
[media(3),varianza(3)]= flujoespectral(parte);
zcr(3) = tasacrucesxcero(parte);
coeficientes{3} = coeficientesceptrales(parte,fs);

end
