# A Sobel test is a method of testing the 
# significance of a mediation effect.

# conducting  a Sobel Test in R
# install bda package if not installed
install.packages("bda")

# load bda package
library("bda")

# The following code conducts a sobel test using a list of 
# 50 normal random variables for the mediator variable, 
# independent variable, and dependent variabl
mv <- rnorm(50)
iv <- rnorm(50)
dv <- rnorm(50)

mediation.test(mv, iv, dv)
