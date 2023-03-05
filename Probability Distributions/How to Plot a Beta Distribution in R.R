# plot one beta distribution 
# define range
p=seq(0,1, length=100)

# create plot of beta distribution with shape parameters 2 and 10
plot(p, dbeta(p, 2, 10), type = "l")

# define range
p=seq(0, 1, length=100)

# create custom plot of beta distribution
plot(p, dbeta(p, 2, 10), ylab = "density",
     type = "l", col="purple", main = "Beta Dsitribution")

# plot multiple beta distributions
# define range
p <- seq(0, 1, length=100)

# plot several beta distibutions
plot(p, dbeta(p, 2, 10), ylab = "density", type = "l", col="purple",)
lines(p, dbeta(p, 2, 2), col="red")
lines(p, dbeta(p, 5, 2), col="blue")

# add legend
legend(.7, 4, c("Beta(2, 10)", "Beta(2, 2)", "Beta(5, 2)"), 
       lty = c(1,1,1), col=c("purple", "red", "blue"))
       
       