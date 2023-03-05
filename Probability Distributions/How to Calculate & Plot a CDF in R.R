# calculate & plot cdf of raw data
# create some data
data <- rnorm((100))

# calculate empirical cdf of data
p = ecdf(data)

# plot cdf
plot(p, xlab="x", ylab="CDF", main ="CDF  of Data")

# calculate & plot cdf of known distribution 
curve(pnorm, from=-3, to = 3)

# plotting in ggplot2
library("ggplot2")
ggplot(data.frame(x=c(-3, 3)), aes(x=x))+
  stat_function(fun = pnorm)
