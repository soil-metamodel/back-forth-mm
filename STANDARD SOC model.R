#####STANDARD 3-pool SOIL C MODEL#####
###following Allison, Wallenstein, and Bradford 2013, Nature Geoscience###
###code from Steve Allison###

###Parameters###
#R = gas constant
#u = uptake rate (of DOC by microbial biomass)
#kDref = reference turnover rate of DOC pool
#kD = turnover rate of DOC pool at temperature TempK
#kSref = reference turnover rate of SOC pool
#kS = turnover rate of SOC pool at temperature TempK
#kBref = reference turnover rate of microbial biomass pool
#kB = turnover rate of microbial biomass pool at temperature TempK
#aDS = C lost to CO2 pool during SOC turnover
#aSD = C lost to CO2 pool during DOC turnover
#aB = C lost to CO2 pool during biomass turnover
#EaB = activation energy of 'fast pool' (microbial biomass) decomposition
#EaD = activation energy of DOC decomposition
#EaS = activation energy of SOC decomposition
#ECref = proportion of C assimilated into microbial biomass (vs. lost to respiration; i.e. CUE)
#EC = CUE at temperature TempK
#m = slope of CUE (acclimating with temperature)
#Temp = conversion factor for temp in Kelvin
#TempK = temp in Kelvin
#Tref = reference temperature (in K)
#IS = inputs to SOC pool
#ID = inputs to DOC pool

###Fluxes###
#FS = turnover of SOC pool
#FD = turnover of DOC pool
#FB = turnover of microbial biomass pool (death)
#FU = uptake of DOC by microbes

###Pools###
#S = soil organic carbon (SOC)
#D = dissolved organic carbon (DOC)
#B = microbial biomass
#CO2 = carbon dioxide


R <- 0.008314
IS <- 0.00015
ID <- 0.00001
u <- 0.0005
kDref <- 0.001
kSref <- 5e-06
kBref <- 0.00028
EaD <- 47
EaS <- 47
EaB <- 20
aBS <- 0.5
ECref <- 0.31
m <- -0.016
Temp <- -5:35
TempK <- Temp+273
Tref <- 293

kD <- kDref*exp((-EaD/R)*(1/TempK-1/Tref))
kS <- kSref*exp((-EaS/R)*(1/TempK-1/Tref))
kB <- kBref*exp((-EaB/R)*(1/TempK-1/Tref))
EC <- (ECref+m*(Temp-20))

# Numerical simulation of base conventional model
aDS <- aSD <- aB <- EC
tr <- which(Temp==20)
S <- 33.36213; D <- 0.04338228; B <- 0.07746836
time <- 500000
out <- matrix(rep(0,time*5),nrow=time,dimnames=list(NULL,c("Hours","SOC","DOC","MBC","CO2")))
for (i in 1:time) {
  FS <- kS[tr]*S
  FD <- kD[tr]*D
  FB <- kB[tr]*B
  FU <- u*D
  S <- S + IS + aDS[tr]*FD + aB[tr]*aBS*FB - FS
  D <- D + ID + aSD[tr]*FS + aB[tr]*(1-aBS)*FB - FU - FD
  B <- B + FU - FB
  CO2 <- FS*(1-aSD[tr]) + FD*(1-aDS[tr]) + FB*(1-aB[tr])
  out[i,] <- c(i,S,D,B,CO2)
}
out <- data.frame(out)
days <- seq(0,480000,by=24)
plot(out[days,"CO2"]~out[days,"Hours"])

