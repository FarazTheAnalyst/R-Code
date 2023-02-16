# define dataset
data <- c(2, 4, 4, 7, 8, 12, 14, 15, 19, 22)

# calculate the sample variance
var(data)

# determine length of data
n <- length(data)

# view length 
n

# calculate population variance
var(data) * (n-1)/n

# calculate sample variance of muptiple columns
# create data frame
data <- data.frame(a=c(1, 3, 4, 4, 6, 7, 8, 12),
                   b=c(2, 4, 4, 5, 5, 6, 7, 16),
                   c=c(6, 6, 7, 8, 8, 9, 9, 12))

# view data frame
data

# find sample variance of  each column
sapply(data, var)

# calculate sample standard deviation of each column
sapply(data, sd)



















