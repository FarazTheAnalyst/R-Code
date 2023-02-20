# confidence interval for mean
# input sample size, sample amean, and sample stadard deviation
n <- 25
 xbar <- 300
s <- 18.5

 #calculate margin of error
margin <- qt(0.975, df=n-1)*s/sqrt(n)

# calcualte lower and upper bounds of confidence interval
low <- xbar - margin
low

high <- p + margin
high

# confidence interval for difference in means
# = (x1-x2) +/- t*???((sp2/n1) + (sp2/n2))
# input sample size, sample mean, and sample standard deviation
n1 <- 15
xbar1 <- 310
s1 <- 18.5

n2 <- 15
xbar2 <- 300
s2 <- 16.4

# calculate margin of error
sp <- ((n1-1)*s1^2 + (n2-1)*s2^2) / (n1+n2-2)

# calcualte margin of error
margin <- qt(0.975, df=n1+n2-1)*sqrt(sp/n1 + sp/n2)

# calcualte lower and upper bounds of confidence interval
low <- (xbar1-xbar2) - margin
low

high <- (xbar1-xbar2) + margin
high

# confidence interval for proportion
# input sample size and sample proporion
n <- 100
p <- .56

# calculate margin or error
margin <- qnorm(0.975)*sqrt(p*(1-p)/n)

# calculate lower an upper bounds of confidence interval
low <- p-margin
low

high <- p+margin
high


# confidence interval for difference in propotions
# input sample sizes and sample proportions
n1 <- 100
p1 <- .62

n2 <- 100
p2 <- .46

# calcualte margin of error
margin <- qnorm(0.975)*sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n)
low <- (p1-p2) - margin
low

high <- (p1-p2) - margin
high















































