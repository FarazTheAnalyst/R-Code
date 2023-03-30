# Example 1: Add New Column to End of Matrix
# create matrix
my_matrix <- matrix(c(14, 0, 12, 5, 7, 4, 1, 3, 9, 5, 5, 8), nrow = 4)

# view matrix
my_matrix

# add new column to end of matrix
my_matrix <- cbind(my_matrix, c(2, 7, 7, 8))

# view updated matrix
my_matrix

# exmaple 2: add new colum to beginning of matrix
# create matrix
my_matrix <- matrix(c(14, 0, 12, 5, 7, 4, 1, 3, 9, 5, 5, 8), nrow = 4)

# view matrix
my_matrix

# add new column to beginning of matrix
my_matrix <- cbind(c(2, 7, 7, 8), my_matrix)

# view udated matrix
my_matrix
