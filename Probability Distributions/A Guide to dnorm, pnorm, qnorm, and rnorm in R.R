# dnorm
# find the value of the standard normal distribution pdf at x=0
dnorm(x=0, mean=0, sd=1)

# by default, R uses mean =0, and sd=1
dnorm(x=0)

# find the value of the normal distribution pdf x= 10 with mean= 20, sd = 5
dnorm(x=10, mean=20, sd=5)

# create a sequence of 100 equally spaced numbers between -4 and 4
x <- seq(-4, 4, length=100)
x


# create a vector of values that shows the height of the probability distribution
# for each value in x
y <- dnorm(x)
y

# plot x and y as a scatterplot with connected lines (type = "l") and 
# add an-axis with custom labels

plot(x, y, type = "l", lwd = 2, axes = FALSE, xlab = "", ylab = "")
axis(1, at = -3:3, labels = c("-3s", "-2s", "-1s", "mean", "1s", "2s", "3s"))

# pnorm
# Example 1: Suppose the height of males at a certain school is 
# normally distributed with a mean of ??=70 inches and a standard 
# deviation of ?? = 2 inches. Approximately what percentage of males
# at this school are taller than 74 inches?

# find  percentage of males that are taller than 74 inches in a population
# with mean = 70, and sd = 2
pnorm(74, mean = 70, sd = 2, lower.tail = FALSE)

# Example 2:  Suppose the weight of a certain species of otters is 
# normally distributed with a mean of ??=30 lbs  and a standard 
# deviation of ?? = 5 lbs. Approximately what percentage of this species 
# of otters weight less than 22 lbs?

# find the percentage of otters that weight less than 22 lbs in a populatin with 
# mean = 30, and sd = 5
pnorm(22, mean=30, sd=5)

# Example 3:  Suppose the height of plants in a certain region is
# normally distributed with a mean of ??=13 inches  and a standard
# deviation of ?? = 2 inches. Approximately what percentage of plants 
# in this region are between 10 and 14 inches tall?

# find percentage of plants that are less than 14 inches tall, then subtract
# the percentage of plants that are less than 10, inches tall, based on a population 
# with mean = 13, sd = 2
pnorm(14, mean=13, sd=2) - pnorm(10, mean = 13, sd=2)

# qnorm
# find the Z-score of the 99th quantile of the standard nornal distribution 
qnorm(.99, mean=0, sd=1)

# by default, R uses mean = 0 and sd = 1
qnorm(.99)

# find the z-score of the 95th percentile of the standard normal distribution
qnorm(.95)

# find the z-score of the 10th quantile of the standard normal distribution
qnorm(.10)

# rnorm
# generate a vector of 5 normally distributed
five <- rnorm(5, mean=10, sd=2)
five

# generate a vector of 1000 normally distributed random variables with mean
# = 50 and sd = 15
narrowDistribution <- norm(1000, mean = 50, sd = 15)

# generate a vector 1000 normally distributed random variables with
# mean=25 and sd=25
wideDistribution <- rnorm(1000, mean=50, sd=25)

# generate two histograms to view these two distributions side by side , 
# specify 50 bars in histogram and x-axis limits of -50 to 150
par(mfrow=c(1, 2)) #one row, two columns
hist(narrowDistribution, breaks=50, xlim=c(-50, 150)) 
hist(wideDistribution, breaks=50, xlim = c(-50, 150) )

















































