function data = import_h5(file_name,directory)
full_path = [directory,'/',file_name,'.h5'];
try
  data.t_1 = hdf5read(full_path, '/1/t');
  data.x_1 = hdf5read(full_path, '/1/x');
  data.pos_dens_1 = hdf5read(full_path, '/1/pos_dens');
  data.pos_dens_1 = permute(data.pos_dens_1, ndims(data.pos_dens_1):-1:1);
  data.pos_phase_1 = hdf5read(full_path, '/1/pos_phase');
  data.pos_phase_1 = permute(data.pos_phase_1, ndims(data.pos_phase_1):-1:1);
  data.t_2 = hdf5read(full_path, '/2/t');
  data.nx_2 = hdf5read(full_path, '/2/nx');
  data.herm_dens_2 = hdf5read(full_path, '/2/herm_dens');
  data.herm_dens_2 = permute(data.herm_dens_2, ndims(data.herm_dens_2):-1:1);
  data.herm_phase_2 = hdf5read(full_path, '/2/herm_phase');
  data.herm_phase_2 = permute(data.herm_phase_2, ndims(data.herm_phase_2):-1:1);
  data.t_3 = hdf5read(full_path, '/3/t');
  data.kx_3 = hdf5read(full_path, '/3/kx');
  data.mom_dens_3 = hdf5read(full_path, '/3/mom_dens');
  data.mom_dens_3 = permute(data.mom_dens_3, ndims(data.mom_dens_3):-1:1);
  data.mom_phase_3 = hdf5read(full_path, '/3/mom_phase');
  data.mom_phase_3 = permute(data.mom_phase_3, ndims(data.mom_phase_3):-1:1);
catch
  data.t_1 = hdf5read(full_path, '/1/t');
  data.x_1 = hdf5read(full_path, '/1/x');
  data.pos_dens_1 = hdf5read(full_path, '/1/mean_pos_dens');
  data.pos_dens_1 = permute(data.pos_dens_1, ndims(data.pos_dens_1):-1:1);
  data.pos_phase_1 = hdf5read(full_path, '/1/mean_pos_phase');
  data.pos_phase_1 = permute(data.pos_phase_1, ndims(data.pos_phase_1):-1:1);
  data.t_2 = hdf5read(full_path, '/2/t');
  data.nx_2 = hdf5read(full_path, '/2/nx');
  data.herm_dens_2 = hdf5read(full_path, '/2/mean_herm_dens');
  data.herm_dens_2 = permute(data.herm_dens_2, ndims(data.herm_dens_2):-1:1);
  data.herm_phase_2 = hdf5read(full_path, '/2/mean_herm_phase');
  data.herm_phase_2 = permute(data.herm_phase_2, ndims(data.herm_phase_2):-1:1);
  data.t_3 = hdf5read(full_path, '/3/t');
  data.kx_3 = hdf5read(full_path, '/3/kx');
  data.mom_dens_3 = hdf5read(full_path, '/3/mean_mom_dens');
  data.mom_dens_3 = permute(data.mom_dens_3, ndims(data.mom_dens_3):-1:1);
  data.mom_phase_3 = hdf5read(full_path, '/3/mean_mom_phase');
  data.mom_phase_3 = permute(data.mom_phase_3, ndims(data.mom_phase_3):-1:1);  
end

end