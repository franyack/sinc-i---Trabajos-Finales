[x,fs] = audioread('Rock/rock5.mp3');
primero = x(fs*60:fs*79,1);
ventana = hann(length(primero));
primero = primero .* ventana;
C = (log(abs(fft(primero))));
f = 0:fs/length(C):fs/2;

Fmel = 1000 * log2(1+((fs/2)/1000));
k = linspace(0,Fmel,40);
k = 1000 * (2.^(k/1000) -1 );
i = 1;
while(k(3)>f(i))
    i = i+1;
end
t(1) = bartlett(length(C(1:i)))' * C(1:i);
for j=2:length(k)-2
   i = 1;
   p = 1;
   while( k(j)>f(i))
       i = i+1;
   end
   while(k(j+2) > f(p) && f(p) ~= f(end))
       p = p+1;
   end
   t(j) = bartlett(length(C(i:p)))' * C(i:p);
   
end
t = ifft(t);
t = real(t);


% Calculo en mel cuanto es 22050
%Divido por 27
%Vuelvo a calcular en hz cada valor restando lo que dividi antes obteniendo
%los centros de los filtros
%Hago el producto punto de mi señal C por cada uno de los triangulos
%obteniendo cada uno de los coeficientes
%A estos coeficientes les hago la anti transformada y tomo los 12 primeros
%en orden