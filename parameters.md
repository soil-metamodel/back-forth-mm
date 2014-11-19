|Parameter | Description | Units | Range | Reference|
| -------- | ----- | ------------------------- | --------| ------------------------|
|EC_ref | Proportion of C allocated to biomass (vs. respiration; i.e. carbon use efficiency)| mg mg-1| 0 to 0.6 (maximum theoretical value). Empirical data suggests the real value for soils is around 0.3 | Sinsabaugh, Manzoni, Moorhead, and Richter. 2013. Ecology Letters doi 10.1111/ele12113|
|m | Slope of the relationship between EC and temperature | degree-1 | -0.050 to 0  | Allison, Wallenstein, and Bradford. 2010. Nature Geoscience (and refs therein)|
|Ea | Activation energy for SOC turnover (decomposition) | kJ mol-1 | 20-60  | Steinweg JM, Jagadamma S, Frerichs J, Mayes MA. 2013. PLoS One.|
|Ea_K | Activation energy associated with Km parameter | kJ mol-1 | On the order of 10^1 (result of model tuning) | Allison et al. 2010|
|Vmax_ref | Maximum reaction velocity for SOC turnover at reference temperature | mg SOC mg soil-1 h-1 | On the order of 10^8 (result of model tuning) | Allison et al. 2010|
|Km_ref | Half-saturation constant for SOC turnover at reference temperature | mg SOC mg soil-1 | 100-600  | German DP, Marcelo KRB, Stone MM, Allison SD. 2012. Global Change Biology.|
|Ea_uptake | Activation energy for DOC uptake | kJ mol-1 | 20-60  | Allison et al. 2010|
|Ea_Kuptake | Activation energy associated with Kuptake parameter | kJ mol-1 | On the order of 10^1 (result of model tuning) | Allison et al. 2010|
|Vmax_uptake_ref | Maximum reaction velocity for DOC uptake at reference temperature | mg DOC mg soil-1 h-1 | On the order of 10^8 (result of model tuning) | Allison et al. 2010|
|Km_uptake_ref | Half-saturation constant for DOC uptake at reference temperature | mg DOC mg soil-1 | On the order of 10^-1 (result of model tuning) | Allison et al. 2010|
|rL | Rate of enzyme loss | h-1 | On the order of 10^-3 | Allison SD. 2006. Biogeochemistry.|
|rE | Rate of enzyme production | h-1 | On the order of 10^-6 | Allison et al. 2010|
|rB | Rate of biomass turnover | h-1 | 0.0003 - 0.018 | Rousk J and Baath E. 2007. Soil Biology| and Biochemistry.|
|aBS | Proportion of dead microbial biomass allocated to SOC pool | mg mg-1 | 0-1 | N/A |
