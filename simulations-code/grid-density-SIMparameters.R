sim.name="grid.density-wiener-T512-ma.diff0-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3000 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3001 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3002 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-wiener-T512-ma.diff0.1-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.1 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3003 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0.1-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.1 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3004 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0.1-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.1 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3005 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-wiener-T512-ma.diff0.2-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.2 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3006 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0.2-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.2 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3007 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0.2-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.2 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3008 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-wiener-T512-ma.diff0.3-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.3 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3009 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0.3-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.3 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3010 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0.3-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.3 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3011 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-wiener-T512-ma.diff0.4-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.4 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3012 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0.4-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.4 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3013 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0.4-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.4 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3014 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-wiener-T512-ma.diff0.5-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.5 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3015 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-white-noise-T512-ma.diff0.5-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="white-noise" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.5 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3016 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


sim.name="grid.density-student5-T512-ma.diff0.5-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="student5" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0.5 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=512 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3017 # simulation seed (for reproducibility)
subgrid.density.seq=c(1,10,20,50,100) # the subgrid.densities for which the spectral density operators are compared  
subgrid.density.relative.to.bandwidth=FALSE # is subgrid.density given relatively to the bandwidth?



##################################################


