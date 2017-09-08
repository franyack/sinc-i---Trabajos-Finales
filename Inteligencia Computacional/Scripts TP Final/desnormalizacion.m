function [Pronostico] = desnormalizacion(Pronostico,maximo,minimo)

for i=1:6 %<----------------------------
    Pronostico(i)=(Pronostico(i)+1)/2;
    mag(i)=abs(maximo(i)-minimo(i));
    Pronostico(i)=Pronostico(i)*mag(i);
    Pronostico(i)=Pronostico(i)+minimo(i);
end



end