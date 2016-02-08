######## Simulation parameters
sim.name="locfreq--wiener-T64-ma.diff0-a.smooth0-d.n20" # The name of the simulation
B=1000 # The number of replicates
d.ts=20 # Dimension of the FTS
d.n=20 # Dimension of the noise process driving the MA
noise.type="wiener" # 
ma.scale=c(-1.4,2.3,-2) # scaling of the MA filter
ma.diff.index=3 # which index of the MA filter differs between the two FTS
ma.diff=0 # by how much it differs
a.smooth.coef=0 # coefficient for scaling the entries of the MA filter dimensionwise (not varying in these simulations)
T.len=64 # Length of the FTS that is simulated
K=5 # Number of subspaces into which the test is projected
simulation.seed=3000 # simulation seed (for reproducibility)
subgrid.density=10 # density of the (frequency) subgrid on which the two spectral density operators are compared
subgrid.density.relative.to.bandwidth=TRUE # is subgrid.density given relatively to the bandwidth?
######## (END) Simulation parameters


# list of variables that need to be specified
var.names<- c("T.len", "B", "d.ts", "d.n", "sim.name",  "noise.type", "ma.scale", "ma.diff.index", "ma.diff", "a.smooth.coef", "K", "simulation.seed", "subgrid.density", 'subgrid.density.relative.to.bandwidth' )
#check if all variables are specified
for(i in 1:length(var.names)) if (!exists(var.names[i])){ print(paste("Variable", var.names[i], "missing")); quit(save="no"); }

verbose=0

## Load all the necessary functions
library(ftsspec, logical=TRUE) || stop('package ftsspec not available')

MA.len=length(ma.scale)
T.len=nextn(T.len)
B.T=T.len^(-1/5)


############################## Generating the filter 'a'
ma.scale2=ma.scale1=ma.scale
ma.scale2[ma.diff.index] = ma.scale2[ma.diff.index]+ma.diff
a1=Generate_filterMA(d.ts, d.n, MA.len=MA.len, ma.scale=ma.scale1)
a2=Generate_filterMA(d.ts, d.n, MA.len=MA.len, ma.scale=ma.scale2)

### Look at the trace spectrum of the two spectral densities
specdK.ma1<-SpecMA(a1,T.len/2, noise.type)
specdK.ma2<-SpecMA(a2,T.len/2, noise.type)


## get the size of some parameters that determine the size of the result variables
X.tmp=Simulate_new_MA(a1, T.len, noise.type)
Y.tmp=Simulate_new_MA(a1, T.len, noise.type)
tmp=Spec_compare_localize_freq(X.tmp, Y.tmp, B.T=B.T, W=Epanechnikov_kernel, autok=0, subgrid.density=subgrid.density, verbose=0, demean=FALSE, K.fixed=1, subgrid.density.relative.to.bandwidth)
omega=tmp$omega
m=tmp$m
bw=tmp$bw
rm(X.tmp, Y.tmp, tmp)

### create result variables
raw.pvalues.allk  = array(NA, c(B, length(omega), K) )
raw.pvalues.autok1= array(NA, c(B, length(omega)) )
raw.pvalues.autok2= array(NA, c(B, length(omega)) )
holm.adj.pvalues.autok1= array(NA, c(B, length(omega)) )
holm.adj.pvalues.autok2= array(NA, c(B, length(omega)) )
K1                = array(NA, c(B, length(omega)) )
K2                = array(NA, c(B, length(omega)) )

## start replications
set.seed(simulation.seed)
ptm=proc.time()
for(b in 1:B){  
    if( (b/B*50) %% 1 == 0) {
        cat(b, "/", B,"--", sep="")
    }
    ## simulate Functional time series
    X=Simulate_new_MA(a1, T.len, noise.type)
    Y=Simulate_new_MA(a2, T.len, noise.type) 

    ## compare the spectrum using fixed and automatic choices of K
    ans0=Spec_compare_localize_freq(X, Y, B.T=B.T, W=Epanechnikov_kernel,
                                    autok=0, subgrid.density=subgrid.density,
                                    verbose=verbose, demean=FALSE, K.fixed=K,
                                    subgrid.density.relative.to.bandwidth)
    ans1=Spec_compare_localize_freq(X, Y, B.T=B.T, W=Epanechnikov_kernel,
                                    autok=1, subgrid.density=subgrid.density,
                                    verbose=verbose, demean=FALSE, K.fixed=K,
                                    subgrid.density.relative.to.bandwidth)
    ans2=Spec_compare_localize_freq(X, Y, B.T=B.T, W=Epanechnikov_kernel,
                                    autok=2, subgrid.density=subgrid.density,
                                    verbose=verbose, demean=FALSE, K.fixed=K,
                                    subgrid.density.relative.to.bandwidth)

    ## store results
    raw.pvalues.allk[b, , ]=ans0$pval.raw
    raw.pvalues.autok1[b, ]=ans1$pval.raw
    raw.pvalues.autok2[b, ]=ans2$pval.raw
    holm.adj.pvalues.autok1[b, ]=PvalAdjust(ans1, method = 'holm') 
    holm.adj.pvalues.autok2[b, ]=PvalAdjust(ans2, method = 'holm')
    K1[b,]=ans1$K
    K2[b,]=ans2$K

    ## clean
    rm(ans0, ans1, ans2)
}; rm(b)
tot.time=proc.time()-ptm; ## to measure elapsed time

results=sapply(ls(), get)
save(results, file=paste(sim.name, ".RData", sep=""))

