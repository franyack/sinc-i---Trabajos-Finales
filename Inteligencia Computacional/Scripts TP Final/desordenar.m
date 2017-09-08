function [etiquetahoy_TRN,etiquetahoy_TST] = desordenar(etiquetahoy,proporcion_entrenamiento,cantidad)
%Nombres de archivos csv para guardar entrenamiento y prueba
a=size(etiquetahoy);
n=a(2);
s=size(etiquetahoy);
%Cantidad de ejemplos de entrenamiento
z = n * proporcion_entrenamiento / 100;
%Por cada particion que se quiera hacer

%Arranco en una posicion aleatoria de los datos del archivo
for i=1:cantidad
p=randperm(n);
etiquetahoy_TRN(i,:)=[etiquetahoy(p(1:round(z+0.5)))];
etiquetahoy_TST(i,:)=[etiquetahoy(p((z)+1:end))];
end
end
