# The Cramer-Von Mises test is used to determine whether or not a 
# sample comes from a normal distribution.

# Example 1: Cramer-Von Mises Test on Normal Data
install.packages("goftest")
library("goftest")

# make this example reproducible
set.seed(0)

# create dataset of 100 random values generated from a normal distribution 
data <- rnorm(100)

# perform Cramer-von Mises test for normality
cvm.test(data, "pnorm")

# we can also prodice a histogram to visually verify taht the 
# sample data is normally distributed
hist(data, col = "coral2")

# Example 2: Cramer-Von Mises Test on Non-Normal Data
# make this example reproducible 
set.seed(0)

# create dataset of 100 random values generated from a Possion distribution
data <- rpois(n=100, lambda = 3)

# perform Cramer-Von Mises test for normality
cvm.test(data, "pnorm")

# we can also procuce  a histogram to visually see that the
# sample data is not normally distributed
hist(data, col = "coral2")





















