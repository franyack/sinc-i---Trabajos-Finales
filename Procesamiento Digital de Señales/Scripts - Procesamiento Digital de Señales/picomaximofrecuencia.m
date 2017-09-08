function pos = picomaximofrecuencia(x)
    
    fftx = fft(x);
    [C,pos] = max(abs(fftx));
    pos = pos -1;

end