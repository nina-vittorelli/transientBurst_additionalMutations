# R version 4.3.2

# Packages
library(tidyverse)  # version 2.0.0
library(stats)      # version 4.3.2

# Parameters
mu <- 3.3 * 10**(-10) # probability of substitution at one site during one cell division
D <- 27               # number of cell divisions
G <- 10**6            # genome size (number of sites)

# Probability for one site to carry a substitution at the end of the experiment
p = 1-((1-mu)**D)

# X is the total number of non-selected substitutions in the genome of one cell at the end of
# the experiment. We want to compute the probability that X = k for k between 0 and 20 
k <- 0:20

# the probability that X = k
p_X_equal_to_k <- dbinom(k, size = G, prob = p)

# the probability that X ≥ k
p_X_equal_or_greater_than_k <- stats::pbinom(k - 1, size = G, prob = p, lower.tail = FALSE)

# build a table 
df <- dplyr::tibble(k, p_X_equal_to_k,  p_X_equal_or_greater_than_k)

# save the table
readr::write_csv(df, "distribution_additional_mutations.csv")