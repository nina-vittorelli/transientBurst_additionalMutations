# transientBurst_additionalMutations
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.13940757.svg)](https://doi.org/10.5281/zenodo.13940757)


## Description
This project aims at computing the theoretical distribution of the number of non-selected mutations in a cell after the experimental protocol from [1].

The mathematical framework is described in `model.md`. The script `compute_distribution.R` computes the distribution of the number of non-selected mutations in a cell. The output is the table `distribution_additional_mutations.csv`.

## Dependencies
R v. 4.3.2

R packages: 
- [tidyverse](https://doi.org/10.21105/joss.01686) v. 2.0.0 
- [stats](https://www.R-project.org/) v. 4.3.2

## Author
Written by Nina Vittorelli

Contact: nina.vittorelli [at] sorbonne-universite.fr

## Licence 
GNU GENERAL PUBLIC LICENSE v.3

## References
[1] Agier Nicolas, Vittorelli Nina, Chaux Frédéric, Gillet-Markowska Alexandre, O’Donnell Samuel, Fischer Gilles, Delmas Stéphane, "A transient burst of mutations occurs during the development of yeast colonies", submitted.
