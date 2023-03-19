# Example: Dunn's Test in R
# If the results of a Kruskal-Wallis test are statistically
# significant, then it's appropriate to conduct Dunn's Test
# to determine exactly which groups are different.

# make this example reproducible
set.seed(0)

# create data frame
data <- data.frame(drug = rep(c("A", "B", "C"), each=10),
                   pain = c(runif(10, 40, 60),
                            runif(10, 45, 65),
                            runif(10, 55, 70)))

# view first six rows of data frame
head(data)

# perofrm Kruskal-WALLIS Test
kruskal.test(pain ~ drug, data = data)

# Install and load package
install.packages("FSA")
library(FSA)

# perform Dunn's Test with Bonferroni correction for p-values
dunnTest(pain ~ drug,
         data=data,
         method="bonferroni")
