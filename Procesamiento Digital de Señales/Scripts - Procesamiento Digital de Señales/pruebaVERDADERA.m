[pos_rock,E_rock,media_rock,varianza_rock,zcr_rock] = function caracteristicasrock

[x,fs] = audioread('Rock/rock1.mp3');
primero = x(fs*60:fs*79,1);
ventana = hann(length(primero));
primero = primero .* ventana;
pos1 = picomaximofrecuencia(primero);
E1 = energiacortaduracion(primero);
[media1,varianza1]= flujoespectral(primero);
zcr1 = tasacrucesxcero(primero);


[x,fs] = audioread('GreenDay/greenday2.mp3');
primero = x(fs*60:fs*79,1);
ventana = hann(length(primero));
primero = primero .* ventana;
pos2 = picomaximofrecuencia(primero);
E2 = energiacortaduracion(primero);
[media2,varianza2]= flujoespectral(primero);
zcr2 = tasacrucesxcero(primero);

end
