# Example 1: Identify Positions in Vector with NaN Value
# contain vector with some Nan values
x <- c(1, NaN, 12, NaN, 50, 30)

# identity positions with NaN values
which(is.nan(x))

# example 2: count total NaN values in vector
# create vector with some NaN VALUES
x <- c(1, NaN, 12, NaN, 50, 30)

# identify positions with NaN values
sum(is.nan(x))

# Example 3: Remove NaN Values in Vector
# create vector with some NaN VALUES
x <- c(1, NaN, 12, NaN, 50, 30)

# define new vector with Nan values removed
x_new <- x[!is.nan(x)]

# view new vector
x_new

# Example 4: Replace NaN Values in Vector
# create vector with some NaN VALUES
x <- c(1, NaN, 12, NaN, 50, 30)

# replace NaN values with zero
x[is.nan(x)] <- 0

# view updated vector
x
