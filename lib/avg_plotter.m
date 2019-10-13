clear all
th_spgpe_spectral
num_periods = 25;
period_length = round(5000/50);
freq = 1;
W = zeros(num_periods,1);
figure(55);
clf
period_indx = 1:3;
avg_mom = mean(mom_dens_3(period_indx,:));
%plot(kx_3,avg_mom)
plot(kx_3,mom_dens_3(period_indx,:))
hold on
for ii = 0:freq:(num_periods-1)
    period_indx = (11+ii*period_length):(11+(ii+1)*period_length);
    avg_mom = mean(mom_dens_3(period_indx,:));
    plot(kx_3,avg_mom)
    xlabel('k')
    ylabel('n(k)')
end

figure(56);
clf
period_indx = 1:11;
avg_mom = mean(mom_dens_3(period_indx,:).*(kx_3.^2)');
plot(kx_3,avg_mom)
hold on
for ii = 0:freq:(num_periods-1)
    period_indx = (11+ii*period_length):(11+(ii+1)*period_length);
    avg_kin = mean(mom_dens_3(period_indx,:).*(kx_3.^2)');
    avg_mom = mean(mom_dens_3(period_indx,:));
    W(ii+1) = trapz(kx_3,avg_kin)./trapz(kx_3,avg_mom);
    plot(kx_3,avg_kin)
    xlabel('k')
    ylabel('n(k)*k^2')
end
figure(66);
clf
% ft = fittype('a*exp(-b*x)+c');
% f = fit((4:length(W)).', W(4:end).', ft,'StartPoint', [W(1)-W(end),1.0, W(end)], 'Lower',[-Inf,0,0])
xr = linspace(0,50);
best_fit = -0.2*exp(-0.2*xr)+5.6;
plot(W)
hold on
plot(xr,best_fit)