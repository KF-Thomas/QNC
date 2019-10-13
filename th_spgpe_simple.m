if (exist('OCTAVE_VERSION', 'builtin')) % Octave
  load ho_spgpe_groundstate.h5
  t_1 = eval('_1.t');
  x_1 = eval('_1.x');
  pos_dens_1 = eval('_1.pos_dens');
  pos_dens_1 = permute(pos_dens_1, ndims(pos_dens_1):-1:1);
  clear _1;
else % MATLAB
  t_1 = hdf5read('th_spgpe_spectral.h5', '/1/t');
  x_1 = hdf5read('th_spgpe_spectral.h5', '/1/x');
  pos_phase_1 = hdf5read('th_spgpe_spectral.h5', '/1/pos_phase');
  pos_phase_1 = permute(pos_phase_1, ndims(pos_phase_1):-1:1);
  pos_dens_1 = hdf5read('th_spgpe_spectral.h5', '/1/pos_dens');
  pos_dens_1 = permute(pos_dens_1, ndims(pos_dens_1):-1:1);
%   pos_dens_err = hdf5read('th_spgpe_spectral.h5', '/1/stderr_pos_dens');
%   pos_dens_err = permute(pos_dens_err, ndims(pos_dens_err):-1:1);
end
if (exist('OCTAVE_VERSION', 'builtin')) % Octave
  load ho_spgpe_groundstate.h5
  t_2 = eval('_2.t');
  kx_2 = eval('_2.kx');
  mom_dens_2 = eval('_2.mom_dens');
  mom_dens_2 = permute(mom_dens_2, ndims(mom_dens_2):-1:1);
  clear _2;
else % MATLAB
  t_2 = hdf5read('th_spgpe_spectral.h5', '/3/t');
  kx_2 = hdf5read('th_spgpe_spectral.h5', '/3/kx');
  mom_phase_2 = hdf5read('th_spgpe_spectral.h5', '/3/mom_phase');
  mom_phase_2 = permute(mom_phase_2, ndims(mom_phase_2):-1:1);
  mom_dens_2 = hdf5read('th_spgpe_spectral.h5', '/3/mom_dens');
  mom_dens_2 = permute(mom_dens_2, ndims(mom_dens_2):-1:1);
%   mom_dens_err = hdf5read('th_spgpe_spectral.h5', '/2/stderr_mom_dens');
%   mom_dens_err = permute(mom_dens_err, ndims(mom_dens_err):-1:1);
end
