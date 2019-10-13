data = import_h5('th_spgpe_spectral','/Users/kieran/Documents/data/chi_0.0562.omega_0.0696.k0_1.16.tl_50.0_v2');
t_1 = data.t_1;
herm_dens_2 = data.herm_dens_2;
figure(1001);
subplot(1,2,1)
plot(t_1(12:end)-t_1(12),herm_dens_2(12:end,1))
xlabel('t')
ylabel('|a_0|^2')
subplot(1,2,2)
Y = fft(herm_dens_2(12:end,1));
L = length(t_1(12:end));
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
Fs = 1/(t_1(14)-t_1(13));
f = Fs*(0:(L/2))/L;
plot(f/0.0696,P1*100)
ylim([0 40])
ylabel('F[|a_0|^2] \times 10^{-2}')
xlabel('\omega')
