# how to use rnorm() in R
# make this example reproducible
set.seed(0)

# create vector of 100 random values from normal distribution 
random_values <- rnorm(n=100, mean =10, sd=2)

# view first six values
head(random_values)

# create histogram to visualize distributin of values
hist(random_values)

# how to use runif() in R
# make this example reproducible 
set.seed(0)

# create 100 random values from uniform distribution
random_values_unif <- runif(n=100, min=5, max=25)

# view first six values
head(random_values_unif)

# create histogram to visualize distribution of values
hist(random_values_unif)
