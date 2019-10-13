%lattice="402"  spectral_lattice="401"
data = [15.0,277.86
    ];
%lattice="602"  spectral_lattice="601"
bench_data = [1.0,177.89
    5.0,294.85
    15.0,611.42
    ];
%q0=3.67
data = [0.1,285.03
    ];
%lattice="802"  spectral_lattice="801"
%q0=3.67
data = [0.1,539.13
    0.5,479.71
    0.5,339.57
    ];
%lattice="902"  spectral_lattice="701"
data = [15.0,1004.73
    ];
figure(133);
scatter(bench_data(:,1),bench_data(:,2))