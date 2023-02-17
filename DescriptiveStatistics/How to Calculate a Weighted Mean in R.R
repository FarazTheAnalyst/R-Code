# weighted mean of vector
# define vector of data values
data <- c(3, 5, 6, 7, 8)

# define vector of weights 
weights <- c(.1, .3, .3, .2, .1)

# calculate weighted mean
weighted.mean(x=data, w=weights)

# weighted mean of a column in a data frame

# create data frame
df <- data.frame(values = c(3, 5, 6, 7, 8),
                 weights = c(.1, .3, .3, .2, .1))
# calculate weighted mean
weighted.mean(x=df$values, df$weights)

# create data frame
df <- data.frame(values = c(3, 5, 6, 7, 8),
                 other_data = c(6, 12, 14, 14, 7),
                 more_data = c(3, 3, 4, 7, 9))

# define vector of weights
weights <- c(.1, .3, .3, .2, .1)

# calculate weighted mean
weighted.mean(x=df$values, w=weights)























