# Mardia's Test in R
install.packages("QuantPsyc")
library("QuantPsyc")

# create dataset
set.seed(0)

data <- data.frame(x1=rnorm(50),
                   x2=rnorm(50),
                   x3=rnorm(50))

# perform Multivariate normality test
mult.norm(data)$mult.test

# Energy Test in R
install.packages("energy")
library("energy")

# perform Multivariate normality test
mvnorm.etest(data, R=100)

