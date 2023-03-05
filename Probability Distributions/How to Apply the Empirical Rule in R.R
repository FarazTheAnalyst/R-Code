# find area under normal curve whithin 1 standard deviation of mean
pnorm(1) - pnorm(-1)

# find area under normal curve within whthin 2 standard deviation of mean
pnorm(2) - pnorm(-2)

# find area under normal curve within 3 standard deviation of mean
pnorm(3) - pnorm(-3)

# EXAMPLE 1. applying the empirical Rule to a dataset in R
# define mean and standard defiation values
mean = 7
sd = 2.2

# find which values contain 68% of data
mean-2.2; mean+2.2

# find which values contain 95% of data
mean-2*2.2; mean+2*2.2

# find which values contain 99.7% of data
mean=3*2.2; mean+3*2.2

# EXAMPLE 2. finding what percentage of data falls between certain values
# find area under normal curve between 99 and 105
pnorm(105, mean=100, sd=5) - pnorm(99, mean=100, sd=5)
