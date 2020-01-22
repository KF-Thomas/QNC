clear all
data = import_h5('th_spgpe_spectral','/Users/kieran/Documents/data/chi_0.0562.omega_0.0696.k0_1.16.tl_50.0_v2');
t_1 = data.t_1;
t_2 = data.t_2;
t_3 = data.t_3;
x_1 = data.x_1;
kx_3 = data.kx_3;
nx_2 = data.nx_2;
pos_dens_1 = data.pos_dens_1;
herm_dens_2 = data.herm_dens_2;
mom_dens_3 = data.mom_dens_3;
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
%%
t_indx = t_1<(5.*(2*pi)/omega+t_1(11));

figure(110);
subplot(1,3,1)
pcolor((t_1(t_indx)-t_1(11)).*omega/(2*pi),x_1,pos_dens_1(t_indx,:)')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('x')
title('position')
colorbar
colormap(gca,'default')
caxis([0 h*max(pos_dens_1,[],'all')])
subplot(1,3,2)
pcolor((t_3(t_indx)-t_3(11)).*omega/(2*pi),kx_3,mom_dens_3(t_indx,:)')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('k')
title('momentum')
colorbar
colormap(gca,'hot')
caxis([0 0.1*max(mom_dens_3,[],'all')])
subplot(1,3,3)
pcolor((t_2(t_indx)-t_2(11)).*omega/(2*pi),nx_2,herm_dens_2(t_indx,:)')
shading flat
xlabel('t \omega/(2\pi)')
ylabel('a_j')
title('hermite-gauss')
colormap(gca,'jet')
colorbar
caxis([0 0.03*max(herm_dens_2,[],'all')])
