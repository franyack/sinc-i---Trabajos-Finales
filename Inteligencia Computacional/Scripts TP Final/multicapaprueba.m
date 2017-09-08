function [er] = multicapaprueba(x,yd, capas, b,diferror,ponderror,C)
%Creo arreglo de matrices
a2=size(x);
D2=cell(capas);
%Ahora vuelvo a hacer el proceso, sin actualizar nada, para contar la
%tasa de erroes
error=0;
for q=1:a2(1)
    %Matriz de pesos x Vector de entradas
    v=C{1}*x(q,:)';
    %Paso el producto interno por la funcion de activación
    y=(2./(1+exp(((-b*v)))))-1;
    D2{1}=y;
    %Para las capas ocultas y las salidas finales calculo los Y
    %correspondientes.
    for i=2:capas
        vaux=[-1;D2{i-1}];
        v=C{i}*vaux;
        y=(2./(1+exp(((-b*v)))))-1;
        D2{i}=y;
    end
    for i=1:size(diferror,2)
        if(abs(D2{capas}(i)-yd(q,i))>diferror(i))
            vect_error(i)=1;
        else
            vect_error(i)=0;
        end
    end
    %D2{capas}
    %yd(q,:)
    % pause(1);
    errorpond=ponderror*vect_error';
    if(errorpond > 0.4 )
        error=error+errorpond;
    end
end
er=error/a2(1);



end