function [etiquetas2,w2]= etiquetados(X,w,m,n)
etiquetas=cell(m*n,1);
for i=1:size(X,1)
    minimo=1000;
    for j=1:m
        for k=1:n
            aux=norm(w{j,k}-X(i,:));
            if(aux<minimo)
                minimo=aux;
                indices=[j k];
            end
        end
    end
    etiquetas{indices(1)*indices(2)}=[etiquetas{indices(1)*indices(2)} i];
end
contar=0;
cuales=[];
for i=1:m*n
    if size(etiquetas{i},1) ~= 0
        contar=contar+1;
        cuales=[cuales i];
    end
end
etiquetas2=cell(contar,1);
w2=cell(contar,1);
for i=1:contar
    w2{i}=w{cuales(i)};
    etiquetas2{i}=etiquetas{cuales(i)};    
end


    
