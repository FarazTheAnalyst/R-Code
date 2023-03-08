# Example 1: Calculate Standard Deviation of Vector
# create dataset
data <- c(1, 2, 4, 6, 11, 14, 17, 20, 22, 23)

# find standard deviation
sd(data)

# create dataset with missing values
data <- c(1, 3, 4, 6, NA, 14, NA, 20, 22, 23)

# attempt to find standard deviation
sd(data)

# find standard deviatioin and specify to ignore missing values
sd(data, na.rm=TRUE)

# Example 2: Calculate Standard Deviation of Column in Data Frame
# create data frame
data <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                   b=c(7, 8, 8, 7, 13, 16),
                   c=c(11, 13, 13, 18, 19, 22),
                   d=c(12, 16, 18, 22, 29, 38))

# find standard deviation of column a
sd(data$a)
sd(data$d)

# Example 3: Calculate Standard Deviation of Several Columns in 
# Data Frame

# create data frame
data <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                   b=c(7, 8, 8, 7, 13, 16),
                   c=c(11, 13, 13, 18, 19, 22),
                   d=c(12, 16, 18, 22, 29, 38))

# find standard deviation of specific column in data frame
apply(data[ , c("a", "c", "d")], 2, sd)


















