function[pos_rock,E_rock,media_rock,varianza_rock,zcr_rock,coeficientes_rock] = plantillarock
    coeficientes_rock = cell(3,1);
    [x,fs] = audioread('Rock/rock1.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i = 1:3
        pos_aux(i) = pos(i);
        E_aux(i) = E(i);
        media_aux(i) = media(i);
        varianza_aux(i) = varianza(i);
        zcr_aux(i) = zcr(i);
        coeficientes_rock{i} = coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock2.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i)  + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i) + zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock3.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock4.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock5.mp3');
   [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock6.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
    end
    
    [x,fs] = audioread('Rock/rock7.mp3');
   [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock8.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock9.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Rock/rock10.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_rock{i} = coeficientes_rock{i} + coeficientes{i};
    end
    
    for i=1:3
       pos_rock(i) = pos_aux(i)/10;
       E_rock(i) = E_aux(i)/10;
       media_rock(i) = media_aux(i)/10;
       varianza_rock(i)=varianza_aux(i)/10;
       zcr_rock(i)=zcr_aux(i)/10;
       coeficientes_rock{i} = coeficientes_rock{i}/10;
    end

end