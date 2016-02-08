## Numerical simulations files

First install the package 'ftsspec', available on [CRAN](https://cran.r-project.org/web/packages/ftsspec/index.html), e.g.  through *install.packages('ftsspec')* in R, or by downloading the binaries and installing them manually.

* *grid-density.R*:  runs the numerical simulations for the effect of the gridsize
  for a given set of parameters (to be specified within the file). The sets of
  parameters used in the paper are given in the file
  "grid-density-SIMparameters.R".

* *grid-density-SIMparameters.R* : contains the set of parameters for the
  numerical simulations for the gridsize.

* *localize-freq.R* :  runs the numerical simulations for assessing the level and
  power of the test for localizing differences between the spectral densities
  of two FTS in frequencies. This file runs the simulations 
  for a given set of parameters (to be specified within the file). The sets of
  parameters used in the paper are given in the file
  "localize-freq-SIMparameters.R".

* *localize-freq-SIMparameters.R* : contains the set of parameters for the
  numerical simulations for the localization in frequencies.

