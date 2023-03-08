# define two samples 
data1 <- c(6, 6, 7, 8, 8, 10, 11, 13, 15, 15, 16, 17, 19, 19, 21)
data2 <- c(10, 11, 13, 13, 15, 17, 17, 19, 20, 22, 24, 25, 27, 29, 29)

# find sample standard deviation of each sample
s1 <- sd(data1)
s2 <- sd(data2)

# find sample size of each sample
n1 <- length(data1)
n2 <- length(data2)

# calculate pooled standard deviation 
pooled <- sqrt(((n1-1)*s1^2 + (n2 -1)*s2^2) / (n1 +n2 -2))

# view pooled standard deviation
pooled


# Method 2: Calculate Pooled Standard
# Deviation Using a Package
install.packages("effectsize")
library("effectsize")

# data1 <- c(6, 6, 7, 8, 8, 10, 11, 13, 15, 15, 16, 17, 19, 19, 21)
data2 <- c(10, 11, 13, 13, 15, 17, 17, 19, 20, 22, 24, 25, 27, 29, 29)

sd_pooled(data1, data2)

