functions {

  real[] fkm(real t, real[] y,
             real[] theta, real[] x_r, int[] x_i) {

    real S;  real D;  real B;  real E; 
    real IS;  real ID;
    real FA;  real FB;  real FE;  real FL;  real FS;
    real EC_tr;  real rB;  real aBS;
    real dS_dt;  real dD_dt;  real dB_dt;  real dE_dt;
    real dy_dt[4];

    S <- y[1];  D <- y[2];  B <- y[3];  E <- y[4];

    IS <- x_r[1];  ID <- x_r[2];
    
    FA <- theta[1];  FB <- theta[2];  FE <- theta[3];  FL <- theta[4];   FS <- theta[5];

    EC_tr <- theta[6];  rB <- theta[7];  aBS <- theta[8];

    dS_dt <- IS + rB * B;
    dD_dt <- ID + FB * (1 - aBS) + FS + FL - FA;
    dB_dt <- FA * EC_tr - FB - FE;
    dE_dt <- FE - FL;

    dy_dt[1] <- dS_dt;  dy_dt[2] <- dD_dt;  dy_dt[3] <- dB_dt;  dy_dt[4] <- dE_dt;

    return dy_dt;
  }

} 
data {
  int<lower=0> N_T;                // number of times
  real<lower=0> TempK[N_T];        // temperature in Kelvin (K)
  real<lower=0> Tref;              // reference temparature (in K)
  real<lower=0> IS;                // input to SOC
  real<lower=0> ID;                // input to DOC
  real<lower=0> CO2;               // CO2

  real<lower=0> y[N_T];            // respirated CO2 measurements
}
transformed data {
  real R;          // gas constant
  real x_r[2];     // real data
  int x_i[0]; 

  R <- 0.008314;
  
  x_r[1] <- IS;  x_r[2] <- ID;
}
parameters {
  real<lower=0> Ea;               // activation energy for decomposition reaction
  real<lower=0> Ea_uptake;        // activation energy for DOC uptake
  real<lower=0> Ea_K;             // Ea term for Km (see below)
  real<lower=0> Ea_Kuptake;       // Ea term for Kup (see below)
  real<lower=0> ECref;            // proportion of C assimilated into microbial
                                  // biomass (vs. lost to respiration; i.e. CUE)
  real<lower=0> m;                // slope of CUE (acclimating with temperature)
  real<lower=0> Vmax_ref;         // maximum reaction velocity for decomposition
  real<lower=0> Vmax_uptake_ref;  // maximum reaction velocity for DOC uptake
  real<lower=0> Km_ref;           // reference half-saturation parameter for
                                  // decomposition reaction
  real<lower=0> Km_uptake_ref;    // reference half-saturation constant for DOC uptake
  real<lower=0> rL;               // rate of enzyme loss
  real<lower=0> rE;               // rate of enzyme production
  real<lower=0> rB;               // rate of microbial biomass death
  real<lower=0,upper=1> aBS;      // proportion of dead microbial
                                  // biomass allocated to SOC pool

  real<lower=0> sigma;            // i.i.d. observation noise
 }
 model {
   real theta[8];
   theta[1] <- FA;  theta[2] <- FB;  theta[3] <- FE;  theta[4] <- FL;  theta[5] <- FS;
   theta[6] <- EC_tr;  theta[7] <- rB;  theta[8] <- aBS;
   
   y_hat <- integrate_ode(fkm,y0,0.0,ts,theta,x_r,x_i);

   y ~ normal(y_hat, sigma);
 }

    
  
