function [media,varianza]= flujoespectral(x)
    N = length(x);
    if(mod(N,2) ~= 0)
      x = x(1:end-1);
    end
    N = length(x);
    x1 = x(1:N/2);
    x2 = x(N/2+1:end);
    ventana = hann(length(x1));
    x1 = x1 .* ventana;
    fft1 = fft(x1);
    ventana = hann(length(x2));
    x2 = x2 .* ventana;
    fft2 = fft(x2);
    resultado = abs(fft1) - abs(fft2);
    resultado = resultado .^2 ;
    media = mean(resultado);
    varianza = var(resultado);
end