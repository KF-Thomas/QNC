data = import_h5('th_spgpe_spectral','/Users/kieran/Documents/data/chi_0.0562.omega_0.0696.k0_3.67.tl_25.0_v1');
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
plot(f*pi/0.0696,P1*100)
ylim([0 4])
ylabel('F[|a_0|^2] \times 10^{-2}')
xlabel('\omega')
%%
figure(465);
clf
Y = fft(herm_dens_2(12:end,:));
L = length(t_1(12:end));
P2 = abs(Y./L);
P1 = P2(1:L/2+1,:);
P1(2:end-1,:) = 2*P1(2:end-1,:);
Fs = 1/(t_1(14)-t_1(13));
f = Fs*(0:(L/2))/L;
j = 0:(size(herm_dens_2(1,:),2)-1);
pcolor(f*pi/0.0696,j,P1'*100)
title('F[|a_j|^2] \times 10^{-2}')
ylabel('a_j')
xlabel('\omega')
caxis([0 4])
colormap(gca,'jet')
colorbar
shading flat
