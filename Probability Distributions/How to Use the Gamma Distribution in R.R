# dgamma
# deifne x-values
x <- seq(0, 2, by = 0.01)

# calculate gamma density for each x-value
 # dgamma density for each x-value
y <- dgamma(x, shape = 5)

# create density plot
plot(y)

# pgamma
# define x-values
x <- seq(0, 2, by=0.01)

# calcualte gamma density for each x-value

# create cumulative density plot
plot(y)

# qgamma 
# define x-values
x <- seq(0, 1, by=0.01)

# calculate gamma density for each x-value
y <- qgamma(x, shape=5)

# create quantile plot
plot(y)

# rgamma
# make this example reproducible 
set.seed(0)

# generate 1,000 random values that follow gamma distribution 
x <- rgamma(n=1000, shape=5, rate=3)

# create histogram to view distribution of values
hist(x)




















