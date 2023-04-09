# Scenario 1: Resolve Error in Data Frame Multiplication
# create data frame
df <- data.frame(x=c(1, 2, 6, 7),
                 y=c(3, 5, 5, 8))

# view data frame
df

# attempt to create new column
df$x_times_10 <- df$x(10)

# create new column
df$x_time_10 <- df$x*(10)

# view updated data frame
df

# Scenario 2: Resolve Error in Vector Multiplication
# create two vectors
x <- c(1, 2, 2, 2, 4, 5, 6)
y <- c(5, 6, 8, 7, 8, 8, 9)

# attempt to multiply corresponding elements in vectors
(x)(y)

# multiply corresponding elements vectors
(x)*(y)
