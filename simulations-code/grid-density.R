######## Simulation parameters
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
######## (END) Simulation parameters


# variable that must be defined
var.names.grid.density<- c("T.len", "B", "d.ts", "d.n", "sim.name",  "noise.type", "ma.scale", "ma.diff.index", "ma.diff", "a.smooth.coef", "K", "simulation.seed", "subgrid.density.seq" )
#check if all variables are specified
for(var.name.loc  in (var.names.grid.density)) if (!exists(var.name.loc)){ print(paste("Variable", var.name.loc, "missing")); quit(save="no"); }
rm(var.name.loc)

verbose=0


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
specdK.ma1<-SpecMA(a1,T.len, noise.type)
# trace.specdK.ma1<- Re(apply(specdK.ma1, c(3), FUN=function(x){ sum(diag(x))})) 
specdK.ma2<-SpecMA(a2,T.len, noise.type)


all.raw.pvals <- list()


ptm=proc.time()

############################## create the main variables
############################## difficult because omega is not the same size across different subgrid.densities
##############################
for(subgrid.density.loc in (subgrid.density.seq)){
    subgrid.name.loc <- paste0('subgrid', subgrid.density.loc)

    all.raw.pvals[[subgrid.name.loc]] <- list()


    ## get the size of some parameters that determine the size of the result variables
    X.tmp=Simulate_new_MA(a1, T.len, noise.type)
    Y.tmp=Simulate_new_MA(a1, T.len, noise.type)
    tmp=Spec_compare_localize_freq(X.tmp, Y.tmp, B.T=B.T, W=Epanechnikov_kernel, autok=0, subgrid.density=subgrid.density.loc, verbose=0, demean=FALSE, K.fixed=1, subgrid.density.relative.to.bandwidth=FALSE)
    all.raw.pvals[[subgrid.name.loc]]$omega  <-  tmp$omega
    all.raw.pvals[[subgrid.name.loc]]$m  <-  tmp$m
    all.raw.pvals[[subgrid.name.loc]]$bw  <-  tmp$bw
    all.raw.pvals[[subgrid.name.loc]]$raw.pvalues.autok1  <- array(NA, c(B, length(tmp$omega)))
    all.raw.pvals[[subgrid.name.loc]]$raw.pvalues.autok2  <- array(NA, c(B, length(tmp$omega)))
    all.raw.pvals[[subgrid.name.loc]]$K1  <- array(NA, c(B, length(tmp$omega)))
    all.raw.pvals[[subgrid.name.loc]]$K2  <- array(NA, c(B, length(tmp$omega)))
    rm(X.tmp, Y.tmp, tmp)
    rm(subgrid.name.loc)
}
rm(subgrid.density.loc)

set.seed(simulation.seed)
for(b in 1:B){  
    if( (b/B*50) %% 1 == 0) {
        cat(b, "/", B,"--", sep="")
    }
    ## simulate Functional time series
    X=Simulate_new_MA(a1, T.len, noise.type)
    Y=Simulate_new_MA(a2, T.len, noise.type) 
    #
    for(subgrid.density.loc in (subgrid.density.seq)){
        subgrid.name.loc <- paste0('subgrid', subgrid.density.loc)
        ## compare the spectrum using fixed and automatic choices of K
        ans1=Spec_compare_localize_freq(X, Y, B.T=B.T, W=Epanechnikov_kernel, autok=1, subgrid.density=subgrid.density.loc, verbose=verbose, demean=FALSE, K.fixed=K, subgrid.density.relative.to.bandwidth=FALSE)
        ans2=Spec_compare_localize_freq(X, Y, B.T=B.T, W=Epanechnikov_kernel, autok=2, subgrid.density=subgrid.density.loc, verbose=verbose, demean=FALSE, K.fixed=K, subgrid.density.relative.to.bandwidth=FALSE)
        ## store results
       all.raw.pvals[[subgrid.name.loc]]$raw.pvalues.autok1[b, ]=ans1$pval.raw
       all.raw.pvals[[subgrid.name.loc]]$raw.pvalues.autok2[b, ]=ans2$pval.raw
       all.raw.pvals[[subgrid.name.loc]]$K1[b,]=ans1$K
       all.raw.pvals[[subgrid.name.loc]]$K2[b,]=ans2$K
        ## clean
        rm(ans1, ans2)
    }
    rm(X, Y)
}
rm(b)
tot.time=proc.time()-ptm; ## to measure elapsed time

results=sapply(ls(), get)
save(results, file=paste(sim.name, ".RData", sep=""))

