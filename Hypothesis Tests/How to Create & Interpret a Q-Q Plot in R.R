# A Q-Q plot, short for "quantile-quantile" plot, is a type of 
# plot that we can use to determine whether or not a set of data
# potentially came from some theoretical distribution.

# make this example reproducible
set.seed(0)

# generate vector of 100 values that follows a normal distribution
data <- rnorm(100)

# create Q-Qplot to compare this dataset to a theoratical normal distribution 
qqnorm(data)

# add straight diagonal line to plot
qqline(data)

# make this example reproducible 
set.seed(0)

# generate vector of 100 valeus that follows a gamma distribution 
data <- rgamma(100, 1)

# generate vector of 100 valeus that follows a gamma distribution
data <- rgamma(100, 1)

# create  Q-Q plot to compare this dataset to a theroatical normal distribution
qqnorm(data)
qqline(data)

# make this example reproducible
set.seed(0)

# generate vector of 100 valeus that follows a chi-square distribution
data <- rchisq(100, 5)

# create Q-Q PLOT to compare this dataset to a theroratical normal distibution
qqnorm(data)
qqline(data)

#make this example reproducible
set.seed(11)

#generate vector of 100 values that follows a normal distribution
data <- rnorm(100)

#create Q-Q plot
qqnorm(data, main = 'Q-Q Plot for Normality', xlab = 'Theoretical Dist',
       ylab = 'Sample dist', col = 'steelblue')


qqline(data, col = 'red', lwd = 2, lty = 2)


































