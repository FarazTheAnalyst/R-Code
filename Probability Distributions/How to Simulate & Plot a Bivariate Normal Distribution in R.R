# load package
library("MASS")

# make this example reproducible
set.seed(0)

# simulate bivariate normal distribution
bivariate_data <- as.data.frame(mvrnorm(n=100,
                                        mu=c(0, 0),
                                        Sigma = matrix(c(5, 3, 4, 4), ncol=2)))

# view first six rows of bivariate dataset
head(bivariate_data)

# EXAMPLE 2. plot a bivariate normal distribution 
# load package
install.packages("mnormt")
library("mnormt")
# make this example reproducible
set.seed(0)

# create bivariate normal distribution

x     <- seq(-3, 3, 0.1) 
y     <- seq(-3, 3, 0.1)
mu    <- c(0, 0)
sigma <- matrix(c(2, -1, -1, 2), nrow=2)
f     <- function(x, y) dmnorm(cbind(x, y), mu, sigma)
z     <- outer(x, y, f)

# create contour plot
contour(x, y, z)

library(mnormt)

#make this example reproducible
set.seed(0)

#create bivariate normal distribution
x     <- seq(-3, 3, 0.1) 
y     <- seq(-3, 3, 0.1)
mu    <- c(0, 0)
sigma <- matrix(c(2, -1, -1, 2), nrow=2)
f     <- function(x, y) dmnorm(cbind(x, y), mu, sigma)
z     <- outer(x, y, f)

# create surface plot
persp(x, y, z, theta=-30, phi = 25, expand=0.6, ticktype = "detailed")
























