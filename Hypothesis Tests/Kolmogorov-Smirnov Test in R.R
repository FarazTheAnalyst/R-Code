# The Kolmogorov-Smirnov test is used to test whether or not or not a 
# sample comes from a certain distribution.

# Example 1: One Sample Kolmogorov-Smirnov Test

# make this  example reproducible
seed(0)

# generate dataset of 100 values that follow a Possion distribution with mean = 5
rpois <- rpois(n=20, lambda = 5)

# perform kolmogorov-smirnov test
ks.test(data, "pnorm")


# Example 2: Two Sample Kolmogorov-Smirnov Test
# make this example reproducible
seed(0)

# generate two datasets
data1 <- rpois(n=20, lambda = 5)
data2 <- rnorm(100)

# The following code shows how to perform a Kolmogorov-Smirnov 
# test on these two samples to determine if they came from the same distribution:

# perform kolmogorov-smirnov test
ks.test(data1, data2)
