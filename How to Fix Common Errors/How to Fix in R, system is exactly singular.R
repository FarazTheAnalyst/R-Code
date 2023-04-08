# How to Reproduce the Error
# create singular matrix
mat <- matrix(c(1, 1, 1, 1), ncol=2, nrow=2)

# view matrix
mat

# attempt to invert matrix
solve(mat)

# calculate determinant of matrix
det(mat)

# How to Fix the Error
# create matrix that is not singular
mat <- matrix(c(1, 7, 4, 2), ncol=2, nrow=2)

# view matrix
mat

# calculate determinant of matrix
det(mat)

# invert matrix
solve(mat)

