# The Shapiro-Wilk test is a test of normality. It is used to
# determine whether or not a sample comes from a normal distribution.

# shapiro-wilk Test on Normal Data

# make this example reprodubible 
data <- rnorm(100)

# perform Shapiro-Wilk test for normality
shapiro.test(data)

#  we can produce a histogram to visually verify  taht the sample data is normally distributed
hist(data, col = "steelblue")

# Example 2: Shapiro-Wilk Test on Non-Normal Data
# The following code shows how to perform a Shapiro-Wilk test on
# a dataset with sample size n=100 in which the values are randomly
# generated from a Poisson distribution:

# make this example reproducible
set.seed(0)

# create dataset of 100 random values generated from a Posson distribution
data <- rpois(n=100, lambda = 3)


# we can produce a histogram to visually see that the sample data 
# is not normally distributed

hist(data, col="coral2")




















