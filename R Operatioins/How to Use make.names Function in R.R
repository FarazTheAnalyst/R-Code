# Example 1: Create Valid Names for Vector
# create vector of numeric values
numeric_values <- c(1, 1, 4, 7, 8)

# create syntactically valid names form numeric values
make.names(numeric_values)

# create vector of numeric values
numeric_values <- c(1, 1, 4, 7, 8)

# create syntactically valid names from numeric values
make.names(numeric_values, unique = TRUE)

# Example 2: Create Valid Names for Matrix
# create matrix
mat <- matrix(c(1, 2, 3, 7, 2, 4, 4, 6, 0, 1), ncol = 2)

# view matrix
mat

# view column names of matrix
colnames(mat)

# create column names for matrix
colnames(mat) <- make.names(1:ncol(mat))

# view updated matrix
mat

# view values in "X1" column of matrix
mat[ , "X1"]


























