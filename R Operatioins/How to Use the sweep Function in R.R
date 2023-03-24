# Example 1: Use sweep() to Perform Operation on Rows
# define matrix
mat <- matrix(1:15, nrow = 5)

# view matrix
mat

# add specific numbers to each row
sweep(mat, 1, c(5, 10, 15, 20, 25), "+")

# define matrix
mat <- matrix(1:15, nrow = 5)

# view matrix
mat

# multiply valeus in each row by certaini amount
sweep(mat, 1, c(.5, 1, 2, 4, 6), "*")

# Example 2: Use sweep() to Perform Operation on Columns
# define matrix
mat <- matrix(1:15, nrow=5)

# view matrix
mat

# add specific numbers to each column
sweep(mat, 2, c(5, 10, 15), "+")
