% th_spgpe_spectral
figure(1001);
hold on
plot(t_1(12:end)-t_1(12),herm_dens_2(12:end,1))
xlabel('t')
ylabel('|a_0|^2')
figure(9909);
hold on
Y = fft(herm_dens_2(12:end,1));
L = length(t_1(12:end));
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
Fs = 1/(t_1(14)-t_1(13));
f = Fs*(0:(L/2))/L;
plot(f/0.0696,P1)
