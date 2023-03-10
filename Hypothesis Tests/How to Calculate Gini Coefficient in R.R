# Named after Italian statistician Corrado Gini, the Gini coefficient is a
# way to measure the income distribution of a population.

# Example 1: Calculate Gini Coefficient Using Individual Incomes
install.packages("DescTools")
library("DescTools")

# define vector of incomes
x <- c(50, 50, 70, 70, 70, 90, 150, 150, 150, 150)

# calulate Gini coefficient
Gini(x, unbiased=FALSE)

# define vector of incomes
x <- c(10, 20, 25, 55, 70, 90, 110, 115, 130)

# define vector of frequencies
n <- c(6, 7, 7, 14, 22, 20, 8, 4, 1)

# calculate Gini coefficients
Gini(x, n, unbiased = FALSE)
