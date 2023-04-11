# This error occurs when you attempt to create a plot 
# in R and use either a character vector or a vector 
# with only NA values on the x-axis.

# Example 1: Error with Character Vector
# define data 
x <- c("A", "B", "C", "D", "E", "F")
Y <- C(3, 6, 7, 8, 14, 19)

# attempt to create scatterplot
plot(x, y)

# define two numeric vectors
x <- c(1, 2, 3, 4, 5, 6)
y <- c(3, 6, 7, 8, 14, 19)

# create scatterplot
plot(x, y)

# Example 2: Error with Vector of NA Values
# define data
x <- c(NA, NA, NA, NA, NA, NA)
y <- c(3, 6, 7, 8, 14, 19)

# attempt to create scatterplot
plot(x, y)

# define two numeric vectors
x <- c(1, 5, 9, 13, 19, 22)
y <- c(3, 6, 7, 8, 14, 19)

# create scatterplot
plot(x, y)

