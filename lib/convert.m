function [pos_dens_ho_avg mom_dens_ho_avg initial_pos, initial_mom, relax_pos, relax_mom, chi, omega_tilde, k0_ho, x_ho, kx_ho] = convert(current)
if current=='s'
    th_spgpe_simple
else
    th_spgpe_groundstate
end

folder_title = pwd;

chi_indx = strfind(folder_title,'chi_');
omega_indx = strfind(folder_title,'omega_');
k0_indx = strfind(folder_title,'k0_');
kcut_indx = strfind(folder_title,'kcut_');
tl_indx = strfind(folder_title,'tl_');

chi = str2double(folder_title(chi_indx+4:omega_indx-2));
omega_tilde = str2double(folder_title(omega_indx+6:k0_indx-2));
k0 = str2double(folder_title(k0_indx+3:kcut_indx-2));
kcut = str2double(folder_title(kcut_indx+5:tl_indx-2));
tl = str2double(folder_title(tl_indx+3:end));

%const.
hbar=1.05457148e-34;
kb = 1.38065e-23;

%parameters of species
m=1.4427e-25; % mass of Rb-87 atoms = 86.909180527*1.66e-27
%m=6.646477e-27; % mass of metastable Hellium
a = 5.313e-9; % a_11=100.4* 5.291772e-11
%a = 7.512e-9; % s wave scattering length of metastable helium 

gamma = 1;

t_ho = t_1.*omega_tilde;
x_ho = x_1.*chi^(-1/3)*omega_tilde^(1/2);

t_ho_2 = t_2.*omega_tilde;
kx_ho = kx_2.*chi^(1/3)*omega_tilde^(-1/2);

k0_ho=round(k0*chi^(1/3)*omega_tilde^(-1/2),3);

pos_dens_ho_avg = chi^(2/3)/(omega_tilde*gamma)^(1/2).*pos_dens_1;
mom_dens_ho_avg = (omega_tilde/gamma)^(1/2).*mom_dens_2;

if mod(length(t_ho),50)==11
    teq=11;
else
    teq=51;
end

if current=='s'
    initial_pos = pos_dens_ho_avg(teq,:);
    relax_pos = mean(pos_dens_ho_avg(end-99:end,:));
    initial_mom = mom_dens_ho_avg(teq,:);
    relax_mom = mean(mom_dens_ho_avg(end-99:end,:));
else
    initial_pos = mean(pos_dens_ho_avg(end-180:end,:));
    initial_mom = mean(mom_dens_ho_avg(end-180:end,:));
    relax_pos = [];
    relax_mom = [];
end
