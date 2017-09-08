function [w]= SOMfac(X,m,n,etapas,graficar)
%m filas pesos
%n columnas pesos
clc;
w=cell(m,n);
% p=randperm(size(X,1));
for i=1:m
    for j=1:n
        %w{i,j}=X(p(m*i+n*j),:);
        w{i,j}=rand(1,size(X,2))-1000;
    end
end
p=randperm(size(X,1));
X=X(p,:);

vecindad=max(m,n)/2;
alfa=0.7;
alfa2=0.1;
alfa3=0.05;
%%TOPOLOGICO
eptopo=etapas*.2;
%Calculo cada cuanto baja
%%TRANSICION
eptransicion=etapas*.5;
salto=(alfa-alfa2)/(eptransicion-eptopo);
saltovecindad=(vecindad-1)/(eptransicion-eptopo);
%%convergencia
epconvergencia=etapas;

for epoca=1:epconvergencia
    if(epoca<eptransicion && epoca>eptopo)
        vecindad=vecindad-saltovecindad;
        alfa=alfa-salto;
    end
    if(epoca==eptransicion)
        alfa=alfa3;
        vecindad=0.01;
    end
    %%para cada patron
    for l=1:size(X,1)
        minimo=norm(w{1,1}-X(l,:));
        indices=[1 1];
        %CALCULO EL W MAS CERCA DEL PATRON XL
        for i=1:m
            for j=1:n
                aux=norm(w{i,j}-X(l,:));
                if(aux<minimo)
                    minimo=aux;
                    indices=[i j];
                end
            end
        end
        %ACTUALIZO W VECINOS DEL GANADOR
%         ganadores=indices;
        for i=1:m
            for j=1:n
                if(abs(i-indices(1))+abs(j-indices(2))<=round(vecindad-.5))
                    w{i,j}=w{i,j} + alfa * (X(l,:)-w{i,j});
%                     ganadores=[ganadores; i j];
                end
            end
        end
    end
    if graficar
    plotpesos(w,m,n,X,vecindad)
    end
    ['Epoca ' int2str(epoca) ' Tasa aprendisaje: ' num2str(alfa) ' Vecindad: ' int2str(round(vecindad-.5))]
end
end

function [m]=plotpesos(w,m,n,X,vecindad)
clf;
hold on
scatter(X(:,1),X(:,2),'filled');
for i=1:m
    for j=1:n
        plot(w{i,j}(1),w{i,j}(2),'x r','LineWidth',2);
        for k=1:m
            for l=1:n
                if(abs(i-k)+abs(j-l)<=round(vecindad-.5))
                    plot([w{i,j}(1) w{k,l}(1)],[w{i,j}(2) w{k,l}(2)],'g');
                    %                     ganadores=[ganadores; i j];
                end
            end
        end
    end
end

drawnow;
% figure(2)
% clf;
% hold on
% for i=1:m
%     for j=1:n
%         plot(i,j,'o');
%     end
% end
% plot(ganadores(1,1),ganadores(1,2),'o g','LineWidth',3);
% for i=2:size(ganadores,1)
%         plot(ganadores(i,1),ganadores(i,2),'x r','LineWidth',2);
% end

end