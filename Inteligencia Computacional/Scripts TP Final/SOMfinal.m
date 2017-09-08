function [etiquetahoy,X,media,varianza]= SOMfinal(file,m,n,etapas,hoy)
etiquetas=0;
X=dlmread(file);

[x3,media,varianza] = normalizacion(X,hoy);
X=x3;


w = SOMfac(X,m,n,etapas,0);
[etiquetas,w] = etiquetados(X,w,m,n);

minimo=Inf;
for j=1:size(w,1)
        aux=norm(w{j}-hoy);
        if(aux<minimo)
            minimo=aux;
            indice=j;
        end
end

etiquetahoy=etiquetas{indice};

end