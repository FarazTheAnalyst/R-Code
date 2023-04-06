# Example 1: Calculate Square Root of a Single Value
# define x
x <- 25

# find square root of x
sqrt(x)

# Example 2: Calculate Square Root of Values in Vector
# create vector
x <- c(1, 3, 4, 6, 9, 14, 16, 25)

# find square root of every value in vector
sqrt(x)

# defne vector with some negative values
x <- c(1, 3, 4, 6, -9, 14, -16, 25)

# attempt to find square root of each value in vector
sqrt(x)

# convert each value to absolute value and then find square root of each value
sqrt(abs(x))

# Example 3: Calculate Square Root of Column in Data Frame
# create data frame
data <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                   b=c(7, 8, 8, 7, 13, 16),
                   c=c(11, 13, 13, 18, 19, 22),
                   d=c(12, 16, 18, 22, 29, 38))

# find  square root of values in column a
sqrt(data$a)

# Example 4: Calculate Square Root of Several Columns in Data Frame
# create data frame
data <- data.frame(a=c(1, 3, 4, 6, 8, 9),
                   b=c(7, 8, 8, 7, 13, 16),
                   c=c(11, 13, 13, 18, 19, 22),
                   d=c(12, 16, 18, 22, 29, 38))

# find square root of values in columns a, b, and d
apply(data[, c("a", "b", "d")], 2, sqrt)


















