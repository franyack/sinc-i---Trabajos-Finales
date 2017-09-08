function[pos_cumbia,E_cumbia,media_cumbia,varianza_cumbia,zcr_cumbia,coeficientes_cumbia] = plantillacumbia
    coeficientes_cumbia = cell(3,1);
    [x,fs] = audioread('Cumbia/cumbia1.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i = 1:3
        pos_aux(i) = pos(i);
        E_aux(i) = E(i);
        media_aux(i) = media(i);
        varianza_aux(i) = varianza(i);
        zcr_aux(i) = zcr(i);
        coeficientes_cumbia{i} = coeficientes{i};
        
    end
    
    [x,fs] = audioread('Cumbia/cumbia2.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i)  + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i) + zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia3.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia4.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia5.mp3');
   [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
   [x,fs] = audioread('Cumbia/cumbia6.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia7.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia8.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia9.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Cumbia/cumbia10.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_cumbia{i} = coeficientes_cumbia{i} +  coeficientes{i};
    end
    
    for i=1:3
       pos_cumbia(i) = pos_aux(i)/10;
       E_cumbia(i) = E_aux(i)/10;
       media_cumbia(i) = media_aux(i)/10;
       varianza_cumbia(i)=varianza_aux(i)/10;
       zcr_cumbia(i)=zcr_aux(i)/10;
       coeficientes_cumbia{i} = coeficientes_cumbia{i}/10;
    end

end