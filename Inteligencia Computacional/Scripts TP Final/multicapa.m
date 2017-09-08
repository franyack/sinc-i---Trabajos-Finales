function [C,ep,er] = multicapa(x,yd,capas, npc,b,epoca,u,tolerancia,diferror,ponderror)
%Creo arreglo de matrices
a2=size(x);
C=cell(capas);
D2=cell(capas);
%Inicilizo los w1 al azar
for j=1:a2(2)
    for i=1:npc(1)
        w1(i,j)=rand-0.5;
    end
end

%Agrego w1 al arreglo de matrices de pesos
C{1}=w1;
for k=2:capas
    w1=zeros(npc(k),npc(k-1)+1);
    for j=1:(npc(k-1)+1)
        for i=1:npc(k)
            w1(i,j)=rand-0.5;
        end
    end
    C{k}=w1;
end
ep=0;
er=1;
%Arreglo de salidas Y de cada capa.
D=cell(capas);

while (ep<epoca && er>tolerancia)
    %Itero por cada patron
    for q=1:a2(1)
        %Matriz de pesos x Vector de entradas
        v=C{1}*x(q,:)';
        %Paso el producto interno por la funcion de activación
        y=(2./(1+exp((-b*v))))-1;
        D{1}=y;
        %Para las capas ocultas y las salidas finales calculo los Y
        %correspondientes.
        for i=2:capas
            vaux=[-1;D{i-1}];
            v=C{i}*vaux;
            y=(2./(1+exp(((-b*v)))))-1;
            D{i}=y;
        end
        %Comienzo del calculo de deltas.
        E=cell(capas);
        %Delta/s de la capa final        
        E{capas}=(yd(q,:)'-D{capas})*0.5.*(1+D{capas}).*(1-D{capas});
        for j=capas-1:-1:1
            c=C{j+1};
            c=c(:,2:end); %Quito primer columna de pesos -1
            d=D{j};
            e=E{j+1};
            e2=zeros(1,npc(j));
            for i=1:npc(j)
                cola=0.5*(1+d(i))*(1-d(i)); %cola de la derivada de la función no lineal
                for k=1:npc(j+1) %producto interno entre deltas de la capa siguiente y pesos
                    e2(i)=e2(i)+e(k)*c(k,i);
                end
                e2(i)=e2(i)*cola;
            end
            E{j}=e2;
        end
        %Actualizacion de los w en la matriz C.
        w=C{1};
        e=E{1};
        for i=1:npc(1)
            for j=1:a2(2)
                w(i,j)=w(i,j)+u*e(i)*x(q,j);
            end
        end
        C{1}=w;
        for i=2:capas
            w=C{i};
            e=E{i};
            d=D{i-1};
            for k=1:npc(i)
                vaux=[-1;d];
                for j=1:size(vaux,1)       
                    w(k,j)=w(k,j)+u*e(k)*vaux(j);
                end
                C{i}=w;
            end
        end
    end
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
    G(ep+1)=er;
    %Termina una epoca
    ep=ep+1;
end


end