function[pos_clasico,E_clasico,media_clasico,varianza_clasico,zcr_clasico,coeficientes_clasico] = plantillaclasica
    coeficientes_clasico = cell(3,1);
    [x,fs] = audioread('Clasico/clasica1.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i = 1:3
        pos_aux(i) = pos(i);
        E_aux(i) = E(i);
        media_aux(i) = media(i);
        varianza_aux(i) = varianza(i);
        zcr_aux(i) = zcr(i);
        coeficientes_clasico{i} = coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica2.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i)  + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i) + zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica3.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica4.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica5.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
   [x,fs] = audioread('Clasico/clasica6.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica7.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica8.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica9.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    [x,fs] = audioread('Clasico/clasica10.mp3');
    [pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
    for i=1:3
       pos_aux(i) = pos_aux(i) + pos(i);
       E_aux(i) = E_aux(i) + E(i);
       media_aux(i) = media_aux(i) + media(i);
       varianza_aux(i) = varianza_aux(i) + varianza(i);
       zcr_aux(i) = zcr_aux(i)+ zcr(i);
       coeficientes_clasico{i} = coeficientes_clasico{i} + coeficientes{i};
    end
    
    for i=1:3
       pos_clasico(i) = pos_aux(i)/10;
       E_clasico(i) = E_aux(i)/10;
       media_clasico(i) = media_aux(i)/10;
       varianza_clasico(i)=varianza_aux(i)/10;
       zcr_clasico(i)=zcr_aux(i)/10;
       coeficientes_clasico{i} = coeficientes_clasico{i}/10;
    end

end