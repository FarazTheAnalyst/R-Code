# Example 1: Calculate MAD for a Vector
# define data
data <- c(1, 4, 4, 7, 12, 13, 16, 19, 22, 24)

# calculate MAD
mad(data)

# define data
data <- data.frame(x = c(1, 4, 4, 6, 7, 8, 12),
                   y = c(3, 4, 6, 8, 8, 9, 19),
                   z = c(2, 2, 2, 3, 5, 8, 11))

# calculate MAD for column y in data frame
mad(data$y)

# Example 3: Calculate MAD for Multiple Columns in a Data Frame
# create data
data <- data.frame(x = c(1, 4, 4, 6, 7, 8, 12),
                   y = c(3, 4, 6, 8, 8, 9, 19),
                   z = c(2, 2, 2, 3, 5, 8, 11))

# calculate MAD for all columns in data frame
sapply(data, mad)
