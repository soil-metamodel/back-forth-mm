#####REVERSE kinetic 3-pool SOIL C MODEL (with temp sensitivity)#####
###modified from Schimel and Weintraub 2003, Soil Biology and Biochemistry###

###Parameters###
#R = gas constant
#kSref = reference turnover rate of SOC pool
#kS = turnover rate of SOC pool at temperature TempK
#EaS = activation energy of SOC decompositiona

#ECref = proportion of C assimilated into microbial biomass (vs. lost to respiration; i.e. CUE)
#EC = CUE at temperature TempK
#m = slope of CUE (acclimating with temperature)
#Temp = conversion factor for temp in Kelvin
#TempK = temp in Kelvin
#Tref = reference temperature (in K)
#IS = inputs to SOC pool
#ID = inputs to DOC pool
#aBS = proportion of dead microbial biomass allocated to SOC pool
#rE = rate of enzyme produciton
#rL = rate of enzyme loss
#rB = turnover rate of microbial biomass pool (death)
#Re = respiration associated with enzyme production
#Rg = respiration associated with biomass maintenance and growth

#Kes = half saturation constant for enzymes on substrate (has arbitrary value of 0.3 in original model)

###Fluxes###
#FS = turnover of SOC pool
#FB = turnover of microbial biomass pool (death)
#FA = uptake of DOC by microbes
#FE = enzyme production
#FL = enzyme loss

###Pools###
#S = soil organic carbon (SOC)
#D = dissolved organic carbon (DOC)
#E = soil enzyme pool
#B = microbial biomass
#CO2 = carbon dioxide


R <- 0.008314
EaS <- 47
aBS <- 0.5
rE <- 0.000005
rL <- 0.00001
rB <- 0.0002
EC <- 0.5
Kes <- 0.3
ECref <- 0.31
kSref <- 1
m <- -0.016
Temp <- 20
TempK <- Temp+273
Tref <- 293
time <- 500000 

#start-up pool values
S <- 3336213; D <- 0.04338228; E <- 0.04338228; B <- 0.07746836
CO2 <- 0
IS = 0
ID = 0

EC <- (ECref+m*(Temp-20))
kS <- kSref*exp((-EaS/R)*(1/TempK-1/Tref))

out <- matrix(rep(0,time*5),nrow=time,dimnames=list(NULL,c("Hours","SOC","DOC","MBC","CO2")))

for (i in 1:time) {
	FS = kS * E/(Kes + E)
	FA = FS 
	FB = rB*B
	FE = rE*E
	FL = rL*E
	Re = rE*(1-EC)/EC
	Rg = (FA - FE - FB - Re)*(1-EC)
	if (Rg < 0) {Rg = 0} else {Rg = Rg}

	S = S + (aBS*FB) +FL - FS + IS
	D = D + FS + ((1-aBS)*FB) - FA + ID
	B = B + FA - (FE + FB + Re + Rg)
	E = E + FE - FL
	CO2 = CO2 + Re + Rg
	out[i,] <- c(i,S,D,B,CO2)
}
out <- data.frame(out)
days <- seq(0,480000,by=24)
plot(out[days,"CO2"]~out[days,"Hours"])

