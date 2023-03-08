# In statistics, pooled variance refers to the average of two or more 
# group variances.

# define groups of data
x1 <- c(6, 7, 7, 8, 10, 11, 13, 14, 14, 16, 18, 19, 19, 19, 20)
x2 <- c(5, 7, 7, 8, 10, 13, 14, 15, 19, 20, 20, 23, 25, 28, 32)

# calculate sample size of each group
n1 <- length(x1)
n2 <- length(x2)

# calculate sample variance of each group
var1 <- var(x1)
var2 <- var(x2)

# calculate pooled variance between the two groups
pooled <- ((n1 - 1)*var1 + (n2 -1)*var2) / (n1 + n2 -2)

# display pooled variance
pooled
