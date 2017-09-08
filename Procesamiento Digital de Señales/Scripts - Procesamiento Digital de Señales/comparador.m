function [rock_cont,cumbia_cont,clasico_cont] = comparador(x,fs)

[pos,E,media,varianza,zcr,coeficientes] =  caracteristicas(x,fs);
[pos_rock,E_rock,media_rock,varianza_rock,zcr_rock,coeficientes_rock] = plantillarock;
[pos_cumbia,E_cumbia,media_cumbia,varianza_cumbia,zcr_cumbia,coeficientes_cumbia] = plantillacumbia;
[pos_clasico,E_clasico,media_clasico,varianza_clasico,zcr_clasico,coeficientes_clasico] = plantillaclasica;
cumbia_cont = zeros(3,1);
rock_cont = zeros(3,1);
clasico_cont = zeros(3,1);
for i =1:3
    rock=norm(pos_rock(i) - pos(i));
    cumbia=norm(pos_cumbia(i) - pos(i));
    clasico = norm(pos_clasico(i) - pos(i));
    aux = [rock cumbia clasico];
    [~,I] = min(aux);
    if(I == 1)
        rock_cont(i) = rock_cont(i) + 1;
    else
        if(I == 2)
            cumbia_cont(i) = cumbia_cont(i) + 1;
        else
            clasico_cont(i) = clasico_cont(i) + 1;
        end
    end
    
    rock=norm(E_rock(i) - E(i));
    cumbia=norm(E_cumbia(i) - E(i));
    clasico = norm(E_clasico(i) - E(i));
    aux = [rock cumbia clasico];
    [~,I] = min(aux);
    if(I == 1)
        rock_cont(i) = rock_cont(i) + 1;
    else
        if(I == 2)
            cumbia_cont(i) = cumbia_cont(i) + 1;
        else
            clasico_cont(i) = clasico_cont(i) + 1;
        end
    end
    
     rock=norm(media_rock(i) - media(i));
    cumbia=norm(media_cumbia(i) - media(i));
    clasico = norm(media_clasico(i) - media(i));
    aux = [rock cumbia clasico];
    [~,I] = min(aux);
    if(I == 1)
        rock_cont(i) = rock_cont(i) + 1;
    else
        if(I == 2)
            cumbia_cont(i) = cumbia_cont(i) + 1;
        else
            clasico_cont(i) = clasico_cont(i) + 1;
        end
    end
    
    rock=norm(varianza_rock(i) - varianza(i));
    cumbia=norm(varianza_cumbia(i) - varianza(i));
    clasico = norm(varianza_clasico(i) - varianza(i));
    aux = [rock cumbia clasico];
    [~,I] = min(aux);
    if(I == 1)
        rock_cont(i) = rock_cont(i) + 1;
    else
        if(I == 2)
            cumbia_cont(i) = cumbia_cont(i) + 1;
        else
            clasico_cont(i) = clasico_cont(i) + 1;
        end
    end
    
    rock=norm(zcr_rock(i) - zcr(i));
    cumbia=norm(zcr_cumbia(i) - zcr(i));
    clasico = norm(zcr_clasico(i) - zcr(i));
    aux = [rock cumbia clasico];
    [~,I] = min(aux);
    if(I == 1)
        rock_cont(i) = rock_cont(i) + 1;
    else
        if(I == 2)
            cumbia_cont(i) = cumbia_cont(i) + 1;
        else
            clasico_cont(i) = clasico_cont(i) + 1;
        end
    end
    
    coerock = coeficientes_rock{i};
    coecumbia = coeficientes_cumbia{i};
    coeclasico = coeficientes_clasico{i};
    coe = coeficientes{i};
    for j = 1:15
        rock=norm(coerock(j) - coe(j));
        cumbia=norm(coecumbia(j) - coe(j));
        clasico = norm(coeclasico(j) - coe(j));
        aux = [rock cumbia clasico];
        [~,I] = min(aux);
        if(I == 1)
            rock_cont(i) = rock_cont(i) + 0.5;
        else
            if(I == 2)
                cumbia_cont(i) = cumbia_cont(i) + 0.5;
            else
                clasico_cont(i) = clasico_cont(i) + 0.5;
            end
        end 
    
    end

end
end
