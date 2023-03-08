# Example: Anderson-Darling Test in R
# install (if not already installed) and load nortest library
install.packages("nortest")
library("nortest")

# make this example reproducible
set.seed(0)

# defined vector of 100 values that are normally distributed 
x <- rnorm(100, 0, 1)

# conduct Anderson-Darling Test to test for normality
ad.test(x)

# The null hypothesis for the A-D test is that the data does follow
# a normal distribution. Thus, if our p-value for the test is below
# our significance level (common choices are 0.10, 0.05, and 0.01),
# then we can reject the null hypothesis and conclude that we have
# sufficient evidence to say our data does not
# follow a normal distribution.

# make this example reproducible
set.seed(0)

# defined vecotr of 100 values that are uniformly distributed 
x <- runif(100, 0, 1)

# conduct Anderson-Darlin g test to test for normality
ad.test(x)

# Conducting an Anderson-Darling Test on One Column of a Data 
# Frame in R

# view first six lines of iris datset
head(iris)

# Suppose we want to know whether or not the variable Petal.Width
# is normally distributed

hist(iris$Petal.Width, col="skyblue", main="Distribution of Petal Width", 
xlab="Petal Width")

# conduct Anderson-Darling Test to test for normality
ad.test(iris$Petal.Width)




















