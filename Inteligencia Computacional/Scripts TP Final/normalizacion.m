function [x3,media,varianza] = normalizacion(X,hoy)
media=mean([X;hoy]);
varianza=var([X;hoy]);
for i=1:6
    X(:,i)=X(:,i)-media(i);
    X(:,i)=X(:,i)./varianza(i);
    hoy(i)=hoy(i)-media(i);
    hoy(i)=hoy(i)./varianza(i);
end

x3=X;

% for i=1:size(X,2)
%     minimoN(i)=min(X(:,i));
%     maximoN(i)=max(X(:,i));
%     mag(i)=abs(maximoN(i)-minimoN(i));
%     x3(:,i)=X(:,i)-minimoN(i);
%     x3(:,i)=x3(:,i)/mag(i);
%     x3(:,i)=2*x3(:,i)-1;
%     hoy(i)=hoy(i)-minimoN(i);
%     hoy(i)=hoy(i)/mag(i);
%     hoy(i)=2*hoy(i)-1;
% end

end