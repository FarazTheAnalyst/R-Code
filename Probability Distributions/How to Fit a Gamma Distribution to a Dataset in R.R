#generate 50 random values that follow a gamma distribution with shape parameter = 3
#and rate parameter = 10 combined with some gaussian noise
z <- rgamma(50, 3, 10) + rnorm(50, 0, .02)

# view first 6 values
head(z)

# install "fitdistrplus" package if not already installed
install.packages("fitdistrplus")

# load package
library("fitdistrplus")

#fit our dataset to a gamma distribution using mle
fit <- fitdist(z, distr = "gamma", method = "mle")

# view the summary of the fit
summary(fit)

# produce plots
plot(fit)

# install "fitdistrplus" package if not already installed
install.packages("fitdistrplus")

# load package
library("fitdistrplus")
#generate 50 random values that follow a gamma distribution with shape parameter = 3
#and shape parameter = 10 combined with some gaussian noise
z <- rgamma(50, 3, 10) + rnorm(50, 0,0.2)

# fit our dataset to a gamma distribution usin g mle
fit <- fitdist(z, distr = "gamma", method = "mle")

# view the summary of the fit
summary(fit)

# produce plots to visualize the fit
plot(fit)




















