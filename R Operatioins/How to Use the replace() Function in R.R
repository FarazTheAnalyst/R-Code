# Example 1: Replace One Value in Vector
# define vector of values
data <- c(3, 6, 8, 12, 14, 15, 16, 19, 22)

# define new vector with a different value in position 2
data_new <- replace(data, 2, 50)

# view new vector
data_new

# Example 2: Replace Multiple Values in Vector
# define vector of values
data <- c(2, 4, 6, 8, 10, 12, 14, 16)

# define new vector with different values in position 1, 2, and 8
data_new <- replace(data, c(1, 2, 8), c(50, 100, 200))

# view new vector
data_new

# Example 3: Replace Values in Data Frame
# define data frame
df <- data.frame(x=c(1, 2, 4, 4, 5, 7),
                 y=c(6, 6, 8, 8, 10, 11))

# view data frame
df

# replace values in column "x" greater than 4 with a new value of 50
df$x <- replace(df$x, df$x > 4, 50)

# view updated data frame
df






















