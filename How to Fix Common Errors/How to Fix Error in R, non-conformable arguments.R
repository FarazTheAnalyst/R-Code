# How to Reproduce the Error
# create first matrix
mat1 <- matrix(1:10, nrow=5)
mat1

# create second matrix
mat2 <- matrix(1:6, nrow = 2)
mat2

# attempt to multiply second matrix by first matrix
mat2 %*% mat1

# How to Avoid the Error
# multiply first matrix by second matrix
mat1 %*% mat2
# view dimensions of first matrix
dim(mat1)

# view dimensions of second matrix
dim(mat2)
