function [x,yd] = hacerdinamicof(file,etiquetahoy,cant)

X=dlmread(file);

x=[];
yd=[];
aux=1;

for i=1:size(etiquetahoy,2)
    if etiquetahoy(i)>cant && etiquetahoy(i)<size(X,1)
        aux2=[];
        for j=0:cant
            aux2=[aux2 X(etiquetahoy(i)-j,:)];
        end
        x(aux,:)=aux2;
        yd(aux,:)=[X(etiquetahoy(i)+1,:)];
        aux=aux+1;
    end
end

end
