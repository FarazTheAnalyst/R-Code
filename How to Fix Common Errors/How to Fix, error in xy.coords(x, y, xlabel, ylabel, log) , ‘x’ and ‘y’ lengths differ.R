# This error occurs when you attempt to create a plot
# of two variables but the variables don't have the same length.

# How to Reproduce the Error
# define x and y variables
x <- c(2, 5, 5, 8)
y <- c(22, 28, 32, 35, 40, 41)

# attempt to create scatterplot of x vs. y
plot(x, y)

# print length of x
length(x)

# print length of y
length(y)

# check if length of x and y are equal
length(x) == length(y)

# How to Fix the Error
# define x and y variables to have same length
x <- c(2, 5, 5, 8, 9, 12)
y <- c(22, 28, 32, 35, 40, 41)

# confirm that x and y are the same length
length(x) == length(y)

# create scatterplot of x vs. y
plot(x, y)

# For example, if vector x has 4 values and vector y has 6
# values, we could create a scatterplot using only the first
# 4 values of each vector:
# define x and y variables
x <- c(2, 5, 5, 8)
y <- c(22, 28, 32, 35, 40, 41)

# create scatterplot of first 4 pairwise values of x vs. y
plot(x, y[1:length(x)])
