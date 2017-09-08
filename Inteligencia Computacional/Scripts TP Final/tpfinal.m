% file: Carpeta donde se encuentran los datos
% Capas: Cantidad de capas del PMC
% npc: Numero de neuronas por capas
%b: para la sigmodea
%epoca: Cantidad de epocas maximas
%u: momento
%tolerancia: Error minimo para salir de iteraciones
%Diferror: Tolerancia error para cada dato
%ponderror:
%hoy
%cantdin: cantidad dias "dinamicos"
%pe:proporcion_entrenamiento
%cantidad de validaciones cruzadas

function [w,ermin,Pronostico] = tpfinal(file,capas, npc,b,epoca,u,tolerancia,diferror,ponderror,hoy,cantdin,pe,cantidad)

hoy2=hoy;
hoy=hoy(1,:);
%%MAPA AUTO ORGANIZATIVO
[etiquetahoy,X,media,varianza]= SOMfinal(file,8,8,1000,hoy);

if(size(etiquetahoy,2)~=1)
    if(size(etiquetahoy,2)<5)
        pe=0.5;
    end

    %%VALIDACION CRUZADA
    [etiquetahoy_TRN,etiquetahoy_TST] = desordenar(etiquetahoy,pe,cantidad);
    ermin=1;
    for i=1:cantidad
        %ENTRENAMIENTO
        [x,yd] = hacerdinamico(X,etiquetahoy_TRN(i),cantdin);
        [C,~,~] = multicapa(x,yd,capas, npc,b,epoca,u,tolerancia,diferror,ponderror);
        %PRUEBA
        [x,yd] = hacerdinamico(X,etiquetahoy_TST(i),cantdin);
        er = multicapaprueba(x,yd, capas, b,diferror,ponderror,C);
        if(er<ermin)
            ermin=er;
            w=C;
        end
    end
    %PRONOSTICO DE "MAÑANA"
    if(size(hoy2,1)==cantdin+1)
        Pronostico =  multicapacalculo(hoy2, capas, b,w,media,varianza);
    end
end
end