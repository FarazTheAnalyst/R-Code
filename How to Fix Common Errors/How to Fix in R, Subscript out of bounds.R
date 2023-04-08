# This error occurs when you attempt to access a column or row in a
# matrix that does not exist.
# make this example reproducible
set.seed(0)

# create matrix with 10 rows 3 columns
x = matrix(data = sample.int(100, 30), ncol=3, nrow=10)

# print matrix
print(x)

# Example #1: Subscript out of bounds (with rows)
# The following code attempts to access the 11th row of the matrix,
# which does not exist:
# attempt to display 11th row of matrix
x[11, ]

# display number of rows in matrix
nrow(x)

# display 10th row of matrix
x[10, ]

# Example #2: Subscript out of bounds (with columns)
# attempt to display 4th column of matrix
x[, 4]

# display number of columns in matrix
ncol(x)

# display 3rd column of matrix
x[, 3]

# Example #3: Subscript out of bounds (rows & columns)
# attempt to display value in 11th row and 4th column
x[11, 4]

# display number of rows and columns in matrix
dim(x)

# display value in 10th  row and 3rd column of matrix
x[10, 3]























