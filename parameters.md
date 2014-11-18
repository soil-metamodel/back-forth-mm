<<<<<<< Updated upstream
|----------------|----------------|----------------|----------------|----------------|
| **Parameter**  | **Units**      | **Description* | **Range**      | **Reference**  |
|                |                | *              |                |                |
|----------------|----------------|----------------|----------------|----------------|
| EC\_ref        | Proportion of  | mg mg^-1^      | 0-0.6 (maximum | Sinsabaugh,    |
|                | C allocated to |                | theoretical    | Manzoni,       |
|                | biomass (vs.   |                | value)         | Moorhead, and  |
|                | respiration;   |                |                | Richter. 2013. |
|                | i.e. carbon    |                | Empirical data | Ecology        |
|                | use            |                | suggests the   | Letters doi    |
|                | efficiency)    |                | real value for | 10.1111/ele121 |
|                |                |                | soils is       | 13             |
|                |                |                | around 0.3     |                |
|----------------|----------------|----------------|----------------|----------------|
| m              | Slope of the   | degree^-1^     | -0.050 to      | Allison,       |
|                | relationship   |                | 0<span         | Wallenstein,   |
|                | between EC and |                | class="Apple-c | and Bradford.  |
|                | temperature    |                | onverted-space | 2010. Nature   |
|                |                |                | "> </span>     | Geoscience     |
|                |                |                |                | (and refs      |
|                |                |                |                | therein)       |
|----------------|----------------|----------------|----------------|----------------|
| Ea             | Activation     | kJ mol^-1^     | 20-60<span     | Steinweg JM,   |
|                | energy for SOC |                | class="Apple-c | Jagadamma S,   |
|                | turnover       |                | onverted-space | Frerichs J,    |
|                | (decomposition |                | "> </span>     | Mayes MA.      |
|                | )              |                |                | 2013. PLoS     |
|                |                |                |                | One.           |
|----------------|----------------|----------------|----------------|----------------|
| Ea\_K          | Activation     | kJ mol^-1^     | On the order   | Allison et al. |
|                | energy         |                | of 10\^1       | 2010           |
|                | associated     |                | (result of     |                |
|                | with Km        |                | model tuning)  |                |
|                | parameter      |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
| Vmax\_ref      | Maximum        | mg SOC mg      | On the order   | Allison et al. |
|                | reaction       | soil^-1^ h^-1^ | of 10\^8       | 2010           |
|                | velocity for   |                | (result of     |                |
|                | SOC turnover   |                | model tuning)  |                |
|                | at reference   |                |                |                |
|                | temperature    |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
| Km\_ref        | Half-saturatio | mg SOC mg      | 100-600<span   | German DP,     |
|                | n              | soil^-1^       | class="Apple-c | Marcelo KRB,   |
|                | constant for   |                | onverted-space | Stone MM,      |
|                | SOC turnover   |                | "> </span>     | Allison SD.    |
|                | at reference   |                |                | 2012. Global   |
|                | temperature    |                |                | Change         |
|                |                |                |                | Biology.       |
|----------------|----------------|----------------|----------------|----------------|
| Ea\_uptake     | Activation     | kJ mol^-1^     | 20-60<span     | Allison et al. |
|                | energy for DOC |                | class="Apple-c | 2010           |
|                | uptake         |                | onverted-space |                |
|                |                |                | "> </span>     |                |
|----------------|----------------|----------------|----------------|----------------|
| Ea\_Kuptake    | Activation     | kJ mol^-1^     | On the order   | Allison et al. |
|                | energy         |                | of 10\^1       | 2010           |
|                | associated     |                | (result of     |                |
|                | with Kuptake   |                | model tuning)  |                |
|                | parameter      |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
| Vmax\_uptake\_ | Maximum        | mg DOC mg      | On the order   | Allison et al. |
| ref            | reaction       | soil^-1^ h^-1^ | of 10\^8       | 2010           |
|                | velocity for   |                | (result of     |                |
|                | DOC uptake at  |                | model tuning)  |                |
|                | reference      |                |                |                |
|                | temperature    |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
| Km\_uptake\_re | Half-saturatio | mg DOC mg      | On the order   | Allison et al. |
| f              | n              | soil^-1^       | of 10\^-1      | 2010           |
|                | constant for   |                | (result of     |                |
|                | DOC uptake at  |                | model tuning)  |                |
|                | reference      |                |                |                |
|                | temperature    |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
| rL             | Rate of enzyme | h^-1^          | On the order   | Allison SD.    |
|                | loss           |                | of 10\^-3      | 2006.          |
|                |                |                |                | Biogeochemistr |
|                |                |                |                | y.             |
|----------------|----------------|----------------|----------------|----------------|
| rE             | Rate of enzyme | h^-1^          | On the order   | Allison et al. |
|                | production     |                | of 10\^-6      | 2010           |
|----------------|----------------|----------------|----------------|----------------|
| rB             | Rate of        | h^-1^          | 0.0003 - 0.018 | Rousk J and    |
|                | biomass        |                |                | Baath E. 2007. |
|                | turnover       |                |                | Soil Biology   |
|                |                |                |                | and            |
|                |                |                |                | Biochemistry.  |
|----------------|----------------|----------------|----------------|----------------|
| aBS            | Proportion of  | mg mg^-1^      | 0-1            | N/A<span       |
|                | dead microbial |                |                | class="Apple-c |
|                | biomass        |                |                | onverted-space |
|                | allocated to   |                |                | "> </span>     |
|                | SOC pool       |                |                |                |
|----------------|----------------|----------------|----------------|----------------|
=======
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
|Vmax_uptake_ref | Maximum reaction velocity for DOC uptake at reference temperature | mg DOC| mg soil-1 h-1 | On the order of 10^8 (result of model tuning) | Allison et al. 2010|
|Km_uptake_ref | Half-saturation constant for DOC uptake at reference temperature | mg DOC mg| soil-1 | On the order of 10^-1 (result of model tuning) | Allison et al. 2010|
|rL | Rate of enzyme loss | h-1 | On the order of 10^-3 | Allison SD. 2006. Biogeochemistry.|
|rE | Rate of enzyme production | h-1 | On the order of 10^-6 | Allison et al. 2010|
|rB | Rate of biomass turnover | h-1 | 0.0003 - 0.018 | Rousk J and Baath E. 2007. Soil Biology| and Biochemistry.|
|aBS | Proportion of dead microbial biomass allocated to SOC pool | mg mg-1 | 0-1 | N/A |
>>>>>>> Stashed changes
