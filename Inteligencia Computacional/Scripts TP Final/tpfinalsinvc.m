function [C,er2,Pr,maximo,minimo,x,yd] = tpfinalsinvc(file,capas, npc,b,epoca,u,tolerancia,diferror,ponderror,hoy,cantdin)
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

hoy2=hoy;
hoy=hoy(1,:);

[etiquetahoy,X,minimo,maximo]= SOMfinal(file,9,9,1000,hoy);

[x,yd] = hacerdinamico(X,etiquetahoy,cantdin);

[C,~,er2] = multicapa(x,yd,capas, npc,b,epoca,u,tolerancia,diferror,ponderror);

if(size(hoy2,1)==cantdin+1)
%     [x,yd] = hacerdinamico(X,etiquetahoy,cantdin);
    Pr = multicapacalculo(hoy2, capas, b,C,maximo,minimo);
end

end