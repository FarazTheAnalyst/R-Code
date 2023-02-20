# use the prop.test()funciton
# calculate 95% confidence interval
prop.test(x=56, n=100, conf.level = .95, correct = FALSE)

# use the binconf() function
library("Hmisc")
binconf(x=56, n=100, alpha=.05)

# calculate the confidence interval manually
# define proportion
p <- 56/100

# define significance level
a <- .05

# calculate 95% confidence interval 
p + c(-qnorm(1-a/2), qnorm(1-a/2))*sqrt((1/100)*p*(1-p))
