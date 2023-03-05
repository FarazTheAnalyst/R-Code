# plot basic uniform distribution in R
# define x-axis
x <- seq(-4, 4, length=100)
x

# calculate uniform distribution probabilities
y <- dunif(x, min = -3, max = 3)

# plot custom uniform distribution in R
# define x-axis
x <- seq(-4, 4, length=100)

# plot uniform distribution
plot(x, y, type = "l")

# plot custom uniform distribution in R
# define x-axis
x <- seq(-4, 4, length=100)

# #calculate uniform distribution probabilities
y <- dunif(x, min = -3, max = 3)

# plot uniform distribution
plot(x, y, type = "l", lwd=3, ylim = c(0, .2), col="blue", 
     xlab = "x", ylab = "Probability", main = "Uiform Distribution Plot")
