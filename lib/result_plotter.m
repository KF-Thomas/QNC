% clear all
% th_spgpe_spectral
h=0.5;
omega=0.0696;
figure(108);
subplot(1,3,1)
pcolor((t_1-t_1(11)).*omega/(2*pi),x_1,pos_dens_1')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('x')
title('position')
colorbar
colormap(gca,'default')
caxis([0 h*max(pos_dens_1,[],'all')])
subplot(1,3,2)
pcolor((t_3-t_3(11)).*omega/(2*pi),kx_3,mom_dens_3')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('k')
title('momentum')
colorbar
colormap(gca,'hot')
caxis([0 0.1*max(mom_dens_3,[],'all')])
subplot(1,3,3)
pcolor((t_2-t_2(11)).*omega/(2*pi),nx_2,herm_dens_2')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('a_j')
title('hermite-gauss')
colormap(gca,'jet')
colorbar
caxis([0 0.03*max(herm_dens_2,[],'all')])

% figure(109);
% pcolor((t_3-t_3(11)).*omega/(2*pi),kx_3,mom_dens_3'.*kx_3.^2)
% shading flat
% xlabel('t')
% ylabel('k')
% colormap hot
% caxis([0 0.06*max(mom_dens_3'.*kx_3.^2,[],'all')])