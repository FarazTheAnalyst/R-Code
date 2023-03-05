# EXAMPLE 1. calculate normal cdf probabilities
# calculate probability that random value is less than 1.96 in normal cdf
pnorm(1.96)

# calculate probability that random value is greater than 1.96 in normal cdf
pnorm(1.96, lower.tail = FALSE)

# calulate probability that random value takes on value between -1.96 and
pnorm(1.96) - pnorm(-1.96)

# EXAMPLE 2. plot normal cdf
# define sequence of x-values
x <- seq(-4, 4, .01)

# calculate normal cdf probabilities
prob <- pnorm(x)

# plot normal cdf
plot(x, prob, type = "l")

# define sequence of x=values
prob <- pnorm(x)

# plot normal cdf
plot(x, prob, type = "l", col="blue", lwd="2", main = "Normal CDF", ylab = "Cumulative Prob")
abline(v=1.96, lty=2, lwd = 3, col="chocolate")

       