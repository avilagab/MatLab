t1 = 0:.001:.05;
y1 = 350*sin(2*pi*40*t1);
t2 = .05:0.001:.25;
x2 = 40*sin(2*pi*125*t2) + 20*sin(2*pi*287*t2) + 10*sin(2*pi*29*t2);
y2 = x2 + +4*randn(size(t2));

x = [t1, t2];
y = [y1, y2];
figure;
plot(y(1:250));
title('Señal de prueba');
Y = fft(y,251);
Pyy = Y.*conj(Y)/251;
f = 1000/251*(0:127);
figure;
plot(f,Pyy(1:128));
title('Power spectral density');
xlabel('Frequency (Hz)');