# define matrices
matrix1 <- matrix(1:6, nrow = 3)
matrix2 <- matrix(7:12, nrow=3)

# view first matrix
matrix1

# view second matrix
matrix2

# Example 1: Combine List of Matrices by Rows
# create list of matrices
matrix_list <- list(matrix1, matrix2)

# view list of matrices
matrix_list

# combine into one matrix by rows
do.call(rbind, matrix_list)

# Example 2: Combine List of Matrices by Columns
# create list of matrices
matrix_list <- list(matrix1, matrix2)

# combine into one matrix by columns
do.call(cbind, matrix_list)