# Runs test is a statistical test that is used to determine whether or
# not a dataset comes from a random process.

# install and load packages
install.packages("snpar")
library("snpar")

# create dataset
data <- c(12, 16, 16, 15, 14, 18, 19, 21, 13, 13)

# perform Run's test
runs.test(data)

# Method 2: Run's Test Using the randtests Library
install.packages("randtests")
library("randtests")

# create dataset
data <- c(12, 16, 16, 15, 14, 18, 19, 21, 13, 13)
runs.test(data)
