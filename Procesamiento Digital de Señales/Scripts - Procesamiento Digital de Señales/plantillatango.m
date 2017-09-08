function[pos_tango,E_tango,media_tango,varianza_tango,zcr_tango,coeficientes_tango] = plantillatango
    coeficientes_tango = cell(3,1);
    [x,fs] = audioread('Tango/tango1.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i = 1:3
        pos_aux(i) = pos(i);
        E_aux(i) = E(i);
        media_aux(i) = media(i);
        varianza_aux(i) = varianza(i);
        zcr_aux(i) = zcr(i);
        coeficientes_tango{i} = coeficientes{i};
        
    end
    
    [x,fs] = audioread('Tango/tango2.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i)  + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i) + zcr(i);
        coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango3.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango4.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango5.mp3');
   [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
   [x,fs] = audioread('Tango/tango6.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango7.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango8.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango9.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    [x,fs] = audioread('Tango/tango10.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_tango{i} =  coeficientes_tango{i} +  coeficientes{i};
    end
    
    for i=1:3
       pos_tango(i) = pos_aux(i)/10;
       E_tango(i) = E_aux(i)/10;
       media_tango(i) = media_aux(i)/10;
       varianza_tango(i)=varianza_aux(i)/10;
       zcr_tango(i)=zcr_aux(i)/10;
       coeficientes_tango{i} = coeficientes_tango{i}/10;
    end

end