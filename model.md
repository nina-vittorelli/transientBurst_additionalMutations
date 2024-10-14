# Probability to have additionnal mutations

## 1. The question

We study cells with a constant genome size $G$. In the experimental protocol, one single cell (hereafter the ancestral cell) is grown for $D$ generations. 

Let us consider one given cell at the end of the experiment. This cell has undergone $D$ cell divisions, that separate it from the ancestral cell.

Let $X$ be the number of substitutions between the genome of this cell and the genome of the ancestral cell. $X$ is a random variable, and we want to know its distribution - *i.e.* the probability that there are 0, 1, 2, ... substitutions in this cell.

## 2. Hypotheses on the mutation process

Let us suppose that the per-site mutation rate, denoted $\mu$, is both:

**(H1)** homogeneous across cell divisions *i.e.* the probability that a substitution appears is identical for each of the $D$ cell divisions.

**(H2)** homogeneous across genomic sites, *i.e.* the probability that a substitution appears is identical for each of the $G$ sites of the genome.

Additionally, let us suppose that the mutation events are independent **(H3)**. 


## 3. Number of substitutions that occurred at a single site

For a single site, because of the hypotheses (H1) and (H3), the probability that no substitution occurred during the $D$ cell divisions is $(1-\mu)^{D}$. Conversely, the probability that there is a substitution at the end of the experiment is $p = 1- (1-\mu)^{D}$. Let us note that we ignore the possibility that one mutation and the reverse mutation occurred, because the probability of this event is negligible in this framework.

# 4. Distribution of the number of substitutions in the whole genome

Each site has a identical probability $p = 1- (1-\mu)^{D}$ to have a substitution at the end of the experiment. Because of (H2), the $G$ sites are independent, and therefore the number of substitutions between the genome of this cell and the genome of the ancestral cell $X$ follows a Binomial distribution: $X \sim B(G, p)$.

## 5. Distribution of the number of additional substitutions in a cell with two given mutations

Let us consider only the cells carrying two mutations at two given sites at the end of the experiment. As done in [1], these cells can be selected by plating the final population on a selective media on which only the cells carrying the two given mutations can survive.

In such a cell, we denote $Y$ the number of additional substitutions in the genome, *i.e* we exclude the mutations that were selected. Because of **(H3)**, $Y$  follows a Binomial distribution, $Y \sim B(G', p)$ with $G'$ the size of the genome that is not involved in the two selected mutations. If $G$ is large compared to the genomic regions involved in the two selected mutations, it is reasonable to consider that $G' \simeq G$, and that $Y$ has the same distribution than $Y$, *i.e.* that $Y \sim B(G, p)$.

The same reasoning apply for a small number of mu

## 6. Remark to compare this model to experimental data
A remark if one wants to compare the above expected distribution with an observed distribution from experimental data: This framework requires to consider only **one cell per replicate** to compute the number of substitutions. Indeed, two cells from the same replicate share a part of their lineage, and therefore the numbers of substitutions that each of them carry are not independent, and the distribution is not Binomial anymore. 

## References
[1] Agier Nicolas, Vittorelli Nina, Chaux Frédéric, Gillet-Markowska Alexandre, O’Donnell Samuel, Fischer Gilles, Delmas Stéphane, "A transient burst of mutations occurs during the development of yeast colonies", submitted.
