function [Pronostico] = multicapacalculo(x, capas, b,C,media,varianza)
%Creo arreglo de matrices
D2=cell(capas);
%Ahora vuelvo a hacer el proceso, sin actualizar nada, para contar la
%tasa de erroes
%Matriz de pesos x Vector de entradas
v=C{1}*x';
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

Pronostico=D2{capas};
for i=1:6
    Pronostico(i)=Pronostico(i).*varianza(i);
    Pronostico(i)=Pronostico(i)+media(i);
end