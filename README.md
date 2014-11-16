## Data

Incubation study

5 temperatures, 

* enzyme activities
* SOC
* DOC
* Microbial Biomas
* expt. manipulation of 5 temperatures


### Microcosm Incubations

#### Respiration table

| variable| units |type| definition|
|---------|-------|----|-----------|
|day      | days  | float | days since experiment start|
|site_id   | char  | | lookup |
|jar_id | | int| (optional replicate id) |
|respiration| g/g/d | float | grams of C as CO2 respired per gram soil per day |


#### Site table

| variable| units |type| definition|
|---------|-------|----|-----------|
|site_id | |int | lookup |
|lat | | float| |
|lon | | float| |
|soiltype | | char | categorical |
|mic_t0 | | g/g | microbial biomass at time 0|
|soc_t0 | | g/g | |
|doc_t0 | | g/g | |
|enz_t0 | | g/g | |



## References

Schimel, Joshua P., and Michael N. Weintraub. "The implications of exoenzyme activity on microbial carbon and nitrogen limitation in soil: a theoretical model." Soil Biology and Biochemistry 35.4 (2003): 549-563.

Allison, Steven D., Matthew D. Wallenstein, and Mark A. Bradford. "Soil-carbon response to warming dependent on microbial physiology." Nature Geoscience 3.5 (2010): 336-340.
